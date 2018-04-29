-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2018 at 09:38 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shelterdb`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DogTable`
--
ALTER TABLE `DogTable`
  ADD PRIMARY KEY (`Dog ID`);
