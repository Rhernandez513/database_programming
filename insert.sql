
/*EMPLOYEE*/
INSERT INTO `Employee`(`Staff ID`, `Date Hired`, `Job Title`)
VALUES ('60','6/11/2011','Groomer');

INSERT INTO `Employee`(`Staff ID`, `Date Hired`, `Job Title`)
VALUES ('61','4/20/2010','Reception');

INSERT INTO `Employee`(`Staff ID`, `Date Hired`, `Job Title`)
VALUES ('62','8/14/2008','Supervisor');

INSERT INTO `Employee`(`Staff ID`, `Date Hired`, `Job Title`)
VALUES ('63','5/03/2008','Maintenance');

/*DOG TABLE*/
INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('111','Violet','2013','	https://imgur.com/a/INSQ7MJ','F','24','Shiba Inu','Yes','20');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('112','Lily','2008','https://imgur.com/a/9cVgBqj','F','13','Pitbull Mix','Yes','30');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('113','Mya','2009','https://imgur.com/a/wCiDPv6','F','3','Pug','No','12');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('114','Honey','2016','https://imgur.com/a/wCiDPv6','F','5','Siberian Husky','No','65');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('115','Peter','2017','https://imgur.com/a/i2HdAKQ','M','10','Cavachon','No','10');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('116','Edie','2018','https://imgur.com/a/ZQuDhtW','F','20','Pitbull Mix','No','25');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('117','Tank','2018','https://imgur.com/a/QECk0VK','M','14','Rotweiler','No','13');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('118','Bubba','2016','https://imgur.com/a/4GO4d5A','M','18','French Bulldog','No','25');

INSERT INTO `Dog Table`(`Dog ID`, `Dog Name`, `Year of Birth`, `Photo`, `Sex`, `Cage Number`, `Breed`, `Adoption Status`, `Weight`)
VALUES ('119','Max','2018','https://imgur.com/Bcs2AYD','M','11','Labrador','No','10');

/*STAFF TABLE*/
INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('60', 'Christina', 'Employee', '123 Street St', '888888888');

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('61', 'Grace', 'Employee', '456 Street St', '6666666666');

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('62', 'Robert', 'Employee', '789 Street St', '4444444444');

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('63', 'Walker', 'Employee', '100 Street St', '7777777777');

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('64', 'Jorge', 'Volunteer', '200 Street St', '9999999999');

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('65', 'Angela', 'Volunteer', '123 Street St', '2222222222');

INSERT INTO `Staff Table` (`Staff ID`, `Staff Name`, `Staff Type`, `Address`, `Phone Number`)
VALUES ('66', 'Jake', 'Volunteer', '300 Street St', '33333333333');

/*ADOPTER TABLE*/
INSERT INTO `Adopter Table`(`Adopter ID`, `Address`, `Phone Number`, `Name`)
VALUES ('10', '60 Street St','1111111111','Jane Doe');

INSERT INTO `Adopter Table`(`Adopter ID`, `Address`, `Phone Number`, `Name`)
VALUES ('11', '600 Street St','5555555555','Trent Smith');

/*PHYSICIAN TABLE*/
INSERT INTO `Physician Table`(`Physician ID`, `Physician Name`, `Physician Type`)
VALUES ('20','John Lu', 'Surgeon');

INSERT INTO `Physician Table`(`Physician ID`, `Physician Name`, `Physician Type`)
VALUES ('21','Ella Klien', 'General');

INSERT INTO `Physician Table`(`Physician ID`, `Physician Name`, `Physician Type`)
VALUES ('22', 'Rosa Flores', 'Dentist');

/*VOLUNTEER TABLE*/
INSERT INTO `Volunteer`(`Staff ID`, `Supervisor ID`, `Organization Name`, `Job Assignment`)
VALUES ('64','62','Loyola University','Walk');

INSERT INTO `Volunteer`(`Staff ID`, `Supervisor ID`, `Organization Name`, `Job Assignment`)
VALUES ('65','62','WLPO','Walk');

INSERT INTO `Volunteer`(`Staff ID`, `Supervisor ID`, `Organization Name`, `Job Assignment`)
VALUES ('66','62','Metropolis Church','Clean');

INSERT INTO `Adoption Record`(`Dog ID`, `Adopter ID`, `Adoption Date`)
VALUES ('111','10','2015-04-15');

INSERT INTO `Adoption Record`(`Dog ID`, `Adopter ID`, `Adoption Date`)
VALUES ('112','11','2013-07-11');

