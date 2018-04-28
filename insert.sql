INSERT INTO `AdopterTable` (`Adopter ID`, `Address`, `Phone Number`, `Name`) VALUES
(10, '60 Street St', 1111111111, 'Jane Doe'),
(11, '600 Street St', 2147483647, 'Trent Smith');

INSERT INTO `AdoptionRecord` (`Dog ID`, `Adopter ID`, `Adoption Date`, `Return Date`) VALUES
(111, 10, '2015-04-15', NULL),
(112, 11, '2013-07-11', NULL);


INSERT INTO `DogTable` (`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status (Y/N)`, `Weight (lbs)`) VALUES
(111, 'Violet', 2013, '	https://i.imgur.com/Azypd6N.jpg', 'F', 24, 'Shiba Inu', 'Y', 20),
(112, 'Lily', 2008, 'https://i.imgur.com/hxUmL0d.jpg', 'F', 13, 'Pitbull Mix', 'Y', 30),
(113, 'Mya', 2009, 'https://i.imgur.com/7q8zvlW.jpg', 'F', 3, 'Pug', 'N', 12),
(114, 'Honey', 2016, 'https://i.imgur.com/SD637rI.jpg', 'F', 5, 'Siberian Husky', 'N', 65),
(115, 'Peter', 2017, 'https://i.imgur.com/js4H55R.jpg', 'M', 10, 'Cavachon', 'N', 10),
(116, 'Edie', 2018, 'https://i.imgur.com/guT3DAu.jpg', 'F', 20, 'Pitbull Mix', 'N', 25),
(117, 'Tank', 2018, 'https://i.imgur.com/0XxzWaK.jpg', 'M', 14, 'Rotweiler', 'N', 13),
(118, 'Bubba', 2016, 'https://i.imgur.com/J92iobc.jpg', 'M', 18, 'French Bulldog', 'N', 25),
(119, 'Drexel', 2017, 'https://i.imgur.com/Bcs2AYD.jpg', 'M', 15, 'Mix', 'Y', 11);

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
