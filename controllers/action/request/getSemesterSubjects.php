<?php

header("Content-Type: application/json");

// connection to database

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$data = file_get_contents("php://input");
$search = json_decode($data, true);

$studentId = $search['name'] ?? '';
$year = $search['subjectYear'] ?? '';
$semester = $search['subjectSemester'] ?? '';


$subjects = $db->query("SELECT * FROM `{$studentId}` WHERE year = :subjectYear AND semester = :subjectSemester", [
    "subjectYear"=> $year,
    "subjectSemester"=> $semester
])->fetchAll();

$json = json_encode($subjects);

echo $json;
