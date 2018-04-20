INSERT INTO `AdopterTable` (`Adopter ID`, `Address`, `Phone Number`, `Name`) VALUES
(10, '60 Street St', 1111111111, 'Jane Doe'),
(11, '600 Street St', 2147483647, 'Trent Smith');

INSERT INTO `AdoptionRecord` (`Dog ID`, `Adopter ID`, `Adoption Date`, `Return Date`) VALUES
(111, 10, '2015-04-15', NULL),
(112, 11, '2013-07-11', NULL);


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

INSERT INTO `EmployeeTable` (`Staff ID`, `Date Hired`, `Job Title`) VALUES
(60, '6/11/2011', 'Groomer'),
(61, '4/20/2010', 'Reception'),
(62, '8/14/2008', 'Supervisor'),
(63, '5/03/2008', 'Maintenance');

INSERT INTO `PhysicianTable` (`Physician ID`, `Physician Name`, `Physician Type`) VALUES
(20, 'John Lu', 'Surgeon'),
(21, 'Ella Klien', 'General'),
(22, 'Rosa Flores', 'Dentist');

INSERT INTO `StaffTable` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`) VALUES
(60, 'Christina', 'Employee', '123 Street St', 888888888),
(61, 'Grace', 'Employee', '456 Street St', 2147483647),
(62, 'Robert', 'Employee', '789 Street St', 2147483647),
(63, 'Walker', 'Employee', '100 Street St', 2147483647),
(64, 'Jorge', 'Volunteer', '200 Street St', 2147483647),
(65, 'Angela', 'Volunteer', '123 Street St', 2147483647),
(66, 'Jake', 'Volunteer', '300 Street St', 2147483647);

INSERT INTO `VolunteerTable` (`Staff ID`, `Supervisor ID`, `Organization Name`, `Job Assignment`) VALUES
(64, 62, 'Loyola University', 'Walk'),
(65, 62, 'WLPO', 'Walk'),
(66, 62, 'Metropolis Church', 'Clean');
