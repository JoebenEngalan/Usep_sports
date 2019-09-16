-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 04:42 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borrowingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_item`
--

CREATE TABLE `borrowed_item` (
  `ID` int(11) NOT NULL,
  `id_number` varchar(12) NOT NULL,
  `ContactNumber` int(150) NOT NULL,
  `Item1` varchar(150) NOT NULL,
  `quantity1` int(100) DEFAULT NULL,
  `Item2` varchar(150) NOT NULL,
  `quantity2` int(100) DEFAULT NULL,
  `Item3` varchar(150) NOT NULL,
  `quantity3` int(100) DEFAULT NULL,
  `Item4` varchar(150) NOT NULL,
  `quantity4` int(100) DEFAULT NULL,
  `Remarks` text NOT NULL,
  `Borrowed_time` varchar(100) NOT NULL,
  `states` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowed_item`
--

INSERT INTO `borrowed_item` (`ID`, `id_number`, `ContactNumber`, `Item1`, `quantity1`, `Item2`, `quantity2`, `Item3`, `quantity3`, `Item4`, `quantity4`, `Remarks`, `Borrowed_time`, `states`) VALUES
(56, '2014', 2147483647, 'test', 1, '', 0, '', 0, '', 0, '', '9/16/2019', 1),
(57, '2014-12222', 2147483647, 'test2', 1, '', 0, '', 0, '', 0, '', '9/16/2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrower_table`
--

CREATE TABLE `borrower_table` (
  `id` int(11) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `EmailID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower_table`
--

INSERT INTO `borrower_table` (`id`, `id_number`, `FirstName`, `LastName`, `ContactNumber`, `Department`, `Position`, `EmailID`) VALUES
(1, '2014', 'shai', 'celer', '2147483647', NULL, NULL, 'shai@gmail.com'),
(2, '2014-15358', 'shaira', 'celerian', '2147483647', NULL, NULL, 'shaiar@gmail.com'),
(3, '2014-6565685', 'simplyn', 'madula', '2147483647', NULL, NULL, 'madula@gmail.com'),
(4, '2014-15358', 'wattap', 'hey', '2147483647', 'College of Education', 'Student', 'hey@gmail.com'),
(5, '2014-15358', 'shaira', 'celerian', '2147483647', 'Institute of Computing', 'Student', 'shairacelerian@gmail.com'),
(6, '2014-19596', 'shaira', 'celerian', '2147483647', 'Institute of Computing', 'Faculty and Staff', 'hey@gmail.com'),
(7, '2014-19596', 'shaira', 'celerian', '09105824423', 'Institute of Computing', 'Faculty and Staff', 'hey@gmail.com'),
(8, '2014-153', 'haloo', 'heloo', '09105824423', NULL, NULL, 'halo@gmail.com'),
(9, '2014-15358', 'sup', 'wat', '09154845552', 'College of Engineering', 'Faculty and Staff', 'watsup@gmail.com'),
(10, '2014-65986', 'low', 'hey', '09105824422', 'Institute of Computing', 'Faculty and Staff', 'yea@gmail.com'),
(11, '2014-15358', 'sure', 'huyy', '09105824423', 'College of Engineering', 'Student', 'huy@gmail.com'),
(12, '2014-15358', 'low', 'hey', '09610582442', 'School Applied Economics', 'Faculty and Staff', 'low@gmail.com'),
(13, '2014-15358', 'low', 'hey', '09610582442', 'School Applied Economics', 'Faculty and Staff', 'low@gmail.com'),
(14, '2014-15358', 'madula', 'hey', '09105824422', 'Institute of Computing', 'Student', 'madula@gmail.com'),
(15, '2015-15668', 'lala', 'lolo', '09105824423', 'School Applied Economics', 'Faculty and Staff', 'lolo@gmail.com'),
(16, '25896-698565656', 'simplyn', 'madula', '09105824223', 'College of Technology', 'Faculty and Staff', 'madulasimplyn@gmail.com'),
(17, '2014-15365598', 'shaira', 'celerian', '09105824423', 'Institute of Computing', 'Faculty and Staff', 'dsdsdd@gmail.com'),
(18, '2014-15358', 'cccc', 'dddd', '09105824423', 'College of Engineering', 'Student', 'cc@gmail.com'),
(19, '2014-12222', 'test', 'wq', '09728127192', 'College of Arts and Sciences', 'Faculty and Staff', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `ItemName` varchar(500) DEFAULT NULL,
  `Description` text,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `ItemName`, `Description`, `date_added`, `date_updated`, `Category`, `quantity`, `status`) VALUES
(3, 'test', 'ffffffffffffffffffff', '2019-07-09 02:59:32', '2019-07-09 02:59:32', 'Sports Equipment', 7, 1),
(4, 'test2', 'deeeeeeeeeeeeeeeeeeeeeeee', '2019-07-09 03:22:06', '2019-07-09 03:22:06', 'Sports Equipment', 7, 1),
(5, 'test3', 'deeeeeeeeeeeeeeeeeeeeeeee', '2019-07-09 03:23:13', '2019-07-09 03:23:13', 'Sports Equipment', 7, 1),
(6, 'test4', 'dfedfdfggf', '2019-07-10 05:51:28', '2019-07-10 05:51:28', 'Gym Equipment', 10, 1),
(20, 'GeeksForGeeks', 'Make', '2019-09-16 09:01:22', NULL, 'Sports Equipment', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `returned_item`
--

CREATE TABLE `returned_item` (
  `ID` int(11) NOT NULL,
  `id_number` varchar(12) NOT NULL,
  `ContactNumber` int(150) NOT NULL,
  `Borrowed_time` varchar(100) NOT NULL,
  `Return_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_table`
--

CREATE TABLE `staff_table` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNumber` int(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_table`
--

INSERT INTO `staff_table` (`id`, `FirstName`, `LastName`, `Email`, `Password`, `ContactNumber`, `date_added`, `date_updated`) VALUES
(1, 'shaira', 'celerian', 'shai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(2, 'simplyn', 'madula', 'madula@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(3, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(4, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(5, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(6, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(7, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(8, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(9, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31'),
(10, 'lala', 'lolo', 'lolo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2019-07-04 08:59:45', '2019-07-04 09:00:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowed_item`
--
ALTER TABLE `borrowed_item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `borrower_table`
--
ALTER TABLE `borrower_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_item`
--
ALTER TABLE `returned_item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff_table`
--
ALTER TABLE `staff_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrowed_item`
--
ALTER TABLE `borrowed_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `borrower_table`
--
ALTER TABLE `borrower_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `returned_item`
--
ALTER TABLE `returned_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_table`
--
ALTER TABLE `staff_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
