PRAGMA foreign_keys = ON;
CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`line_1_number_building` VARCHAR(80),
`town_city` VARCHAR(50),
`zip_postcode` VARCHAR(20),
`state_province_county` VARCHAR(50),
`country` VARCHAR(50)
);
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (1, '25518 Ortiz Centers',  'West Stacy', '193', 'NorthCarolina', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (2, '033 Stracke Parkways',  'Lake Meaghan', '227', 'Colorado', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (3, '269 Flatley Port Suite 062',  'Breanneberg', '527', 'NewHampshire', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (4, '90928 Garret Mall',  'New Gabe', '993', 'Missouri', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (5, '0399 Colby Extensions',  'Carrollland', '250', 'Kentucky', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (6, '538 Schaefer Highway Apt. 472',  'East Lamonttown', '202', 'Louisiana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (7, '34580 Mireille Crescent Suite 776',  'Cletusbury', '215', 'Georgia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (8, '6862 Kaitlyn Knolls Suite 309',  'New Katlyn', '021', 'Pennsylvania', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (9, '90236 Kunze Pass',  'Dangelohaven', '259', 'Louisiana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (10, '51124 Marquardt Forks',  'Robertsberg', '023', 'NewYork', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (11, '3986 Bergstrom Stravenue',  'Lake Taryn', '332', 'Michigan', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (12, '43686 Kihn Corner',  'Feilmouth', '460', 'Vermont', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (13, '29446 Hauck Ridge',  'Lake Gertrudeton', '603', 'Montana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (14, '326 Emile Turnpike Suite 964',  'East Clair', '515', 'Georgia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`,  `town_city`, `zip_postcode`, `state_province_county`, `country`) VALUES (15, '266 Feeney Falls',  'West Brandynland', '320', 'Arkansas', 'USA');


CREATE TABLE `Services` (
`service_id` INTEGER PRIMARY KEY,
`service_type_code` VARCHAR(15) NOT NULL,
`service_name` VARCHAR(80),
`service_descriptio` VARCHAR(255)
);
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (1, 'Education', 'Education', 'Education');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (2, 'Welfare', 'Health', 'Welfare');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (3, 'Education', 'Education', 'Health');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (4, 'Welfare', 'Education', 'Education');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (5, 'Education', 'Education', 'Health');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (6, 'Welfare', 'Welfare', 'Health');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (7, 'Welfare', 'Welfare', 'Welfare');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (8, 'Education', 'Education', 'Welfare');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (9, 'Education', 'Health', 'Education');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (10, 'Education', 'Health', 'Welfare');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (11, 'Welfare', 'Education', 'Health');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (12, 'Education', 'Education', 'Health');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (13, 'Health', 'Welfare', 'Education');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (14, 'Education', 'Education', 'Health');
INSERT INTO Services (`service_id`, `service_type_code`, `service_name`, `service_descriptio`) VALUES (15, 'Welfare', 'Health', 'Education');


CREATE TABLE `Forms` (
`form_id` INTEGER PRIMARY KEY,
`form_type_code` VARCHAR(15) NOT NULL,
`service_id` INTEGER,
`form_number` VARCHAR(50),
`form_name` VARCHAR(80),
`form_description` VARCHAR(255),
FOREIGN KEY (`service_id` ) REFERENCES `Services`(`service_id` )
);


INSERT INTO Forms (`form_id`, `form_type_code`, `service_id`, `form_number`, `form_name`, `form_description`) VALUES (1, 'Basic', 13, '8069', 'SSN Application', 'Form for SSN Application');
INSERT INTO Forms (`form_id`, `form_type_code`, `service_id`, `form_number`, `form_name`, `form_description`) VALUES (2, 'Complex', 9, '2675', 'Marriage Certificate', 'Marriage Certificate');
INSERT INTO Forms (`form_id`, `form_type_code`, `service_id`, `form_number`, `form_name`, `form_description`) VALUES (3, 'Complex', 2, '9837', 'Divorce  Certificate', 'Divorce  Certificate');
INSERT INTO Forms (`form_id`, `form_type_code`, `service_id`, `form_number`, `form_name`, `form_description`) VALUES (4, 'Complex', 14, '9173', 'Moving Form', 'Form for moving house');
INSERT INTO Forms (`form_id`, `form_type_code`, `service_id`, `form_number`, `form_name`, `form_description`) VALUES (5, 'Basic', 3, '6673', 'Account Application', 'Form for Account Application');
INSERT INTO Forms (`form_id`, `form_type_code`, `service_id`, `form_number`, `form_name`, `form_description`) VALUES (6, 'Complex', 7, '9130', 'Property Change', 'Form for Property Change');


CREATE TABLE `Individuals` (
`individual_id` INTEGER PRIMARY KEY,
`individual_first_name` VARCHAR(80),
`individual_middle_name` VARCHAR(80),
`inidividual_phone` VARCHAR(80),
`individual_email` VARCHAR(80),
`individual_address` VARCHAR(255),
`individual_last_name` VARCHAR(80)
);
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (1, 'Oscar', 'Hosea', '1-925-696-5232', 'amie.okuneva@example.org', '6956 Lia Plaza', 'Maggio');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (2, 'Geovanny', 'Antonia', '075.012.6775x409', 'jamey.effertz@example.net', '69578 Baylee Prairie', 'Kerluke');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (3, 'Casper', 'Mitchell', '1-818-062-2837', 'brandon.hermiston@example.com', '4555 Hane Orchard', 'Kutch');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (4, 'Guy', 'Erick', '1-014-109-1968x40778', 'reinger.leola@example.net', '919 Cummerata Burgs Apt. 063', 'Wunsch');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (5, 'Matteo', 'Rene', '634.660.8469', 'strosin.conor@example.org', '13223 Torphy Point', 'Schuster');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (6, 'Nella', 'Tommie', '892.154.8492', 'austyn.effertz@example.org', '640 Johns Branch', 'Kertzmann');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (7, 'Jeffery', 'Alberto', '317.382.4425x7924', 'august78@example.net', '384 Carter Flat Suite 896', 'Jacobs');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (8, 'Shany', 'Colleen', '(030)939-8437x6141', 'mbahringer@example.com', '407 Sofia Knoll Suite 591', 'D''Amore');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (9, 'Allene', 'Erwin', '1-797-739-0925', 'autumn.fisher@example.net', '3889 Theodore Radial Suite 795', 'Rutherford');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (10, 'Lafayette', 'Raoul', '396.348.9925x9122', 'hickle.ewell@example.com', '3203 Hermann Port Apt. 429', 'Rau');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (11, 'Daniella', 'Jamel', '(121)788-2928', 'ericka97@example.net', '4643 Ismael Pines Apt. 899', 'Rogahn');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (12, 'Daron', 'Howard', '+94(0)3793557310', 'allison.lemke@example.org', '104 Bernier Loop', 'Hand');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (13, 'Ressie', 'Alysson', '1-727-057-0382x999', 'delpha81@example.com', '5114 Jakubowski Port Apt. 758', 'Bradtke');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (14, 'Katarina', 'Lacey', '(348)944-9700', 'zlehner@example.net', '16688 Powlowski Views Apt. 341', 'Dooley');
INSERT INTO Individuals (`individual_id`, `individual_first_name`, `individual_middle_name`, `inidividual_phone`, `individual_email`, `individual_address`, `individual_last_name`) VALUES (15, 'Jaylen', 'Jewell', '(468)679-4017', 'shanahan.julien@example.net', '06409 Beatty Glen Suite 000', 'O''Conner');


CREATE TABLE `Organizations` (
`organization_id` INTEGER PRIMARY KEY,
`date_formed` DATETIME,
`organization_name` VARCHAR(255),
`uk_vat_number` VARCHAR(20)
);
INSERT INTO Organizations (`organization_id`, `date_formed`, `organization_name`, `uk_vat_number`) VALUES (1, '2016-08-24 23:52:48', 'Labour Party', '2157');
INSERT INTO Organizations (`organization_id`, `date_formed`, `organization_name`, `uk_vat_number`) VALUES (2, '2016-10-01 12:42:01', 'Plaid Cymru', '7459');
INSERT INTO Organizations (`organization_id`, `date_formed`, `organization_name`, `uk_vat_number`) VALUES (3, '2016-10-09 07:22:53', 'Conservative', '1211');
INSERT INTO Organizations (`organization_id`, `date_formed`, `organization_name`, `uk_vat_number`) VALUES (4, '2017-04-06 23:59:16', 'Liberal Democrats', '7237');
INSERT INTO Organizations (`organization_id`, `date_formed`, `organization_name`, `uk_vat_number`) VALUES (5, '2016-07-28 01:45:10', 'Green Party', '4271');


CREATE TABLE `Parties` (
`party_id` INTEGER PRIMARY KEY,
`payment_method_code` VARCHAR(15) NOT NULL,
`party_phone` VARCHAR(80),
`party_email` VARCHAR(80)
);
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (1, 'Cheque', '05374656172', 'enrico09@example.com');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (2, 'Credit Card', '1-525-947-7867x51521', 'brakus.aliya@example.com');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (3, 'Cheque', '1-606-232-3728x3568', 'frida57@example.org');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (4, 'Cash', '019-302-5166', 'wuckert.misty@example.com');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (5, 'Cheque', '529-074-5348', 'alanna.boehm@example.net');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (6, 'Credit Card', '1-950-874-1693x65923', 'daniel.charity@example.net');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (7, 'Direct Debit', '112-477-4433x137', 'lucinda83@example.org');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (8, 'Cash', '(919)169-1514x55820', 'erick.mills@example.com');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (9, 'Cash', '04177934231', 'evie97@example.org');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (10, 'Credit Card', '(211)528-0733x8063', 'hilll.elyssa@example.net');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (11, 'Credit Card', '1-985-957-5462', 'jamir.hyatt@example.net');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (12, 'Cheque', '1-386-339-9244', 'eden67@example.net');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (13, 'Direct Debit', '186-726-9855', 'ora.hyatt@example.net');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (14, 'Cash', '971-607-7001x08626', 'rhauck@example.org');
INSERT INTO Parties (`party_id`, `payment_method_code`, `party_phone`, `party_email`) VALUES (15, 'Cash', '231.232.0099', 'noe.ziemann@example.org');


CREATE TABLE `Organization_Contact_Individuals` (
`individual_id` INTEGER NOT NULL,
`organization_id` INTEGER NOT NULL,
`date_contact_from` DATETIME NOT NULL,
`date_contact_to` DATETIME,
PRIMARY KEY (`individual_id`,`organization_id` ),
FOREIGN KEY (`organization_id` ) REFERENCES `Organizations`(`organization_id` ),
FOREIGN KEY (`individual_id` ) REFERENCES `Individuals`(`individual_id` )
);
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (13, 1, '2016-08-16 22:09:11', '2018-03-25 10:27:18');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (11, 1, '2017-03-02 00:00:16', '2018-03-06 05:39:43');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (10, 3, '2016-08-23 03:24:24', '2018-03-12 07:55:28');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (10, 4, '2017-08-08 12:05:25', '2018-03-04 09:30:20');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (13, 3, '2016-04-21 03:55:35', '2018-03-06 21:22:49');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (5, 4, '2016-08-27 16:55:59', '2018-03-18 05:47:36');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (9, 1, '2017-01-06 09:38:54', '2018-02-27 09:20:42');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (11, 5, '2017-09-14 08:24:22', '2018-03-24 16:54:36');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (13, 2, '2016-09-16 13:53:24', '2018-03-18 16:33:16');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (6, 3, '2017-05-24 11:38:02', '2018-03-24 03:43:00');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (6, 5, '2016-05-15 13:16:35', '2018-03-05 19:29:24');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (7, 2, '2016-11-24 03:57:30', '2018-03-07 16:40:29');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (14, 5, '2017-02-19 08:51:41', '2018-03-23 22:06:48');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (9, 2, '2016-04-30 14:39:31', '2018-03-20 00:33:08');
INSERT INTO Organization_Contact_Individuals (`individual_id`, `organization_id`, `date_contact_from`, `date_contact_to`) VALUES (8, 3, '2016-07-26 09:08:15', '2018-03-02 03:50:51');



CREATE TABLE `Party_Addresses` (
`party_id` INTEGER NOT NULL,
`address_id` INTEGER NOT NULL,
`date_address_from` DATETIME NOT NULL,
`address_type_code` VARCHAR(15) NOT NULL,
`date_address_to` DATETIME,
PRIMARY KEY (`party_id`, `address_id`),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` ),
FOREIGN KEY (`party_id` ) REFERENCES `Parties`(`party_id` )
);
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (10, 8, '2016-04-08 22:40:02', 'Residence', '2018-02-28 23:14:41');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (15, 5, '2016-05-20 23:22:06', 'Billing', '2018-01-29 16:48:01');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (4, 4, '2016-05-14 15:13:30', 'Delivery', '2018-02-25 19:39:16');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (4, 10, '2017-02-21 12:12:50', 'Residence', '2018-03-11 12:12:52');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (5, 10, '2016-04-04 03:57:02', 'Billing', '2018-02-11 06:11:11');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (11, 2, '2016-07-21 08:39:50', 'Billing', '2018-03-03 22:17:09');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (3, 2, '2016-06-09 00:48:07', 'Billing', '2018-03-11 00:08:16');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (5, 7, '2016-09-05 11:53:36', 'Billing', '2018-03-07 13:28:44');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (5, 4, '2016-05-24 08:11:04', 'Residence', '2018-03-04 08:34:45');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (8, 7, '2017-02-07 02:51:33', 'Residence', '2018-02-27 09:21:41');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (15, 2, '2016-09-23 19:59:54', 'Billing', '2018-03-01 13:51:27');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (10, 1, '2016-11-02 02:06:07', 'Delivery', '2018-02-02 00:37:45');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (11, 5, '2017-01-07 12:02:39', 'Residence', '2018-02-09 08:47:26');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (6, 9, '2016-12-21 03:54:15', 'Delivery', '2018-02-25 07:34:22');
INSERT INTO Party_Addresses (`party_id`, `address_id`, `date_address_from`, `address_type_code`, `date_address_to`) VALUES (5, 13, '2016-04-15 03:54:06', 'Billing', '2018-03-23 17:52:47');


CREATE TABLE `Party_Forms` (
`party_id` INTEGER NOT NULL,
`form_id` INTEGER NOT NULL,
`date_completion_started` DATETIME NOT NULL,
`form_status_code` VARCHAR(15) NOT NULL,
`date_fully_completed` DATETIME,
PRIMARY KEY (`party_id`, `form_id`),
FOREIGN KEY (`party_id` ) REFERENCES `Parties`(`party_id` ),
FOREIGN KEY (`form_id` ) REFERENCES `Forms`(`form_id` )
);
CREATE TABLE `Party_Services` (
`booking_id` INTEGER NOT NULL ,
`customer_id` INTEGER NOT NULL,
`service_id` INTEGER NOT NULL,
`service_datetime` DATETIME NOT NULL,
`booking_made_date` DATETIME,
FOREIGN KEY (`service_id` ) REFERENCES `Services`(`service_id` ),
FOREIGN KEY (`customer_id` ) REFERENCES `Parties`(`party_id` )
);
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (2, 4, '2017-12-17 11:29:47', 'Completed', '2018-02-11 16:46:10');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (15, 4, '2017-12-16 15:25:48', 'Partially Completed', '2018-02-18 16:09:04');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (8, 5, '2017-12-09 21:26:11', 'Partially Completed', '2018-02-05 16:16:58');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (6, 2, '2017-12-04 16:57:31', 'Partially Completed', '2018-01-28 22:29:07');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (7, 2, '2017-11-30 18:49:37', 'Not Started', '2018-02-21 17:59:08');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (11, 5, '2017-12-20 01:10:33', 'Not Started', '2018-02-10 14:07:46');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (11, 3, '2017-12-18 01:32:49', 'Not Started', '2018-02-04 05:57:01');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (8, 6, '2017-12-07 18:17:01', 'Work In Progress', '2018-02-15 23:09:42');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (5, 6, '2017-12-05 19:48:45', 'Partially Completed', '2018-01-30 09:33:37');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (7, 6, '2017-11-29 03:11:38', 'Not Started', '2018-02-01 10:26:47');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (13, 3, '2017-12-04 18:20:10', 'Work In Progress', '2018-01-31 17:09:32');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (2, 5, '2017-11-26 09:09:29', 'Not Started', '2018-02-09 09:49:09');
INSERT INTO Party_Forms (`party_id`, `form_id`, `date_completion_started`, `form_status_code`, `date_fully_completed`) VALUES (9, 2, '2017-11-27 11:57:03', 'Completed', '2018-02-15 13:15:25');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (1, 10, 12, '2018-03-10 22:43:12', '2018-03-23 23:56:51');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (2, 14, 11, '2018-03-05 15:06:23', '2018-03-25 11:08:29');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (3, 4, 7, '2018-03-08 10:39:29', '2018-03-24 11:09:52');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (4, 13, 3, '2018-03-08 23:52:44', '2018-03-25 12:56:09');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (5, 2, 6, '2018-03-17 18:35:26', '2018-03-25 02:57:32');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (6, 14, 6, '2018-03-17 08:16:30', '2018-03-24 06:50:50');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (7, 6, 12, '2018-03-15 09:48:27', '2018-03-25 11:52:29');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (8, 3, 6, '2018-03-01 18:31:32', '2018-03-24 07:55:33');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (9, 5, 7, '2018-03-05 13:02:22', '2018-03-24 10:17:36');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (10, 15, 13, '2018-02-28 16:29:04', '2018-03-24 09:20:46');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (11, 13, 12, '2018-03-09 07:27:30', '2018-03-25 15:09:54');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (12, 9, 1, '2018-03-19 14:38:29', '2018-03-24 18:05:07');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (13, 3, 11, '2018-03-14 18:53:35', '2018-03-24 12:21:20');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (14, 3, 5, '2018-03-18 17:53:02', '2018-03-24 22:12:30');
INSERT INTO Party_Services (`booking_id`, `customer_id`, `service_id`, `service_datetime`, `booking_made_date`) VALUES (15, 12, 6, '2018-03-01 04:41:58', '2018-03-25 16:47:47');
