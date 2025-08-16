<?php


if (!isset($_SESSION['role'])) {
    header('location: /');
    die();
}

if ($_SESSION['role'] != 'Admin') {
    header('location: /');
    die();
}

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$json = json_decode($_POST['subjectsJSON'], true);

$CURRICULUM_NAME = $_POST['curriculumName'];
$CURRICULUM_YEAR = $_POST['curriculumYear'];
$CURRICULUM_COLLEGE = $_POST['curriculumCollege'];
$CURRICULUM_DEPT = $_POST['curriculumDept'];

foreach ($json as $subject) {

    // $db->query(
    //     "INSERT INTO `curriculums` (
    //         `name`, `college`, `department`, `effective_from_ay`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, 
    //         `subject_lecture_units`, `subject_laboratory_units`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`
    //     ) VALUES ( 
    //         :curriculum_name, :college, :department, :curriculum_year, :subject_year, :subject_semester, :subject_code, :subject_description,
    //         :subject_lecture_units, :subject_laboratory_units, :subject_total_units, :subject_pre_requisite, :subject_electives",
    //     [
    //         'curriculum_name' => $CURRICULUM_NAME,
    //         'college' => $CURRICULUM_COLLEGE,
    //         'department' => $CURRICULUM_DEPT,
    //         'curriculum_year' => $CURRICULUM_YEAR,
    //         'subject_year' => $subject['subject_year'],
    //         'subject_semester' => $subject['subject_semester'],
    //         "subject_code" => $subject["subject_code"],
    //         "subject_description" => $subject["subject_description"],
    //         "subject_lecture_units" => (int) $subject["subject_lecture_units"],
    //         "subject_laboratory_units" => (int) $subject["subject_laboratory_units"],
    //         "subject_total_units" => (int) $subject["subject_total_units"],
    //         'subject_pre_requisite' => $subject['subject_pre_requisite'],
    //         'subject_electives' => $subject['subject_electives']
    //     ]
    // );

    // $db->query(
    //     "INSERT INTO `curriculums` (
    //         `name`, `college`, `department`, `effective_from_ay`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, 
    //         `subject_lecture_units`, `subject_laboratory_units`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`
    //     ) VALUES ( 
    //         :curriculum_name, :college, :department, :curriculum_year, :subject_year, :subject_semester, :subject_code, :subject_description,
    //         :subject_lecture_units, :subject_laboratory_units, :subject_total_units, :subject_pre_requisite, :subject_electives )",
    //     [
    //         'curriculum_name' => $CURRICULUM_NAME,
    //         'college' => $CURRICULUM_COLLEGE,
    //         'department' => $CURRICULUM_DEPT,
    //         'curriculum_year' => $CURRICULUM_YEAR,
    //         'subject_year' => $subject['subjectYear'],
    //         'subject_semester' => $subject['subjectSemester'],
    //         "subject_code" => $subject["subjectCode"],
    //         "subject_description" => $subject["subjectDesc"],
    //         "subject_lecture_units" => (int) $subject["subjectLec"],
    //         "subject_laboratory_units" => (int) $subject["subjectLab"],
    //         "subject_total_units" => (int) $subject["subjectUnit"],
    //         'subject_pre_requisite' => $subject['subjectPreq'],
    //         'subject_electives' => $subject['subjectElec']
    //     ]
    // );
}

$_SESSION['__flash']['msg'] = 'Curriculum successfully Created';
header('location: /curriculums');

die();