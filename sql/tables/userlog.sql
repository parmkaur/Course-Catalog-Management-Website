-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 12:20 AM
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
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `userip` varchar(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` datetime(6) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `new_course_added` varchar(100) DEFAULT NULL,
  `course_updated` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userid`, `userip`, `loginTime`, `logout`, `status`, `new_course_added`, `course_updated`) VALUES
(147, 'admin1', '::1', '2020-04-26 21:14:52', NULL, 'Online', '', 'Computer Science Laboratory'),
(148, 'admin1', '::1', '2020-04-26 21:34:46', '2020-04-26 16:34:48.000000', 'Offline', '', ''),
(149, 'admin1', '::1', '2020-04-26 21:40:38', '2020-04-26 16:43:52.000000', 'Offline', '', ''),
(150, 'admin1', '::1', '2020-04-26 21:44:00', '2020-04-26 16:46:10.000000', 'Offline', '', 'Computer Science Laboratory'),
(151, 'admin1', '::1', '2020-04-26 21:46:14', '2020-04-26 16:47:25.000000', 'Offline', '', ''),
(152, 'admin1', '::1', '2020-04-26 22:14:59', '2020-04-26 17:15:57.000000', 'Offline', '', 'Programming Fundamentals (Basics)'),
(153, 'admin1', '::1', '2020-04-26 22:16:51', '2020-04-26 17:18:21.000000', 'Offline', NULL, NULL),
(154, 'admin1', '::1', '2020-04-26 22:18:31', '2020-04-26 17:19:49.000000', 'Offline', 'Computer Science I', 'Computer Science Laboratory');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
