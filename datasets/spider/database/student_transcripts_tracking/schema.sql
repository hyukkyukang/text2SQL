PRAGMA foreign_keys = ON;
CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`line_1` VARCHAR(255),
`line_2` VARCHAR(255),
`line_3` VARCHAR(255),
`city` VARCHAR(255),
`zip_postcode` VARCHAR(20),
`state_province_county` VARCHAR(255),
`country` VARCHAR(255),
`other_address_details` VARCHAR(255)
);
CREATE TABLE `Courses` (
`course_id` INTEGER PRIMARY KEY,
`course_name` VARCHAR(255),
`course_description` VARCHAR(255),
`other_details` VARCHAR(255)
);

INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (1, '2294 Grant Square Apt. 235', 'Apt. 370', NULL, 'Port Chelsea', '148', 'Virginia', 'Iceland', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (2, '3999 Aufderhar Ways Suite 593', 'Apt. 388', NULL, 'Lake Laishafurt', '943', 'Kentucky', 'Burundi', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (3, '67942 Carlotta Ferry Apt. 686', 'Apt. 583', NULL, 'Goodwinhaven', '541', 'Kansas', 'Saudi Arabia', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (4, '0144 Lamar Plaza Apt. 346', 'Suite 703', NULL, 'Port Evanston', '847', 'Washington', 'Angola', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (5, '858 Peggie Bypass Suite 212', 'Apt. 335', NULL, 'Michelleburgh', '446', 'Hawaii', 'Haiti', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (6, '16998 Mraz Lodge', 'Apt. 689', NULL, 'North Omer', '902', 'Kentucky', 'Gibraltar', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (7, '193 Marlin Brook', 'Apt. 406', NULL, 'Herzoghaven', '068', 'Arkansas', 'Cook Islands', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (8, '202 Hessel Views Apt. 468', 'Apt. 305', NULL, 'Mariliehaven', '638', 'Idaho', 'Croatia', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (9, '0643 Muller Vista', 'Suite 383', NULL, 'Port Elvisfurt', '777', 'NorthCarolina', 'Gabon', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (10, '7081 Eda Center', 'Suite 830', NULL, 'Rutherfordtown', '839', 'Delaware', 'Kyrgyz Republic', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (11, '9283 Schulist Falls Apt. 037', 'Suite 239', NULL, 'South Palma', '400', 'WestVirginia', 'Bermuda', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (12, '979 Haag Shores Suite 656', 'Apt. 468', NULL, 'Prohaskafort', '590', 'SouthDakota', 'Lesotho', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (13, '492 Wilkinson Route', 'Suite 865', NULL, 'New Clemensburgh', '386', 'Florida', 'Samoa', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (14, '186 Evan Motorway Apt. 409', 'Suite 079', NULL, 'Lake Careyberg', '895', 'Kentucky', 'New Caledonia', NULL);
INSERT INTO Addresses (`address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (15, '74046 Metz Walk Apt. 113', 'Suite 674', NULL, 'Port Oceane', '669', 'Wyoming', 'Norfolk Island', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (1, 'ds', 'p', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (2, 'math', 'q', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (3, 'os', 'v', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (4, 'en', 'k', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (5, 'fr', 'c', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (6, 'la', 'n', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (7, 'cal', 'l', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (8, 'nlp', 'q', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (9, 'dl', 'l', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (10, 'ml', 'b', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (11, 'ai', 'w', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (12, 'db', 'q', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (13, 'rs', 'v', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (14, 'pl', 'p', NULL);
INSERT INTO Courses (`course_id`, `course_name`, `course_description`, `other_details`) VALUES (15, 'oop', 'd', NULL);


CREATE TABLE `Departments` (
`department_id` INTEGER PRIMARY KEY,
`department_name` VARCHAR(255),
`department_description` VARCHAR(255),
`other_details` VARCHAR(255)
);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (1, 'computer science', 'error', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (2, 'history', 'nostrum', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (3, 'art', 'aliquam', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (4, 'linguistic', 'natus', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (5, 'management', 'nihil', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (6, 'engineer', 'autem', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (7, 'math', 'doloribus', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (8, 'statistics', 'nihil', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (9, 'law', 'dolorem', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (10, 'economics', 'non', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (11, 'biology', 'consequatur', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (12, 'medical', 'ea', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (13, 'dance', 'consequatur', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (14, 'drama', 'in', NULL);
INSERT INTO Departments (`department_id`, `department_name`, `department_description`, `other_details`) VALUES (15, 'geography', 'nisi', NULL);



CREATE TABLE `Degree_Programs` (
`degree_program_id` INTEGER PRIMARY KEY,
`department_id` INTEGER NOT NULL,
`degree_summary_name` VARCHAR(255),
`degree_summary_description` VARCHAR(255),
`other_details` VARCHAR(255),
FOREIGN KEY (`department_id` ) REFERENCES `Departments`(`department_id` )
);

INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (1, 13, 'Master', 'architecto', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (2, 2, 'Master', 'cumque', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (3, 13, 'Master', 'placeat', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (4, 8, 'Bachelor', 'unde', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (5, 11, 'Master', 'officiis', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (6, 8, 'Bachelor', 'aperiam', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (7, 14, 'Bachelor', 'assumenda', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (8, 15, 'Master', 'earum', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (9, 3, 'Bachelor', 'voluptas', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (10, 8, 'Bachelor', 'aut', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (11, 14, 'Bachelor', 'aut', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (12, 4, 'Master', 'qui', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (13, 7, 'Bachelor', 'quam', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (14, 2, 'PHD', 'et', NULL);
INSERT INTO Degree_Programs (`degree_program_id`, `department_id`, `degree_summary_name`, `degree_summary_description`, `other_details`) VALUES (15, 12, 'PHD', 'esse', NULL);



CREATE TABLE `Sections` (
`section_id` INTEGER PRIMARY KEY,
`course_id` INTEGER NOT NULL,
`section_name` VARCHAR(255),
`section_description` VARCHAR(255),
`other_details` VARCHAR(255),
FOREIGN KEY (`course_id` ) REFERENCES `Courses`(`course_id` )
);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (1, 9, 'a', 'non', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (2, 2, 'b', 'voluptatem', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (3, 8, 'c', 'qui', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (4, 1, 'd', 'voluptas', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (5, 5, 'e', 'ex', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (6, 7, 'f', 'doloremque', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (7, 12, 'g', 'provident', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (8, 14, 'h', 'et', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (9, 8, 'j', 'quis', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (10, 14, 'k', 'nesciunt', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (11, 1, 'l', 'ad', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (12, 4, 'o', 'et', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (13, 5, 'p', 'facilis', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (14, 6, 'u', 'reprehenderit', NULL);
INSERT INTO Sections (`section_id`, `course_id`, `section_name`, `section_description`, `other_details`) VALUES (15, 10, 'y', 'qui', NULL);



CREATE TABLE `Semesters` (
`semester_id` INTEGER PRIMARY KEY,
`semester_name` VARCHAR(255),
`semester_description` VARCHAR(255),
`other_details` VARCHAR(255)
);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (1, 'spring 2010', 'x', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (2, 'summer 2010', 'g', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (3, 'fall 2010', 'w', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (4, 'winter 2010', 'c', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (5, 'spring 2018', 'c', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (6, 'spring 2012', 'l', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (7, 'spring 2013', 'y', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (8, 'spring 2014', 'x', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (9, 'spring 2015', 'x', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (10, 'spring 2016', 'f', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (11, 'spring 2017', 'g', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (12, 'spring 2018', 'm', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (13, 'fall 2018', 'q', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (14, 'winter 2018', 't', NULL);
INSERT INTO Semesters (`semester_id`, `semester_name`, `semester_description`, `other_details`) VALUES (15, 'spring 2019', 'o', NULL);


CREATE TABLE `Students` (
`student_id` INTEGER PRIMARY KEY,
`current_address_id` INTEGER NOT NULL,
`permanent_address_id` INTEGER NOT NULL,
`first_name` VARCHAR(80),
`middle_name` VARCHAR(40),
`last_name` VARCHAR(40),
`cell_mobile_number` VARCHAR(40),
`email_address` VARCHAR(40),
`ssn` VARCHAR(40),
`date_first_registered` DATETIME,
`date_left` DATETIME,
`other_student_details` VARCHAR(255),
FOREIGN KEY (`current_address_id` ) REFERENCES `Addresses`(`address_id` ),
FOREIGN KEY (`permanent_address_id` ) REFERENCES `Addresses`(`address_id` )
);

INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (1, 10, 15, 'Timmothy', 'Anna', 'Ward', '(096)889-8954x524', 'erwin.zboncak@example.com', '965', '1971-02-05 07:28:23', '1971-05-17 19:28:49', 'quia');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (2, 12, 5, 'Hobart', 'Lorenz', 'Balistreri', '1-009-710-5151', 'swift.kolby@example.com', '304246', '1976-10-26 02:33:06', '2013-10-05 17:41:28', 'autem');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (3, 9, 5, 'Warren', 'Violet', 'Gleichner', '07661787471', 'johns.unique@example.net', '3', '2007-08-29 23:25:41', '2007-03-31 09:53:19', 'facilis');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (4, 7, 11, 'Jarvis', 'Aaliyah', 'Carroll', '09700166582', 'jillian26@example.net', '141072406', '2014-03-28 05:48:23', '2007-08-02 04:12:58', 'atque');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (5, 9, 9, 'Milton', 'Vaughn', 'Christiansen', '171-642-5684', 'lhartmann@example.org', '', '1973-05-19 19:12:46', '2007-11-28 12:50:21', 'laborum');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (6, 6, 3, 'Stanford', 'Mona', 'Rogahn', '436.613.7683', 'skassulke@example.net', '248', '1997-03-20 16:47:25', '2016-04-09 12:27:04', 'qui');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (7, 15, 3, 'Frida', 'Aisha', 'Huel', '1-879-796-8987x164', 'baumbach.lucious@example.org', '668', '2018-03-13 09:56:22', '1997-11-16 08:54:33', 'dolorum');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (8, 1, 5, 'Delaney', 'Judd', 'Ankunding', '03174364122', 'dell43@example.net', '402', '1982-02-14 08:46:35', '2004-12-08 05:29:11', 'voluptatem');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (9, 2, 15, 'Reva', 'Golda', 'Osinski', '(507)365-8405', 'qo''kon@example.com', '39', '2017-01-04 08:10:25', '1990-09-01 05:03:27', 'nesciunt');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (10, 15, 14, 'Helga', 'Cleve', 'Mohr', '677.401.9382', 'nya.lesch@example.net', '43', '2009-09-25 00:14:25', '2017-07-09 21:38:43', 'rerum');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (11, 14, 4, 'Gregg', 'Mossie', 'Schuppe', '(462)246-7921', 'nbruen@example.org', '494', '1989-05-24 23:31:29', '1975-10-09 00:49:27', 'omnis');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (12, 14, 9, 'Orrin', 'Neal', 'Kemmer', '(982)153-1469x1733', 'beth42@example.org', '6274274', '2005-12-15 08:42:10', '2006-08-04 17:26:49', 'non');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (13, 9, 8, 'Deon', 'Brooklyn', 'Weimann', '(213)445-0399x85208', 'jhuel@example.com', '68095', '1986-02-24 21:12:23', '2014-05-30 23:32:02', 'assumenda');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (14, 12, 11, 'Jordy', 'Osborne', 'Rempel', '(605)919-3594x3661', 'gracie29@example.com', '34458427', '2004-12-24 12:36:46', '1999-08-24 00:07:10', 'et');
INSERT INTO Students (`student_id`, `current_address_id`, `permanent_address_id`, `first_name`, `middle_name`, `last_name`, `cell_mobile_number`, `email_address`, `ssn`, `date_first_registered`, `date_left`, `other_student_details`) VALUES (15, 2, 9, 'Jett', 'Alberta', 'Jaskolski', '877.549.9067x8723', 'mya88@example.org', '156', '1982-06-19 13:15:18', '1982-06-11 00:25:39', 'omnis');



CREATE TABLE `Student_Enrolment` (
`student_enrolment_id` INTEGER PRIMARY KEY,
`degree_program_id` INTEGER NOT NULL,
`semester_id` INTEGER NOT NULL,
`student_id` INTEGER NOT NULL,
`other_details` VARCHAR(255),
FOREIGN KEY (`degree_program_id` ) REFERENCES `Degree_Programs`(`degree_program_id` ),
FOREIGN KEY (`semester_id` ) REFERENCES `Semesters`(`semester_id` ),
FOREIGN KEY (`student_id` ) REFERENCES `Students`(`student_id` )
);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (1, 12, 13, 14, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (2, 4, 2, 9, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (3, 10, 2, 7, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (4, 4, 15, 9, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (5, 5, 1, 14, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (6, 3, 13, 1, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (7, 9, 9, 4, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (8, 8, 5, 12, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (9, 12, 6, 7, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (10, 11, 2, 7, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (11, 10, 13, 4, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (12, 9, 2, 5, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (13, 2, 12, 6, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (14, 9, 15, 6, NULL);
INSERT INTO Student_Enrolment (`student_enrolment_id`, `degree_program_id`, `semester_id`, `student_id`, `other_details`) VALUES (15, 2, 4, 6, NULL);



CREATE TABLE `Student_Enrolment_Courses` (
`student_course_id` INTEGER PRIMARY KEY,
`course_id` INTEGER NOT NULL,
`student_enrolment_id` INTEGER NOT NULL,
FOREIGN KEY (`course_id` ) REFERENCES `Courses`(`course_id` ),
FOREIGN KEY (`student_enrolment_id` ) REFERENCES `Student_Enrolment`(`student_enrolment_id` )
);

CREATE TABLE `Transcripts` (
`transcript_id` INTEGER PRIMARY KEY,
`transcript_date` DATETIME,
`other_details` VARCHAR(255)
);

CREATE TABLE `Transcript_Contents` (
`student_course_id` INTEGER NOT NULL,
`transcript_id` INTEGER NOT NULL,
FOREIGN KEY (`student_course_id` ) REFERENCES `Student_Enrolment_Courses`(`student_course_id` ),
FOREIGN KEY (`transcript_id` ) REFERENCES `Transcripts`(`transcript_id` )
);

INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (8, 2, 5);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (28982908, 8, 9);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (1, 6, 8);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (2, 14, 5);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (9860, 14, 10);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (7, 11, 5);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (681404, 10, 4);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (96, 2, 4);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (438800, 3, 4);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (83814225, 12, 14);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (0, 6, 2);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (604750, 4, 6);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (70882679, 13, 9);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (45105806, 13, 14);
INSERT INTO Student_Enrolment_Courses (`student_course_id`, `course_id`, `student_enrolment_id`) VALUES (76, 10, 13);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (1, '1988-04-30 01:19:47', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (2, '1975-10-28 15:16:51', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (3, '1984-12-19 00:37:21', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (4, '1999-01-06 20:06:46', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (5, '2013-06-30 13:01:40', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (6, '2010-12-13 10:55:15', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (7, '1990-03-05 11:59:41', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (8, '1975-05-06 12:04:47', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (9, '1984-01-18 23:07:07', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (10, '1975-05-20 18:31:21', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (11, '1986-07-12 07:27:29', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (12, '1985-08-21 09:32:39', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (13, '1985-04-29 01:20:20', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (14, '2002-09-24 06:11:49', NULL);
INSERT INTO Transcripts (`transcript_id`, `transcript_date`, `other_details`) VALUES (15, '1998-11-22 12:18:29', NULL);

INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (0, 2);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (96, 8);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (76, 9);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (7, 4);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (0, 15);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (76, 15);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (0, 6);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (96, 13);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (76, 12);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (28982908, 11);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (2, 8);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (0, 5);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (8, 5);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (45105806, 8);
INSERT INTO Transcript_Contents (`student_course_id`, `transcript_id`) VALUES (70882679, 6);
