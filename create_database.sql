/*New Version*/
CREATE TABLE `ActivityRecord` (
  `Dog ID` varchar(50) NOT NULL,
  `Staff ID` varchar(50) NOT NULL,
  `Activity` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `AdopterTable` (
  `Adopter ID` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `AdoptionRecord` (
  `Dog ID` int(10) NOT NULL,
  `Adopter ID` int(10) NOT NULL,
  `Adoption Date` date NOT NULL,
  `Return Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `EmployeeTable` (
  `Staff ID` int(10) NOT NULL,
  `Date Hired` varchar(50) NOT NULL,
  `Job Title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `MedicationRecord` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Medication Name` varchar(50) NOT NULL,
  `Dose` varchar(50) NOT NULL,
  `Start Date` date NOT NULL,
  `End Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `PhysicianTable` (
  `Physician ID` int(10) NOT NULL,
  `Physician Name` varchar(50) NOT NULL,
  `Physician Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `StaffTable` (
  `Staff ID` int(10) NOT NULL,
  `Staff Name` varchar(50) NOT NULL,
  `Staff Type` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TreatmentRecord` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Treatment Type` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Treatment Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `VolunteerTable` (
  `Staff ID` int(10) NOT NULL,
  `Supervisor ID` int(10) NOT NULL,
  `Organization Name` varchar(50) NOT NULL,
  `Job Assignment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `AdopterTable`
  ADD PRIMARY KEY (`Adopter ID`);

ALTER TABLE `DogTable`
  ADD PRIMARY KEY (`Dog ID`);

ALTER TABLE `EmployeeTable`
  ADD PRIMARY KEY (`Staff ID`);

ALTER TABLE `PhysicianTable`
  ADD PRIMARY KEY (`Physician ID`);

ALTER TABLE `StaffTable`
  ADD PRIMARY KEY (`Staff ID`);

ALTER TABLE `VolunteerTable`
  ADD PRIMARY KEY (`Staff ID`),
  ADD KEY `Supervisor ID` (`Supervisor ID`);

ALTER TABLE `EmployeeTable`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`);

ALTER TABLE `VolunteerTable`
  ADD CONSTRAINT `volunteer_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`),
  ADD CONSTRAINT `volunteer_ibfk_2` FOREIGN KEY (`Supervisor ID`) REFERENCES `StaffTable` (`Staff ID`);

/*Old Version*/

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
  `Adopter Name` varchar(50) NOT NULL,
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
