<?php

header("Content-Type: application/json");

// connection to database

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$data = file_get_contents("php://input");
$uploaded = json_decode($data, true);


$query = $db->query("DELETE FROM curriculums WHERE id = :id", [
    "id" => $uploaded["id"],
]);

$json = [
    "result" => $query->rowCount() > 0,
];

echo json_encode($json);