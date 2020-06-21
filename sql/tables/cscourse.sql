-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 12:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www40`
--

-- --------------------------------------------------------

--
-- Table structure for table `cscourse`
--

CREATE TABLE `cscourse` (
  `id` int(10) NOT NULL,
  `semester_year` varchar(100) NOT NULL,
  `course_num_section` varchar(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `course_title` varchar(500) NOT NULL,
  `credit_hours` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `day_time` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `time_created` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `time_updated` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cscourse`
--

INSERT INTO `cscourse` (`id`, `semester_year`, `course_num_section`, `course_id`, `course_title`, `credit_hours`, `instructor`, `day_time`, `place`, `time_created`, `time_updated`) VALUES
(1, 'Spring 2020', 'CS 1134.101', '24297', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Karen Doore', 'Tuesday 1:00pm - 3:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.655387', '2020-04-26 16:46:05.000000'),
(2, 'Spring 2020', 'CS 1134.102', '24337', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Karen Doore', 'Wednesday 1:00pm - 3:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.702124', '2020-04-26 21:14:16.702124'),
(3, 'Spring 2020', 'CS 1136.101', '23496', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel , Stephen Perkins', 'Monday 1:00pm - 3:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.704592', '2020-04-26 21:14:16.704592'),
(4, 'Spring 2020', 'CS 1136.102', '23497', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel , Stephen Perkins', 'Tuesday 4:00pm - 6:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.706771', '2020-04-26 21:14:16.706771'),
(5, 'Spring 2020', 'CS 1136.103', '28275', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel', 'Friday 4:00pm - 6:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.708738', '2020-04-26 21:14:16.708738'),
(6, 'Spring 2020', 'CS 1136.104', '24569', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel , Stephen Perkins', 'Wednesday 4:00pm - 6:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.710624', '2020-04-26 21:14:16.710624'),
(7, 'Spring 2020', 'CS 1136.105', '28276', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel', 'Thursday 1:00pm - 3:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.712544', '2020-04-26 21:14:16.712544'),
(8, 'Spring 2020', 'CS 1136.106', '28353', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel', 'Monday 4:00pm - 6:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.714455', '2020-04-26 21:14:16.714455'),
(9, 'Spring 2020', 'CS 1136.107', '28352', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel', 'Thursday 10:00am - 12:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.716736', '2020-04-26 21:14:16.716736'),
(10, 'Spring 2020', 'CS 1136.108', '30234', 'Computer Science Laboratory', '(1 Semester Credit Hour)', 'Don Vogel', 'Friday 1:00pm - 3:45pm', 'ECSS 2.103', '2020-04-26 21:14:16.718968', '2020-04-26 21:14:16.718968'),
(11, 'Spring 2020', 'CS 1324.001', '24751', 'Introduction to Programming for Biomedical Engineers', '(3 Semester Credit Hours)', 'Mark Paulk', 'Monday & Wednesday 4:00pm - 5:15pm', 'CR 1.202', '2020-04-26 21:14:16.720864', '2020-04-26 21:14:16.720864'),
(12, 'Spring 2020', 'CS 1325.001', '23737', 'Introduction to Programming', '(3 Semester Credit Hours)', 'Charles Shields', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSS 2.305', '2020-04-26 21:14:16.722769', '2020-04-26 21:14:16.722769'),
(13, 'Spring 2020', 'CS 1325.003', '24690', 'Introduction to Programming', '(3 Semester Credit Hours)', 'Charles Shields', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.203', '2020-04-26 21:14:16.724664', '2020-04-26 21:14:16.724664'),
(14, 'Spring 2020', 'CS 1334.001', '24296', 'Programming Fundamentals for Non-Majors', '(3 Semester Credit Hours)', 'Jeyakesavan Veerasamy', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSS 2.306', '2020-04-26 21:14:16.726545', '2020-04-26 21:14:16.726545'),
(15, 'Spring 2020', 'CS 1334.002', '24338', 'Programming Fundamentals for Non-Majors', '(3 Semester Credit Hours)', 'Gordon Arnold', 'Monday & Wednesday 8:30am - 9:45am', 'ECSS 2.306', '2020-04-26 21:14:16.728461', '2020-04-26 21:14:16.728461'),
(16, 'Spring 2020', 'CS 1335.001', '23847', 'Computer Science I for Non-majors', '(3 Semester Credit Hours)', 'Priya Narayanasami', 'Tuesday & Thursday 8:30am - 9:45am', 'JSOM 11.202', '2020-04-26 21:14:16.730403', '2020-04-26 21:14:16.730403'),
(17, 'Spring 2020', 'CS 1335.002', '24542', 'Computer Science I for Non-majors', '(3 Semester Credit Hours)', 'Karen Doore', 'Monday & Wednesday 8:30am - 9:45am', 'JSOM 2.722', '2020-04-26 21:14:16.732924', '2020-04-26 21:14:16.732924'),
(18, 'Spring 2020', 'CS 1335.003', '24689', 'Computer Science I for Non-majors', '(3 Semester Credit Hours)', 'Jeyakesavan Veerasamy', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.410', '2020-04-26 21:14:16.735125', '2020-04-26 21:14:16.735125'),
(19, 'Spring 2020', 'CS 1336.001', '24074', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Shyam Karrah', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSW 1.365', '2020-04-26 21:14:16.737197', '2020-04-26 21:14:16.737197'),
(20, 'Spring 2020', 'CS 1336.002', '24119', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Srimathi Srinivasan', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.312', '2020-04-26 21:14:16.739161', '2020-04-26 21:14:16.739161'),
(21, 'Spring 2020', 'CS 1336.003', '28277', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Laurie Thompson', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSW 1.355', '2020-04-26 21:14:16.741131', '2020-04-26 21:14:16.741131'),
(22, 'Spring 2020', 'CS 1336.004', '28278', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Laurie Thompson', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.312', '2020-04-26 21:14:16.743063', '2020-04-26 21:14:16.743063'),
(23, 'Spring 2020', 'CS 1336.005', '24992', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Priya Narayanasami', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSW 3.250', '2020-04-26 21:14:16.745039', '2020-04-26 21:14:16.745039'),
(24, 'Spring 2020', 'CS 1336.501', '28279', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Charles Shields', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.312', '2020-04-26 21:14:16.746964', '2020-04-26 21:14:16.746964'),
(25, 'Spring 2020', 'CS 1336.502', '28346', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Srimathi Srinivasan', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.312', '2020-04-26 21:14:16.749350', '2020-04-26 21:14:16.749350'),
(26, 'Spring 2020', 'CS 1336.503', '30219', 'Programming Fundamentals', '(3 Semester Credit Hours)', 'Scott Dollinger', 'Monday & Wednesday 5:30pm - 6:45pm', 'CB3 1.302', '2020-04-26 21:14:16.751313', '2020-04-26 21:14:16.751313'),
(27, 'Spring 2020', 'CS 1337.001', '23925', 'Computer Science I', '(3 Semester Credit Hours)', 'Gordon Arnold', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSS 2.312', '2020-04-26 21:14:16.753277', '2020-04-26 21:14:16.753277'),
(28, 'Spring 2020', 'CS 1337.002', '23926', 'Computer Science I', '(3 Semester Credit Hours)', 'Miguel Razo Razo', 'Monday & Wednesday 10:00am - 11:15am', 'ECSS 2.312', '2020-04-26 21:14:16.755145', '2020-04-26 21:14:16.755145'),
(29, 'Spring 2020', 'CS 1337.003', '24109', 'Computer Science I', '(3 Semester Credit Hours)', 'Doug DeGroot', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.312', '2020-04-26 21:14:16.756758', '2020-04-26 21:14:16.756758'),
(30, 'Spring 2020', 'CS 1337.004', '23927', 'Computer Science I', '(3 Semester Credit Hours)', 'John Cole', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 2.312', '2020-04-26 21:14:16.758636', '2020-04-26 21:14:16.758636'),
(31, 'Spring 2020', 'CS 1337.005', '28280', 'Computer Science I', '(3 Semester Credit Hours)', 'Erik Peterson', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSS 2.311', '2020-04-26 21:14:16.760427', '2020-04-26 21:14:16.760427'),
(32, 'Spring 2020', 'CS 1337.006', '24775', 'Computer Science I', '(3 Semester Credit Hours)', 'Jeyakesavan Veerasamy', 'Monday & Wednesday 8:30am - 9:45am', 'ECSS 2.312', '2020-04-26 21:14:16.762090', '2020-04-26 21:14:16.762090'),
(33, 'Spring 2020', 'CS 1337.007', '23928', 'Computer Science I', '(3 Semester Credit Hours)', 'Jason Smith', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.311', '2020-04-26 21:14:16.763991', '2020-04-26 21:14:16.763991'),
(34, 'Spring 2020', 'CS 1337.008', '24427', 'Computer Science I', '(3 Semester Credit Hours)', 'Jason Smith', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSS 2.312', '2020-04-26 21:14:16.766167', '2020-04-26 21:14:16.766167'),
(35, 'Spring 2020', 'CS 1337.009', '24639', 'Computer Science I', '(3 Semester Credit Hours)', 'John Cole', 'Monday & Wednesday 10:00am - 11:15am', 'ECSS 2.203', '2020-04-26 21:14:16.767879', '2020-04-26 21:14:16.767879'),
(36, 'Spring 2020', 'CS 1337.010', '24692', 'Computer Science I', '(3 Semester Credit Hours)', 'Doug DeGroot', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.312', '2020-04-26 21:14:16.769505', '2020-04-26 21:14:16.769505'),
(37, 'Spring 2020', 'CS 1337.011', '24771', 'Computer Science I', '(3 Semester Credit Hours)', 'Khiem Le', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.312', '2020-04-26 21:14:16.771447', '2020-04-26 21:14:16.771447'),
(38, 'Spring 2020', 'CS 1337.012', '28347', 'Computer Science I', '(3 Semester Credit Hours)', 'Scott Dollinger', 'Monday, Wednesday, Friday 12:00pm - 12:50pm', 'JO 4.614', '2020-04-26 21:14:16.773388', '2020-04-26 21:14:16.773388'),
(39, 'Spring 2020', 'CS 1337.013', '28281', 'Computer Science I', '(3 Semester Credit Hours)', 'Don Vogel', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSS 2.306', '2020-04-26 21:14:16.775272', '2020-04-26 21:14:16.775272'),
(40, 'Spring 2020', 'CS 1337.014', '28348', 'Computer Science I', '(3 Semester Credit Hours)', 'Scott Dollinger', 'Monday, Wednesday, Friday 3:00pm - 3:50pm', 'CB3 1.302', '2020-04-26 21:14:16.777144', '2020-04-26 21:14:16.777144'),
(41, 'Spring 2020', 'CS 1337.015', '28282', 'Computer Science I', '(3 Semester Credit Hours)', 'Khiem Le', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSS 2.312', '2020-04-26 21:14:16.779025', '2020-04-26 21:14:16.779025'),
(42, 'Spring 2020', 'CS 1337.701', '24877', 'Computer Science I', '(3 Semester Credit Hours)', 'Don Vogel , Jason Smith', ' undefined', 'undefined', '2020-04-26 21:14:16.781302', '2020-04-26 21:14:16.781302'),
(43, 'Spring 2020', 'CS 2305.001', '23933', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Serdar Erbatur', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.412', '2020-04-26 21:14:16.783801', '2020-04-26 21:14:16.783801'),
(44, 'Spring 2020', 'CS 2305.002', '24024', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Timothy Farage', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 2.311', '2020-04-26 21:14:16.786243', '2020-04-26 21:14:16.786243'),
(45, 'Spring 2020', 'CS 2305.003', '24693', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Simeon Ntafos', 'Tuesday & Thursday 11:30am - 12:45pm', 'FO 3.616', '2020-04-26 21:14:16.788545', '2020-04-26 21:14:16.788545'),
(46, 'Spring 2020', 'CS 2305.004', '28283', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Wei-Pang Chin', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSS 2.306', '2020-04-26 21:14:16.790808', '2020-04-26 21:14:16.790808'),
(47, 'Spring 2020', 'CS 2305.005', '28284', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Wei-Pang Chin', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.203', '2020-04-26 21:14:16.792804', '2020-04-26 21:14:16.792804'),
(48, 'Spring 2020', 'CS 2305.501', '23935', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Timothy Farage', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.305', '2020-04-26 21:14:16.795129', '2020-04-26 21:14:16.795129'),
(49, 'Spring 2020', 'CS 2305.502', '24242', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'James Willson', 'Monday & Wednesday 7:00pm - 8:15pm', 'ECSS 2.203', '2020-04-26 21:14:16.797412', '2020-04-26 21:14:16.797412'),
(50, 'Spring 2020', 'CS 2305.503', '23934', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Daniel Uribe', 'Monday & Wednesday 5:30pm - 6:45pm', 'GR 4.428', '2020-04-26 21:14:16.799780', '2020-04-26 21:14:16.799780'),
(51, 'Spring 2020', 'CS 2305.504', '28285', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Wei-Pang Chin', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.306', '2020-04-26 21:14:16.802091', '2020-04-26 21:14:16.802091'),
(52, 'Spring 2020', 'CS 2305.505', '30220', 'Discrete Mathematics for Computing I', '(3 Semester Credit Hours)', 'Adrian Soncodi', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.415', '2020-04-26 21:14:16.804441', '2020-04-26 21:14:16.804441'),
(53, 'Spring 2020', 'CS 2335.001', '23738', 'Computer Science II for Non-majors', '(3 Semester Credit Hours)', 'Karen Doore', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSS 2.410', '2020-04-26 21:14:16.806854', '2020-04-26 21:14:16.806854'),
(54, 'Spring 2020', 'CS 2335.002', '24027', 'Computer Science II for Non-majors', '(3 Semester Credit Hours)', 'Karen Doore', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSW 3.250', '2020-04-26 21:14:16.809265', '2020-04-26 21:14:16.809265'),
(55, 'Spring 2020', 'CS 2336.001', '24694', 'Computer Science II', '(3 Semester Credit Hours)', 'Mehra Nouroz Borazjany', 'Monday & Wednesday 10:00am - 11:15am', 'ECSS 2.311', '2020-04-26 21:14:16.811404', '2020-04-26 21:14:16.811404'),
(56, 'Spring 2020', 'CS 2336.003', '29650', 'Computer Science II', '(3 Semester Credit Hours)', 'Jason Smith', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.305', '2020-04-26 21:14:16.813649', '2020-04-26 21:14:16.813649'),
(57, 'Spring 2020', 'CS 2336.501', '24125', 'Computer Science II', '(3 Semester Credit Hours)', 'Ziaullah Khan', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSW 1.315', '2020-04-26 21:14:16.816082', '2020-04-26 21:14:16.816082'),
(58, 'Spring 2020', 'CS 2336.503', '29414', 'Computer Science II', '(3 Semester Credit Hours)', 'David Sims', 'Tuesday & Thursday 5:30pm - 6:45pm', 'GR 3.420', '2020-04-26 21:14:16.817737', '2020-04-26 21:14:16.817737'),
(59, 'Spring 2020', 'CS 2336.504', '24762', 'Computer Science II', '(3 Semester Credit Hours)', 'Ebenezer Oladimeji', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.412', '2020-04-26 21:14:16.819227', '2020-04-26 21:14:16.819227'),
(60, 'Spring 2020', 'CS 2337.001', '29428', 'Computer Science II', '(3 Semester Credit Hours)', 'Don Vogel', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSW 3.250', '2020-04-26 21:14:16.821538', '2020-04-26 21:14:16.821538'),
(61, 'Spring 2020', 'CS 3162.051', '24131', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Erik Peterson', 'Monday & Wednesday 1:00pm - 1:50pm', 'FN 2.104', '2020-04-26 21:14:16.823582', '2020-04-26 21:14:16.823582'),
(62, 'Spring 2020', 'CS 3162.052', '29144', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Wei-Pang Chin', 'Tuesday & Thursday 2:30pm - 3:20pm', 'CR 1.212', '2020-04-26 21:14:16.825728', '2020-04-26 21:14:16.825728'),
(63, 'Spring 2020', 'CS 3162.091', '24391', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Erik Peterson', 'Monday & Wednesday 1:00pm - 1:50pm', 'FN 2.104', '2020-04-26 21:14:16.828102', '2020-04-26 21:14:16.828102'),
(64, 'Spring 2020', 'CS 3162.092', '28287', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Wei-Pang Chin', 'Tuesday & Thursday 2:30pm - 3:20pm', 'CR 1.212', '2020-04-26 21:14:16.830450', '2020-04-26 21:14:16.830450'),
(65, 'Spring 2020', 'CS 3162.551', '24240', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Doug DeGroot', 'Monday & Wednesday 5:30pm - 6:20pm', 'CR 1.202', '2020-04-26 21:14:16.832842', '2020-04-26 21:14:16.832842'),
(66, 'Spring 2020', 'CS 3162.552', '30009', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Vidroha Debroy', 'Tuesday & Thursday 5:30pm - 6:20pm', 'GR 4.428', '2020-04-26 21:14:16.835356', '2020-04-26 21:14:16.835356'),
(67, 'Spring 2020', 'CS 3162.591', '24393', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Doug DeGroot', 'Monday & Wednesday 5:30pm - 6:20pm', 'CR 1.202', '2020-04-26 21:14:16.838007', '2020-04-26 21:14:16.838007'),
(68, 'Spring 2020', 'CS 3162.592', '30010', 'Professional Responsibility in Computer Science and Software Engineering', '(1 Semester Credit Hour)', 'Vidroha Debroy', 'Tuesday & Thursday 5:30pm - 6:20pm', 'GR 4.428', '2020-04-26 21:14:16.840469', '2020-04-26 21:14:16.840469'),
(69, 'Spring 2020', 'CS 3305.001', '24023', 'Discrete Mathematics for Computing II', '(3 Semester Credit Hours)', 'Meghana Satpute', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.305', '2020-04-26 21:14:16.842802', '2020-04-26 21:14:16.842802'),
(70, 'Spring 2020', 'CS 3305.002', '28289', 'Discrete Mathematics for Computing II', '(3 Semester Credit Hours)', 'Bhadrachalam Chitturi', 'Tuesday & Thursday 8:30am - 9:45am', 'JSOM 12.206', '2020-04-26 21:14:16.845112', '2020-04-26 21:14:16.845112'),
(71, 'Spring 2020', 'CS 3305.003', '28288', 'Discrete Mathematics for Computing II', '(3 Semester Credit Hours)', 'Meghana Satpute', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.415', '2020-04-26 21:14:16.847130', '2020-04-26 21:14:16.847130'),
(72, 'Spring 2020', 'CS 3305.004', '29718', 'Discrete Mathematics for Computing II', '(3 Semester Credit Hours)', 'Meghana Satpute', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ATC 2.602', '2020-04-26 21:14:16.849324', '2020-04-26 21:14:16.849324'),
(73, 'Spring 2020', 'CS 3305.501', '23499', 'Discrete Mathematics for Computing II', '(3 Semester Credit Hours)', 'Timothy Farage', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 2.410', '2020-04-26 21:14:16.851001', '2020-04-26 21:14:16.851001'),
(74, 'Spring 2020', 'CS 3305.502', '24546', 'Discrete Mathematics for Computing II', '(3 Semester Credit Hours)', 'James Willson', 'Monday & Wednesday 8:30pm - 9:45pm', 'ECSS 2.412', '2020-04-26 21:14:16.852481', '2020-04-26 21:14:16.852481'),
(75, 'Spring 2020', 'CS 3305.HON', '24172', 'Discrete Mathematics for Computing II - Honors', '(3 Semester Credit Hours)', 'Ravi Prakash', 'Tuesday & Thursday 11:30am - 12:45pm', 'FO 1.502', '2020-04-26 21:14:16.854202', '2020-04-26 21:14:16.854202'),
(76, 'Spring 2020', 'CS 3340.001', '24298', 'Computer Architecture', '(3 Semester Credit Hours)', 'Kang Zhang', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSS 2.311', '2020-04-26 21:14:16.855642', '2020-04-26 21:14:16.855642'),
(77, 'Spring 2020', 'CS 3340.002', '24700', 'Computer Architecture', '(3 Semester Credit Hours)', 'Karen Mazidi', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.306', '2020-04-26 21:14:16.857755', '2020-04-26 21:14:16.857755'),
(78, 'Spring 2020', 'CS 3340.003', '28290', 'Computer Architecture', '(3 Semester Credit Hours)', 'Nhut Nguyen', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSN 2.126', '2020-04-26 21:14:16.859635', '2020-04-26 21:14:16.859635'),
(79, 'Spring 2020', 'CS 3340.004', '28291', 'Computer Architecture', '(3 Semester Credit Hours)', 'Gity Karami', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.305', '2020-04-26 21:14:16.861889', '2020-04-26 21:14:16.861889'),
(80, 'Spring 2020', 'CS 3340.005', '29658', 'Computer Architecture', '(3 Semester Credit Hours)', 'Kang Zhang', 'Friday 10:00am - 12:45pm', 'ECSN 2.120', '2020-04-26 21:14:16.864208', '2020-04-26 21:14:16.864208'),
(81, 'Spring 2020', 'CS 3340.501', '24430', 'Computer Architecture', '(3 Semester Credit Hours)', 'Karen Mazidi', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.311', '2020-04-26 21:14:16.866484', '2020-04-26 21:14:16.866484'),
(82, 'Spring 2020', 'CS 3340.502', '24699', 'Computer Architecture', '(3 Semester Credit Hours)', 'Karen Mazidi', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSW 1.365', '2020-04-26 21:14:16.868577', '2020-04-26 21:14:16.868577'),
(83, 'Spring 2020', 'CS 3340.503', '28292', 'Computer Architecture', '(3 Semester Credit Hours)', 'Nhut Nguyen', 'Tuesday & Thursday 5:30pm - 6:45pm', 'HH 2.502', '2020-04-26 21:14:16.870553', '2020-04-26 21:14:16.870553'),
(84, 'Spring 2020', 'CS 3340.HN1', '24245', 'Computer Architecture - CV Honors', '(3 Semester Credit Hours)', 'Ivor Page', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSW 3.250', '2020-04-26 21:14:16.872880', '2020-04-26 21:14:16.872880'),
(85, 'Spring 2020', 'CS 3341.001', '27843', 'Probability and Statistics in Computer Science and Software Engineering', '(3 Semester Credit Hours)', 'Tristan Whalen', 'Monday & Wednesday 8:30am - 9:45am', 'ECSS 2.410', '2020-04-26 21:14:16.894333', '2020-04-26 21:14:16.894333'),
(86, 'Spring 2020', 'CS 3341.002', '24341', 'Probability and Statistics in Computer Science and Software Engineering', '(3 Semester Credit Hours)', 'Yulia Gel', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.410', '2020-04-26 21:14:16.896868', '2020-04-26 21:14:16.896868'),
(87, 'Spring 2020', 'CS 3341.003', '24120', 'Probability and Statistics in Computer Science and Software Engineering', '(3 Semester Credit Hours)', 'Tristan Whalen', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.410', '2020-04-26 21:14:16.898945', '2020-04-26 21:14:16.898945'),
(88, 'Spring 2020', 'CS 3341.004', '24882', 'Probability and Statistics in Computer Science and Software Engineering', '(3 Semester Credit Hours)', 'Tristan Whalen', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 2.410', '2020-04-26 21:14:16.900861', '2020-04-26 21:14:16.900861'),
(89, 'Spring 2020', 'CS 3341.005', '29635', 'Probability and Statistics in Computer Science and Software Engineering', '(3 Semester Credit Hours)', 'Huizhen Guo', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSW 1.355', '2020-04-26 21:14:16.902538', '2020-04-26 21:14:16.902538'),
(90, 'Spring 2020', 'CS 3341.501', '29636', 'Probability and Statistics in Computer Science and Software Engineering', '(3 Semester Credit Hours)', 'Huizhen Guo', 'Monday & Wednesday 5:30pm - 6:45pm', 'FO 1.202', '2020-04-26 21:14:16.903940', '2020-04-26 21:14:16.903940'),
(91, 'Spring 2020', 'CS 3345.001', '24104', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Greg Ozbirn', 'Monday & Wednesday 10:00am - 11:15am', 'ECSW 1.365', '2020-04-26 21:14:16.905086', '2020-04-26 21:14:16.905086'),
(92, 'Spring 2020', 'CS 3345.002', '24028', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Ziaullah Khan', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.412', '2020-04-26 21:14:16.906263', '2020-04-26 21:14:16.906263'),
(93, 'Spring 2020', 'CS 3345.003', '24517', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Sruthi Chappidi', 'Monday & Wednesday 8:30am - 9:45am', 'JSOM 1.217', '2020-04-26 21:14:16.907702', '2020-04-26 21:14:16.907702'),
(94, 'Spring 2020', 'CS 3345.004', '24029', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Sruthi Chappidi', 'Tuesday & Thursday 8:30am - 9:45am', 'HH 2.502', '2020-04-26 21:14:16.909543', '2020-04-26 21:14:16.909543'),
(95, 'Spring 2020', 'CS 3345.005', '28293', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Greg Ozbirn', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSS 2.415', '2020-04-26 21:14:16.910512', '2020-04-26 21:14:16.910512'),
(96, 'Spring 2020', 'CS 3345.006', '29162', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Meghana Satpute', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.412', '2020-04-26 21:14:16.912042', '2020-04-26 21:14:16.912042'),
(97, 'Spring 2020', 'CS 3345.501', '24313', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Ziaullah Khan', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSW 1.355', '2020-04-26 21:14:16.914605', '2020-04-26 21:14:16.914605'),
(98, 'Spring 2020', 'CS 3345.502', '24995', 'Data Structures and Introduction to Algorithmic Analysis', '(3 Semester Credit Hours)', 'Zachary Stallbohm', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 2.203', '2020-04-26 21:14:16.916806', '2020-04-26 21:14:16.916806'),
(99, 'Spring 2020', 'CS 3354.001', '24032', 'Software Engineering', '(3 Semester Credit Hours)', 'Ebru Cankaya', 'Monday & Wednesday 8:30am - 9:45am', 'ECSS 2.305', '2020-04-26 21:14:16.919160', '2020-04-26 21:14:16.919160'),
(100, 'Spring 2020', 'CS 3354.002', '28294', 'Software Engineering', '(3 Semester Credit Hours)', 'Klyne Smith', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.415', '2020-04-26 21:14:16.921551', '2020-04-26 21:14:16.921551'),
(101, 'Spring 2020', 'CS 3354.003', '24437', 'Software Engineering', '(3 Semester Credit Hours)', 'Mark Paulk', 'Monday & Wednesday 10:00am - 11:15am', 'ECSN 2.110', '2020-04-26 21:14:16.923892', '2020-04-26 21:14:16.923892'),
(102, 'Spring 2020', 'CS 3354.004', '24768', 'Software Engineering', '(3 Semester Credit Hours)', 'Ebru Cankaya', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.311', '2020-04-26 21:14:16.925931', '2020-04-26 21:14:16.925931'),
(103, 'Spring 2020', 'CS 3354.005', '24996', 'Software Engineering', '(3 Semester Credit Hours)', 'Mehra Nouroz Borazjany', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.412', '2020-04-26 21:14:16.928003', '2020-04-26 21:14:16.928003'),
(104, 'Spring 2020', 'CS 3354.006', '24743', 'Software Engineering', '(3 Semester Credit Hours)', 'Andrian Marcus', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSN 2.120', '2020-04-26 21:14:16.930098', '2020-04-26 21:14:16.930098'),
(105, 'Spring 2020', 'CS 3354.0W1', '29705', 'Software Engineering', '(3 Semester Credit Hours)', 'Klyne Smith', ' undefined', 'undefined', '2020-04-26 21:14:16.932619', '2020-04-26 21:14:16.932619'),
(106, 'Spring 2020', 'CS 3354.HON', '24431', 'Software Engineering - Honors', '(3 Semester Credit Hours)', 'Andrian Marcus', 'Tuesday & Thursday 5:30pm - 6:45pm', 'CB3 1.314', '2020-04-26 21:14:16.934939', '2020-04-26 21:14:16.934939'),
(107, 'Spring 2020', 'CS 3360.001', '24695', 'Computer Graphics for Artists and Designers', '(3 Semester Credit Hours)', 'Gordon Arnold', 'Monday & Wednesday 2:30pm - 3:45pm', 'GR 3.302', '2020-04-26 21:14:16.937318', '2020-04-26 21:14:16.937318'),
(108, 'Spring 2020', 'CS 3377.0W1', '24238', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Nhut Nguyen', ' undefined', 'undefined', '2020-04-26 21:14:16.939700', '2020-04-26 21:14:16.939700'),
(109, 'Spring 2020', 'CS 3377.0W2', '24547', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Richard Min', ' undefined', 'undefined', '2020-04-26 21:14:16.941984', '2020-04-26 21:14:16.941984'),
(110, 'Spring 2020', 'CS 3377.0W3', '25008', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Bhanu Kapoor', ' undefined', 'undefined', '2020-04-26 21:14:16.944270', '2020-04-26 21:14:16.944270'),
(111, 'Spring 2020', 'CS 3377.0W4', '28295', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Bhanu Kapoor', ' undefined', 'undefined', '2020-04-26 21:14:16.946494', '2020-04-26 21:14:16.946494'),
(112, 'Spring 2020', 'CS 3377.501', '23739', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Stephen Perkins', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 2.311', '2020-04-26 21:14:16.948863', '2020-04-26 21:14:16.948863'),
(113, 'Spring 2020', 'CS 3377.502', '24339', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Stephen Perkins', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.311', '2020-04-26 21:14:16.950866', '2020-04-26 21:14:16.950866'),
(114, 'Spring 2020', 'CS 3377.503', '29572', 'C C Programming in a UNIX Environment', '(3 Semester Credit Hours)', 'Mohamed Amine Belkoura', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 2.201', '2020-04-26 21:14:16.952997', '2020-04-26 21:14:16.952997'),
(115, 'Spring 2020', 'CS 4141.101', '23500', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Wednesday 1:00pm - 3:45pm', 'ECSN 3.112', '2020-04-26 21:14:16.955348', '2020-04-26 21:14:16.955348'),
(116, 'Spring 2020', 'CS 4141.102', '24133', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Monday 10:00am - 12:45pm', 'ECSN 3.112', '2020-04-26 21:14:16.957641', '2020-04-26 21:14:16.957641'),
(117, 'Spring 2020', 'CS 4141.103', '24371', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Friday 1:00pm - 3:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.008295', '2020-04-26 21:14:17.008295'),
(118, 'Spring 2020', 'CS 4141.104', '24372', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Friday 10:00am - 12:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.012496', '2020-04-26 21:14:17.012496'),
(119, 'Spring 2020', 'CS 4141.105', '24373', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Monday 1:00pm - 3:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.016964', '2020-04-26 21:14:17.016964'),
(120, 'Spring 2020', 'CS 4141.106', '24374', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Wednesday 1:00pm - 3:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.020714', '2020-04-26 21:14:17.020714'),
(121, 'Spring 2020', 'CS 4141.107', '24443', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Friday 1:00pm - 3:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.024025', '2020-04-26 21:14:17.024025'),
(122, 'Spring 2020', 'CS 4141.108', '24623', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Friday 10:00am - 12:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.027127', '2020-04-26 21:14:17.027127'),
(123, 'Spring 2020', 'CS 4141.109', '28296', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Thursday 4:00pm - 6:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.030008', '2020-04-26 21:14:17.030008'),
(124, 'Spring 2020', 'CS 4141.110', '29179', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Monday 10:00am - 12:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.033120', '2020-04-26 21:14:17.033120'),
(125, 'Spring 2020', 'CS 4141.601', '24406', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Tuesday 7:00pm - 9:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.035932', '2020-04-26 21:14:17.035932'),
(126, 'Spring 2020', 'CS 4141.602', '28297', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Thursday 7:00pm - 9:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.038941', '2020-04-26 21:14:17.038941'),
(127, 'Spring 2020', 'CS 4141.603', '29184', 'Digital Systems Laboratory', '(1 Semester Credit Hour)', 'Eric Becker', 'Thursday 7:00pm - 9:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.041423', '2020-04-26 21:14:17.041423'),
(128, 'Spring 2020', 'CS 4141.HON', '24566', 'Digital Systems Laboratory - Honors', '(1 Semester Credit Hour)', 'Ivor Page', 'Thursday 1:00pm - 3:45pm', 'ECSN 3.112', '2020-04-26 21:14:17.043949', '2020-04-26 21:14:17.043949'),
(129, 'Spring 2020', 'CS 4301.001', '28326', 'Special Topics in Computer Science - Cluster Computing', '(3 Semester Credit Hours)', 'Richard Goodrum', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSN 2.120', '2020-04-26 21:14:17.046448', '2020-04-26 21:14:17.046448'),
(130, 'Spring 2020', 'CS 4301.002', '28327', 'Special Topics in Computer Science - Fundamental of Mobile Apps Dev', '(3 Semester Credit Hours)', 'John Cole', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSS 2.410', '2020-04-26 21:14:17.049327', '2020-04-26 21:14:17.049327'),
(131, 'Spring 2020', 'CS 4301.003', '28343', 'Special Topics in Computer Science - Concepts of Cryptography', '(3 Semester Credit Hours)', 'Yvo Desmedt', 'Monday & Friday 11:30am - 12:45pm', 'ECSW 3.210', '2020-04-26 21:14:17.051865', '2020-04-26 21:14:17.051865'),
(132, 'Spring 2020', 'CS 4315.501', '28034', 'Intelligent Systems Design', '(3 Semester Credit Hours)', 'Richard Golden', 'Tuesday & Thursday 5:30pm - 6:45pm', 'GR 4.204', '2020-04-26 21:14:17.054313', '2020-04-26 21:14:17.054313'),
(133, 'Spring 2020', 'CS 4334.501', '24089', 'Numerical Analysis', '(3 Semester Credit Hours)', 'Bentley Garrett', 'Monday & Wednesday 5:30pm - 6:45pm', 'GR 2.302', '2020-04-26 21:14:17.056630', '2020-04-26 21:14:17.056630'),
(134, 'Spring 2020', 'CS 4337.001', '23512', 'Organization of Programming Languages', '(3 Semester Credit Hours)', 'Chris Davis', 'Monday & Wednesday 10:00am - 11:15am', 'ECSS 2.306', '2020-04-26 21:14:17.058987', '2020-04-26 21:14:17.058987'),
(135, 'Spring 2020', 'CS 4337.002', '24301', 'Organization of Programming Languages', '(3 Semester Credit Hours)', 'Richard Min', 'Tuesday & Thursday 4:00pm - 5:15pm', 'JO 4.614', '2020-04-26 21:14:17.061571', '2020-04-26 21:14:17.061571'),
(136, 'Spring 2020', 'CS 4337.003', '24997', 'Organization of Programming Languages', '(3 Semester Credit Hours)', 'Serdar Erbatur', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.306', '2020-04-26 21:14:17.063822', '2020-04-26 21:14:17.063822'),
(137, 'Spring 2020', 'CS 4337.004', '28298', 'Organization of Programming Languages', '(3 Semester Credit Hours)', 'Gity Karami', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.410', '2020-04-26 21:14:17.066307', '2020-04-26 21:14:17.066307'),
(138, 'Spring 2020', 'CS 4337.501', '24549', 'Organization of Programming Languages', '(3 Semester Credit Hours)', 'Fang Li', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.306', '2020-04-26 21:14:17.068273', '2020-04-26 21:14:17.068273'),
(139, 'Spring 2020', 'CS 4337.502', '24993', 'Organization of Programming Languages', '(3 Semester Credit Hours)', 'Ebenezer Oladimeji', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 2.306', '2020-04-26 21:14:17.070149', '2020-04-26 21:14:17.070149'),
(140, 'Spring 2020', 'CS 4337.HON', '23740', 'Organization of Programming Languages - Honors', '(3 Semester Credit Hours)', 'Chris Davis', 'Monday & Wednesday 4:00pm - 5:15pm', 'FN 2.104', '2020-04-26 21:14:17.072156', '2020-04-26 21:14:17.072156'),
(141, 'Spring 2020', 'CS 4341.001', '23501', 'Digital Logic and Computer Design', '(3 Semester Credit Hours)', 'Ebru Cankaya', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.305', '2020-04-26 21:14:17.074185', '2020-04-26 21:14:17.074185'),
(142, 'Spring 2020', 'CS 4341.002', '28299', 'Digital Logic and Computer Design', '(3 Semester Credit Hours)', 'Eric Becker', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.306', '2020-04-26 21:14:17.076526', '2020-04-26 21:14:17.076526'),
(143, 'Spring 2020', 'CS 4341.003', '24552', 'Digital Logic and Computer Design', '(3 Semester Credit Hours)', 'Richard Goodrum', 'Monday & Wednesday 2:30pm - 3:45pm', 'HH 2.502', '2020-04-26 21:14:17.078834', '2020-04-26 21:14:17.078834'),
(144, 'Spring 2020', 'CS 4341.HON', '24442', 'Digital Logic and Computer Design - Honors', '(3 Semester Credit Hours)', 'Ivor Page', 'Monday & Wednesday 10:00am - 11:15am', 'ML2 1.218', '2020-04-26 21:14:17.081328', '2020-04-26 21:14:17.081328'),
(145, 'Spring 2020', 'CS 4347.001', '23513', 'Database Systems', '(3 Semester Credit Hours)', 'Eric Becker', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSS 2.306', '2020-04-26 21:14:17.083802', '2020-04-26 21:14:17.083802'),
(146, 'Spring 2020', 'CS 4347.002', '24432', 'Database Systems', '(3 Semester Credit Hours)', 'Michael Christiansen', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.415', '2020-04-26 21:14:17.086322', '2020-04-26 21:14:17.086322'),
(147, 'Spring 2020', 'CS 4347.003', '24696', 'Database Systems', '(3 Semester Credit Hours)', 'Eric Becker', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSN 2.110', '2020-04-26 21:14:17.088737', '2020-04-26 21:14:17.088737'),
(148, 'Spring 2020', 'CS 4347.004', '28300', 'Database Systems', '(3 Semester Credit Hours)', 'Pushpa Kumar', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSN 2.126', '2020-04-26 21:14:17.091143', '2020-04-26 21:14:17.091143'),
(149, 'Spring 2020', 'CS 4347.005', '28301', 'Database Systems', '(3 Semester Credit Hours)', 'Wei Wu', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.311', '2020-04-26 21:14:17.093559', '2020-04-26 21:14:17.093559'),
(150, 'Spring 2020', 'CS 4347.006', '28302', 'Database Systems', '(3 Semester Credit Hours)', 'Pushpa Kumar', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 2.306', '2020-04-26 21:14:17.095900', '2020-04-26 21:14:17.095900'),
(151, 'Spring 2020', 'CS 4347.501', '30190', 'Database Systems', '(3 Semester Credit Hours)', 'Michael Christiansen', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSW 3.210', '2020-04-26 21:14:17.098296', '2020-04-26 21:14:17.098296'),
(152, 'Spring 2020', 'CS 4348.001', '24037', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Greg Ozbirn', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.311', '2020-04-26 21:14:17.100757', '2020-04-26 21:14:17.100757'),
(153, 'Spring 2020', 'CS 4348.002', '24036', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Greg Ozbirn', 'Tuesday & Thursday 1:00pm - 2:15pm', 'FO 1.502', '2020-04-26 21:14:17.103152', '2020-04-26 21:14:17.103152'),
(154, 'Spring 2020', 'CS 4348.003', '24697', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Sridhar Alagar', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 2.203', '2020-04-26 21:14:17.105476', '2020-04-26 21:14:17.105476'),
(155, 'Spring 2020', 'CS 4348.004', '28304', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Neeraj Mittal', 'Monday & Wednesday 8:30am - 9:45am', 'JSOM 1.110', '2020-04-26 21:14:17.107680', '2020-04-26 21:14:17.107680'),
(156, 'Spring 2020', 'CS 4348.005', '28305', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Subbarayan Venkatesan', 'Tuesday & Thursday 10:00am - 11:15am', 'FO 2.404', '2020-04-26 21:14:17.109715', '2020-04-26 21:14:17.109715'),
(157, 'Spring 2020', 'CS 4348.502', '29577', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Elmer Salazar', 'Tuesday & Thursday 5:30pm - 6:45pm', 'JO 3.516', '2020-04-26 21:14:17.111784', '2020-04-26 21:14:17.111784'),
(158, 'Spring 2020', 'CS 4349.001', '23502', 'Advanced Algorithm Design and Analysis', '(3 Semester Credit Hours)', 'Benjamin Raichel', 'Monday & Wednesday 10:00am - 11:15am', 'ECSS 2.305', '2020-04-26 21:14:17.114110', '2020-04-26 21:14:17.114110'),
(159, 'Spring 2020', 'CS 4349.002', '24752', 'Advanced Algorithm Design and Analysis', '(3 Semester Credit Hours)', 'Bhadrachalam Chitturi', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.305', '2020-04-26 21:14:17.116628', '2020-04-26 21:14:17.116628'),
(160, 'Spring 2020', 'CS 4349.003', '30014', 'Advanced Algorithm Design and Analysis', '(3 Semester Credit Hours)', 'Anjum Chida', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSS 2.306', '2020-04-26 21:14:17.118770', '2020-04-26 21:14:17.118770'),
(161, 'Spring 2020', 'CS 4349.501', '28306', 'Advanced Algorithm Design and Analysis', '(3 Semester Credit Hours)', 'Serdar Erbatur', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.201', '2020-04-26 21:14:17.120420', '2020-04-26 21:14:17.120420'),
(162, 'Spring 2020', 'CS 4352.0W1', '28307', 'Human Computer Interactions I', '(3 Semester Credit Hours)', 'Erika Orrick', ' undefined', 'undefined', '2020-04-26 21:14:17.122611', '2020-04-26 21:14:17.122611'),
(163, 'Spring 2020', 'CS 4353.0W1', '30163', 'Human Computer Interactions II', '(3 Semester Credit Hours)', 'Erika Orrick', ' undefined', 'undefined', '2020-04-26 21:14:17.124895', '2020-04-26 21:14:17.124895'),
(164, 'Spring 2020', 'CS 4361.001', '28308', 'Computer Graphics', '(3 Semester Credit Hours)', 'Pushpa Kumar', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSN 2.120', '2020-04-26 21:14:17.127198', '2020-04-26 21:14:17.127198'),
(165, 'Spring 2020', 'CS 4365.001', '24440', 'Artificial Intelligence', '(3 Semester Credit Hours)', 'Yu Chung Ng', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.306', '2020-04-26 21:14:17.129503', '2020-04-26 21:14:17.129503'),
(166, 'Spring 2020', 'CS 4365.501', '29142', 'Artificial Intelligence', '(3 Semester Credit Hours)', 'Elmer Salazar', 'Monday & Wednesday 7:00pm - 8:15pm', 'GR 2.302', '2020-04-26 21:14:17.131914', '2020-04-26 21:14:17.131914'),
(167, 'Spring 2020', 'CS 4365.502', '29547', 'Artificial Intelligence', '(3 Semester Credit Hours)', 'Elmer Salazar', 'Monday & Wednesday 5:30pm - 6:45pm', 'JO 3.516', '2020-04-26 21:14:17.134142', '2020-04-26 21:14:17.134142'),
(168, 'Spring 2020', 'CS 4365.HON', '24739', 'Artificial Intelligence - Honors', '(3 Semester Credit Hours)', 'Yu Chung Ng', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSN 2.126', '2020-04-26 21:14:17.136366', '2020-04-26 21:14:17.136366'),
(169, 'Spring 2020', 'CS 4371.501', '29114', 'Introduction to Big Data Management and Analytics', '(3 Semester Credit Hours)', 'Erick Skorupa Parolin', 'Monday & Wednesday 7:00pm - 8:15pm', 'ECSS 2.412', '2020-04-26 21:14:17.138832', '2020-04-26 21:14:17.138832'),
(170, 'Spring 2020', 'CS 4375.001', '28309', 'Introduction to Machine Learning', '(3 Semester Credit Hours)', 'Gity Karami', 'Monday & Wednesday 8:30am - 9:45am', 'ECSW 3.210', '2020-04-26 21:14:17.141132', '2020-04-26 21:14:17.141132'),
(171, 'Spring 2020', 'CS 4375.002', '29140', 'Introduction to Machine Learning', '(3 Semester Credit Hours)', 'Gity Karami', 'Monday & Wednesday 11:30am - 12:45pm', 'HH 2.502', '2020-04-26 21:14:17.143530', '2020-04-26 21:14:17.143530'),
(172, 'Spring 2020', 'CS 4375.501', '24756', 'Introduction to Machine Learning', '(3 Semester Credit Hours)', 'Karen Mazidi', 'Monday & Wednesday 7:00pm - 8:15pm', 'ECSS 2.305', '2020-04-26 21:14:17.145715', '2020-04-26 21:14:17.145715'),
(173, 'Spring 2020', 'CS 4375.502', '28310', 'Introduction to Machine Learning', '(3 Semester Credit Hours)', 'Ziaullah Khan', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.415', '2020-04-26 21:14:17.148055', '2020-04-26 21:14:17.148055'),
(174, 'Spring 2020', 'CS 4376.001', '28311', 'Object-Oriented Design', '(3 Semester Credit Hours)', 'Mark Paulk', 'Tuesday & Thursday 8:30am - 9:45am', 'CR 1.212', '2020-04-26 21:14:17.150396', '2020-04-26 21:14:17.150396'),
(175, 'Spring 2020', 'CS 4376.002', '29596', 'Object-Oriented Design', '(3 Semester Credit Hours)', 'Rym Zalila-Wenkstern', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSW 3.210', '2020-04-26 21:14:17.152800', '2020-04-26 21:14:17.152800'),
(176, 'Spring 2020', 'CS 4384.001', '28312', 'Automata Theory', '(3 Semester Credit Hours)', 'Hemant Malik', 'Tuesday & Thursday 8:30am - 9:45am', 'JSOM 1.102', '2020-04-26 21:14:17.155054', '2020-04-26 21:14:17.155054'),
(177, 'Spring 2020', 'CS 4384.501', '24364', 'Automata Theory', '(3 Semester Credit Hours)', 'James Willson', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 2.305', '2020-04-26 21:14:17.157139', '2020-04-26 21:14:17.157139'),
(178, 'Spring 2020', 'CS 4384.502', '24998', 'Automata Theory', '(3 Semester Credit Hours)', 'James Willson', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.305', '2020-04-26 21:14:17.159592', '2020-04-26 21:14:17.159592'),
(179, 'Spring 2020', 'CS 4384.503', '28313', 'Automata Theory', '(3 Semester Credit Hours)', 'Charles Shields', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.203', '2020-04-26 21:14:17.161480', '2020-04-26 21:14:17.161480'),
(180, 'Spring 2020', 'CS 4384.HON', '24521', 'Automata Theory - Honors', '(3 Semester Credit Hours)', 'William Pervin', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSN 2.120', '2020-04-26 21:14:17.163448', '2020-04-26 21:14:17.163448'),
(181, 'Spring 2020', 'CS 4386.001', '24568', 'Compiler Design', '(3 Semester Credit Hours)', 'Neeraj Gupta', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSN 2.112', '2020-04-26 21:14:17.165910', '2020-04-26 21:14:17.165910'),
(182, 'Spring 2020', 'CS 4390.001', '24307', 'Computer Networks', '(3 Semester Credit Hours)', 'Khiem Le', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSS 2.203', '2020-04-26 21:14:17.168417', '2020-04-26 21:14:17.168417'),
(183, 'Spring 2020', 'CS 4390.502', '24040', 'Computer Networks', '(3 Semester Credit Hours)', 'Neeraj Gupta', 'Monday & Wednesday 5:30pm - 6:45pm', 'SLC 2.303', '2020-04-26 21:14:17.170748', '2020-04-26 21:14:17.170748'),
(184, 'Spring 2020', 'CS 4391.001', '24310', 'Introduction to Computer Vision', '(3 Semester Credit Hours)', 'Crystal Maung', 'Saturday 2:00pm - 4:45pm', 'ECSS 2.306', '2020-04-26 21:14:17.173041', '2020-04-26 21:14:17.173041'),
(185, 'Spring 2020', 'CS 4393.001', '23504', 'Computer and Network Security', '(3 Semester Credit Hours)', 'Nhut Nguyen', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 2.412', '2020-04-26 21:14:17.175314', '2020-04-26 21:14:17.175314'),
(186, 'Spring 2020', 'CS 4396.001', '23505', 'Networking Laboratory', '(3 Semester Credit Hours)', 'Kamil Sarac', 'Friday 10:00am - 12:45pm', 'ECSS 2.312', '2020-04-26 21:14:17.177618', '2020-04-26 21:14:17.177618'),
(187, 'Spring 2020', 'CS 4398.001', '24518', 'Digital Forensics', '(3 Semester Credit Hours)', 'Ebru Cankaya', 'Monday & Wednesday 10:00am - 11:15am', 'ECSS 2.201', '2020-04-26 21:14:17.179875', '2020-04-26 21:14:17.179875'),
(188, 'Spring 2020', 'CS 4485.001', '23506', 'Computer Science Project', '(4 Credits)', 'Miguel Razo Razo , Jeyakesavan Veerasamy', 'Friday 4:00pm - 6:45pm', 'ECSW 1.315', '2020-04-26 21:14:17.182407', '2020-04-26 21:14:17.182407'),
(189, 'Spring 2020', 'CS 4485.002', '30209', 'Computer Science Project', '(4 Credits)', 'Jeyakesavan Veerasamy , Miguel Razo Razo', 'Friday 4:00pm - 6:45pm', 'ECSW 4.325', '2020-04-26 21:14:17.184903', '2020-04-26 21:14:17.184903'),
(190, 'Spring 2020', 'CS 4V95.003', '29888', 'Undergraduate Topics in Computer Science - Survey Paper on Data Science', '(1 Semester Credit Hour)', 'Eric Becker', 'Independent Study undefined', 'undefined', '2020-04-26 21:14:17.187104', '2020-04-26 21:14:17.187104'),
(191, 'Spring 2020', 'CS 4V98.001', '23279', 'Undergraduate Research in Computer Science - Computer Science Research Proj', '(3 Semester Credit Hours)', 'Gopal Gupta , Gordon Arnold', '(Research) Friday', '4:00pm - 6:45pm', '2020-04-26 21:14:17.189239', '2020-04-26 21:14:17.189239'),
(192, 'Spring 2020', 'CS 5333.001', '24043', 'Discrete Structures', '(3 Semester Credit Hours)', 'Jorge Cobb', 'Monday & Wednesday 10:00am - 11:15am', 'ECSW 1.355', '2020-04-26 21:14:17.191569', '2020-04-26 21:14:17.191569'),
(193, 'Spring 2020', 'CS 5343.501', '23507', 'Algorithm Analysis and Data Structures', '(3 Semester Credit Hours)', 'Neeraj Gupta', 'Tuesday & Thursday 5:30pm - 6:45pm', 'ECSS 2.203', '2020-04-26 21:14:17.193599', '2020-04-26 21:14:17.193599'),
(194, 'Spring 2020', 'CS 5348.001', '28314', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'I-Ling Yen', 'Monday & Wednesday 2:30pm - 3:45pm', 'GR 4.301', '2020-04-26 21:14:17.243650', '2020-04-26 21:14:17.243650'),
(195, 'Spring 2020', 'CS 5348.002', '24173', 'Operating Systems Concepts', '(3 Semester Credit Hours)', 'Michael Christiansen', 'Monday & Wednesday 2:30pm - 3:45pm', 'AD 2.232', '2020-04-26 21:14:17.247856', '2020-04-26 21:14:17.247856'),
(196, 'Spring 2020', 'CS 6301.002', '28329', 'Special Topics in Computer Science - Computational Geometry', '(3 Semester Credit Hours)', 'Kyle Fox', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSN 2.110', '2020-04-26 21:14:17.254205', '2020-04-26 21:14:17.254205'),
(197, 'Spring 2020', 'CS 6301.003', '28330', 'Special Topics in Computer Science - Exp Research in Info Assurance', '(3 Semester Credit Hours)', 'Bhavani Thuraisingham', 'Friday 1:00pm - 3:45pm', 'ECSS 4.910', '2020-04-26 21:14:17.260051', '2020-04-26 21:14:17.260051'),
(198, 'Spring 2020', 'CS 6301.004', '28331', 'Special Topics in Computer Science - Practical Aspects of Data Sci', '(3 Semester Credit Hours)', 'Anurag Nagar', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSS 2.415', '2020-04-26 21:14:17.267797', '2020-04-26 21:14:17.267797'),
(199, 'Spring 2020', 'CS 6301.005', '28332', 'Special Topics in Computer Science - Developing/securing the Cloud', '(3 Semester Credit Hours)', 'Bhavani Thuraisingham', 'Friday 4:00pm - 6:45pm', 'ECSN 2.112', '2020-04-26 21:14:17.273224', '2020-04-26 21:14:17.273224'),
(200, 'Spring 2020', 'CS 6301.006', '28333', 'Special Topics in Computer Science - Theory of Social Computing', '(3 Semester Credit Hours)', 'Ding Du', 'Thursday 4:00pm - 6:45pm', 'SLC 1.202', '2020-04-26 21:14:17.276320', '2020-04-26 21:14:17.276320'),
(201, 'Spring 2020', 'CS 6301.007', '28334', 'Special Topics in Computer Science - Machine Learning in Cyber Sec', '(3 Semester Credit Hours)', 'Wei Yang', 'Friday 10:00am - 12:45pm', 'SLC 1.202', '2020-04-26 21:14:17.278819', '2020-04-26 21:14:17.278819'),
(202, 'Spring 2020', 'CS 6301.008', '28335', 'Special Topics in Computer Science - Scheduling', '(3 Semester Credit Hours)', 'Ramaswamy Chandrasekaran', 'Tuesday & Thursday 10:00am - 11:15am', 'CB1 1.104', '2020-04-26 21:14:17.281344', '2020-04-26 21:14:17.281344'),
(203, 'Spring 2020', 'CS 6301.009', '28336', 'Special Topics in Computer Science - Implementation of Os & Vm', '(3 Semester Credit Hours)', 'Sridhar Alagar', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSN 2.126', '2020-04-26 21:14:17.284909', '2020-04-26 21:14:17.284909'),
(204, 'Spring 2020', 'CS 6301.010', '29116', 'Special Topics in Computer Science - Rec Adv in Vis Lang Aesth Comp', '(3 Semester Credit Hours)', 'Kang Zhang', 'Tuesday & Thursday 10:00am - 11:15am', 'SLC 1.202', '2020-04-26 21:14:17.286919', '2020-04-26 21:14:17.286919'),
(205, 'Spring 2020', 'CS 6301.011', '29575', 'Special Topics in Computer Science - Impl of Data Str & Algorithms', '(3 Semester Credit Hours)', 'Sridhar Alagar', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSS 2.415', '2020-04-26 21:14:17.289061', '2020-04-26 21:14:17.289061'),
(206, 'Spring 2020', 'CS 6301.012', '29589', 'Special Topics in Computer Science - Optimization Machine Learning', '(3 Semester Credit Hours)', 'Rishabh Iyer', 'Monday & Wednesday 4:00pm - 5:15pm', 'AD 2.232', '2020-04-26 21:14:17.291510', '2020-04-26 21:14:17.291510'),
(207, 'Spring 2020', 'CS 6301.502', '28341', 'Special Topics in Computer Science - Convolutional Neural Network', '(3 Semester Credit Hours)', 'Arthur Redfern', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.412', '2020-04-26 21:14:17.293847', '2020-04-26 21:14:17.293847'),
(208, 'Spring 2020', 'CS 6301.503', '28342', 'Special Topics in Computer Science - Internet of Things', '(3 Semester Credit Hours)', 'I-Ling Yen', 'Monday & Wednesday 7:00pm - 8:15pm', 'ECSS 2.306', '2020-04-26 21:14:17.296234', '2020-04-26 21:14:17.296234'),
(209, 'Spring 2020', 'CS 6301.505', '28337', 'Special Topics in Computer Science - Machine Lrning Engr/scientists', '(3 Semester Credit Hours)', 'Muhammad Ikram', 'Monday & Wednesday 5:30pm - 6:45pm', 'FO 2.702', '2020-04-26 21:14:17.298896', '2020-04-26 21:14:17.298896');
INSERT INTO `cscourse` (`id`, `semester_year`, `course_num_section`, `course_id`, `course_title`, `credit_hours`, `instructor`, `day_time`, `place`, `time_created`, `time_updated`) VALUES
(210, 'Spring 2020', 'CS 6304.001', '24633', 'Computer Architecture', '(3 Semester Credit Hours)', 'Yang Hu', 'Tuesday & Thursday 8:30am - 9:45am', 'JO 4.102', '2020-04-26 21:14:17.301445', '2020-04-26 21:14:17.301445'),
(211, 'Spring 2020', 'CS 6307.501', '25010', 'Introduction to Big Data Management and Analytics for non CS-Majors', '(3 Semester Credit Hours)', 'Anurag Nagar', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSN 2.110', '2020-04-26 21:14:17.303833', '2020-04-26 21:14:17.303833'),
(212, 'Spring 2020', 'CS 6313.001', '24369', 'Statistical Methods for Data Science', '(3 Semester Credit Hours)', 'Min Chen', 'Tuesday & Thursday 10:00am - 11:15am', 'FO 1.502', '2020-04-26 21:14:17.306152', '2020-04-26 21:14:17.306152'),
(213, 'Spring 2020', 'CS 6313.002', '24554', 'Statistical Methods for Data Science', '(3 Semester Credit Hours)', 'Yan Zhou', 'Monday & Wednesday 1:00pm - 2:15pm', 'GR 3.302', '2020-04-26 21:14:17.308432', '2020-04-26 21:14:17.308432'),
(214, 'Spring 2020', 'CS 6314.001', '24561', 'Web Programming Languages', '(3 Semester Credit Hours)', 'Nurcan Yuruk', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSS 2.415', '2020-04-26 21:14:17.310900', '2020-04-26 21:14:17.310900'),
(215, 'Spring 2020', 'CS 6314.002', '24562', 'Web Programming Languages', '(3 Semester Credit Hours)', 'Nurcan Yuruk', 'Monday & Wednesday 8:30am - 9:45am', 'ECSS 2.415', '2020-04-26 21:14:17.313227', '2020-04-26 21:14:17.313227'),
(216, 'Spring 2020', 'CS 6314.501', '24519', 'Web Programming Languages', '(3 Semester Credit Hours)', 'Richard Min', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSW 1.365', '2020-04-26 21:14:17.315899', '2020-04-26 21:14:17.315899'),
(217, 'Spring 2020', 'CS 6320.001', '24175', 'Natural Language Processing', '(3 Semester Credit Hours)', 'Dan Moldovan', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSN 2.112', '2020-04-26 21:14:17.317895', '2020-04-26 21:14:17.317895'),
(218, 'Spring 2020', 'CS 6320.002', '28315', 'Natural Language Processing', '(3 Semester Credit Hours)', 'Sanda Harabagiu', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSS 2.203', '2020-04-26 21:14:17.319581', '2020-04-26 21:14:17.319581'),
(219, 'Spring 2020', 'CS 6320.003', '28316', 'Natural Language Processing', '(3 Semester Credit Hours)', 'Mithun Balakrishna', 'Friday 4:00pm - 6:45pm', 'ECSS 2.306', '2020-04-26 21:14:17.321189', '2020-04-26 21:14:17.321189'),
(220, 'Spring 2020', 'CS 6322.001', '28317', 'Information Retrieval', '(3 Semester Credit Hours)', 'Sanda Harabagiu', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSN 2.120', '2020-04-26 21:14:17.323423', '2020-04-26 21:14:17.323423'),
(221, 'Spring 2020', 'CS 6326.001', '24645', 'Human Computer Interactions', '(3 Semester Credit Hours)', 'John Cole', 'Tuesday & Thursday 8:30am - 9:45am', 'ECSN 2.110', '2020-04-26 21:14:17.325698', '2020-04-26 21:14:17.325698'),
(222, 'Spring 2020', 'CS 6328.001', '25011', 'Modeling and Simulation', '(3 Semester Credit Hours)', 'Paul Fishwick', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ATC 3.914', '2020-04-26 21:14:17.327967', '2020-04-26 21:14:17.327967'),
(223, 'Spring 2020', 'CS 6347.501', '24414', 'Statistical Methods in AI and Machine Learning', '(3 Semester Credit Hours)', 'Vibhav Gogate', 'Tuesday & Thursday 7:00pm - 8:15pm', 'JO 3.516', '2020-04-26 21:14:17.330252', '2020-04-26 21:14:17.330252'),
(224, 'Spring 2020', 'CS 6348.001', '24574', 'Data and Applications Security', '(3 Semester Credit Hours)', 'Murat Kantarcioglu', 'Friday 10:00am - 12:45pm', 'SLC 2.304', '2020-04-26 21:14:17.332805', '2020-04-26 21:14:17.332805'),
(225, 'Spring 2020', 'CS 6349.001', '24250', 'Network Security', '(3 Semester Credit Hours)', 'Shuang Hao', 'Friday 4:00pm - 6:45pm', 'ECSN 2.110', '2020-04-26 21:14:17.335138', '2020-04-26 21:14:17.335138'),
(226, 'Spring 2020', 'CS 6350.001', '24346', 'Big Data Management and Analytics', '(3 Semester Credit Hours)', 'Latifur Khan', 'Monday & Wednesday 11:30am - 12:45pm', 'JO 3.516', '2020-04-26 21:14:17.337418', '2020-04-26 21:14:17.337418'),
(227, 'Spring 2020', 'CS 6350.002', '24563', 'Big Data Management and Analytics', '(3 Semester Credit Hours)', 'Anurag Nagar', 'Friday 4:00pm - 6:45pm', 'ECSS 2.201', '2020-04-26 21:14:17.339773', '2020-04-26 21:14:17.339773'),
(228, 'Spring 2020', 'CS 6352.001', '23514', 'Performance of Computer Systems and Networks', '(3 Semester Credit Hours)', 'Jason Jue', 'Monday & Wednesday 1:00pm - 2:15pm', 'CB 1.106', '2020-04-26 21:14:17.342045', '2020-04-26 21:14:17.342045'),
(229, 'Spring 2020', 'CS 6359.001', '28319', 'Object-Oriented Analysis and Design', '(3 Semester Credit Hours)', 'Tien Nguyen', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSS 2.201', '2020-04-26 21:14:17.344375', '2020-04-26 21:14:17.344375'),
(230, 'Spring 2020', 'CS 6359.003', '30228', 'Object-Oriented Analysis and Design', '(3 Semester Credit Hours)', 'Mehra Nouroz Borazjany', 'Friday 10:00am - 12:45pm', 'ECSW 1.355', '2020-04-26 21:14:17.346652', '2020-04-26 21:14:17.346652'),
(231, 'Spring 2020', 'CS 6360.001', '23515', 'Database Design', '(3 Semester Credit Hours)', 'Chris Davis', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSS 2.201', '2020-04-26 21:14:17.348984', '2020-04-26 21:14:17.348984'),
(232, 'Spring 2020', 'CS 6360.002', '24352', 'Database Design', '(3 Semester Credit Hours)', 'Nurcan Yuruk', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.311', '2020-04-26 21:14:17.351141', '2020-04-26 21:14:17.351141'),
(233, 'Spring 2020', 'CS 6360.003', '24249', 'Database Design', '(3 Semester Credit Hours)', 'Chris Davis', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 2.201', '2020-04-26 21:14:17.353568', '2020-04-26 21:14:17.353568'),
(234, 'Spring 2020', 'CS 6360.004', '28320', 'Database Design', '(3 Semester Credit Hours)', 'Wei Wu', 'Monday & Wednesday 1:00pm - 2:15pm', 'ECSW 1.355', '2020-04-26 21:14:17.355895', '2020-04-26 21:14:17.355895'),
(235, 'Spring 2020', 'CS 6361.001', '23516', 'Advanced Requirements Engineering', '(3 Semester Credit Hours)', 'Lawrence Chung', 'Tuesday & Thursday 11:30am - 12:45pm', 'CB3 1.308', '2020-04-26 21:14:17.358178', '2020-04-26 21:14:17.358178'),
(236, 'Spring 2020', 'CS 6363.001', '24698', 'Design and Analysis of Computer Algorithms', '(3 Semester Credit Hours)', 'Ramaswamy Chandrasekaran', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSS 2.311', '2020-04-26 21:14:17.360452', '2020-04-26 21:14:17.360452'),
(237, 'Spring 2020', 'CS 6363.002', '28321', 'Design and Analysis of Computer Algorithms', '(3 Semester Credit Hours)', 'Sergey Bereg', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSS 2.305', '2020-04-26 21:14:17.362756', '2020-04-26 21:14:17.362756'),
(238, 'Spring 2020', 'CS 6363.003', '28322', 'Design and Analysis of Computer Algorithms', '(3 Semester Credit Hours)', 'Ding Du', 'Tuesday & Thursday 10:00am - 11:15am', 'ECSS 2.311', '2020-04-26 21:14:17.365130', '2020-04-26 21:14:17.365130'),
(239, 'Spring 2020', 'CS 6363.004', '28323', 'Design and Analysis of Computer Algorithms', '(3 Semester Credit Hours)', 'Ovidiu Daescu', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSW 3.250', '2020-04-26 21:14:17.367173', '2020-04-26 21:14:17.367173'),
(240, 'Spring 2020', 'CS 6364.001', '24176', 'Artificial Intelligence', '(3 Semester Credit Hours)', 'Dan Moldovan', 'Monday & Wednesday 4:00pm - 5:15pm', 'ECSN 2.126', '2020-04-26 21:14:17.369252', '2020-04-26 21:14:17.369252'),
(241, 'Spring 2020', 'CS 6366.001', '24239', 'Computer Graphics', '(3 Semester Credit Hours)', 'Xiaohu Guo', 'Friday 10:00am - 12:45pm', 'CB1 1.104', '2020-04-26 21:14:17.371292', '2020-04-26 21:14:17.371292'),
(242, 'Spring 2020', 'CS 6371.001', '23509', 'Advanced Programming Languages', '(3 Semester Credit Hours)', 'Kevin Hamlen', 'Tuesday & Thursday 1:00pm - 2:15pm', 'CB3 1.304', '2020-04-26 21:14:17.374347', '2020-04-26 21:14:17.374347'),
(243, 'Spring 2020', 'CS 6374.001', '24774', 'Computational Logic', '(3 Semester Credit Hours)', 'Gopal Gupta', 'Tuesday & Thursday 4:00pm - 5:15pm', 'FO 1.202', '2020-04-26 21:14:17.397972', '2020-04-26 21:14:17.397972'),
(244, 'Spring 2020', 'CS 6375.001', '23510', 'Machine Learning', '(3 Semester Credit Hours)', 'Anjum Chida', 'Tuesday & Thursday 11:30am - 12:45pm', 'ECSW 1.355', '2020-04-26 21:14:17.402309', '2020-04-26 21:14:17.402309'),
(245, 'Spring 2020', 'CS 6375.002', '24252', 'Machine Learning', '(3 Semester Credit Hours)', 'Anjum Chida', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSN 2.110', '2020-04-26 21:14:17.404348', '2020-04-26 21:14:17.404348'),
(246, 'Spring 2020', 'CS 6375.003', '24436', 'Machine Learning', '(3 Semester Credit Hours)', 'Anjum Chida', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.203', '2020-04-26 21:14:17.405848', '2020-04-26 21:14:17.405848'),
(247, 'Spring 2020', 'CS 6375.005', '28324', 'Machine Learning', '(3 Semester Credit Hours)', 'Sriraam Natarajan', 'Monday & Wednesday 11:30am - 12:45pm', 'ECSS 2.201', '2020-04-26 21:14:17.407032', '2020-04-26 21:14:17.407032'),
(248, 'Spring 2020', 'CS 6375.006', '29118', 'Machine Learning', '(3 Semester Credit Hours)', 'Nicholas Ruozzi', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSN 2.126', '2020-04-26 21:14:17.409155', '2020-04-26 21:14:17.409155'),
(249, 'Spring 2020', 'CS 6376.501', '29345', 'Parallel Processing', '(3 Semester Credit Hours)', 'Richard Goodrum', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 4.910', '2020-04-26 21:14:17.411024', '2020-04-26 21:14:17.411024'),
(250, 'Spring 2020', 'CS 6380.001', '28325', 'Distributed Computing', '(3 Semester Credit Hours)', 'Subbarayan Venkatesan', 'Tuesday & Thursday 8:30am - 9:45am', 'FN 2.202', '2020-04-26 21:14:17.412310', '2020-04-26 21:14:17.412310'),
(251, 'Spring 2020', 'CS 6384.001', '24312', 'Computer Vision', '(3 Semester Credit Hours)', 'Haim Schweitzer', 'Friday 4:00pm - 6:45pm', 'ECSS 2.415', '2020-04-26 21:14:17.413191', '2020-04-26 21:14:17.413191'),
(252, 'Spring 2020', 'CS 6384.002', '24408', 'Computer Vision', '(3 Semester Credit Hours)', 'Haim Schweitzer', 'Saturday 2:00pm - 4:45pm', 'ECSS 2.415', '2020-04-26 21:14:17.415539', '2020-04-26 21:14:17.415539'),
(253, 'Spring 2020', 'CS 6385.001', '23517', 'Algorithmic Aspects of Telecommunication Networks', '(3 Semester Credit Hours)', 'Andras Farago', 'Monday & Wednesday 8:30am - 9:45am', 'JSOM 2.102', '2020-04-26 21:14:17.417595', '2020-04-26 21:14:17.417595'),
(254, 'Spring 2020', 'CS 6390.002', '29710', 'Advanced Computer Networks', '(3 Semester Credit Hours)', 'Jorge Cobb', 'Monday & Wednesday 2:30pm - 3:45pm', 'CB 1.218', '2020-04-26 21:14:17.419743', '2020-04-26 21:14:17.419743'),
(255, 'Spring 2020', 'CS 6396.001', '23518', 'Real-Time Systems', '(3 Semester Credit Hours)', 'Farokh Bastani', 'Tuesday & Thursday 10:00am - 11:15am', 'CB 1.223', '2020-04-26 21:14:17.421821', '2020-04-26 21:14:17.421821'),
(256, 'Spring 2020', 'CS 7301.001', '24850', 'Recent Advances in Computing - Software Mining and Analysis', '(3 Semester Credit Hours)', 'Tien Nguyen', 'Monday & Wednesday 11:30am - 12:45pm', 'CB 1.106', '2020-04-26 21:14:17.423812', '2020-04-26 21:14:17.423812'),
(257, 'Spring 2020', 'CS 7301.003', '29112', 'Recent Advances in Computing - Adv Sftwr Tst: Theory & Appli', '(3 Semester Credit Hours)', 'Weichen Wong', 'Friday 10:00am - 12:45pm', 'CB3 1.302', '2020-04-26 21:14:17.425829', '2020-04-26 21:14:17.425829'),
(258, 'Spring 2020', 'CS 7301.004', '29525', 'Recent Advances in Computing - Program Analysis and Applic', '(3 Semester Credit Hours)', 'Shiyi Wei', 'Friday 1:00pm - 3:45pm', 'ECSN 2.126', '2020-04-26 21:14:17.428187', '2020-04-26 21:14:17.428187'),
(259, 'Spring 2020', 'CS 7301.005', '29526', 'Recent Advances in Computing - Adv Topics System Security', '(3 Semester Credit Hours)', 'Kangkook Jee', 'Tuesday & Thursday 1:00pm - 2:15pm', 'ECSS 3.910', '2020-04-26 21:14:17.430635', '2020-04-26 21:14:17.430635'),
(260, 'Spring 2020', 'CS 7301.006', '29527', 'Recent Advances in Computing - Adv Natural Lang Processing', '(3 Semester Credit Hours)', 'Jessica Ouyang', 'Tuesday & Thursday 2:30pm - 3:45pm', 'ECSS 3.910', '2020-04-26 21:14:17.433118', '2020-04-26 21:14:17.433118'),
(261, 'Spring 2020', 'CS 7301.008', '29574', 'Recent Advances in Computing - Adv. Mach Lrng in Complex Netw', '(3 Semester Credit Hours)', 'Feng Chen', 'Friday 10:00am - 12:45pm', 'JO 3.516', '2020-04-26 21:14:17.435516', '2020-04-26 21:14:17.435516');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cscourse`
--
ALTER TABLE `cscourse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cscourse`
--
ALTER TABLE `cscourse`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
