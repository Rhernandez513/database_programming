-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2018 at 01:24 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ShelterDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ActivityRecord`
--

CREATE TABLE `ActivityRecord` (
  `Dog ID` varchar(50) NOT NULL,
  `Staff ID` varchar(50) NOT NULL,
  `Activity` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AdopterTable`
--

CREATE TABLE `AdopterTable` (
  `Adopter ID` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdopterTable`
--

INSERT INTO `AdopterTable` (`Adopter ID`, `Address`, `Phone Number`, `Name`) VALUES
(10, '60 Street St', 1111111111, 'Jane Doe'),
(11, '600 Street St', 2147483647, 'Trent Smith');

-- --------------------------------------------------------

--
-- Table structure for table `AdoptionRecord`
--

CREATE TABLE `AdoptionRecord` (
  `Dog ID` int(10) NOT NULL,
  `Adopter ID` int(10) NOT NULL,
  `Adoption Date` date NOT NULL,
  `Return Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdoptionRecord`
--

INSERT INTO `AdoptionRecord` (`Dog ID`, `Adopter ID`, `Adoption Date`, `Return Date`) VALUES
(111, 10, '2015-04-15', NULL),
(112, 11, '2013-07-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DogTable`
--

CREATE TABLE `DogTable` (
  `Dog ID` int(10) NOT NULL,
  `Dog Name` varchar(50) NOT NULL,
  `Year of Birth` int(4) NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `Cage Number` int(2) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Adoption Status (Y/N)` char(1) NOT NULL,
  `Weight (lbs)` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DogTable`
--

INSERT INTO `DogTable` (`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status (Y/N)`, `Weight (lbs)`) VALUES
(111, 'Violet', 2013, '	https://imgur.com/a/INSQ7MJ', 'F', 24, 'Shiba Inu', 'Y', 20),
(112, 'Lily', 2008, 'https://imgur.com/a/9cVgBqj', 'F', 13, 'Pitbull Mix', 'Y', 30),
(113, 'Mya', 2009, 'https://imgur.com/a/wCiDPv6', 'F', 3, 'Pug', 'N', 12),
(114, 'Honey', 2016, 'https://imgur.com/a/wCiDPv6', 'F', 5, 'Siberian Husky', 'N', 65),
(115, 'Peter', 2017, 'https://imgur.com/a/i2HdAKQ', 'M', 10, 'Cavachon', 'N', 10),
(116, 'Edie', 2018, 'https://imgur.com/a/ZQuDhtW', 'F', 20, 'Pitbull Mix', 'N', 25),
(117, 'Tank', 2018, 'https://imgur.com/a/QECk0VK', 'M', 14, 'Rotweiler', 'N', 13),
(118, 'Bubba', 2016, 'https://imgur.com/a/4GO4d5A', 'M', 18, 'French Bulldog', 'N', 25),
(119, 'Max', 2018, 'https://imgur.com/Bcs2AYD', 'M', 11, 'Labrador', 'N', 10);

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeTable`
--

CREATE TABLE `EmployeeTable` (
  `Staff ID` int(10) NOT NULL,
  `Date Hired` varchar(50) NOT NULL,
  `Job Title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EmployeeTable`
--

INSERT INTO `EmployeeTable` (`Staff ID`, `Date Hired`, `Job Title`) VALUES
(60, '6/11/2011', 'Groomer'),
(61, '4/20/2010', 'Reception'),
(62, '8/14/2008', 'Supervisor'),
(63, '5/03/2008', 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `MedicationRecord`
--

CREATE TABLE `MedicationRecord` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Medication Name` varchar(50) NOT NULL,
  `Dose` varchar(50) NOT NULL,
  `Start Date` date NOT NULL,
  `End Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PhysicianTable`
--

CREATE TABLE `PhysicianTable` (
  `Physician ID` int(10) NOT NULL,
  `Physician Name` varchar(50) NOT NULL,
  `Physician Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PhysicianTable`
--

INSERT INTO `PhysicianTable` (`Physician ID`, `Physician Name`, `Physician Type`) VALUES
(20, 'John Lu', 'Surgeon'),
(21, 'Ella Klien', 'General'),
(22, 'Rosa Flores', 'Dentist');

-- --------------------------------------------------------

--
-- Table structure for table `StaffTable`
--

CREATE TABLE `StaffTable` (
  `Staff ID` int(10) NOT NULL,
  `Staff Name` varchar(50) NOT NULL,
  `Staff Type` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `StaffTable`
--

INSERT INTO `StaffTable` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`) VALUES
(60, 'Christina', 'Employee', '123 Street St', 888888888),
(61, 'Grace', 'Employee', '456 Street St', 2147483647),
(62, 'Robert', 'Employee', '789 Street St', 2147483647),
(63, 'Walker', 'Employee', '100 Street St', 2147483647),
(64, 'Jorge', 'Volunteer', '200 Street St', 2147483647),
(65, 'Angela', 'Volunteer', '123 Street St', 2147483647),
(66, 'Jake', 'Volunteer', '300 Street St', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `TreatmentRecord`
--

CREATE TABLE `TreatmentRecord` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Treatment Type` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Treatment Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VolunteerTable`
--

CREATE TABLE `VolunteerTable` (
  `Staff ID` int(10) NOT NULL,
  `Supervisor ID` int(10) NOT NULL,
  `Organization Name` varchar(50) NOT NULL,
  `Job Assignment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VolunteerTable`
--

INSERT INTO `VolunteerTable` (`Staff ID`, `Supervisor ID`, `Organization Name`, `Job Assignment`) VALUES
(64, 62, 'Loyola University', 'Walk'),
(65, 62, 'WLPO', 'Walk'),
(66, 62, 'Metropolis Church', 'Clean');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdopterTable`
--
ALTER TABLE `AdopterTable`
  ADD PRIMARY KEY (`Adopter ID`);

--
-- Indexes for table `DogTable`
--
ALTER TABLE `DogTable`
  ADD PRIMARY KEY (`Dog ID`);

--
-- Indexes for table `EmployeeTable`
--
ALTER TABLE `EmployeeTable`
  ADD PRIMARY KEY (`Staff ID`);

--
-- Indexes for table `PhysicianTable`
--
ALTER TABLE `PhysicianTable`
  ADD PRIMARY KEY (`Physician ID`);

--
-- Indexes for table `StaffTable`
--
ALTER TABLE `StaffTable`
  ADD PRIMARY KEY (`Staff ID`);

--
-- Indexes for table `VolunteerTable`
--
ALTER TABLE `VolunteerTable`
  ADD PRIMARY KEY (`Staff ID`),
  ADD KEY `Supervisor ID` (`Supervisor ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EmployeeTable`
--
ALTER TABLE `EmployeeTable`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`);

--
-- Constraints for table `VolunteerTable`
--
ALTER TABLE `VolunteerTable`
  ADD CONSTRAINT `volunteer_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`),
  ADD CONSTRAINT `volunteer_ibfk_2` FOREIGN KEY (`Supervisor ID`) REFERENCES `StaffTable` (`Staff ID`);