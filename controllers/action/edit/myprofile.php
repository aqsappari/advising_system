<?php


if (!isset($_SESSION['role'])) {
    header('location: /login');
    die();
}

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

if (!isset($_POST['fname'])) {
    $_SESSION['__flash']['err'] = "Error! Input your firstname";
    header('location: /myaccount/adviser/profile');
}

if (!isset($_POST['lname'])) {
    $_SESSION['__flash']['err'] = "Error! Input your lastname";
    header('location: /myaccount/adviser/profile');
}

if (!isset($_POST['contact'])) {
    $_SESSION['__flash']['err'] = "Error! Input your Contact Number";
    header('location: /myaccount/adviser/profile');
}

$fname = $_POST['fname'];
$mname = $_POST['mname'] ?? "";
$lname = $_POST['lname'];
$contact = $_POST['contact'];
$email = $_POST['email'] ?? "";
$employeeId = $_SESSION['employeeId'];
$user = $db->getUserById($_SESSION['employeeId']);

if (password_verify($_POST['password'], $user['password'])) {
    $username = "{$fname[0]}{$fname[1]}.{$lname}";
    $db->query("UPDATE faculties SET firstname = :fname, middlename = :mname, lastname = :lname, contact = :contact, email = :email, username = :uname WHERE employeeId = :employeeId", [
        'fname' => $fname,
        'mname' => $mname,
        'lname' => $lname,
        'contact' => $contact,
        'email' => $email,
        'uname' => $username,
        'employeeId' => $employeeId
    ]);
    $_SESSION['__flash']['msg'] = "Changes are successfully applied";
    header('location: /myaccount/adviser/profile');
} else {
    $_SESSION['__flash']['err'] = "Error! Password Incorrect";
    header('location: /myaccount/adviser/profile');
}

die();
