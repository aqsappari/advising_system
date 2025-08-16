<?php

function dd($value)
{
    echo '<pre>';
    var_dump($value);
    echo '</pre>';

    die();
}

// requiring functions that are dedicated to locate public files
require 'Functions/path.php';
// requiring functions that are dedicated to route the application
require 'Functions/route.php';

// functions that are for updating the status of subjects
function getDirectRequisites($db, $studentTable, $subjectCode, $status = 'Unavailable')
{
    $query = "SELECT t1.* FROM {$studentTable} t1
                INNER JOIN (
                    SELECT subject_code, MAX(id) as last_id
                    FROM {$studentTable}
                    WHERE subject_pre_requisite LIKE :subjectCode
                    AND status LIKE :status
                    GROUP BY subject_code
                ) t2 ON t1.subject_code = t2.subject_code AND t1.id = t2.last_id";
    $params = [
        ':subjectCode' => '%' . $subjectCode . '%',
        ':status' => '%' . $status . '%'
    ];
    return $db->query($query, $params)->fetchAll();
}

function revertSubject($db, $studentTable, $subjectsToRevert, $statusToSet = 'Unavailable')
{
    // Check if there are subjects to process.
    if (sizeof($subjectsToRevert) > 0) {

        // Iterate through each subject to be reverted.
        foreach ($subjectsToRevert as $subject) {
            $subjectId = $subject['id'];
            $subjectCode = $subject['subject_code'];
            $subjectYear = $subject['subject_year'];
            $subjectSemester = $subject['subject_semester'];

            // 1. Revert requisite subjects (direct and indirect)
            revertRequisiteSubjects($db, $studentTable, $subject, $statusToSet);

            // 2. if the subject has a duplicate record in the next year with a status of 'Unavailable', delete it.
            $doesExist = $db->query(
                "SELECT * FROM `{$studentTable}` WHERE subject_code = :code AND subject_year = :year AND subject_semester = :semester AND status = 'Unavailable'",
                [
                    'code' => $subjectCode,
                    'year' => $subjectYear + 1,
                    'semester' => $subjectSemester,
                ]
            )->fetchAll();

            // delete the subbject from the year ahead with a status of 'Unavailable'
            if (!empty($doesExist)) {
                $db->query(
                    "DELETE FROM `{$studentTable}` WHERE subject_code = :code AND subject_year = :year AND subject_semester = :semester AND status = 'Unavailable'",
                    [
                        'code' => $subjectCode,
                        'year' => $subjectYear + 1,
                        'semester' => $subjectSemester,
                    ]
                );
            }

            // 3. change the status of the subject to 'Unavailable' and clear the grade.
            $db->query(
                "UPDATE `{$studentTable}` SET status = :status, grade = NULL WHERE id = :id",
                [
                    'status' => $statusToSet,
                    'id' => $subjectId,
                ]
            );

        }
    }
}

function revertRequisiteSubjects($db, $studentTable, $subject, $statusToSet, &$processedSubjectIds = [])
{
    $subjectCode = $subject['subject_code'];
    $subjectYear = $subject['subject_year'];
    $subjectId = $subject['id'];

    // 0. Check if this subject has already been processed
    if (in_array($subjectId, $processedSubjectIds)) {
        return; // Skip if already processed
    }
    $processedSubjectIds[] = $subjectId; //mark subject as processed.

    // 1. Get the requisite subjects of the subject that were processed ('INCREMENTED').
    $processedDirectRequisites = getDirectRequisites($db, $studentTable, $subjectCode, 'INCREMENTED');

    foreach ($processedDirectRequisites as $requisite) {
        $requisiteId = $requisite['id'];

        // 2. Delete the duplicate record of the requisite subject with a status of 'Unavailable'
        $db->query(
            "DELETE FROM `{$studentTable}` 
             WHERE subject_code = :code 
             AND status = 'Unavailable'
             AND subject_year = :year
             AND subject_semester = :semester", // Added year and semester to DELETE
            [
                'code' => $requisite['subject_code'],
                'year' => $requisite['subject_year'] + 1, // Delete from the *next* year
                'semester' => $requisite['subject_semester'],
            ]
        );

        // 3. Update the status of the requisite subject to 'Unavailable'.
        $db->query(
            "UPDATE `{$studentTable}` SET status = :status WHERE id = :id",
            [
                'status' => $statusToSet,
                'id' => $requisiteId,
            ]
        );

        // 4. Recursively call revertRequisiteSubjects for the requisite subject.
        $requisiteSubjectData = getSubjectData($db, $studentTable, $requisiteId);
        if ($requisiteSubjectData) {
            revertRequisiteSubjects($db, $studentTable, $requisiteSubjectData, $statusToSet, $processedSubjectIds);
        }
    }
}

