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
$year = $_POST['year'];
$semester = $_POST['semester'];
$studentId = $_POST['studentId'];
$student = $db->getStudentById($studentId);
$studentTable = preg_replace('/[\s-]+/', '_', $studentId);

// 4. Decode selected subjects
$selectedSubjects = json_decode($_POST['subjectJSON'], true);
$selectedSubjectCodes = array_column($selectedSubjects, 'subject_code');
$advancedSubjectsToProcess = [];

// 5. Identify advanced subjects
foreach ($selectedSubjects as $subject) {
    if ($subject['subject_year'] != $year && $subject['subject_semester'] == $semester) {
        $subjectDetails = $db->getSubjectDetailByCode($studentTable, $subject['subject_code']);
        foreach ($subjectDetails as $sub) {
            if ($sub['status'] == "Unavailable") {
                $advancedSubjectsToProcess[] = $sub;
            }
        }
    }
}



// 6. Handle advanced subjects
foreach ($advancedSubjectsToProcess as $subjectAdvance) {
    updateSubjectStatus($db, $studentTable, $subjectAdvance['id'], 'ADVANCED');
    insertSubjectRecord($db, $studentTable, $subjectAdvance, $year, $semester, 'PENDING');
}

// 7. Get current semester subjects (excluding advanced and incremented)
$currentSemesterSubjects = getStudentSubjects($db, $studentTable, $year, $semester, ['ADVANCED', 'INCREMENTED']);


$subjectsToTake = [];
$subjectsToCancel = [];

// 8. Compare current and selected subjects
foreach ($currentSemesterSubjects as $subject) {
    if (!in_array($subject['subject_code'], $selectedSubjectCodes)) {
        $subjectsToCancel[] = $subject;
    } else {
        $subjectsToTake[] = $subject;
    }
}


// 9. Update status of subjects to take
foreach ($subjectsToTake as $subjectTake) {
    updateSubjectStatus($db, $studentTable, $subjectTake['id'], 'PENDING');
}

// 10. Handle cancelled subjects
foreach ($subjectsToCancel as $subjectCancelled) {
    didWrongToSubject($db, $studentTable, $subjectCancelled, 'CANCELLED');
}

// 11. update the student's year_level and status
$studentYrLvl = ((int) $semester == 1) ? $student['year_level'] + 1 : $student['year_level'];

$db->query(
    "UPDATE `students` SET status = :status, year_level = :yearlvl WHERE studentId = :id",
    [
        'status' => "ENROLLED",
        'yearlvl' => $studentYrLvl,
        'id' => $studentId,
    ]
);

// 12. Redirect
header("location: /students/{$studentId}");
die();