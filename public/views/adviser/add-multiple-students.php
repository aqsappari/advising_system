<?php
use Core\App;
use Core\Database;

header("Content-Type: application/json");

// Check if it's a POST request
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(["error" => "Invalid request method"]);
    http_response_code(405);
    exit;
}

// Decode the JSON request body
$inputData = json_decode(file_get_contents("php://input"), true);

if (!$inputData || !is_array($inputData)) {
    echo json_encode(["error" => "Invalid JSON data"]);
    http_response_code(400);
    exit;
}

$db = App::resolve(Database::class);
$errors = [];
$successCount = 0;

foreach ($inputData as $student) {
    $fname = $student['First Name'] ?? null;
    $mname = $student['Middle Name'] ?? null;
    $lname = $student['Last Name'] ?? null;
    $studentId = $student['Student ID'] ?? null;
    $contact = $student['Contact No.'] ?? null;
    $email = $student['Email Address'] ?? null;

    if (!$fname || !$lname || !$studentId || !$contact || !$email) {
        $errors[] = "Missing required fields for student ID: " . ($studentId ?? "Unknown");
        continue;
    }

    if ($db->checkIfStudentIdExist($studentId)) {
        $errors[] = "Student ID $studentId already exists";
        continue;
    }

    $db->query(
        "INSERT INTO students 
        (firstname, middlename, lastname, contact, email, studentId, adviser, curriculum, batch, department) 
        VALUES (:firstname, :middlename, :lastname, :contact, :email, :studentId, :adviser, :curriculum, :batch, :dept)",
        [
            "firstname" => $fname,
            "middlename" => $mname,
            "lastname" => $lname,
            "contact" => $contact,
            "email" => $email,
            "studentId" => $studentId,
            "adviser" => $_SESSION['employeeId'],
            "curriculum" => $_SESSION['curriculum'],
            "batch" => $_SESSION['batch'],
            "dept" => "BS Computer Engineering"
        ]
    );

    $successCount++;
}

// Return JSON response
echo json_encode([
    "message" => "$successCount students added successfully",
    "errors" => $errors
]);
exit;
