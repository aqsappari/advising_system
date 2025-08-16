-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 01:41 PM
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
-- Table structure for table `2000_00000`
--

CREATE TABLE `2000_00000` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2000_00000`
--

INSERT INTO `2000_00000` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'PENDING', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'PENDING', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'PENDING', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'PENDING', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'PENDING', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'PENDING', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'PENDING', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'PENDING', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'PENDING', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'PENDING', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', '1.0', 'PASSED', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', '2.75', 'PASSED', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'PENDING', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'PENDING', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'PENDING', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'PENDING', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'PENDING', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'PENDING', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'PENDING', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'PENDING', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'PENDING', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', '1.50', 'PASSED', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'PENDING', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'PENDING', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'PENDING', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'PENDING', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'PENDING', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'PENDING', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'PENDING', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'PENDING', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', '5.0', 'FAILED', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'PENDING', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'PENDING', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'PENDING', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'INCREMENTED', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', '1.0', 'PASSED', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'PENDING', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'PENDING', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'PENDING', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'PENDING', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'PENDING', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'PENDING', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'PENDING', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'PENDING', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'PENDING', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'PENDING', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'PENDING', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'INCREMENTED', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'INCREMENTED', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'PENDING', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'PENDING', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'PENDING', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'PENDING', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'PENDING', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'PENDING', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'PENDING', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'INCREMENTED', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'INCREMENTED', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', '1.0', 'PASSED', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'CANCELLED', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'INCREMENTED', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'PENDING', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'PENDING', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'PENDING', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'PENDING', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'PENDING', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'INCREMENTED', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'INCREMENTED', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(131, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', '1.0', 'PASSED', ''),
(132, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'PENDING', ''),
(133, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(134, 'BSCPE-curriculum-2018-2019', '4', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(135, 'BSCPE-curriculum-2018-2019', '4', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(136, 'BSCPE-curriculum-2018-2019', '5', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(137, 'BSCPE-curriculum-2018-2019', '5', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(138, 'BSCPE-curriculum-2018-2019', '5', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(139, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(140, 'BSCPE-curriculum-2018-2019', '5', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2000_00001`
--

CREATE TABLE `2000_00001` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2000_00001`
--

INSERT INTO `2000_00001` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', '1.0', 'PASSED', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'PENDING', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'PENDING', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'PENDING', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'PENDING', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'PENDING', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'PENDING', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'PENDING', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'PENDING', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'PENDING', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', '1.0', 'PASSED', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'PENDING', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'PENDING', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'PENDING', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'PENDING', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'PENDING', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'PENDING', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'PENDING', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'PENDING', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'PENDING', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2020_01923`
--

CREATE TABLE `2020_01923` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2020_01923`
--

INSERT INTO `2020_01923` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', '5.0', 'FAILED', '0999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 55980999 876 5598'),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', 'INC', 'ON HOLD', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', '3.0', 'PASSED', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', '5.0', 'FAILED', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', '2.25', 'PASSED', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', '2.75', 'PASSED', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', 'INC', 'ON HOLD', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', 'INC', 'ON HOLD', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', 'INC', 'ON HOLD', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', '2.75', 'PASSED', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', '5.0', 'FAILED', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'INCREMENTED', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'INCREMENTED', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', '1.75', 'PASSED', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', '2.50', 'PASSED', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'INCREMENTED', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'INCREMENTED', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', '3.0', 'PASSED', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', '3.0', 'PASSED', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', '5.0', 'FAILED', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', 'AW', 'DROPPED', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', '5.0', 'FAILED', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'INCREMENTED', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'PENDING', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'INCREMENTED', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'PENDING', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'PENDING', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'PENDING', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'PENDING', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'INCREMENTED', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'INCREMENTED', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'INCREMENTED', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'INCREMENTED', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'INCREMENTED', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'INCREMENTED', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'INCREMENTED', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'INCREMENTED', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'INCREMENTED', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'INCREMENTED', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'INCREMENTED', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'INCREMENTED', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'INCREMENTED', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'INCREMENTED', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(128, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(129, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(130, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(131, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(132, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(133, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(134, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'INCREMENTED', ''),
(135, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(136, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(137, 'BSCPE-curriculum-2018-2019', '4', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(138, 'BSCPE-curriculum-2018-2019', '4', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(139, 'BSCPE-curriculum-2018-2019', '5', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(140, 'BSCPE-curriculum-2018-2019', '5', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(141, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(142, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(143, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(144, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(145, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(146, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(147, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(148, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'PENDING', ''),
(149, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(150, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(151, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(152, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(153, 'BSCPE-curriculum-2018-2019', '5', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(154, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'PENDING', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00001`
--

