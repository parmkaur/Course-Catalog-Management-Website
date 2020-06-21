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
-- Table structure for table `userid`
--

CREATE TABLE `userid` (
  `id` int(10) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationdate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userid`
--

INSERT INTO `userid` (`id`, `userid`, `username`, `password`, `creationdate`) VALUES
(1, 'admin1', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', '2020-04-01 20:38:32'),
(34, 'admin2', 'admin2', '0192023a7bbd73250516f069df18b500', '2020-04-21 18:50:02'),
(35, 'admin3', 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', '2020-04-21 18:50:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userid`
--
ALTER TABLE `userid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userid`
--
ALTER TABLE `userid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
