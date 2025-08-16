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

// 3. Main Processing
if ($_POST['submit'] == "Submit") {
    $year = $_POST['year'];
    $semester = $_POST['semester'];
    $studentId = $_POST['studentId'];
    $studentTable = preg_replace('/[\s-]+/', '_', $studentId);
    $subjectCount = (int) $_POST['subjectCount'];

    // 4. Process Grades, Update Subject Statuses, and Handle Prerequisites
    for ($i = 0; $i < $subjectCount; $i++) {
        $subjectCode = $_POST["subjectCode{$i}"];
        $subjectGrade = $_POST["subjectGrades{$i}"];
        $subjectId = (int) $_POST["subjectId{$i}"];
        $subjectRemarks = $_POST["subjectRemarks{$i}"];

        // Fetch the current grade and status from the database
        $currentSubjectData = $db->query(
            "SELECT grade, status FROM `{$studentTable}` WHERE id = :id",
            ['id' => $subjectId]
        )->fetch();

        $currentGrade = $currentSubjectData['grade'];
        $currentStatus = $currentSubjectData['status'];


        // Only proceed if the grade has changed
        if ($subjectGrade != $currentGrade) {

            $status = 'PASSED'; // Default status

            if ($subjectGrade == "5.0" || $subjectGrade == "INC / 5.0") {
                $status = 'FAILED';
            } elseif ($subjectGrade == "UW" || $subjectGrade == "AW") {
                $status = 'DROPPED';
            } elseif ($subjectGrade == "INC" || $subjectGrade == "DG") {
                $status = 'ON HOLD';
            } elseif ($subjectGrade == "") {
                $status = 'PENDING';
            }

            // Check for status change between groups
            $statusChangedGroups = in_array($currentStatus, ['FAILED', 'DROPPED']) && in_array($status, ['PASSED', 'ON HOLD', 'PENDING']);

            if ($statusChangedGroups) {
                $subjectDataToRevert = $db->query("SELECT * FROM `{$studentTable}` WHERE id = :id", ['id' => $subjectId])->fetch();

                $advancedSubject = wasSubjectTakenInAdvance($db, $studentTable, $subjectDataToRevert);

                if (!empty($advancedSubject)) {
                    revertAdvancedSubject($db, $studentTable, $advancedSubject, $year, $semester);
                } else {
                    revertSubject($db, $studentTable, [$subjectDataToRevert]);
                }
            }

            //update no matter what
            $db->query(
                "UPDATE `{$studentTable}` SET status = :status, grade = :grade, remarks = :remarks WHERE id = :id",
                [
                    'id' => $subjectId,
                    'grade' => $subjectGrade,
                    'remarks' => $subjectRemarks,
                    'status' => $status,
                ]
            );

            // Handle subjects that have been failed or dropped
            if ($status == 'FAILED' || $status == 'DROPPED') {
                // dd("Failed or Dropped Subject: {$subjectCode}");
                $subjectData = [
                    'id' => $subjectId,
                    'subject_code' => $subjectCode,
                    'subject_year' => $year,
                    'subject_semester' => $semester,
                ];
                didWrongToSubject($db, $studentTable, $subjectData, $status);
            }
        } // End of grade changed check
    }


    // 7. Revert the status and year_level of the student

    $studentYrLvl = ((int) $semester == 1) ? $student['year_level'] - 1 : $student['year_level'];
    $db->query(
        "UPDATE `students` SET status = :status WHERE studentId = :id",
        [
            'status' => "Not Yet Enrolled",
            'id' => $studentId,
        ]
    );

    // 8. Redirect
    header("location: /students/{$studentId}");
    die();
}