CREATE TABLE `2021_00001` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00001`
--

INSERT INTO `2021_00001` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'PENDING', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'PENDING', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'PENDING', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'PENDING', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'PENDING', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'PENDING', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'PENDING', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'PENDING', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'PENDING', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'PENDING', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'PENDING', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00002`
--

CREATE TABLE `2021_00002` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00002`
--

INSERT INTO `2021_00002` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00003`
--

CREATE TABLE `2021_00003` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00003`
--

INSERT INTO `2021_00003` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00004`
--

CREATE TABLE `2021_00004` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00004`
--

INSERT INTO `2021_00004` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00005`
--

CREATE TABLE `2021_00005` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00005`
--

INSERT INTO `2021_00005` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00006`
--

CREATE TABLE `2021_00006` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00006`
--

INSERT INTO `2021_00006` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00007`
--

CREATE TABLE `2021_00007` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00007`
--

INSERT INTO `2021_00007` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00008`
--

CREATE TABLE `2021_00008` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00008`
--

INSERT INTO `2021_00008` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00009`
--

CREATE TABLE `2021_00009` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00009`
--

INSERT INTO `2021_00009` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00010`
--

CREATE TABLE `2021_00010` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00010`
--

INSERT INTO `2021_00010` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00011`
--

CREATE TABLE `2021_00011` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00011`
--

INSERT INTO `2021_00011` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00012`
--

CREATE TABLE `2021_00012` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00012`
--

INSERT INTO `2021_00012` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00013`
--

CREATE TABLE `2021_00013` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00013`
--

INSERT INTO `2021_00013` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00014`
--

CREATE TABLE `2021_00014` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00014`
--

INSERT INTO `2021_00014` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00015`
--

CREATE TABLE `2021_00015` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00015`
--

INSERT INTO `2021_00015` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00016`
--

CREATE TABLE `2021_00016` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00016`
--

INSERT INTO `2021_00016` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00017`
--

CREATE TABLE `2021_00017` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00017`
--

INSERT INTO `2021_00017` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00018`
--

CREATE TABLE `2021_00018` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00018`
--

INSERT INTO `2021_00018` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00019`
--

CREATE TABLE `2021_00019` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00019`
--

INSERT INTO `2021_00019` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00020`
--

CREATE TABLE `2021_00020` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00020`
--

INSERT INTO `2021_00020` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00021`
--

CREATE TABLE `2021_00021` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00021`
--

INSERT INTO `2021_00021` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00022`
--

CREATE TABLE `2021_00022` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00022`
--

INSERT INTO `2021_00022` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00023`
--

CREATE TABLE `2021_00023` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00023`
--

INSERT INTO `2021_00023` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00024`
--

CREATE TABLE `2021_00024` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00024`
--

INSERT INTO `2021_00024` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00025`
--

CREATE TABLE `2021_00025` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00025`
--

INSERT INTO `2021_00025` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00026`
--

CREATE TABLE `2021_00026` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00026`
--

INSERT INTO `2021_00026` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00027`
--

CREATE TABLE `2021_00027` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00027`
--

INSERT INTO `2021_00027` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00028`
--

CREATE TABLE `2021_00028` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00028`
--

INSERT INTO `2021_00028` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

-- --------------------------------------------------------

--
-- Table structure for table `2021_00029`
--

CREATE TABLE `2021_00029` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'BSCPE-curriculum-2018-2019',
  `subject_year` varchar(255) NOT NULL,
  `subject_semester` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `subject_total_units` varchar(255) NOT NULL,
  `subject_pre_requisite` varchar(255) NOT NULL,
  `subject_electives` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unavailable',
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2021_00029`
--

