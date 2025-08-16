<?php

session_start();

if (!isset($_SESSION['employeeId'])) {
    header('location: /');
}

if ($_SESSION['role'] == "Admin") {
    header('location: /faculty');
}

if ($_SESSION['role'] == "None") {
    header('location: /logout');
}

view('adviser/add-student.view.php');