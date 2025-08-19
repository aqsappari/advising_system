-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2025 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advising_system_mis2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `curriculums`
--

CREATE TABLE `curriculums` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `college` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `effective_from_ay` varchar(10) DEFAULT NULL,
  `subject_year` int(11) DEFAULT NULL,
  `subject_semester` enum('1st Semester','2nd Semester','Summer') DEFAULT NULL,
  `subject_code` varchar(50) DEFAULT NULL,
  `subject_description` text DEFAULT NULL,
  `subject_lecture_units` int(11) DEFAULT NULL,
  `subject_laboratory_units` int(11) DEFAULT NULL,
  `subject_total_units` int(11) DEFAULT NULL,
  `subject_pre_requisite` text DEFAULT NULL,
  `subject_electives` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculums`
--

INSERT INTO `curriculums` (`id`, `name`, `college`, `department`, `effective_from_ay`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_lecture_units`, `subject_laboratory_units`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `created_at`) VALUES
(2, 'None', 'None', 'None', 'None', 0, '', 'MST 101', 'environmental science', 3, 0, 3, 'None', 'General Education Electives', '2025-03-13 18:56:21'),
(3, 'None', 'None', 'None', 'None', 0, '', 'SSP 103', 'gender and society', 3, 0, 3, 'None', 'General Education Electives', '2025-03-13 19:32:28'),
(4, 'None', 'None', 'None', 'None', 0, '', 'A&H 101', 'great books', 3, 0, 3, 'None', 'General Education Electives', '2025-03-13 19:33:02'),
(5, 'None', 'None', 'None', 'None', 0, '', 'MST 102', 'people and the earth\'s ecosystem', 3, 0, 3, 'None', 'General Education Electives', '2025-03-13 19:33:43'),
(6, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'BEM 111', 'Engineering Calculus 1', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(7, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'BES 111', 'Chemistry for Engineers', 3, 1, 4, 'None', 'None', '2025-03-13 21:48:30'),
(8, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', 1, 0, 1, 'None', 'None', '2025-03-13 21:48:30'),
(9, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'CPE 113', 'Programming Logic and Design', 0, 2, 2, 'None', 'None', '2025-03-13 21:48:30'),
(10, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'US 101', 'Understanding the Self', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(11, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'MATH 100', 'Mathematics in the Modern World', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(12, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'CAS 101', 'Purposive Communication', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(13, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(14, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'PE 101', 'Physical Education 1', 2, 0, 2, 'None', 'None', '2025-03-13 21:48:30'),
(15, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'NSTP 1', 'NSTP 1', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(16, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '1st Semester', 'EPIC 1', '', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(17, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'BEM 112', 'Engineering Calculus 2', 3, 0, 3, 'BEM 111', 'None', '2025-03-13 21:48:30'),
(18, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'BES 112', 'Physics for Engineers', 3, 1, 4, 'BEM 111', 'None', '2025-03-13 21:48:30'),
(19, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', 0, 1, 1, 'None', 'None', '2025-03-13 21:48:30'),
(20, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'CPE 114', 'Object Oriented Programming', 0, 2, 2, 'CPE 113', 'None', '2025-03-13 21:48:30'),
(21, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'BEM 114', 'Engineering Data Analysis', 3, 0, 3, 'BEM 111', 'None', '2025-03-13 21:48:30'),
(22, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'CPE 116', 'Discrete Mathematics', 3, 0, 3, 'BEM 111', 'None', '2025-03-13 21:48:30'),
(23, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'STS 100', 'Science, Technology & Society', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(24, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'ETHICS 101', 'Ethics', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(25, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'PE 102', 'Physical Education 2', 2, 0, 2, 'PE 101', 'None', '2025-03-13 21:48:30'),
(26, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'NSTP 2', 'NSTP 2', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(27, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 1, '2nd Semester', 'EPIC 2', '', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(28, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'BEM 121', 'Differential Equations', 3, 0, 3, 'BEM 112', 'None', '2025-03-13 21:48:30'),
(29, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'BES 121', 'Computer-Aided Drafting', 0, 1, 1, '2nd Year Standing', 'None', '2025-03-13 21:48:30'),
(30, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'CPE 121', 'Data Structures and Algorithms', 0, 2, 2, 'CPE 114', 'None', '2025-03-13 21:48:30'),
(31, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', 3, 1, 4, 'BES 112', 'None', '2025-03-13 21:48:30'),
(32, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'CPE 125', 'Design Thinking and Innovation', 3, 0, 3, '2nd Year Standing', 'None', '2025-03-13 21:48:30'),
(33, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'CPE 127', 'Project Management', 2, 0, 2, '2nd Year Standing', 'None', '2025-03-13 21:48:30'),
(34, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'BES 123', 'Engineering Economics', 3, 0, 3, '2nd Year Standing', 'None', '2025-03-13 21:48:30'),
(35, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'HIST 100', 'Life and Works of Rizal', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(36, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'A&H 102', 'Great Books', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(37, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'PE 103', 'Physical Education 3', 2, 0, 2, 'None', 'None', '2025-03-13 21:48:30'),
(38, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '1st Semester', 'EPIC 3', '', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(39, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'BEM 122', 'Numerical Methods', 3, 0, 3, 'BES 112', 'None', '2025-03-13 21:48:30'),
(40, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'BES 122', 'Environmental Science', 3, 0, 3, 'BES 111', 'None', '2025-03-13 21:48:30'),
(41, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'CPE 122', 'Software Design', 3, 1, 4, 'CPE 121', 'None', '2025-03-13 21:48:30'),
(42, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', 2, 0, 2, 'CPE 116', 'None', '2025-03-13 21:48:30'),
(43, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', 2, 1, 3, '2nd Year Standing', 'None', '2025-03-13 21:48:30'),
(44, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', 3, 1, 4, 'CPE 123', 'None', '2025-03-13 21:48:30'),
(45, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'CPE 129', 'Web Development', 0, 2, 2, '2nd Year Standing', 'None', '2025-03-13 21:48:30'),
(46, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'CW 101', 'The Contemporary World', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(47, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'PE 104', 'Physical Education', 2, 0, 2, 'PE 103', 'None', '2025-03-13 21:48:30'),
(48, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 2, '2nd Semester', 'EPIC 4', '', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(49, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 131', 'Logic Circuits and Design', 3, 1, 4, 'CPE 128, CPE 124', 'None', '2025-03-13 21:48:30'),
(50, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CP 133', 'Introduction to HDL', 0, 1, 1, 'CPE 113, CPE 128', 'None', '2025-03-13 21:48:30'),
(51, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 135', 'Feedback and Control Systems', 3, 1, 4, 'BEM 122, CPE 128', 'None', '2025-03-13 21:48:30'),
(52, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', 0, 1, 1, 'CPE 128', 'None', '2025-03-13 21:48:30'),
(53, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', 2, 1, 3, '3rd Year Standing', 'Robotics Process Automation (RPA)', '2025-03-13 21:48:30'),
(54, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 139', 'Software Engineering', 2, 1, 3, '3rd Year Standing', 'Software Development Track', '2025-03-13 21:48:30'),
(55, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 139', 'Fundamentals of Networking', 2, 1, 3, '3rd Year Standing', 'System and Network Administration', '2025-03-13 21:48:30'),
(56, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', 2, 1, 3, '3rd Year Standing', 'Technopreneurship', '2025-03-13 21:48:30'),
(57, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', 3, 1, 4, 'CPE 128', 'None', '2025-03-13 21:48:30'),
(58, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 143', 'Operating Systems', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(59, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', 3, 1, 4, 'CPE 128', 'None', '2025-03-13 21:48:30'),
(60, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 132', 'Digital Signal Processing', 3, 1, 4, 'CPE 135', 'None', '2025-03-13 21:48:30'),
(61, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 134', 'Data and Digital Communications', 3, 1, 4, 'CPE 128', 'None', '2025-03-13 21:48:30'),
(62, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 136', 'Microprocessors', 3, 1, 4, 'CPE 131', 'None', '2025-03-13 21:48:30'),
(63, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', 3, 0, 3, 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', '2025-03-13 21:48:30'),
(64, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 142', 'Deep Learning', 2, 1, 3, 'CPE 139', 'Robotics Process Automation (RPA)', '2025-03-13 21:48:30'),
(65, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 142', 'Mobile Application Development', 2, 1, 3, 'CPE 139', 'Software Development Track', '2025-03-13 21:48:30'),
(66, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', 2, 1, 3, 'CPE 139', 'System and Network Administration', '2025-03-13 21:48:30'),
(67, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 142', 'Development Enterprise', 2, 1, 3, 'CPE 139', 'Technopreneurship', '2025-03-13 21:48:30'),
(68, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', 3, 0, 3, '3rd Year Standing', 'None', '2025-03-13 21:48:30'),
(69, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'A&H 100', 'Arts Appreciation', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(70, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, '2nd Semester', 'HIST 101', 'Readings in Philippine History', 3, 0, 3, 'None', 'None', '2025-03-13 21:48:30'),
(71, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, 'Summer', 'CPE 147', 'Embedded Systems', 3, 1, 4, 'CPE 136', 'None', '2025-03-13 21:48:30'),
(72, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 3, 'Summer', 'CPE 149', 'CpE Practice and Design 1', 0, 1, 1, 'CPE 136, CPE 138', 'None', '2025-03-13 21:48:30'),
(73, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', 2, 0, 2, '4th Year Standing', 'None', '2025-03-13 21:48:30'),
(74, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 153', 'On the Job Training', 3, 0, 3, 'Candidate for Graduation', 'None', '2025-03-13 21:48:30'),
(75, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 155', 'CpE Practice and Design 2', 0, 1, 1, 'CPE 149', 'None', '2025-03-13 21:48:30'),
(76, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 157', 'Computer Networks and Security', 3, 1, 4, 'CPE 134', 'None', '2025-03-13 21:48:30'),
(77, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 159', 'Data Analytics', 2, 1, 3, 'CPE 142', 'Robotics Process Automation (RPA)', '2025-03-13 21:48:30'),
(78, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 159', 'Management Information System', 2, 1, 3, 'CPE 142', 'Software Development Track', '2025-03-13 21:48:30'),
(79, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 159', 'LAN Switching and Wireless', 2, 1, 3, 'CPE 142', 'System and Network Administration', '2025-03-13 21:48:30'),
(80, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '1st Semester', 'CPE 159', 'Management of Technology Enterprise', 2, 1, 3, 'CPE 142', 'Technopreneurship', '2025-03-13 21:48:30'),
(81, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '2nd Semester', 'BES 142', 'Technopreneurship', 3, 0, 3, '4th Year Standing', 'None', '2025-03-13 21:48:30'),
(82, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', 3, 0, 3, '4th Year Standing', 'None', '2025-03-13 21:48:30'),
(83, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', 3, 1, 4, 'CPE 136', 'None', '2025-03-13 21:48:30'),
(84, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', 0, 1, 1, 'CPE 155', 'None', '2025-03-13 21:48:30'),
(85, 'BSCPE-curriculum-2018-2019', 'College of Engineering', 'BS Computer Engineering', '2018-2019', 4, '2nd Semester', 'CPE 158', 'Seminars and Field Trips', 0, 1, 1, '4th Year Standing', 'None', '2025-03-13 21:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `employeeId` varchar(50) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `advisee` varchar(100) DEFAULT NULL,
  `curriculum` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `username`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `college`, `department`, `employeeId`, `role`, `advisee`, `curriculum`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', NULL, '', '$2y$12$DCpAIlnz', NULL, NULL, NULL, 'Admin', 'Admin', NULL, NULL, '$2y$12$s5HUH20wikFMiumdavgGt.VMm0Wi8M63wzkt.cBYXXjyvKguUoPcC', '2025-03-13 17:00:34', '2025-03-13 17:00:34'),
(3, 'Qu.Sappari', 'Qusai', '', 'Sappari', '09123456789', 'emailme@email.com', NULL, 'BS Computer Engineering', '5679072242', 'Adviser', '2021-2022', 'BSCPE-curriculum-2018-2019', '$2y$12$7aGETOiYHj/XPkiCy2TjYucCPkbtHjszSDMMCZpWbUAM4ivLDtEMC', '2025-03-13 22:52:58', '2025-03-13 22:53:08'),
(4, 'JC.Salatan', 'JC', '', 'Salatan', '09123456789', 'emailme@email.com', NULL, 'BS Computer Engineering', '4643425729', 'Adviser', 'A.Y 2023-2024', 'BSCPE-curriculum-2018-2019', '$2y$12$1zjm6kDmjX0iIU0Zrrz/Yu7v4Gg7lxRUWlXlBpR9Oy.wyFlFJQa0W', '2025-05-15 02:51:40', '2025-05-15 02:52:33'),
(5, 'Ja.Yao', 'Janssen', 'Go', 'Yao', '09998765598', 'janssen@yahoo.com', NULL, 'BS Computer Engineering', '1250774889', 'Adviser', '2027-2028', 'BSCPE-curriculum-2018-2019', '$2y$12$PabWSvBMIkDADWt5LEl6g.YLZi13ziZU//uV/3hHY6abRPhxP4JD.', '2025-05-15 04:23:22', '2025-05-15 04:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `studentId` varchar(50) NOT NULL,
  `adviser` varchar(50) DEFAULT NULL,
  `curriculum` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `batch` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Yet Enrolled',
  `year_level` int(11) NOT NULL DEFAULT 0,
  `elective` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `college`, `department`, `studentId`, `adviser`, `curriculum`, `created_at`, `updated_at`, `batch`, `status`, `year_level`, `elective`) VALUES
(30, 'Qusai', '', 'Sappari', '09123456789', 'emailme@email.com', 'College of Engineering', 'BS Computer Engineering', '2000-00000', '5679072242', 'BSCPE-curriculum-2018-2019', '2025-05-06 01:14:51', '2025-05-15 04:17:25', '2021-2022', 'ENROLLED', 0, NULL),
(33, 'Fname', 'Mname', 'Lname', '09123456789', 'emailme@email.com', 'College of Engineering', 'BS Computer Engineering', '2000-00001', '5679072242', 'BSCPE-curriculum-2018-2019', '2025-05-12 08:15:57', '2025-05-15 07:23:49', '2021-2022', 'Not Yet Enrolled', 1, NULL),
(96, 'Herald', 'Victoriano', 'Suenan', '09123456789', 'herald@gmail', 'College of Engineering', 'BS Computer Engineering', '2020-01923', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:29:42', '2025-05-15 04:45:30', '2027-2028', 'ENROLLED', 2, NULL),
(97, 'Ayesha Mariam', '', 'Abdulgani', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00001', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 05:03:23', '2027-2028', 'ENROLLED', 1, NULL),
(98, 'Muhammad Azim', '', 'Amil', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00002', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(99, 'Louie', '', 'Apolinario', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00003', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(100, 'Meshary', '', 'Aquino', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00004', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(101, 'Sweitenia', '', 'Candido', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00005', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(102, 'Dinrobert', '', 'Cañon', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00006', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(103, 'Bryan', '', 'Dellera', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00007', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(104, 'Glen', '', 'Enriquez', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00008', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(105, 'Xedric', '', 'Enriquez', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00009', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(106, 'Floyd John', '', 'Florita', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00010', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(107, 'Dea', '', 'Gomez', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00011', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:24', '2025-05-15 04:52:24', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(108, 'Keith Wilmer', '', 'Handumon', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00012', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(109, 'Hayes Makydale', '', 'Haron', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00013', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(110, 'Alhabshi', '', 'Jalang', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00014', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(111, 'Aysher', '', 'Jauhari', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00015', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(112, 'Brian', '', 'Lanorias', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00016', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(113, 'Ashley', '', 'Manahan', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00017', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(114, 'Omar Dennis', '', 'Orense', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00018', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(115, 'Vincent Jobin', '', 'Pahayahay', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00019', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(116, 'Elris', '', 'Palileo', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00020', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(117, 'Marcis Nica-ana', '', 'Pioquinto', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00021', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(118, 'Jason Radz', '', 'Remonde', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00022', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(119, 'Neil Jasper', '', 'Rivera', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00023', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(120, 'Jc Lawrence', '', 'Salatan', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00024', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(121, 'Ahmad Qusai', '', 'Sappari', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00025', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(122, 'Eden', '', 'Sardan', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00026', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(123, 'Ivan', '', 'Wee', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00027', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(124, 'Janssen', '', 'Yao', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00028', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL),
(125, 'Dennis', '', 'Toledo', '09112223331', 'emailme@email.com', NULL, 'BS Computer Engineering', '2021-00029', '1250774889', 'BSCPE-curriculum-2018-2019', '2025-05-15 04:52:25', '2025-05-15 04:52:25', '2027-2028', 'Not Yet Enrolled', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculums`
--
ALTER TABLE `curriculums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculums`
--
ALTER TABLE `curriculums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