function didWrongToSubject($db, $studentTable, $subject, $newStatus, &$processedSubjectIds = [])
{
    $subjectId = $subject['id'];
    $subjectCode = $subject['subject_code'];
    $subjectYear = $subject['subject_year'];
    $subjectSemester = $subject['subject_semester'];
    $nextYear = $subjectYear + 1;

    // 1. Update the status of the subject.
    $db->query(
        "UPDATE `{$studentTable}` SET status = :status WHERE id = :id",
        [
            'status' => $newStatus,
            'id' => $subjectId,
        ]
    );

    $advance = wasSubjectTakenInAdvance($db, $studentTable, $subject);
    if ($advance) {
        didWrongToAdvacedSubject($db, $studentTable, $advance, $subjectYear, $subjectSemester);
        return; // Exit early if the subject was advanced.
    }

    // 2. Handle requisites subjects of the subject.
    handleRequisiteSubjects($db, $studentTable, $subject, 'INCREMENTED');

    // 3. check if the subject has a duplicate record in the next year with a status of 'Unavailable'
    $doesExist = $db->query(
        "SELECT * FROM `{$studentTable}` WHERE subject_code = :code AND subject_year = :year AND subject_semester = :semester AND status = 'Unavailable'",
        [
            'code' => $subjectCode,
            'year' => $nextYear,
            'semester' => $subjectSemester,
        ]
    )->fetchAll();

    // 4. If it doesn't exist, insert the subject in the next year with a status of 'Unavailable'
    if (empty($doesExist)) {
        $db->query(
            "INSERT INTO `{$studentTable}` (name, subject_year, subject_semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, grade, status)
             SELECT name, :year, :semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, NULL, 'Unavailable' FROM `{$studentTable}`
             WHERE id = :id",
            [
                'year' => $nextYear,
                'semester' => $subjectSemester,
                'id' => $subjectId,
            ]
        );
    }

}

function handleRequisiteSubjects($db, $studentTable, $subject, $newStatus, &$processedSubjectIds = [])
{
    $subjectCode = $subject['subject_code'];
    $subjectYear = $subject['subject_year'];

    // 2. Get direct requisites of the subject.
    $directRequisites = getDirectRequisites($db, $studentTable, $subjectCode, 'Unavailable');

    foreach ($directRequisites as $requisite) {
        $requisiteId = $requisite['id'];
        $proceed = ($requisite['subject_semester'] == '1st Semester') || (($requisite['subject_semester'] != '1st Semester') && ($requisite['subject_year'] == $subjectYear));

        if ($proceed) {
            // Check if this requisite has already been processed.
            if (!in_array($requisiteId, $processedSubjectIds)) {
                $db->query(
                    "UPDATE `{$studentTable}` SET status = :status WHERE id = :id",
                    [
                        'status' => $newStatus,
                        'id' => $requisiteId,
                    ]
                );

                // check if the requisite subject has a duplicate record in the year ahead with a status of 'Unavailable'
                $doesExist = $db->query(
                    "SELECT * FROM `{$studentTable}` WHERE subject_code = :code AND subject_year = :year AND subject_semester = :semester AND status = 'Unavailable'",
                    [
                        'code' => $requisite['subject_code'],
                        'year' => $requisite['subject_year'] + 1,
                        'semester' => $requisite['subject_semester'],
                    ]
                )->fetchAll();

                if (empty($doesExist)) {
                    // insert the requisite subject in the next year with a status of 'Unavailable'
                    $db->query(
                        "INSERT INTO `{$studentTable}` (name, subject_year, subject_semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, grade, status)
                         SELECT name, :year, :semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, NULL, 'Unavailable' FROM `{$studentTable}`
                         WHERE id = :id",
                        [
                            'year' => $requisite['subject_year'] + 1,
                            'semester' => $requisite['subject_semester'],
                            'id' => $requisite['id'],
                        ]
                    );
                }

                // Recursively call handleRequisiteSubjects for the requisite subject.
                $requisiteSubjectData = getSubjectData($db, $studentTable, $requisiteId);
                if ($requisiteSubjectData) {
                    handleRequisiteSubjects($db, $studentTable, $requisiteSubjectData, $newStatus, $processedSubjectIds);
                }
            }
        }
    }
    $processedSubjectIds[] = $subject['id'];
}

