PRAGMA foreign_keys = ON;
CREATE TABLE `Ref_Address_Types` (
`address_type_code` VARCHAR(15) PRIMARY KEY,
`address_type_description` VARCHAR(80)
);
CREATE TABLE `Ref_Detention_Type` (
`detention_type_code` VARCHAR(10) PRIMARY KEY,
`detention_type_description` VARCHAR(80)
);
CREATE TABLE `Ref_Incident_Type` (
`incident_type_code` VARCHAR(10) PRIMARY KEY,
`incident_type_description` VARCHAR(80)
);

INSERT INTO Ref_Address_Types (`address_type_code`, `address_type_description`) VALUES ('BILL', 'Billing');
INSERT INTO Ref_Address_Types (`address_type_code`, `address_type_description`) VALUES ('HOME', 'Home or Residence');
INSERT INTO Ref_Detention_Type (`detention_type_code`, `detention_type_description`) VALUES ('BREAK ', 'During Break time');
INSERT INTO Ref_Detention_Type (`detention_type_code`, `detention_type_description`) VALUES ('AFTER', 'After School');
INSERT INTO Ref_Detention_Type (`detention_type_code`, `detention_type_description`) VALUES ('LUNCH', 'Lunch-time');
INSERT INTO Ref_Incident_Type (`incident_type_code`, `incident_type_description`) VALUES ('NOISE', 'Noise');
INSERT INTO Ref_Incident_Type (`incident_type_code`, `incident_type_description`) VALUES ('VIOLENCE', 'Violence');
INSERT INTO Ref_Incident_Type (`incident_type_code`, `incident_type_description`) VALUES ('DISTURB', 'Disturbance');




CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`line_1` VARCHAR(120),
`line_2` VARCHAR(120),
`line_3` VARCHAR(120),
`city` VARCHAR(80),
`zip_postcode` VARCHAR(20),
`state_province_county` VARCHAR(50),
`country` VARCHAR(50),
`other_address_details` VARCHAR(255)
);

INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (1, '020 Orie Canyon', NULL, NULL, 'North Loyceville', '197', 'Hawaii', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (2, '1333 Boyle Lane', NULL, NULL, 'West Sean', '937', 'Illinois', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (3, '027 Kim Divide Apt. 492', NULL, NULL, 'Beierview', '918', 'Texas', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (4, '056 Murphy Stravenue Apt. 600', NULL, NULL, 'Elinoreport', '238', 'Wisconsin', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (5, '719 Pfannerstill Ridge Suite 663', NULL, NULL, 'Meganeland', '002', 'SouthDakota', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (6, '420 Zieme Oval', NULL, NULL, 'Corkeryborough', '744', 'Wisconsin', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (7, '27712 Marks Lake Apt. 752', NULL, NULL, 'Gleasonshire', '182', 'Maryland', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (8, '6960 O''Connell Dale Suite 622', NULL, NULL, 'New Annabellefort', '062', 'Kentucky', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (9, '18327 Jaime Terrace Suite 343', NULL, NULL, 'Edmundton', '520', 'Oregon', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (10, '3069 Garrison Squares', NULL, NULL, 'Lake Ahmadland', '748', 'Nevada', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (11, '668 Wilkinson Corners Apt. 992', NULL, NULL, 'North Jayceton', '612', 'Illinois', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (12, '11940 Pauline Shoals', NULL, NULL, 'West Lianafurt', '619', 'Arkansas', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (13, '39834 Anne Mission Apt. 956', NULL, NULL, 'North Orlobury', '663', 'Utah', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (14, '4115 Ebert Fall', NULL, NULL, 'North Fletcherside', '607', 'Arizona', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (15, '920 Brayan Harbors', NULL, NULL, 'Caitlynstad', '435', 'Montana', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (16, '014 Runte Haven Apt. 870', NULL, NULL, 'Tressamouth', '637', 'NewYork', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (17, '654 Fisher Roads', NULL, NULL, 'Hegmannborough', '397', 'Tennessee', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (18, '266 Kub Crossing', NULL, NULL, 'Hintzport', '865', 'Alabama', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (19, '51391 Dach Parkways Apt. 124', NULL, NULL, 'Unachester', '753', 'Wisconsin', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (20, '2451 Wiza Inlet', NULL, NULL, 'Larkinport', '545', 'NewYork', 'USA', NULL);


CREATE TABLE `Students` (
`student_id` INTEGER PRIMARY KEY,
`address_id` INTEGER NOT NULL,
`first_name` VARCHAR(80),
`middle_name` VARCHAR(40),
`last_name` VARCHAR(40),
`cell_mobile_number` VARCHAR(40),
`email_address` VARCHAR(40),
`date_first_rental` DATETIME,
`date_left_university` DATETIME,
`other_student_details` VARCHAR(255),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` )
);

INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (1, 19, 'Emma', 'Frederic', 'Rohan', '235.899.9744', 'derrick.jenkins@example.com', '2017-12-05 15:20:04', '2018-03-03 03:33:05', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (2, 9, 'Louvenia', 'Fatima', 'Hansen', '1-247-673-8446', 'rohan.clarabelle@example.org', '2017-08-08 22:30:36', '2018-02-24 11:12:11', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (3, 10, 'Rhea', 'Gardner', 'Bergnaum', '1-751-162-9676x115', 'kkirlin@example.org', '2017-11-15 04:57:28', '2018-03-19 12:49:20', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (4, 8, 'David', 'Darlene', 'Gorczany', '1-895-196-9979', 'eolson@example.com', '2018-02-15 20:03:11', '2018-03-11 02:21:24', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (5, 8, 'Lucile', 'Stone', 'Gottlieb', '1-036-062-5465', 'dicki.kathryne@example.org', '2017-07-20 18:20:27', '2018-03-18 16:07:42', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (6, 12, 'Antonietta', 'Crystal', 'Fahey', '(874)070-9495', 'norwood.howell@example.org', '2017-10-31 12:33:09', '2018-03-20 22:01:07', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (7, 20, 'Rupert', 'Lincoln', 'Marks', '763.072.5520x5907', 'lisette.brekke@example.net', '2017-09-25 12:02:23', '2018-03-01 08:56:04', 'first honor');
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (8, 14, 'Julia', 'Arno', 'Balistreri', '319.497.4575x2214', 'jasmin.schuppe@example.com', '2018-02-23 02:28:07', '2018-03-01 16:03:55', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (9, 19, 'Christy', 'Devonte', 'Huels', '(568)451-0917x3945', 'dora.zboncak@example.org', '2018-01-11 19:49:39', '2018-03-15 01:47:11', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (10, 2, 'Adella', 'Chesley', 'Krajcik', '08605192839', 'frederique.mante@example.org', '2017-07-05 19:15:29', '2018-03-11 15:57:19', 'first honor');
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (11, 2, 'Isac', 'Cleta', 'Fadel', '+60(5)3280072514', 'qharvey@example.com', '2017-09-13 04:06:15', '2018-03-05 07:30:22', 'first honor');
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (12, 1, 'Ferne', 'Jerod', 'Weimann', '(921)011-7909x3518', 'mitchel55@example.net', '2017-05-24 05:00:18', '2018-02-28 12:33:53', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (13, 17, 'Misael', 'Justyn', 'Will', '(062)892-7033', 'gbeatty@example.com', '2017-10-15 06:52:46', '2018-03-18 07:01:27', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (14, 9, 'Fanny', 'Ashlee', 'Haley', '(820)260-5721', 'foster.zemlak@example.com', '2018-03-14 11:37:10', '2018-03-12 15:05:53', NULL);
INSERT INTO Students (`student_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `date_first_rental`, `date_left_university`, `other_student_details`) VALUES (15, 15, 'Eugene', 'Mustafa', 'Tremblay', '1-498-138-8088', 'kertzmann.devon@example.net', '2018-03-11 22:42:47', '2018-03-07 11:41:26', 'first honor');


CREATE TABLE `Teachers` (
`teacher_id` INTEGER PRIMARY KEY,
`address_id` INTEGER NOT NULL,
`first_name` VARCHAR(80),
`middle_name` VARCHAR(80),
`last_name` VARCHAR(80),
`gender` VARCHAR(1),
`cell_mobile_number` VARCHAR(40),
`email_address` VARCHAR(40),
`other_details` VARCHAR(255),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` )
);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (1, 15, 'Lyla', 'Wilson', 'Medhurst', '1', '792.333.7714', 'ohammes@example.com', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (2, 7, 'Sid', 'Tremayne', 'Brakus', '1', '202.626.1698x9242', 'deborah37@example.com', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (3, 8, 'Trystan', 'Alexane', 'Schuster', '1', '583-467-0403x647', 'hilll.kitty@example.com', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (4, 7, 'Donnie', 'Morgan', 'Kuhic', '1', '07928511102', 'destany.reichert@example.net', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (5, 15, 'Aniya', 'Ian', 'Becker', '1', '599.373.0773x67706', 'hahn.isom@example.com', 'Dean');
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (6, 16, 'Citlalli', 'Ahmad', 'Kuhic', '1', '017.636.7409', 'kozey.adeline@example.org', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (7, 3, 'Alvis', 'Macey', 'Schultz', '1', '944-154-5379x4990', 'everardo.lynch@example.net', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (8, 13, 'Cecilia', 'Mitchel', 'Ward', '0', '809.852.7009', 'paula.abbott@example.org', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (9, 2, 'Woodrow', 'Lilla', 'Goldner', '1', '084-270-4880', 'ierdman@example.com', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (10, 8, 'Gregory', 'Ardith', 'Heller', '0', '908-759-1808x63115', 'valentina.yost@example.com', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (11, 12, 'Edmond', 'Kailyn', 'Lang', '0', '(659)018-0143x379', 'lila58@example.com', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (12, 10, 'Camren', 'Kendall', 'Moore', '1', '(381)799-4759x169', 'randy.gerhold@example.org', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (13, 19, 'Stephanie', 'Tamara', 'Price', '0', '952.821.3392', 'kiana.lang@example.net', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (14, 14, 'Evelyn', 'Keanu', 'Hansen', '0', '1-787-044-8336x606', 'maribel21@example.org', NULL);
INSERT INTO Teachers (`teacher_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `gender`, `cell_mobile_number`, `email_address`, `other_details`) VALUES (15, 10, 'Hobart', 'Michel', 'Bergnaum', '1', '796-453-5175x64012', 'willms.lane@example.com', NULL);


CREATE TABLE `Assessment_Notes` (
`notes_id` INTEGER NOT NULL ,
`student_id` INTEGER,
`teacher_id` INTEGER NOT NULL,
`date_of_notes` DATETIME,
`text_of_notes` VARCHAR(255),
`other_details` VARCHAR(255),
FOREIGN KEY (`student_id` ) REFERENCES `Students`(`student_id` ),
FOREIGN KEY (`teacher_id` ) REFERENCES `Teachers`(`teacher_id` )
);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (1, 7, 3, '1978-04-15 04:49:18', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (2, 11, 10, '2005-06-30 02:48:35', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (3, 15, 3, '1988-06-09 00:24:01', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (4, 12, 9, '1991-08-15 01:22:08', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (5, 4, 10, '1971-05-05 20:07:08', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (6, 12, 6, '2014-01-31 02:05:02', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (7, 12, 7, '1984-12-13 23:04:28', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (8, 7, 14, '1988-04-11 04:56:26', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (9, 14, 15, '1972-04-27 04:51:51', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (10, 13, 6, '2017-12-14 08:21:54', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (11, 3, 14, '1993-08-16 17:39:53', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (12, 1, 1, '1991-08-20 08:03:23', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (13, 13, 3, '2014-04-28 02:07:53', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (14, 14, 15, '1974-11-26 04:23:22', NULL, NULL);
INSERT INTO Assessment_Notes (`notes_id`, `student_id`, `teacher_id`, `date_of_notes`, `text_of_notes`, `other_details`) VALUES (15, 1, 9, '1984-09-10 01:18:34', NULL, NULL);


CREATE TABLE `Behavior_Incident` (
`incident_id` INTEGER PRIMARY KEY,
`incident_type_code` VARCHAR(10) NOT NULL,
`student_id` INTEGER NOT NULL,
`date_incident_start` DATETIME,
`date_incident_end` DATETIME,
`incident_summary` VARCHAR(255),
`recommendations` VARCHAR(255),
`other_details` VARCHAR(255),
FOREIGN KEY (`incident_type_code` ) REFERENCES `Ref_Incident_Type`(`incident_type_code` ),
FOREIGN KEY (`student_id` ) REFERENCES `Students`(`student_id` )
);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (1, 'NOISE', 6, '2017-07-09 10:04:13', '2018-03-08 14:08:54', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (2, 'DISTURB', 13, '2018-01-31 10:51:13', '2018-03-18 18:40:05', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (3, 'VIOLENCE', 1, '2017-10-10 22:43:54', '2018-03-22 02:10:35', NULL, 'Transfer schools', NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (4, 'VIOLENCE', 10, '2017-07-20 17:43:50', '2018-03-09 06:28:44', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (5, 'NOISE', 7, '2017-08-13 22:15:05', '2018-02-25 05:38:58', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (6, 'VIOLENCE', 8, '2017-06-09 18:32:28', '2018-03-20 10:32:10', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (7, 'VIOLENCE', 4, '2017-04-23 07:03:17', '2018-03-19 02:35:39', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (8, 'DISTURB', 1, '2017-05-02 12:52:09', '2018-03-18 01:23:29', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (9, 'NOISE', 11, '2017-06-19 14:25:54', '2018-03-08 09:36:36', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (10, 'NOISE', 1, '2018-01-27 09:24:45', '2018-03-13 05:18:05', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (11, 'VIOLENCE', 9, '2018-03-06 21:03:58', '2018-03-06 14:44:37', NULL, 'Transfer schools', NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (12, 'DISTURB', 7, '2017-08-27 03:21:30', '2018-03-02 16:06:34', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (13, 'VIOLENCE', 5, '2017-05-25 15:02:53', '2018-03-10 21:12:22', NULL, NULL, NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (14, 'NOISE', 1, '2017-08-29 20:48:56', '2018-03-16 14:37:20', NULL, 'Transfer schools', NULL);
INSERT INTO Behavior_Incident (`incident_id`, `incident_type_code`, `student_id`, `date_incident_start`, `date_incident_end`, `incident_summary`, `recommendations`, `other_details`) VALUES (15, 'NOISE', 15, '2018-02-05 13:13:45', '2018-03-08 09:00:48', NULL, NULL, NULL);


CREATE TABLE `Detention` (
`detention_id` INTEGER PRIMARY KEY,
`detention_type_code` VARCHAR(10) NOT NULL,
`teacher_id` INTEGER,
`datetime_detention_start` DATETIME,
`datetime_detention_end` DATETIME,
`detention_summary` VARCHAR(255),
`other_details` VARCHAR(255),
FOREIGN KEY (`detention_type_code` ) REFERENCES `Ref_Detention_Type`(`detention_type_code` ),
FOREIGN KEY (`teacher_id` ) REFERENCES `Teachers`(`teacher_id` )
);

CREATE TABLE `Student_Addresses` (
`student_id` INTEGER NOT NULL,
`address_id` INTEGER NOT NULL,
`date_address_from` DATETIME NOT NULL,
`date_address_to` DATETIME,
`monthly_rental` DECIMAL(19,4),
`other_details` VARCHAR(255),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` ),
FOREIGN KEY (`student_id` ) REFERENCES `Students`(`student_id` )
);

CREATE TABLE `Students_in_Detention` (
`student_id` INTEGER NOT NULL,
`detention_id` INTEGER NOT NULL,
`incident_id` INTEGER NOT NULL,
FOREIGN KEY (`incident_id` ) REFERENCES `Behavior_Incident`(`incident_id` ),
FOREIGN KEY (`detention_id` ) REFERENCES `Detention`(`detention_id` ),
FOREIGN KEY (`student_id` ) REFERENCES `Students`(`student_id` )
);

INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (1, 'AFTER', 7, '2017-09-05 00:38:25', '2018-03-08 02:08:32', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (2, 'AFTER', 14, '2018-01-10 08:09:02', '2018-03-07 04:24:48', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (3, 'BREAK ', 11, '2017-12-14 06:40:29', '2018-03-08 09:16:38', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (4, 'AFTER', 8, '2017-06-09 06:13:09', '2018-03-21 19:34:56', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (5, 'BREAK ', 3, '2017-08-25 12:00:46', '2018-03-11 13:21:07', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (6, 'BREAK ', 12, '2017-10-20 22:34:44', '2018-03-11 12:58:40', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (7, 'BREAK ', 15, '2018-02-19 11:44:52', '2018-03-17 12:35:41', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (8, 'BREAK ', 5, '2017-11-26 15:05:05', '2018-03-16 01:37:25', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (9, 'LUNCH', 15, '2017-10-30 16:04:00', '2018-03-22 20:15:47', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (10, 'AFTER', 15, '2018-01-29 20:43:45', '2018-03-05 03:31:24', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (11, 'AFTER', 8, '2017-10-03 18:44:31', '2018-03-03 14:58:43', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (12, 'LUNCH', 3, '2018-01-20 19:06:56', '2018-02-25 07:20:30', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (13, 'BREAK ', 10, '2017-08-02 07:46:39', '2018-03-10 14:58:31', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (14, 'AFTER', 12, '2017-12-18 13:47:51', '2018-03-04 20:52:51', NULL, NULL);
INSERT INTO Detention (`detention_id`, `detention_type_code`, `teacher_id`, `datetime_detention_start`, `datetime_detention_end`, `detention_summary`, `other_details`) VALUES (15, 'LUNCH', 11, '2017-08-21 06:41:29', '2018-03-13 20:37:39', NULL, NULL);
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (6, 12, '2017-10-16 13:56:34', '2018-03-15 10:37:19', '826.4319', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (3, 18, '2017-06-19 12:39:39', '2018-03-02 00:19:57', '1113.0996', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (8, 1, '2017-10-31 12:40:34', '2018-02-25 05:21:34', '1297.3186', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (7, 3, '2017-04-28 06:27:14', '2018-03-23 09:52:56', '894.0958', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (13, 16, '2018-03-23 08:25:36', '2018-03-12 17:21:24', '1297.8070', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (11, 12, '2018-02-18 06:58:49', '2018-02-27 04:45:57', '747.5312', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (4, 1, '2017-06-22 12:20:52', '2018-03-04 17:04:35', '756.6745', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (2, 8, '2017-07-21 10:13:10', '2018-03-20 09:02:48', '1287.5604', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (7, 13, '2018-01-13 22:56:06', '2018-03-22 17:56:20', '1067.8383', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (4, 2, '2017-09-10 19:41:10', '2018-03-04 06:51:19', '1132.7420', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (8, 16, '2018-01-12 13:23:23', '2018-03-04 06:05:45', '683.0735', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (5, 13, '2017-03-29 18:22:55', '2018-03-14 09:12:05', '1036.8462', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (2, 3, '2017-08-12 18:28:31', '2018-03-06 21:41:20', '800.1214', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (2, 8, '2017-04-18 05:36:44', '2018-03-07 04:29:28', '865.2615', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (9, 9, '2018-02-04 02:28:04', '2018-03-12 02:57:48', '679.2988', 'house');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (13, 19, '2017-08-17 11:51:00', '2018-03-04 13:24:28', '644.9306', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (15, 1, '2018-03-05 19:28:26', '2018-03-15 04:44:58', '1032.8717', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (12, 10, '2017-09-23 05:16:17', '2018-03-05 21:12:37', '1032.9782', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (1, 5, '2017-11-12 04:24:02', '2018-03-14 17:00:44', '1007.2597', 'apartment');
INSERT INTO Student_Addresses (`student_id`, `address_id`, `date_address_from`, `date_address_to`, `monthly_rental`, `other_details`) VALUES (10, 18, '2017-10-09 17:31:44', '2018-03-18 03:28:47', '620.2801', 'house');
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (3, 15, 1);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (8, 13, 3);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (11, 6, 11);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (12, 12, 1);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (14, 15, 13);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (7, 7, 8);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (13, 9, 12);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (10, 14, 8);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (12, 2, 13);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (12, 12, 1);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (9, 15, 15);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (10, 7, 12);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (13, 3, 3);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (8, 15, 14);
INSERT INTO Students_in_Detention (`student_id`, `detention_id`, `incident_id`) VALUES (8, 14, 14);
