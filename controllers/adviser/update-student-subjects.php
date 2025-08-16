<?php

session_start();

if (!isset($_SESSION['role'])) {
    header('location: /');
    die();
}

if ($_SESSION['role'] == 'Admin' || $_SESSION['role'] == 'None') {
    header('location: /');
    die();
}

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$studentId = $_POST['studentId'];
$year = $_POST['year'];
$semester = $_POST['semester'];

$student = $db->getStudentById($studentId);
$studentTable = preg_replace('/[\s-]+/', '_', $studentId);
$curriculum = $db->query("SELECT * FROM `{$studentTable}` WHERE subject_year = :year AND subject_semester = :semester AND status NOT IN ('CANCELLED', 'INCREMENTED', 'ADVANCED')", [
    'year' => $year,
    'semester' => $semester
])->fetchAll();

$max = $db->getMaxUnitsByYearAndSemester($curriculum[0]['name'], $year, $semester, false);

$totalUnits = 0;
foreach ($curriculum as $subject) {
    $totalUnits += (int) $subject['subject_total_units'];
}

$max = $max + 6 >= $totalUnits ? $max : $db->getMaxUnitsByYearAndSemester($curriculum[0]['name'], (int) $year - 1, $semester, false);

$studentName = "{$student['lastname']}, {$student['firstname']} {$student['middlename']}";

$submitUri = "/update/grades";
if ($curriculum[0]['status'] == "Unavailable") {
    $submitUri = "/update/subjects";
    view(
        'adviser/update-student-subjects.view.php',
        [
            'studentName' => $studentName,
            'studentId' => $studentId,
            'student' => $student,
            'studentTable' => $studentTable,
            'subjects' => $curriculum,
            'year' => $year,
            'semester' => $semester,
            'submitUri' => $submitUri,
            'max' => $max
        ]
    );
    die();
} else {
    view(
        'adviser/update-student-subjects.view#2.php',
        [
            'studentName' => $studentName,
            'studentId' => $studentId,
            'student' => $student,
            'studentTable' => $studentTable,
            'subjects' => $curriculum,
            'year' => $year,
            'semester' => $semester,
            'submitUri' => $submitUri,
            'max' => $max
        ]
    );
}
