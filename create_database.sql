CREATE TABLE `Staff Table`(
  `Staff ID` int(10) NOT NULL,
  `Staff Name` varchar(50) NOT NULL,
  `Staff Type` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL,
  PRIMARY KEY (`Staff ID`)
);

CREATE TABLE `Employee`(
  `Staff ID` int(10) NOT NULL,
  `Date Hired` varchar(50) NOT NULL,
  `Job Title` varchar(50) NOT NULL,
  PRIMARY KEY (`Staff ID`),
  FOREIGN KEY (`Staff ID`) REFERENCES `Staff Table`(`Staff ID`)
);

CREATE TABLE `Volunteer`(
  `Staff ID` int(10) NOT NULL,
  `Supervisor ID` int(10) NOT NULL,
  `Organization Name` varchar(50) NOT NULL,
  `Job Assignment` varchar(50) NOT NULL,
  PRIMARY KEY (`Staff ID`),
  FOREIGN KEY (`Staff ID`) REFERENCES `Staff Table` (`Staff ID`),
  FOREIGN KEY (`Supervisor ID`) REFERENCES `Staff Table` (`Staff ID`)
);

CREATE TABLE `Dog Table`(
  `Dog ID` int(10) NOT NULL,
  `Dog Name` varchar (50) NOT NULL,
  `Year of Birth` int(4) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `Cage Number` int(2) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Adoption Status` varchar(50) NOT NULL,
  `Weight` int(3) NOT NULL,
  PRIMARY KEY (`Dog ID`)
);

CREATE TABLE `Activity Table` (
  `Dog ID` varchar(50) NOT NULL,
  `Staff ID` varchar(50) NOT NULL,
  `Activity` varchar(50) NOT NULL,
  `Date` DATE NOT NULL,
  PRIMARY KEY (`Dog ID`, `Staff ID`)
---  FOREIGN KEY (`Dog ID`) REFERENCES `Dog Table` (`Dog ID`),
---  FOREIGN KEY (`Staff ID`) REFERENCES `Staff Table` (`Staff ID`)
);

CREATE TABLE `Adoption Record` (
  `Dog ID` int(10) NOT NULL,
  `Adopter ID` int(10) NOT NULL,
  `Adoption Date` DATE NOT NULL,
  `Return Date` DATE,
  PRIMARY KEY (`Dog ID`, `Adopter ID`)
---  FOREIGN KEY (`Dog ID`) REFERENCES `Dog Table` (`Dog ID`),
---  FOREIGN KEY (`Adopter ID`) REFERENCES `Adopter Table` (`Adopter ID`)
);

CREATE TABLE `Adopter Table` (
  `Adopter ID` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL
);

CREATE TABLE `Treatment Table`(
  `Physiocian ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Treatment Type` varchar(50) NOT NULL,
  `Date` DATE NOT NULL,
  `Treatment Description` varchar(50) NOT NULL
);

CREATE TABLE `Medication Table` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Medication Name` varchar(50) NOT NULL,
  `Dose` varchar(50) NOT NULL,
  `Start Date` DATE NOT NULL,
  `End Date` DATE
);

CREATE TABLE `Physician Table` (
  `Physician ID` int(10) NOT NULL,
  `Clinic ID` int(10) NOT NULL,
  `Physician Name` varchar(50) NOT NULL,
  `Physician Type` varchar(50) NOT NULL
);

CREATE TABLE `Clinic Table` (
  `Clinic ID` int(10) NOT NULL,
  `Clinic Address` int(10) NOT NULL,
  `Clinic Phone Number` int(10) NOT NULL
);
