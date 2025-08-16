<?php

header("Content-Type: application/json");

// connection to database

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$data = file_get_contents("php://input");
$uploaded = json_decode($data, true);


$query = $db->query("SELECT * FROM curriculums WHERE subject_electives='General Education Electives' ORDER BY created_at DESC")->fetchAll();

$json = json_encode($query);

echo $json;
