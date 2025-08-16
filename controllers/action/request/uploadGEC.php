<?php

header("Content-Type: application/json");

// connection to database

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$data = file_get_contents("php://input");
$uploaded = json_decode($data, true);


$query = $db->query(
    "INSERT INTO `curriculums` (
        `name`, `college`, `department`, `effective_from_ay`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, 
        `subject_lecture_units`, `subject_laboratory_units`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`
    ) VALUES (
        'None', 'None', 'None', 'None', 'None', 'None', :subject_code, :subject_description,
        :subject_lecture_units, :subject_laboratory_units, :subject_total_units, 'None', 'General Education Electives'
    )",
    [
        "subject_code" => $uploaded["subject_code"],
        "subject_description" => $uploaded["subject_description"],
        "subject_lecture_units" => (int) $uploaded["subject_lecture_units"],
        "subject_laboratory_units" => (int) $uploaded["subject_laboratory_units"],
        "subject_total_units" => (int) $uploaded["subject_lecture_units"] + (int) $uploaded["subject_laboratory_units"],
    ]
);

$json = [
    "result" => $query->rowCount() > 0,
];

$json = json_encode($json);

echo $json;