function didWrongToAdvacedSubject($db, $studentTable, $advancedSubject, $year, $semester)
{
    $advancedSubjectId = $advancedSubject['id'];
    $advancedSubjectCode = $advancedSubject['subject_code'];
    $advancedSubjectYear = $advancedSubject['subject_year'];
    $advancedSubjectSemester = $advancedSubject['subject_semester'];

    $doesExist = $db->query(
        "SELECT * FROM `{$studentTable}` WHERE subject_code = :code AND subject_year = :year AND subject_semester = :semester AND status = 'Unavailable'",
        [
            'code' => $advancedSubjectCode,
            'year' => $advancedSubjectYear,
            'semester' => $advancedSubjectSemester,
        ]
    )->fetchAll();

    if (empty($doesExist)) {
        $db->query(
            "INSERT INTO `{$studentTable}` (name, subject_year, subject_semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, grade, status)
             SELECT name, :year, :semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, NULL, 'Unavailable' FROM `{$studentTable}`
             WHERE id = :id",
            [
                'year' => $advancedSubjectYear,
                'semester' => $advancedSubjectSemester,
                'id' => $advancedSubjectId,
            ]
        );
    }


}

function getStudentSubjects($db, $studentTable, $year, $semester, $excludeStatuses = []): array
{
    $query = "SELECT * FROM `{$studentTable}` WHERE subject_year = ? AND subject_semester = ?";
    $params = [$year, $semester];

    if (!empty($excludeStatuses)) {
        $placeholders = implode(',', array_fill(0, count($excludeStatuses), '?'));
        $query .= " AND status NOT IN (" . $placeholders . ")";
        $params = array_merge($params, $excludeStatuses); // Correct merging
    }

    return $db->query($query, $params)->fetchAll();
}

function updateSubjectStatus($db, $studentTable, $subjectId, $status): void
{
    $db->query(
        "UPDATE `{$studentTable}` SET status = :status WHERE id = :id",
        ['status' => $status, 'id' => $subjectId]
    );
}

function insertSubjectRecord($db, $studentTable, $subjectDetails, $year, $semester, $status): void
{
    $db->query(
        "INSERT INTO `{$studentTable}` (name, subject_year, subject_semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, grade, status)
        SELECT name, :year, :semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives, NULL, :status FROM `{$studentTable}`
        WHERE id = :id",
        [
            "id" => $subjectDetails['id'],
            "year" => $year,
            "semester" => $semester,
            "status" => $status,
        ]
    );
}

function wasSubjectTakenInAdvance($db, $studentTable, $subjectData)
{
    $subjectCode = $subjectData['subject_code'];

    // Check for an 'ADVANCED' status record with the same subject code and semester, but from a previous year.
    $advancedSubject = $db->query(
        "SELECT * FROM `{$studentTable}`
         WHERE subject_code = :subjectCode
           AND status = 'ADVANCED'",
        [
            'subjectCode' => $subjectCode,
        ]
    )->fetch();

    return $advancedSubject ?: null; // Return null if no record found
}

function revertAdvancedSubject($db, $studentTable, $advancedSubjectData, $currentYear, $currentSemester)
{
    $advancedSubjectId = $advancedSubjectData['id'];
    $advancedSubjectCode = $advancedSubjectData['subject_code'];
    $advancedSubjectYear = $advancedSubjectData['subject_year'];
    $advancedSubjectSemester = $advancedSubjectData['subject_semester'];

    // 1. Update the current subject record to status "PENDING".
    $db->query(
        "UPDATE `{$studentTable}`
         SET status = 'PENDING'
         WHERE subject_code = :advancedSubjectCode
           AND subject_year = :currentYear
           AND subject_semester = :currentSemester",
        ['advancedSubjectCode' => $advancedSubjectCode, 'currentYear' => $currentYear, 'currentSemester' => $currentSemester]
    );


    // 2. delete the duplicate record of the advanced subject in the same year with a status of Unavailable.
    $db->query(
        "DELETE FROM `{$studentTable}`
         WHERE subject_code = :advancedSubjectCode
           AND subject_year = :advancedSubjectYear
           AND subject_semester = :advancedSubjectSemester
           AND status = 'Unavailable'",
        ['advancedSubjectCode' => $advancedSubjectCode, 'advancedSubjectYear' => $advancedSubjectYear, 'advancedSubjectSemester' => $advancedSubjectSemester]
    );
}

function getSubjectData($db, $studentTable, $subjectId): array|false
{
    return $db->query(
        "SELECT * FROM `{$studentTable}` WHERE id = :id",
        ['id' => $subjectId]
    )->fetch();
}