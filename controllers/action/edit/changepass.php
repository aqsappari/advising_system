<?php


if (!isset($_SESSION['role'])) {
    header('location: /login');
    die();
}

$location = $_SESSION['role'] === 'Admin' ? 'location: /myaccount/admin/password' : 'location: /myaccount/adviser/password';

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$employeeId = $_SESSION['employeeId'];
$password = $_POST['password'];

$user = $db->query("SELECT password FROM faculties WHERE employeeId = ?", [$employeeId])->fetch();

if (!password_verify($password, $user['password'])) {
    $_SESSION['__flash']['err']['errPass'] = "You Have Entered The Wrong Password";
    header($location);
    die();
}


if (!($_POST['newPassword'] === $_POST['repeat-password'])) {
    $_SESSION['__flash']['err']['errPassRepeat'] = "Entries Do Not Match";
    header($location);
    die();
}

$newpassword = password_hash($_POST['newPassword'], PASSWORD_DEFAULT);

$db->query("UPDATE faculties SET password = :newpassword WHERE employeeId = :employeeId", [
    "newpassword" => $newpassword,
    "employeeId" => $employeeId
]);
$_SESSION['__flash']['msg'] = "You Have Successfully Changed Your Password";
header($location);
die();

// header('location: /logout');