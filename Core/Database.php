<?php

namespace Core;

use PDO;

class Database
{

    public $conn;

    // public function __construct($config, $db_uname = 'sql12763884', $db_pass = 'FiepuAAHT4')
    public function __construct($config, $db_uname = 'root', $db_pass = '')
    {

        $dsn = 'mysql:' . http_build_query($config, '', ';');

        $this->conn = new PDO($dsn, $db_uname, $db_pass, [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }

    public function query($query, $params = [])
    {
        $statement = $this->conn->prepare($query);

        $statement->execute($params);

        return $statement;
    }

    public function getTotalYearsOfCurriculum($name)
    {
        return $this->query('SELECT DISTINCT subject_year FROM curriculums WHERE name = ? ORDER BY id DESC LIMIT 1', [$name])->fetchAll()[0]['subject_year'];
    }

    public function getMaxUnitsByYearAndSemester($name, $year, $semester, $isFiltered = true)
    {
        $max_year = $this->getTotalYearsOfCurriculum($name);
        $year = (int) $year > $max_year ? $max_year : (int) $year;

        $query = 'SELECT subject_total_units 
              FROM curriculums 
              WHERE name = ? 
              AND subject_year = ? 
              AND subject_semester = ?';

        if ($isFiltered) {
            $query = 'SELECT subject_total_units 
              FROM curriculums 
              WHERE name = ? 
              AND subject_year = ? 
              AND subject_semester = ? 
              AND subject_code NOT LIKE "EPIC%" 
              AND subject_code NOT LIKE "NSTP%"';
        }

        $subjects = $this->query($query, [$name, $year, $semester])->fetchAll();
        return array_sum(array_column($subjects, 'subject_total_units'));
    }

    public function getUserById($id)
    {
        $query = 'SELECT * FROM faculties WHERE employeeId = ?';
        $faculty = $this->query($query, [$id])->fetch();
        return $faculty;
    }

    public function getUserByUsername($username)
    {
        $query = 'SELECT * FROM faculties WHERE username = ?';
        $faculty = $this->query($query, [$username])->fetch();
        return $faculty;
    }

    public function getUsers($username)
    {
        $query = 'SELECT * FROM faculties WHERE username = ?';
        return $this->query($query, [$username])->fetchAll();
    }

    public function user($employeeId)
    {
        $query = 'SELECT * FROM faculties WHERE employeeId = ?';
        $user = $this->query($query, [$employeeId])->fetch();
        return $user;
    }

    public function getCurriculumDetailsByName($curriculum)
    {
        return $this->query("SELECT name, effective_from_ay, college, department  FROM curriculums WHERE name = ?", [$curriculum])->fetch();
    }

    public function getCurriculumDataByName($curriculum)
    {
        return $this->query("SELECT * FROM curriculums WHERE name = ?", [$curriculum])->fetchAll();
    }

    public function checkIfStudentIdExist($studentId)
    {
        $students = $this->query("SELECT studentId FROM students WHERE studentId = ?", [$studentId])->fetchAll();
        if (sizeof($students) > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function getStudentById($studentId)
    {
        return $this->query("SELECT * FROM students WHERE studentId = ?", [$studentId])->fetch();
    }

    public function getYearsToCompleteCurriculum($studentId)
    {
        $studentTable = preg_replace('/[\s-]+/', '_', $studentId);
        $years = $this->query("SELECT DISTINCT subject_year FROM `{$studentTable}`")->fetchAll();
        return sizeOf($years);
    }

    public function getYearsShouldToCompleteCurriculum($curriculum)
    {
        // $curriculumTable = preg_replace('/[\s-]+/', '_', $curriculum);
        $years = $this->query("SELECT DISTINCT subject_year FROM `curriculums` WHERE name = ?", [$curriculum])->fetchAll();
        return sizeOf($years);
    }

    public function getSubjectDetailByCode($student, $code)
    {
        return $this->query("SELECT * FROM `{$student}` WHERE subject_code = ?", [$code])->fetchAll();
    }

    public function close()
    {
        return $this->conn = null;
    }

}
