<?php

namespace Core;


class Schema
{
    public static function migrate()
    {

        $db = App::resolve(Database::class);

        // $db->query("
        //     DROP DATABASE IF EXISTS `advising_system_mis2024`;
        //     CREATE DATABASE `advising_system_mis2024` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
        // ");


        $db->query("
            DROP TABLE IF EXISTS faculties;
            
            CREATE TABLE faculties (
                id INT AUTO_INCREMENT PRIMARY KEY,
                username VARCHAR(100) NOT NULL,
                firstname VARCHAR(100) NOT NULL,
                middlename VARCHAR(100),
                lastname VARCHAR(100) NOT NULL,
                contact VARCHAR(15),
                email VARCHAR(100),
                college VARCHAR(100),
                department VARCHAR(100),
                employeeId VARCHAR(50) NOT NULL,
                role VARCHAR(50),
                advisee VARCHAR(100),
                curriculum VARCHAR(100),
                password VARCHAR(255) NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
            );
        ");

        $db->query("
            DROP TABLE IF EXISTS students;
            
            CREATE TABLE students (
                id INT AUTO_INCREMENT PRIMARY KEY,
                firstname VARCHAR(100) NOT NULL,
                middlename VARCHAR(100),
                lastname VARCHAR(100) NOT NULL,
                contact VARCHAR(15),
                email VARCHAR(100),
                college VARCHAR(100),
                department VARCHAR(100),
                studentId VARCHAR(50) NOT NULL,
                advisee VARCHAR(50),
                curriculum VARCHAR(100),
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
            );
        ");


        $db->query("
            DROP TABLE IF EXISTS curriculums;
            
            CREATE TABLE curriculums (
                id INT AUTO_INCREMENT PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                college VARCHAR(100),
                department VARCHAR(100),
                effective_from_ay VARCHAR(10),  -- Assuming format like '2025-2026'
                
                subject_year INT,
                subject_semester ENUM('1st Semester', '2nd Semester', 'Summer'),  -- Assuming semesters
                subject_code VARCHAR(50),
                subject_description TEXT,
                subject_lecture_units INT,
                subject_laboratory_units INT,
                subject_total_units INT,
                subject_pre_requisite TEXT,
                subject_electives TEXT,
                
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            );
        ");


        $db->query("INSERT INTO faculties (username, employeeId, role, contact, password) VALUES (:username, :employeeId, :role, :contact, :password)", [
            "username" => "Admin",
            "employeeId" => "Admin",
            "role" => "Admin",
            "contact" => password_hash("12345678", PASSWORD_DEFAULT),
            "password" => password_hash("12345678", PASSWORD_DEFAULT),
        ]);
    }
}
