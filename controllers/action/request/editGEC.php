<?php

header("Content-Type: application/json");

// connection to database

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$data = file_get_contents("php://input");
$uploaded = json_decode($data, true);


$query = $db->query(
    "UPDATE `curriculums` SET 
    `subject_code` = :subject_code,
    `subject_description` = :subject_description,
    `subject_lecture_units` = :subject_lecture_units,
    `subject_laboratory_units` = :subject_laboratory_units,
    `subject_total_units` = :subject_total_units 
    WHERE 
    id = :id",
    [
        "id" => $uploaded["id"],
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
