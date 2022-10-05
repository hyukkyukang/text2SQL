PRAGMA foreign_keys = ON;

CREATE TABLE Addresses (
address_id INTEGER NOT NULL,
line_1 VARCHAR(80),
line_2 VARCHAR(80),
city VARCHAR(50),
zip_postcode CHAR(20),
state_province_county VARCHAR(50),
country VARCHAR(50),
PRIMARY KEY (address_id)
);

INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (5, '0900 Roderick Oval
New Albina, WA 19200-7914', 'Suite 096', 'Linnealand', '862', 'Montana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (9, '966 Dach Ports Apt. 322
Lake Harmonyhaven, VA 65235', 'Apt. 163', 'South Minnie', '716', 'Texas', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (29, '28550 Broderick Underpass Suite 667
Zakaryhaven, WY 22945-1534', 'Apt. 419', 'North Trystanborough', '112', 'Vermont', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (30, '83706 Ana Trafficway Apt. 992
West Jarret, MI 01112', 'Apt. 884', 'Lake Kaley', '431', 'Washington', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (43, '69165 Beatty Station
Haleighstad, MS 55164', 'Suite 333', 'Stephaniemouth', '559', 'Massachusetts', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (45, '242 Pacocha Streets
East Isabellashire, ND 03506', 'Suite 370', 'O''Connellview', '514', 'NewMexico', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (55, '801 Modesto Island Suite 306
Lacyville, VT 34059', 'Suite 764', 'New Alta', '176', 'Mississippi', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (63, '0177 Fisher Dam
Berniershire, KS 00038-7574', 'Apt. 903', 'South Keenan', '613', 'Michigan', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (68, '09471 Hickle Light
Port Maxime, NJ 91550-5409', 'Suite 903', 'Hannahside', '354', 'Connecticut', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (73, '67831 Lavonne Lodge
Olsontown, DC 20894', 'Apt. 756', 'Alizeshire', '687', 'NewMexico', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (82, '228 Fahey Land
Baileymouth, FL 06297-5606', 'Suite 087', 'South Naomibury', '079', 'Ohio', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (88, '1770 Adriel Ramp Apt. 397
West Ashlynnchester, UT 91968', 'Apt. 617', 'East Tavaresburgh', '179', 'SouthDakota', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (92, '8760 Eldon Squares Suite 260
Marquisestad, GA 38537', 'Apt. 435', 'Lake Devon', '244', 'SouthDakota', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (94, '8263 Abbott Crossing Apt. 066
Oberbrunnerbury, LA 67451', 'Apt. 626', 'Boyleshire', '536', 'Kansas', 'USA');
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (99, '521 Paucek Field
North Oscartown, WI 31527', 'Apt. 849', 'Terencetown', '979', 'Michigan', 'USA');

CREATE TABLE People (
person_id INTEGER NOT NULL,
first_name VARCHAR(255),
middle_name VARCHAR(255),
last_name VARCHAR(255),
cell_mobile_number VARCHAR(40),
email_address VARCHAR(40),
login_name VARCHAR(40),
password VARCHAR(40),
PRIMARY KEY (person_id)
);
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (111, 'Shannon', 'Elissa', 'Senger', '01955267735', 'javier.trantow@example.net', 'pgub', '5e4ff49a61b3544da3ad7dc7e2cf28847564c64c');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (131, 'Dariana', 'Hayley', 'Bednar', '(262)347-9364x516', 'leila14@example.net', 'zops', 'b20b6a9f24aadeda70d54e410c3219f61fb063fb');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (121, 'Virginie', 'Jasmin', 'Hartmann', '(508)319-2970x043', 'boyer.lonie@example.com', 'bkkv', 'b063331ea8116befaa7b84c59c6a22200f5f8caa');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (141, 'Verna', 'Arielle', 'Grant', '1-372-548-7538x314', 'adele.gibson@example.net', 'uuol', '7be9c03d5467d563555c51ebb3eb78e7f90832ec');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (151, 'Hoyt', 'Mercedes', 'Wintheiser', '1-603-110-0647', 'stanley.monahan@example.org', 'bnto', 'c55795df86182959094b83e27900f7cf44ced570');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (161, 'Mayra', 'Haley', 'Hartmann', '724-681-4161x51632', 'terry.kuhlman@example.org', 'rzxu', 'ecae473cb54601e01457078ac0cdf4a1ced837bb');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (171, 'Lizeth', 'Bell', 'Bartoletti', '812.228.0645x91481', 'celestine11@example.net', 'mkou', '76a93d1d3b7becc932d203beac61d064bd54e947');
INSERT INTO People (`person_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `login_name`, `password`) VALUES (181, 'Nova', 'Amiya', 'Feest', '766-272-9964', 'oreynolds@example.com', 'qrwl', '7dce9b688636ee212294c257dd2f6b85c7f65f2e');



CREATE TABLE Students (
student_id INTEGER NOT NULL,
student_details VARCHAR(255),
PRIMARY KEY (student_id),
FOREIGN KEY (student_id) REFERENCES People (person_id)
);
INSERT INTO Students (`student_id`,`student_details`) VALUES  (111,'Marry');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (121,'Martin');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (131,'Barry');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (141,'Nikhil');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (151,'John');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (161,'Sarah');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (171,'Joe');
INSERT INTO Students (`student_id`,`student_details`) VALUES  (181,'Nancy');


CREATE TABLE Courses (
course_id VARCHAR(100) NOT NULL,
course_name VARCHAR(120),
course_description VARCHAR(255),
other_details VARCHAR(255),
PRIMARY KEY (course_id)
);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`) VALUES ('301', 'statistics', 'statistics');
INSERT INTO Courses (`course_id`, `course_name`, `course_description`) VALUES ('302', 'English', 'English');
INSERT INTO Courses (`course_id`, `course_name`, `course_description`) VALUES ('303', 'French', 'French');
INSERT INTO Courses (`course_id`, `course_name`, `course_description`) VALUES ('304', 'database', 'database');
INSERT INTO Courses (`course_id`, `course_name`, `course_description`) VALUES ('305', 'data structure', 'data structure');
INSERT INTO Courses (`course_id`, `course_name`, `course_description`) VALUES ('306', 'Art history', 'Art history');



CREATE TABLE People_Addresses (
person_address_id INTEGER NOT NULL,
person_id INTEGER NOT NULL,
address_id INTEGER NOT NULL,
date_from DATETIME,
date_to DATETIME,
PRIMARY KEY (person_address_id),
FOREIGN KEY (person_id) REFERENCES People (person_id),
FOREIGN KEY (address_id) REFERENCES Addresses (address_id)
);
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (122, 111, 9, '2012-09-26 13:21:00', '2018-03-21 09:46:30');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (257, 121, 5, '2008-07-31 02:17:25', '2018-03-09 02:11:12');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (269, 131, 88, '2008-05-26 20:43:41', '2018-03-11 20:26:41');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (276, 141, 99, '2014-05-10 00:32:31', '2018-03-08 06:16:47');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (281, 151, 92, '2010-11-26 05:21:12', '2018-03-12 21:10:02');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (340, 161, 45, '2017-05-01 17:32:26', '2018-03-09 08:45:06');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (363, 171, 55, '2015-05-24 16:14:12', '2018-02-23 22:44:18');
INSERT INTO People_Addresses (`person_address_id`, `person_id`, `address_id`, `date_from`, `date_to`) VALUES (396, 181, 82, '2013-12-26 16:57:01', '2018-03-03 16:06:17');


CREATE TABLE Student_Course_Registrations (
student_id INTEGER NOT NULL,
course_id INTEGER NOT NULL,
registration_date DATETIME NOT NULL,
PRIMARY KEY (student_id, course_id),
FOREIGN KEY (student_id) REFERENCES Students (student_id),
FOREIGN KEY (course_id) REFERENCES Courses (course_id)
);

INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (111,'301','2008-11-04 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (121,'301','2008-10-04 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (121,'303','2008-11-14 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (131,'303','2008-11-05 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (141,'302','2008-11-06 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (151,'305','2008-11-07 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (161,'302','2008-11-07 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (171,'301','2008-11-07 10:35:13');
INSERT INTO Student_Course_Registrations (`student_id`,`course_id`,`registration_date`) VALUES (141,'301','2008-11-08 10:35:13');


CREATE TABLE Student_Course_Attendance (
student_id INTEGER NOT NULL,
course_id INTEGER NOT NULL,
date_of_attendance DATETIME NOT NULL,
PRIMARY KEY (student_id, course_id),
FOREIGN KEY (student_id, course_id) REFERENCES Student_Course_Registrations (student_id,course_id)
);

INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (111,'301','2008-11-04 10:35:13');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (121,'301','2012-04-09 11:44:34');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (121,'303','2014-04-09 11:44:34');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (141,'302','2013-04-09 11:44:34');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (171,'301','2015-04-09 11:44:34');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (161,'302','2014-01-09 11:44:34');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (151,'305','2012-05-09 11:44:34');
INSERT INTO Student_Course_Attendance (`student_id`,`course_id`,`date_of_attendance`) VALUES (141,'301','2012-09-09 11:44:34');


CREATE TABLE Candidates (
candidate_id INTEGER NOT NULL ,
candidate_details VARCHAR(255),
PRIMARY KEY (candidate_id),
FOREIGN KEY (candidate_id) REFERENCES People (person_id)
);
CREATE TABLE Candidate_Assessments (
candidate_id INTEGER NOT NULL,
qualification CHAR(15) NOT NULL,
assessment_date DATETIME NOT NULL,
asessment_outcome_code CHAR(15) NOT NULL,
PRIMARY KEY (candidate_id, qualification),
FOREIGN KEY (candidate_id) REFERENCES Candidates (candidate_id)
);
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (111,'Jane');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (121,'Robert');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (131,'Alex');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (141,'Tao');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (151,'Jack');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (161,'Leo');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (171,'Robin');
INSERT INTO Candidates (`candidate_id`,`candidate_details`) VALUES  (181,'Cindy');


INSERT INTO Candidate_Assessments (`candidate_id`,`qualification`,`assessment_date`,`asessment_outcome_code`) VALUES (111,'A','2010-04-07 11:44:34','Pass');
INSERT INTO Candidate_Assessments (`candidate_id`,`qualification`,`assessment_date`,`asessment_outcome_code`) VALUES (121,'B','2010-04-17 11:44:34','Pass');
INSERT INTO Candidate_Assessments (`candidate_id`,`qualification`,`assessment_date`,`asessment_outcome_code`) VALUES (131,'D','2010-04-05 11:44:34','Fail');
INSERT INTO Candidate_Assessments (`candidate_id`,`qualification`,`assessment_date`,`asessment_outcome_code`) VALUES (141,'C','2010-04-06 11:44:34','Pass');
INSERT INTO Candidate_Assessments (`candidate_id`,`qualification`,`assessment_date`,`asessment_outcome_code`) VALUES (151,'B','2010-04-09 11:44:34','Pass');
