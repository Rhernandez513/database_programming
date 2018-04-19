-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2018 at 11:06 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ShelterDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activity Table`
--

CREATE TABLE `Activity Table` (
  `Dog ID` varchar(50) NOT NULL,
  `Staff ID` varchar(50) NOT NULL,
  `Activity` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Adopter Table`
--

CREATE TABLE `Adopter Table` (
  `Adopter ID` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Adopter Table`
--

INSERT INTO `Adopter Table` (`Adopter ID`, `Address`, `Phone Number`, `Name`) VALUES
(10, '60 Street St', 1111111111, 'Jane Doe'),
(11, '600 Street St', 2147483647, 'Trent Smith');

-- --------------------------------------------------------

--
-- Table structure for table `Adoption Record`
--

CREATE TABLE `Adoption Record` (
  `Dog ID` int(10) NOT NULL,
  `Adopter ID` int(10) NOT NULL,
  `Adoption Date` date NOT NULL,
  `Return Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Adoption Record`
--

INSERT INTO `Adoption Record` (`Dog ID`, `Adopter ID`, `Adoption Date`, `Return Date`) VALUES
(111, 10, '2015-04-15', NULL),
(112, 11, '2013-07-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Dog Table`
--

CREATE TABLE `Dog Table` (
  `Dog ID` int(10) NOT NULL,
  `Dog Name` varchar(50) NOT NULL,
  `Year of Birth` int(4) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `Cage Number` int(2) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Adoption Status` varchar(50) NOT NULL,
  `Weight` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `Staff ID` int(10) NOT NULL,
  `Date Hired` varchar(50) NOT NULL,
  `Job Title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`Staff ID`, `Date Hired`, `Job Title`) VALUES
(60, '6/11/2011', 'Groomer'),
(61, '4/20/2010', 'Reception'),
(62, '8/14/2008', 'Supervisor'),
(63, '5/03/2008', 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `Medication Table`
--

CREATE TABLE `Medication Table` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Medication Name` varchar(50) NOT NULL,
  `Dose` varchar(50) NOT NULL,
  `Start Date` date NOT NULL,
  `End Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Physician Table`
--

CREATE TABLE `Physician Table` (
  `Physician ID` int(10) NOT NULL,
  `Physician Name` varchar(50) NOT NULL,
  `Physician Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Physician Table`
--

INSERT INTO `Physician Table` (`Physician ID`, `Physician Name`, `Physician Type`) VALUES
(20, 'John Lu', 'Surgeon'),
(21, 'Ella Klien', 'General'),
(22, 'Rosa Flores', 'Dentist');

-- --------------------------------------------------------

--
-- Table structure for table `Staff Table`
--

CREATE TABLE `Staff Table` (
  `Staff ID` int(10) NOT NULL,
  `Staff Name` varchar(50) NOT NULL,
  `Staff Type` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Staff Table`
--

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`) VALUES
(60, 'Christina', 'Employee', '123 Street St', 888888888),
(61, 'Grace', 'Employee', '456 Street St', 2147483647),
(62, 'Robert', 'Employee', '789 Street St', 2147483647),
(63, 'Walker', 'Employee', '100 Street St', 2147483647),
(64, 'Jorge', 'Volunteer', '200 Street St', 2147483647),
(65, 'Angela', 'Volunteer', '123 Street St', 2147483647),
(66, 'Jake', 'Volunteer', '300 Street St', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `Treatment Table`
--

CREATE TABLE `Treatment Table` (
  `Physiocian ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Treatment Type` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Treatment Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Volunteer`
--

CREATE TABLE `Volunteer` (
  `Staff ID` int(10) NOT NULL,
  `Supervisor ID` int(10) NOT NULL,
  `Organization Name` varchar(50) NOT NULL,
  `Job Assignment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Volunteer`
--

INSERT INTO `Volunteer` (`Staff ID`, `Supervisor ID`, `Organization Name`, `Job Assignment`) VALUES
(64, 62, 'Loyola University', 'Walk'),
(65, 62, 'WLPO', 'Walk'),
(66, 62, 'Metropolis Church', 'Clean');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activity Table`
--
ALTER TABLE `Activity Table`
  ADD PRIMARY KEY (`Dog ID`,`Staff ID`);

--
-- Indexes for table `Adoption Record`
--
ALTER TABLE `Adoption Record`
  ADD PRIMARY KEY (`Dog ID`,`Adopter ID`);

--
-- Indexes for table `Dog Table`
--
ALTER TABLE `Dog Table`
  ADD PRIMARY KEY (`Dog ID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`Staff ID`);

--
-- Indexes for table `Staff Table`
--
ALTER TABLE `Staff Table`
  ADD PRIMARY KEY (`Staff ID`);

--
-- Indexes for table `Volunteer`
--
ALTER TABLE `Volunteer`
  ADD PRIMARY KEY (`Staff ID`),
  ADD KEY `Supervisor ID` (`Supervisor ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `Staff Table` (`Staff ID`);

--
-- Constraints for table `Volunteer`
--
ALTER TABLE `Volunteer`
  ADD CONSTRAINT `volunteer_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `Staff Table` (`Staff ID`),
  ADD CONSTRAINT `volunteer_ibfk_2` FOREIGN KEY (`Supervisor ID`) REFERENCES `Staff Table` (`Staff ID`);