INSERT INTO `2021_00029` (`id`, `name`, `subject_year`, `subject_semester`, `subject_code`, `subject_description`, `subject_total_units`, `subject_pre_requisite`, `subject_electives`, `grade`, `status`, `remarks`) VALUES
(1, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BEM 111', 'Engineering Calculus 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(2, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'BES 111', 'Chemistry for Engineers', '4', 'None', 'None', NULL, 'Unavailable', ''),
(3, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 111', 'Computer Engineering as Discipline', '1', 'None', 'None', NULL, 'Unavailable', ''),
(4, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CPE 113', 'Programming Logic and Design', '2', 'None', 'None', NULL, 'Unavailable', ''),
(5, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'US 101', 'Understanding the Self', '3', 'None', 'None', NULL, 'Unavailable', ''),
(6, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'MATH 100', 'Mathematics in the Modern World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(7, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'CAS 101', 'Purposive Communication', '3', 'None', 'None', NULL, 'Unavailable', ''),
(8, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'FIL 101', 'Komunikasyon sa Academikong Filipno', '3', 'None', 'None', NULL, 'Unavailable', ''),
(9, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'PE 101', 'Physical Education 1', '2', 'None', 'None', NULL, 'Unavailable', ''),
(10, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'NSTP 1', 'NSTP 1', '3', 'None', 'None', NULL, 'Unavailable', ''),
(11, 'BSCPE-curriculum-2018-2019', '1', '1st Semester', 'EPIC 1', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(12, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 112', 'Engineering Calculus 2', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(13, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BES 112', 'Physics for Engineers', '4', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(14, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 112', 'Computer Hardware Fundamentals', '1', 'None', 'None', NULL, 'Unavailable', ''),
(15, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 114', 'Object Oriented Programming', '2', 'CPE 113', 'None', NULL, 'Unavailable', ''),
(16, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'BEM 114', 'Engineering Data Analysis', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(17, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'CPE 116', 'Discrete Mathematics', '3', 'BEM 111', 'None', NULL, 'Unavailable', ''),
(18, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'STS 100', 'Science, Technology & Society', '3', 'None', 'None', NULL, 'Unavailable', ''),
(19, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'ETHICS 101', 'Ethics', '3', 'None', 'None', NULL, 'Unavailable', ''),
(20, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'PE 102', 'Physical Education 2', '2', 'PE 101', 'None', NULL, 'Unavailable', ''),
(21, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'NSTP 2', 'NSTP 2', '3', 'None', 'None', NULL, 'Unavailable', ''),
(22, 'BSCPE-curriculum-2018-2019', '1', '2nd Semester', 'EPIC 2', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(23, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BEM 121', 'Differential Equations', '3', 'BEM 112', 'None', NULL, 'Unavailable', ''),
(24, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 121', 'Computer-Aided Drafting', '1', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(25, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 121', 'Data Structures and Algorithms', '2', 'CPE 114', 'None', NULL, 'Unavailable', ''),
(26, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 123', 'Fundamentals of Electrical Circuits', '4', 'BES 112', 'None', NULL, 'Unavailable', ''),
(27, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 125', 'Design Thinking and Innovation', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(28, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'CPE 127', 'Project Management', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(29, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'BES 123', 'Engineering Economics', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(30, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'HIST 100', 'Life and Works of Rizal', '3', 'None', 'None', NULL, 'Unavailable', ''),
(31, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'A&H 102', 'Great Books', '3', 'None', 'None', NULL, 'Unavailable', ''),
(32, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'PE 103', 'Physical Education 3', '2', 'None', 'None', NULL, 'Unavailable', ''),
(33, 'BSCPE-curriculum-2018-2019', '2', '1st Semester', 'EPIC 3', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(34, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BEM 122', 'Numerical Methods', '3', 'BES 112', 'None', NULL, 'Unavailable', ''),
(35, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'BES 122', 'Environmental Science', '3', 'BES 111', 'None', NULL, 'Unavailable', ''),
(36, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 122', 'Software Design', '4', 'CPE 121', 'None', NULL, 'Unavailable', ''),
(37, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 124', 'Fundamentals of Digital Systems', '2', 'CPE 116', 'None', NULL, 'Unavailable', ''),
(38, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 126', 'Fundamentals of Artificial Intelligence', '3', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(39, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 128', 'Fundamentals of Electronic Circuits', '4', 'CPE 123', 'None', NULL, 'Unavailable', ''),
(40, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CPE 129', 'Web Development', '2', '2nd Year Standing', 'None', NULL, 'Unavailable', ''),
(41, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'CW 101', 'The Contemporary World', '3', 'None', 'None', NULL, 'Unavailable', ''),
(42, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'PE 104', 'Physical Education', '2', 'PE 103', 'None', NULL, 'Unavailable', ''),
(43, 'BSCPE-curriculum-2018-2019', '2', '2nd Semester', 'EPIC 4', '', '3', 'None', 'None', NULL, 'Unavailable', ''),
(44, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 131', 'Logic Circuits and Design', '4', 'CPE 128, CPE 124', 'None', NULL, 'Unavailable', ''),
(45, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CP 133', 'Introduction to HDL', '1', 'CPE 113, CPE 128', 'None', NULL, 'Unavailable', ''),
(46, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 135', 'Feedback and Control Systems', '4', 'BEM 122, CPE 128', 'None', NULL, 'Unavailable', ''),
(47, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 137', 'Computer Engineering Drafting and Design', '1', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(48, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Vision Intelligence and Machine Learning', '3', '3rd Year Standing', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(49, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Software Engineering', '3', '3rd Year Standing', 'Software Development Track', NULL, 'Unavailable', ''),
(50, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Fundamentals of Networking', '3', '3rd Year Standing', 'System and Network Administration', NULL, 'Unavailable', ''),
(51, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 139', 'Financial Accounting for Entrepreneurs', '3', '3rd Year Standing', 'Technopreneurship', NULL, 'Unavailable', ''),
(52, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 141', 'Fundamentals of Mixed Signals and Sensors', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(53, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 143', 'Operating Systems', '3', 'None', 'None', NULL, 'Unavailable', ''),
(54, 'BSCPE-curriculum-2018-2019', '3', '1st Semester', 'CPE 145', 'Fundamentals of Industrial Electronics with PLC', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(55, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 132', 'Digital Signal Processing', '4', 'CPE 135', 'None', NULL, 'Unavailable', ''),
(56, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 134', 'Data and Digital Communications', '4', 'CPE 128', 'None', NULL, 'Unavailable', ''),
(57, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 136', 'Microprocessors', '4', 'CPE 131', 'None', NULL, 'Unavailable', ''),
(58, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 138', 'Methods of Research and Research Writing', '3', 'BEM 114, GEC 115, CPE 131, CPE 139', 'None', NULL, 'Unavailable', ''),
(59, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Deep Learning', '3', 'CPE 139', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(60, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Mobile Application Development', '3', 'CPE 139', 'Software Development Track', NULL, 'Unavailable', ''),
(61, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Routing Protocols and Concepts', '3', 'CPE 139', 'System and Network Administration', NULL, 'Unavailable', ''),
(62, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 142', 'Development Enterprise', '3', 'CPE 139', 'Technopreneurship', NULL, 'Unavailable', ''),
(63, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'CPE 144', 'Basic Occupational Health & Safety', '3', '3rd Year Standing', 'None', NULL, 'Unavailable', ''),
(64, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'A&H 100', 'Arts Appreciation', '3', 'None', 'None', NULL, 'Unavailable', ''),
(65, 'BSCPE-curriculum-2018-2019', '3', '2nd Semester', 'HIST 101', 'Readings in Philippine History', '3', 'None', 'None', NULL, 'Unavailable', ''),
(66, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 147', 'Embedded Systems', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(67, 'BSCPE-curriculum-2018-2019', '3', 'Summer', 'CPE 149', 'CpE Practice and Design 1', '1', 'CPE 136, CPE 138', 'None', NULL, 'Unavailable', ''),
(68, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 151', 'CpE Laws and Professional Practice', '2', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(69, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 153', 'On the Job Training', '3', 'Candidate for Graduation', 'None', NULL, 'Unavailable', ''),
(70, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 155', 'CpE Practice and Design 2', '1', 'CPE 149', 'None', NULL, 'Unavailable', ''),
(71, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 157', 'Computer Networks and Security', '4', 'CPE 134', 'None', NULL, 'Unavailable', ''),
(72, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Data Analytics', '3', 'CPE 142', 'Robotics Process Automation (RPA)', NULL, 'Unavailable', ''),
(73, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management Information System', '3', 'CPE 142', 'Software Development Track', NULL, 'Unavailable', ''),
(74, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'LAN Switching and Wireless', '3', 'CPE 142', 'System and Network Administration', NULL, 'Unavailable', ''),
(75, 'BSCPE-curriculum-2018-2019', '4', '1st Semester', 'CPE 159', 'Management of Technology Enterprise', '3', 'CPE 142', 'Technopreneurship', NULL, 'Unavailable', ''),
(76, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 142', 'Technopreneurship', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(77, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'BES 152', 'Emerging Technologies in CpE', '3', '4th Year Standing', 'None', NULL, 'Unavailable', ''),
(78, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 154', 'Computer Architecture and Organization', '4', 'CPE 136', 'None', NULL, 'Unavailable', ''),
(79, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 156', 'CpE Practice and Design 3', '1', 'CPE 155', 'None', NULL, 'Unavailable', ''),
(80, 'BSCPE-curriculum-2018-2019', '4', '2nd Semester', 'CPE 158', 'Seminars and Field Trips', '1', '4th Year Standing', 'None', NULL, 'Unavailable', '');

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
-- Indexes for table `2000_00000`
--
ALTER TABLE `2000_00000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2000_00001`
--
ALTER TABLE `2000_00001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_01923`
--
ALTER TABLE `2020_01923`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00001`
--
ALTER TABLE `2021_00001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00002`
--
ALTER TABLE `2021_00002`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00003`
--
ALTER TABLE `2021_00003`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00004`
--
ALTER TABLE `2021_00004`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00005`
--
ALTER TABLE `2021_00005`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00006`
--
ALTER TABLE `2021_00006`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00007`
--
ALTER TABLE `2021_00007`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00008`
--
ALTER TABLE `2021_00008`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00009`
--
ALTER TABLE `2021_00009`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00010`
--
ALTER TABLE `2021_00010`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00011`
--
ALTER TABLE `2021_00011`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00012`
--
ALTER TABLE `2021_00012`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00013`
--
ALTER TABLE `2021_00013`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00014`
--
ALTER TABLE `2021_00014`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00015`
--
ALTER TABLE `2021_00015`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00016`
--
ALTER TABLE `2021_00016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00017`
--
ALTER TABLE `2021_00017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00018`
--
ALTER TABLE `2021_00018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00019`
--
ALTER TABLE `2021_00019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00020`
--
ALTER TABLE `2021_00020`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00021`
--
ALTER TABLE `2021_00021`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00022`
--
ALTER TABLE `2021_00022`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00023`
--
ALTER TABLE `2021_00023`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00024`
--
ALTER TABLE `2021_00024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00025`
--
ALTER TABLE `2021_00025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00026`
--
ALTER TABLE `2021_00026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00027`
--
ALTER TABLE `2021_00027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00028`
--
ALTER TABLE `2021_00028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_00029`
--
ALTER TABLE `2021_00029`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `2000_00000`
--
ALTER TABLE `2000_00000`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `2000_00001`
--
ALTER TABLE `2000_00001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `2020_01923`
--
ALTER TABLE `2020_01923`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `2021_00001`
--
ALTER TABLE `2021_00001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00002`
--
ALTER TABLE `2021_00002`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00003`
--
ALTER TABLE `2021_00003`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00004`
--
ALTER TABLE `2021_00004`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00005`
--
ALTER TABLE `2021_00005`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00006`
--
ALTER TABLE `2021_00006`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00007`
--
ALTER TABLE `2021_00007`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00008`
--
ALTER TABLE `2021_00008`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00009`
--
ALTER TABLE `2021_00009`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00010`
--
ALTER TABLE `2021_00010`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00011`
--
ALTER TABLE `2021_00011`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00012`
--
ALTER TABLE `2021_00012`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00013`
--
ALTER TABLE `2021_00013`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00014`
--
ALTER TABLE `2021_00014`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00015`
--
ALTER TABLE `2021_00015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00016`
--
ALTER TABLE `2021_00016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00017`
--
ALTER TABLE `2021_00017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00018`
--
ALTER TABLE `2021_00018`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00019`
--
ALTER TABLE `2021_00019`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00020`
--
ALTER TABLE `2021_00020`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00021`
--
ALTER TABLE `2021_00021`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00022`
--
ALTER TABLE `2021_00022`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00023`
--
ALTER TABLE `2021_00023`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00024`
--
ALTER TABLE `2021_00024`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00025`
--
ALTER TABLE `2021_00025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00026`
--
ALTER TABLE `2021_00026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00027`
--
ALTER TABLE `2021_00027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00028`
--
ALTER TABLE `2021_00028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2021_00029`
--
ALTER TABLE `2021_00029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
