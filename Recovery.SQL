-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2018 at 12:09 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `PMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `ActivityRecord`
--

CREATE TABLE `ActivityRecord` (
  `Dog ID` int(100) NOT NULL,
  `Staff ID` int(100) NOT NULL,
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
(10, '60 Street St', 2147483647, 'Jane Doe'),
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
(111, 10, '0000-00-00', NULL),
(112, 11, '0000-00-00', NULL);

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
(111, 'Violet', 2013, 'https://i.imgur.com/FruQneV.jpg', 'F', 24, 'Shiba Inu', 'Y', 20),
(112, 'Lily', 2008, 'https://i.imgur.com/hxUmL0d.jpg', 'F', 13, 'Pitbull Mix', 'Y', 30),
(113, 'Mya', 2009, 'https://i.imgur.com/7q8zvlW.jpg', 'F', 3, 'Pug', 'N', 12),
(114, 'Honey', 2016, 'https://i.imgur.com/SD637rI.jpg', 'F', 5, 'Siberian Husky', 'N', 65),
(115, 'Peter', 2017, 'https://i.imgur.com/js4H55R.jpg', 'M', 10, 'Cavachon', 'N', 10),
(116, 'Edie', 2018, 'https://i.imgur.com/guT3DAu.jpg', 'F', 20, 'Pitbull Mix', 'N', 25),
(117, 'Tank', 2018, 'https://i.imgur.com/0XxzWaK.jpg', 'M', 14, 'Rotweiler', 'N', 13),
(118, 'Bubba', 2016, 'https://i.imgur.com/J92iobc.jpg', 'M', 18, 'French Bulldog', 'N', 25),
(119, 'Drexel', 2017, 'https://i.imgur.com/RLZ3LEV.png', 'M', 15, 'Putbull Mix', 'N', 10);

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
(60, '0000-00-00', 'Groomer'),
(61, '0000-00-00', 'Reception'),
(62, '0000-00-00', 'Supervisor'),
(63, '0000-00-00', 'Maintenance');

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

--
-- Dumping data for table `MedicationRecord`
--

INSERT INTO `MedicationRecord` (`Physician ID`, `Dog ID`, `Medication Name`, `Dose`, `Start Date`, `End Date`) VALUES
(21, 111, 'Carprofen', '100mg', '0000-00-00', '0000-00-00'),
(21, 112, 'Carprofen', '100mg', '0000-00-00', '0000-00-00'),
(20, 113, 'Tobramycin', '2x Daily', '0000-00-00', '0000-00-00');

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
(60, 'Christina', 'Employee', '123 Street St, Chicago', 2147483647),
(61, 'Grace', 'Employee', '456 Street St, Chicago', 2147483647),
(62, 'Robert', 'Employee', '789 Street St, Chicago', 2147483647),
(63, 'Walker', 'Employee', '100 Street St, Chicago', 2147483647),
(64, 'Jorge', 'Volunteer', '200 Street St, Chicago', 2147483647),
(65, 'Angela', 'Volunteer', '123 Street St, Chicago', 2147483647),
(66, 'Jake', 'Volunteer', '300 Street St, Chicago', 2147483647);

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

--
-- Dumping data for table `TreatmentRecord`
--

INSERT INTO `TreatmentRecord` (`Physician ID`, `Dog ID`, `Treatment Type`, `Date`, `Treatment Description`) VALUES
(21, 111, 'surgery', '0000-00-00', 'Spayed'),
(21, 112, 'surgery', '0000-00-00', 'Neutered'),
(20, 113, 'checkup', '0000-00-00', 'Ear Infection');

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
-- Indexes for table `ActivityRecord`
--
ALTER TABLE `ActivityRecord`
  ADD KEY `activityrecord_ibfk_1` (`Dog ID`),
  ADD KEY `activityrecord_ibfk_2` (`Staff ID`);

--
-- Indexes for table `AdopterTable`
--
ALTER TABLE `AdopterTable`
  ADD PRIMARY KEY (`Adopter ID`);

--
-- Indexes for table `AdoptionRecord`
--
ALTER TABLE `AdoptionRecord`
  ADD KEY `Adopter ID` (`Adopter ID`),
  ADD KEY `Dog ID` (`Dog ID`);

--
-- Indexes for table `DogTable`
--
ALTER TABLE `DogTable`
  ADD PRIMARY KEY (`Dog ID`);

--
-- Indexes for table `EmployeeTable`
--
ALTER TABLE `EmployeeTable`
  ADD KEY `Staff ID` (`Staff ID`);

--
-- Indexes for table `MedicationRecord`
--
ALTER TABLE `MedicationRecord`
  ADD KEY `Dog ID` (`Dog ID`),
  ADD KEY `Physician ID` (`Physician ID`);

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
-- Indexes for table `TreatmentRecord`
--
ALTER TABLE `TreatmentRecord`
  ADD KEY `Dog ID` (`Dog ID`),
  ADD KEY `Physician ID` (`Physician ID`);

--
-- Indexes for table `VolunteerTable`
--
ALTER TABLE `VolunteerTable`
  ADD KEY `Staff ID` (`Staff ID`),
  ADD KEY `Supervisor ID` (`Supervisor ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ActivityRecord`
--
ALTER TABLE `ActivityRecord`
  ADD CONSTRAINT `activityrecord_ibfk_1` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`),
  ADD CONSTRAINT `activityrecord_ibfk_2` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`);

--
-- Constraints for table `AdoptionRecord`
--
ALTER TABLE `AdoptionRecord`
  ADD CONSTRAINT `adoptionrecord_ibfk_1` FOREIGN KEY (`Adopter ID`) REFERENCES `AdopterTable` (`Adopter ID`),
  ADD CONSTRAINT `adoptionrecord_ibfk_2` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`);

--
-- Constraints for table `EmployeeTable`
--
ALTER TABLE `EmployeeTable`
  ADD CONSTRAINT `employeetable_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`);

--
-- Constraints for table `MedicationRecord`
--
ALTER TABLE `MedicationRecord`
  ADD CONSTRAINT `medicationrecord_ibfk_1` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`),
  ADD CONSTRAINT `medicationrecord_ibfk_2` FOREIGN KEY (`Physician ID`) REFERENCES `PhysicianTable` (`Physician ID`);

--
-- Constraints for table `TreatmentRecord`
--
ALTER TABLE `TreatmentRecord`
  ADD CONSTRAINT `treatmentrecord_ibfk_1` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`),
  ADD CONSTRAINT `treatmentrecord_ibfk_2` FOREIGN KEY (`Physician ID`) REFERENCES `PhysicianTable` (`Physician ID`);

--
-- Constraints for table `VolunteerTable`
--
ALTER TABLE `VolunteerTable`
  ADD CONSTRAINT `volunteertable_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`),
  ADD CONSTRAINT `volunteertable_ibfk_2` FOREIGN KEY (`Supervisor ID`) REFERENCES `StaffTable` (`Staff ID`);
