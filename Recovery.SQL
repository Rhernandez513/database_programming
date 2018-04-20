-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2018 at 12:41 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ShelterDB`
--

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
