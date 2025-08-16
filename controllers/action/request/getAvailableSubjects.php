<?php

header("Content-Type: application/json");

// connection to database

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$data = file_get_contents("php://input");
$search = json_decode($data, true);

$studentId = $search['name'] ?? '2000_00000';
$year = $search['year'] ?? '1';
$semester = $search['semester'] ?? '1st Semester';

// $studentId = $search['name'];
// $year = $search['year'];
// $semester = $search['semester'];


$subjects = $db->query(
    "SELECT * FROM `{$studentId}` WHERE subject_year = :year AND subject_semester = :semester AND status = 'Unavailable'",
    [
        'year' => $year,
        'semester' => $semester
    ]
)->fetchAll();

$suggestedSubjects = $db->query(
    "SELECT * FROM `{$studentId}` WHERE subject_year > :year AND subject_semester = :semester AND subject_pre_requisite = 'None' AND status = 'Unavailable'",
    [
        "year" => $year,
        'semester' => $semester
    ]
)->fetchAll();

$json = json_encode(array_merge_recursive($subjects, $suggestedSubjects));

// dd($suggestedSubjects);
echo $json;
