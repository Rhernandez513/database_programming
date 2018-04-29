CREATE TABLE `ActivityRecord` (
  `Dog ID` varchar(50) NOT NULL,
  `Staff ID` varchar(50) NOT NULL,
  `Activity` varchar(50) NOT NULL,
  `Date` date NOT NULL
);

CREATE TABLE `AdopterTable` (
  `Adopter ID` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL
);

CREATE TABLE `AdoptionRecord` (
  `Dog ID` int(10) NOT NULL,
  `Adopter ID` int(10) NOT NULL,
  `Adoption Date` date NOT NULL,
  `Return Date` date DEFAULT NULL
);

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
);

CREATE TABLE `EmployeeTable` (
  `Staff ID` int(10) NOT NULL,
  `Date Hired` varchar(50) NOT NULL,
  `Job Title` varchar(50) NOT NULL
);

CREATE TABLE `MedicationRecord` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Medication Name` varchar(50) NOT NULL,
  `Dose` varchar(50) NOT NULL,
  `Start Date` date NOT NULL,
  `End Date` date DEFAULT NULL
);

CREATE TABLE `PhysicianTable` (
  `Physician ID` int(10) NOT NULL,
  `Physician Name` varchar(50) NOT NULL,
  `Physician Type` varchar(50) NOT NULL
);

CREATE TABLE `StaffTable` (
  `Staff ID` int(10) NOT NULL,
  `Staff Name` varchar(50) NOT NULL,
  `Staff Type` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone Number` int(10) NOT NULL
);

CREATE TABLE `TreatmentRecord` (
  `Physician ID` int(10) NOT NULL,
  `Dog ID` int(10) NOT NULL,
  `Treatment Type` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Treatment Description` varchar(50) NOT NULL
);

CREATE TABLE `VolunteerTable` (
  `Staff ID` int(10) NOT NULL,
  `Supervisor ID` int(10) NOT NULL,
  `Organization Name` varchar(50) NOT NULL,
  `Job Assignment` varchar(50) NOT NULL
);

/*Keys*/

ALTER TABLE `AdopterTable`
  ADD PRIMARY KEY (`Adopter ID`);

ALTER TABLE `AdoptionRecord`
  ADD KEY `Adopter ID` (`Adopter ID`),
  ADD KEY `Dog ID` (`Dog ID`);

ALTER TABLE `DogTable`
  ADD PRIMARY KEY (`Dog ID`);

ALTER TABLE `EmployeeTable`
  ADD PRIMARY KEY (`Staff ID`);

ALTER TABLE `MedicationRecord`
  ADD KEY `Dog ID` (`Dog ID`),
  ADD KEY `Physician ID` (`Physician ID`);

ALTER TABLE `PhysicianTable`
  ADD PRIMARY KEY (`Physician ID`);

ALTER TABLE `StaffTable`
  ADD PRIMARY KEY (`Staff ID`);

ALTER TABLE `TreatmentRecord`
  ADD KEY `Dog ID` (`Dog ID`),
  ADD KEY `Physician ID` (`Physician ID`);

ALTER TABLE `VolunteerTable`
  ADD KEY `Staff ID` (`Staff ID`),
  ADD KEY `Supervisor ID` (`Supervisor ID`);

ALTER TABLE `AdoptionRecord`
  ADD CONSTRAINT `adoptionrecord_ibfk_1` FOREIGN KEY (`Adopter ID`) REFERENCES `AdopterTable` (`Adopter ID`),
  ADD CONSTRAINT `adoptionrecord_ibfk_2` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`);

ALTER TABLE `MedicationRecord`
  ADD CONSTRAINT `medicationrecord_ibfk_1` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`),
  ADD CONSTRAINT `medicationrecord_ibfk_2` FOREIGN KEY (`Physician ID`) REFERENCES `PhysicianTable` (`Physician ID`);

ALTER TABLE `TreatmentRecord`
  ADD CONSTRAINT `treatmentrecord_ibfk_1` FOREIGN KEY (`Dog ID`) REFERENCES `DogTable` (`Dog ID`),
  ADD CONSTRAINT `treatmentrecord_ibfk_2` FOREIGN KEY (`Physician ID`) REFERENCES `PhysicianTable` (`Physician ID`);

ALTER TABLE `VolunteerTable`
  ADD CONSTRAINT `volunteertable_ibfk_1` FOREIGN KEY (`Staff ID`) REFERENCES `StaffTable` (`Staff ID`),
  ADD CONSTRAINT `volunteertable_ibfk_2` FOREIGN KEY (`Supervisor ID`) REFERENCES `StaffTable` (`Staff ID`);
