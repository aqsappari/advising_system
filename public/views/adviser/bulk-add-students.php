<?php
// Disable error display but enable logging
error_reporting(E_ALL);
ini_set('display_errors', 0);
ini_set('log_errors', 1);
ini_set('error_log', __DIR__ . '/error_log.txt');

// Ensure JSON response format
header("Content-Type: application/json");
ob_clean(); // Clear any previous output
session_start();

// Check session role
if (!isset($_SESSION['role'])) {
    echo json_encode(["success" => false, "message" => "Unauthorized"]);
    exit;
}

if ($_SESSION['role'] == 'Admin' || $_SESSION['role'] == 'None') {
    echo json_encode(["success" => false, "message" => "Access denied"]);
    exit;
}

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

// Read and decode JSON input
$input = json_decode($_POST['json_data'], true);

$adviser = $_SESSION['employeeId'];
$curriculum = $_SESSION['curriculum'];
$batch = $_SESSION['batch'];
$department = "BS Computer Engineering";

$results = [];
$duplicateCount = 0;
$successCount = 0;

// try {
// $db->beginTransaction();

foreach ($input as $student) {
    $student = array_map(fn($value) => trim(strval($value)), $student);

    $requiredFields = ['fname', 'lname', 'studentId', 'contact', 'email'];
    $missingFields = [];

    foreach ($requiredFields as $field) {
        if (empty($student[$field])) {
            $missingFields[] = $field;
        }
    }

    if (!empty($missingFields)) {
        $results[] = [
            'success' => false,
            'studentId' => $student['studentId'] ?? 'N/A',
            'message' => 'Missing fields: ' . implode(', ', $missingFields)
        ];
        continue;
    }

    if (!preg_match('/^09\d{9}$/', $student['contact'])) {
        $results[] = [
            'success' => false,
            'studentId' => $student['studentId'],
            'message' => 'Invalid contact format (09XXXXXXXXX)'
        ];
        continue;
    }

    $studentId = preg_replace('/[^a-zA-Z0-9-]/i', '', $student['studentId']);

    if ($db->checkIfStudentIdExist($studentId)) {
        $results[] = [
            'success' => false,
            'studentId' => $studentId,
            'message' => 'Student ID already exists'
        ];
        $duplicateCount++;
        continue;
    }

    $db->query(
        "INSERT INTO students 
            (firstname, middlename, lastname, contact, email, studentId, adviser, curriculum, batch, department) 
            VALUES (:fname, :mname, :lname, :contact, :email, :studentId, :adviser, :curriculum, :batch, :dept)",
        [
            "fname" => ucwords(strtolower($student['fname'])),
            "mname" => ucwords(strtolower($student['mname'] ?? '')),
            "lname" => ucwords(strtolower($student['lname'])),
            "contact" => $student['contact'],
            "email" => strtolower($student['email']),
            "studentId" => $studentId,
            "adviser" => $adviser,
            "curriculum" => $curriculum,
            "batch" => $batch,
            "dept" => $department
        ]
    );

    $studentTable = preg_replace('/[^a-z0-9_]/i', '_', $studentId);

    $db->query(
        "CREATE TABLE `{$studentTable}` (
        `id` INT NOT NULL AUTO_INCREMENT, 
        `name` VARCHAR(255) NOT NULL DEFAULT '{$curriculum}', 
        `subject_year` VARCHAR(255) NOT NULL, 
        `subject_semester` VARCHAR(255) NOT NULL, 
        `subject_code` VARCHAR(255) NOT NULL, 
        `subject_description` VARCHAR(255) NOT NULL,
        `subject_total_units` VARCHAR(255) NOT NULL, 
        `subject_pre_requisite` VARCHAR(255) NOT NULL, 
        `subject_electives` VARCHAR(255) NOT NULL, 
        `grade` VARCHAR(255) NOT NULL NULL, 
        `status` VARCHAR(255) NOT NULL DEFAULT 'Unavailable', 
        PRIMARY KEY (`id`)
        ) ENGINE = InnoDB"
    );

    $db->query("ALTER TABLE `{$studentTable}` ADD `remarks` TEXT NOT NULL AFTER `status`");

    $db->query(
        "INSERT INTO `{$studentTable}` 
        (subject_year, subject_semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives) 
        SELECT 
        subject_year, subject_semester, subject_code, subject_description, subject_total_units, subject_pre_requisite, subject_electives
        FROM `curriculums` WHERE name = ?",
        [$curriculum]
    );


    $successCount++;
}

$msg = "Successfully added students: {$successCount}.... Failed: {$duplicateCount}";

echo json_encode($msg);
$_SESSION['__flash']['msg'] = $msg;

// sleep(6);
header('location: /students');

exit;
?>