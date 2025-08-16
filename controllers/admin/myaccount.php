<?php

session_start();

if (!isset($_SESSION['employeeId'])) {
    header('location: /');
    die();
}

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$user = $db->user($_SESSION['employeeId']);
$location = $_SESSION['location'];



view('admin/myaccount.view.php', [
    'heading' => 'My Account',
    'user' => $user,
    'location' => $location
]);