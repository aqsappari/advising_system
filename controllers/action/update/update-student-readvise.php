<?php

session_start();

// 1. Authentication: Check user role and redirect if necessary.
if (!isset($_SESSION['role']) || in_array($_SESSION['role'], ['Admin', 'None'])) {
    header('location: /');
    die();
}

use Core\App;
use Core\Database;

// 2. Database Connection: Establish connection.
$db = App::resolve(Database::class);

// 3. Get student ID, year, and semester from the request.
$studentId = $_GET['id'];
$student = $db->getStudentById($studentId);
$year = $_GET['yearlvl'];
$semester = $_GET['semester'];
$studentTable = preg_replace('/[\s-]+/', '_', $studentId); // Sanitize table name

// 4. Handle Advanced Subjects.
$advancedThisSemester = $db->query("SELECT * FROM `{$studentTable}` WHERE status = 'ADVANCED' AND subject_year > :year AND subject_semester = :semester", ["year" => $year, "semester" => $semester])->fetchAll();
if (!empty($advancedThisSemester)) {
    $subjectCodesThisSemester = array_column($db->query("SELECT subject_code from `{$studentTable}`  WHERE subject_year = :year AND subject_semester = :semester", ['year' => $year, 'semester' => $semester])->fetchAll(), 'subject_code');

    foreach ($advancedThisSemester as $advancedSubject) {
        $subjectCode = $advancedSubject['subject_code'];
        if (in_array($subjectCode, $subjectCodesThisSemester)) {
            // Delete the subject from the current semester
            $db->query(
                "DELETE FROM `{$studentTable}`
                WHERE subject_year = :year
                  AND subject_semester = :semester
                  AND subject_code = :code",
                [
                    'year' => $year,
                    'semester' => $semester,
                    'code' => $subjectCode,
                ]
            );

            // Delete the subject from the same semester with status 'Unavailable'
            $db->query(
                "DELETE FROM `{$studentTable}`
                WHERE subject_year = :year
                  AND subject_semester = :semester
                  AND subject_code = :code
                  AND status = 'Unavailable'",
                [
                    'year' => $advancedSubject['subject_year'],
                    'semester' => $advancedSubject['subject_semester'],
                    'code' => $subjectCode,
                ]
            );

            // Revert the status of the ADVANCED subject to Unavailable
            $db->query(
                "UPDATE `{$studentTable}` SET status = 'Unavailable' WHERE id = :id",
                ['id' => $advancedSubject['id']]
            );
        }
    }
}

// 5. Handle Dropped, Failed, and Cancelled Subjects. 
$droppedThisSemester = $db->query(
    "SELECT * FROM `{$studentTable}`
     WHERE status IN ('DROPPED', 'FAILED', 'CANCELLED')
       AND subject_year = :year
       AND subject_semester = :semester",
    ['year' => $year, 'semester' => $semester]
)->fetchAll();

if (!empty($droppedThisSemester)) {
    revertSubject($db, $studentTable, $droppedThisSemester);
}


// 6. Set Remaining Subjects to 'Unavailable' and clear grades.  This will target PENDING, PASSED, and ON HOLD
$db->query(
    "UPDATE `{$studentTable}`
     SET status = 'Unavailable', grade = NULL
     WHERE subject_year = :year
       AND subject_semester = :semester
       AND status IN ('PENDING', 'PASSED', 'ON HOLD')",
    [
        'year' => $year,
        'semester' => $semester,
    ]
);

// 7. Revert the status and year_level of the student

$studentYrLvl = ((int) $semester == 1) ? $student['year_level'] - 1 : $student['year_level'];
$db->query(
    "UPDATE `students` SET status = :status, year_level = :yearlvl WHERE studentId = :id",
    [
        'status' => "Not Yet Enrolled",
        'yearlvl' => $studentYrLvl,
        'id' => $studentId,
    ]
);

// 8. Redirect to student profile.
header("location: /students/{$studentId}");
die();
