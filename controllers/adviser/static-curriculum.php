<?php

session_start();

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

if (!isset($_SESSION['role'])) {
    header('location: /login');
    die();
}

if ($_SESSION['role'] == 'Admin') {
    header('location: /faculty');
    die();
}

if ($_SESSION['role'] == 'None') {
    header('location: /logout');
    die();
}

$adviser = $db->user($_SESSION['employeeId']);

$curriculumTarget = htmlspecialchars($_SESSION['curriculum']);

$curriculumData = $db->getCurriculumDataByName($curriculumTarget);

$curriculumDetails = $db->getCurriculumDetailsByName($curriculumTarget);
$curriculumYears = $db->query("SELECT DISTINCT subject_year FROM `curriculums` WHERE name = ?", [$curriculumTarget])->fetchAll();
$curriculumSemesters = $db->query("SELECT DISTINCT subject_semester FROM `curriculums` WHERE name = ?", [$curriculumTarget])->fetchAll();

$electives = $db->query("SELECT DISTINCT subject_electives FROM curriculums WHERE name = ?", [$curriculumTarget])->fetchAll();
$eSubjects = $db->query("SELECT * FROM curriculums where name = ? AND NOT subject_electives  = 'None'", [$curriculumTarget])->fetchAll();

$heading = "{$adviser['department']} -  A.Y. {$adviser['advisee']}";


view('adviser/static-curriculum.view.php', [
    'heading' => $heading,
    'details' => $curriculumDetails,
    'subjects' => $curriculumData,
    'years' => $curriculumYears,
    'semesters' => $curriculumSemesters,
    'uri' => $adviser['employeeId'],
    'curriculum' => $adviser['curriculum'],
    'electives' => $electives,
    'eSubjects' => $eSubjects
]);



