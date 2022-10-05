PRAGMA foreign_keys = ON;

CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`line_1_number_building` VARCHAR(80),
`city` VARCHAR(50),
`zip_postcode` VARCHAR(20),
`state_province_county` VARCHAR(50),
`country` VARCHAR(50)
);


INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (1, '3904 Stroman Passage',  'Port Melyssa', '14445', 'Georgia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (2, '053 Quigley Island',  'Hagenesfurt', '22194', 'Kentucky', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (3, '00704 Zoe Alley',  'Lake Elaina', '08938', 'Georgia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (4, '484 O''Hara Drive',  'Buckridgehaven', '00005', 'Oregon', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (5, '354 Frederik Ridge',  'Powlowskichester', '27559', 'Ohio', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (6, '376 Kallie Tunnel Apt. 784',  'Elviebury', '63768', 'Connecticut', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (7, '56461 Baumbach Well Suite 634',  'Lockmanfurt', '34975', 'Washington', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (8, '29085 Dejah Pine Suite 059',  'Lake Rafaela', '80376', 'WestVirginia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (9, '535 Ariel Brook',  'Port Jackelinemouth', '85954', 'Maine', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (10, '2291 Larkin Ports',  'South Richieport', '95098', 'Idaho', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (11, '37698 Hahn Curve Apt. 572',  'South Eugene', '99903', 'Alabama', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (12, '7089 Mueller Forks',  'New Bernieceburgh', '38197', 'Louisiana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (13, '43235 Jazmin Mountain Suite 251',  'Ericamouth', '75074', 'Louisiana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (14, '4834 Schaefer Light Suite 947',  'Damianfort', '61121', 'Connecticut', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (15, '9260 Streich Mountain',  'West Edmondview', '43988', 'Kentucky', 'USA');

CREATE TABLE `Staff` (
`staff_id` INTEGER PRIMARY KEY,
`staff_address_id` INTEGER NOT NULL,
`nickname` VARCHAR(80),
`first_name` VARCHAR(80),
`middle_name` VARCHAR(80),
`last_name` VARCHAR(80),
`date_of_birth` DATETIME,
`date_joined_staff` DATETIME,
`date_left_staff` DATETIME,
FOREIGN KEY (`staff_address_id` ) REFERENCES `Addresses`(`address_id` )
);

INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (1, 14, 'thompson.constantin', 'Janessa', 'Amara', 'Sawayn', '2010-12-08 16:55:14', '2017-04-27 03:21:26', '2018-03-23 22:53:12');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (2, 3, 'santos45', 'Camylle', 'Icie', 'Weissnat', '2015-08-01 13:22:43', '2016-06-06 08:54:28', '2018-03-10 15:25:00');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (3, 5, 'ynader', 'Kaitlin', 'Stephania', 'Mertz', '1994-05-17 05:32:11', '2018-01-02 12:24:24', '2018-03-24 10:11:08');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (4, 1, 'lsenger', 'Rebekah', 'Sherwood', 'Hermann', '2003-01-16 06:29:11', '2017-10-21 17:20:57', '2018-03-04 17:13:53');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (5, 14, 'ledner.jamie', 'Jedidiah', 'Dejon', 'Herzog', '2015-08-10 11:37:39', '2016-05-16 20:56:53', '2018-03-08 04:23:14');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (6, 12, 'bogisich.geovany', 'Eulalia', 'Tre', 'Maggio', '1998-04-27 12:55:05', '2017-08-27 19:19:44', '2018-02-28 08:26:10');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (7, 13, 'weldon.kling', 'Queenie', 'Madelyn', 'Macejkovic', '2007-06-11 20:03:28', '2017-06-04 14:30:41', '2018-03-08 05:16:29');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (8, 1, 'gabe21', 'Titus', 'Duane', 'Durgan', '2005-05-02 06:23:36', '2016-05-26 00:55:07', '2018-03-05 18:30:12');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (9, 4, 'ymiller', 'Margie', 'Caesar', 'Doyle', '1995-06-03 08:09:17', '2017-12-22 03:06:32', '2018-03-08 12:31:16');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (10, 2, 'sbrown', 'Jaleel', 'Maiya', 'Rogahn', '1996-09-24 09:51:42', '2016-06-05 22:22:23', '2018-03-14 07:14:37');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (11, 1, 'nicholaus92', 'Winnifred', 'Liam', 'Jast', '2000-06-13 18:09:11', '2016-05-01 02:22:45', '2018-03-09 05:08:35');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (12, 7, 'edwin.hudson', 'Lincoln', 'Benny', 'Carroll', '1996-03-09 08:19:49', '2016-11-05 01:43:52', '2018-03-06 23:17:41');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (13, 1, 'norma73', 'Ernestina', 'Clarabelle', 'Mraz', '2004-05-19 14:11:13', '2016-11-13 20:44:23', '2018-02-26 17:56:31');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (14, 6, 'bkunze', 'Ludie', 'Ulices', 'Kuphal', '2000-11-16 06:55:12', '2017-08-30 15:08:37', '2018-03-02 01:48:15');
INSERT INTO Staff (`staff_id`, `staff_address_id`, `nickname`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_joined_staff`, `date_left_staff`) VALUES (15, 3, 'weissnat.vincenzo', 'Simeon', 'Mayra', 'Turner', '1997-03-29 10:55:45', '2017-02-20 18:45:20', '2018-03-01 17:10:03');


CREATE TABLE `Vehicles` (
`vehicle_id` INTEGER PRIMARY KEY,
`vehicle_details` VARCHAR(255)
);
INSERT INTO Vehicles (`vehicle_id`, `vehicle_details`) VALUES (1, 'Van');
INSERT INTO Vehicles (`vehicle_id`, `vehicle_details`) VALUES (2, 'Truck');
INSERT INTO Vehicles (`vehicle_id`, `vehicle_details`) VALUES (3, 'Car');

CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`customer_address_id` INTEGER NOT NULL,
`customer_status_code` VARCHAR(15) NOT NULL,
`date_became_customer` DATETIME,
`date_of_birth` DATETIME,
`first_name` VARCHAR(80),
`last_name` VARCHAR(80),
`amount_outstanding` DOUBLE NULL,
`email_address` VARCHAR(250),
`phone_number` VARCHAR(255),
`cell_mobile_phone_number` VARCHAR(255),
FOREIGN KEY (`customer_address_id` ) REFERENCES `Addresses`(`address_id` )
);
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (1, 13, 'Bad Customer', '2016-05-11 17:03:48', '1998-12-15 13:24:40', 'Carole', 'Bernhard', '255', 'everette.goyette@example.org', '07278206718', '861-638-9797');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (2, 10, 'Bad Customer', '2015-11-16 22:52:14', '1995-07-17 12:13:16', 'Genevieve', 'Terry', '7256', 'huel.jana@example.org', '+14(5)2351480248', '578-518-4785x612');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (3, 10, 'Good Customer', '2016-04-08 00:28:15', '1994-06-21 01:34:56', 'Clara', 'Ortiz', '9443', 'hilario.sporer@example.org', '374-483-2758x85087', '1-197-686-2849x8761');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (4, 8, 'Good Customer', '2016-07-22 15:53:44', '1993-02-07 05:40:26', 'Jordy', 'Tromp', '3751', 'afranecki@example.com', '218.550.1362', '081-097-3684');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (5, 2, 'Bad Customer', '2017-11-12 04:34:44', '1991-02-10 00:42:17', 'Millie', 'Bruen', '5687', 'asha.kilback@example.org', '1-618-535-9750', '00659133944');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (6, 9, 'Good Customer', '2017-04-16 05:12:21', '1993-03-08 08:48:42', 'Amya', 'Spinka', '3900', 'kozey.citlalli@example.org', '1-673-962-8158x7646', '(780)719-4206x033');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (7, 1, 'Bad Customer', '2015-06-24 03:50:04', '1996-11-07 05:30:55', 'Marina', 'Koelpin', '8144', 'mayert.judy@example.com', '(662)490-3108', '848-099-2095x785');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (8, 10, 'Bad Customer', '2017-10-05 14:15:46', '1998-09-18 04:45:01', 'Dianna', 'Trantow', '9500', 'kroberts@example.org', '206-054-0689x05861', '739-333-6966x187');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (9, 12, 'Bad Customer', '2016-02-17 08:26:23', '1991-12-05 02:50:15', 'Leif', 'Mertz', '7093', 'mariela28@example.org', '753.921.0871', '1-387-258-1016x96963');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (10, 1, 'Bad Customer', '2017-11-25 01:42:26', '1996-08-29 00:03:08', 'Rylan', 'Goodwin', '1000', 'nichole59@example.com', '1-387-884-0656', '+45(6)4872981083');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (11, 13, 'Good Customer', '2016-11-30 10:37:41', '1994-05-07 01:32:16', 'Ray', 'Kohler', '9447', 'karina.carroll@example.net', '(297)122-0086', '577-584-4864');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (12, 9, 'Bad Customer', '2016-05-13 07:38:23', '1993-07-09 11:11:36', 'Omer', 'Leuschke', '2099', 'myrl.lind@example.net', '417.136.2900x672', '200.830.8723');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (13, 7, 'Good Customer', '2016-09-04 23:08:20', '1988-09-19 14:45:56', 'Sigrid', 'Schmeler', '2255', 'wehner.harold@example.com', '192-395-2411', '+57(9)4602098297');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (14, 10, 'Good Customer', '2016-03-18 06:14:18', '1996-05-23 01:21:54', 'Estelle', 'Grant', '5494', 'ehowell@example.com', '1-875-045-0806', '1-401-108-8016x078');
INSERT INTO Customers (`customer_id`, `customer_address_id`, `customer_status_code`, `date_became_customer`, `date_of_birth`, `first_name`, `last_name`, `amount_outstanding`, `email_address`, `phone_number`, `cell_mobile_phone_number`) VALUES (15, 1, 'Bad Customer', '2015-09-25 13:59:21', '1996-08-30 06:17:50', 'Dameon', 'Sanford', '9332', 'kitty.hand@example.net', '(729)396-4354x3576', '(630)964-2426');


CREATE TABLE `Customer_Payments` (
`customer_id` INTEGER NOT NULL,
`datetime_payment` DATETIME NOT NULL,
`payment_method_code` VARCHAR(10) NOT NULL,
`amount_payment` DOUBLE NULL,
PRIMARY KEY (`customer_id`,`datetime_payment`),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);
CREATE TABLE `Lessons` (
`lesson_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`lesson_status_code` VARCHAR(15) NOT NULL,
`staff_id` INTEGER,
`vehicle_id` INTEGER NOT NULL,
`lesson_date` DATETIME,
`lesson_time` VARCHAR(10),
`price` DOUBLE NULL,
FOREIGN KEY (`vehicle_id` ) REFERENCES `Vehicles`(`vehicle_id` ),
FOREIGN KEY (`staff_id` ) REFERENCES `Staff`(`staff_id` ),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (11, '2018-02-05 18:44:46', 'Direct Debit', '9570.93');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (2, '2018-02-24 10:07:05', 'Direct Debit', '8180.26');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (14, '2018-02-27 20:08:53', 'Direct Debit', '4610.26');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (6, '2018-03-12 08:41:47', 'Direct Debit', '4032.33');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (3, '2018-02-06 13:35:58', 'Credit Card', '787.12');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (14, '2018-03-12 13:31:36', 'Credit Card', '6970.98');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (4, '2018-02-03 15:04:36', 'Direct Debit', '6311.37');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (7, '2018-02-15 16:38:49', 'Direct Debit', '4773.16');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (13, '2018-02-21 05:28:49', 'Credit Card', '7440.34');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (6, '2018-02-19 09:06:29', 'Direct Debit', '5475.26');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (2, '2018-03-20 21:38:41', 'Direct Debit', '1708.18');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (10, '2018-02-01 06:15:31', 'Direct Debit', '6782.84');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (1, '2018-03-18 13:48:13', 'Direct Debit', '9886.62');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (14, '2018-02-19 01:49:59', 'Credit Card', '3073.98');
INSERT INTO Customer_Payments (`customer_id`, `datetime_payment`, `payment_method_code`, `amount_payment`) VALUES (12, '2018-03-06 21:36:41', 'Credit Card', '9414.74');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (1, 6, 'Cancelled', 8, 3, '2018-02-28 10:55:36', '5', '199');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (2, 8, 'Cancelled', 14, 3, '2018-03-07 16:12:36', '6', '167');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (3, 6, 'Cancelled', 11, 2, '2018-03-03 15:10:16', '3', '352');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (4, 8, 'Completed', 1, 2, '2018-03-17 19:02:07', '9', '306');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (5, 10, 'Completed', 3, 2, '2018-03-12 00:41:59', '9', '295');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (6, 5, 'Completed', 4, 2, '2018-03-07 22:03:49', '6', '492');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (7, 9, 'Cancelled', 11, 1, '2018-03-08 16:05:05', '9', '231');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (8, 3, 'Completed', 8, 2, '2018-03-21 06:48:45', '2', '277');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (9, 2, 'Completed', 4, 2, '2018-03-05 20:05:33', '9', '456');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (10, 2, 'Cancelled', 5, 2, '2018-02-26 02:36:35', '4', '495');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (11, 10, 'Cancelled', 15, 1, '2018-03-04 06:55:46', '2', '223');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (12, 11, 'Cancelled', 12, 2, '2018-03-16 07:08:52', '2', '184');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (13, 13, 'Completed', 12, 1, '2018-03-05 18:05:31', '5', '446');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (14, 11, 'Cancelled', 11, 1, '2018-03-07 11:53:32', '5', '483');
INSERT INTO Lessons (`lesson_id`, `customer_id`, `lesson_status_code`, `staff_id`, `vehicle_id`, `lesson_date`, `lesson_time`, `price`) VALUES (15, 3, 'Cancelled', 8, 1, '2018-03-06 21:48:51', '9', '340');
