PRAGMA foreign_keys = ON;

CREATE TABLE Customers (
customer_id INTEGER NOT NULL,
customer_details VARCHAR(255),
PRIMARY KEY (customer_id)
);
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (4, 'Mr. Raul Prosacco');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (5, 'Esteban Senger');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (16, 'Tyrique Durgan II');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (17, 'Malcolm Farrell');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (19, 'Sabryna Moore PhD');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (21, 'Dr. Haylie Hilll III');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (31, 'Monty Sauer III');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (41, 'Jayme Marquardt');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (63, 'Vincenza Price');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (69, 'Elva Boehm');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (76, 'Kyleigh Schuster');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (79, 'Oma Smith');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (82, 'Bridgette Nitzsche PhD');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (87, 'Jeff McCullough MD');
INSERT INTO `Customers` (`customer_id`, `customer_details`) VALUES (91, 'Mackenzie Hettinger V');

CREATE TABLE Properties (
property_id INTEGER NOT NULL,
property_type_code CHAR(15) NOT NULL,
property_address VARCHAR(255),
other_details VARCHAR(255),
PRIMARY KEY (property_id)
);
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (24, 'apartment', '85456 Annie Lodge Suite 449', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (107, 'house', '2580 Yundt Plains', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (108, 'house', '5983 Fleta Throughway', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (120, 'apartment', '322 Johnston Parkway Suite 422', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (373, 'apartment', '5384 Sipes Land Apt. 344', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (445, 'flat', '04164 Raul Stream', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (586, 'apartment', '54591 Bernard Ridges Suite 864', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (605, 'house', '7713 Bode Burgs Apt. 113', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (629, 'house', '830 Jayne Points Suite 290', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (669, 'house', '824 Kiehn Vista', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (748, 'apartment', '3927 Spinka Loaf Suite 347', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (791, 'house', '72659 Frank Locks', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (849, 'house', '76714 Verla Radial Apt. 306', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (879, 'flat', '129 Chasity Brook', 'USA');
INSERT INTO `Properties` (`property_id`, `property_type_code`, `property_address`, `other_details`) VALUES (954, 'flat', '91002 Melvina Haven', 'USA');


CREATE TABLE Residents (
resident_id INTEGER NOT NULL,
property_id INTEGER NOT NULL,
date_moved_in DATETIME NOT NULL,
date_moved_out DATETIME NOT NULL,
other_details VARCHAR(255),
PRIMARY KEY (resident_id, property_id, date_moved_in),
FOREIGN KEY (property_id) REFERENCES Properties (property_id)
);

INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (6, 954, '2017-06-17 15:43:33', '2017-12-18 03:46:04', 'Anderson Batz');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (10, 605, '2015-03-27 12:00:00', '2018-03-17 07:48:09', 'Miss Naomie Osinski');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (23, 879, '2015-03-27 12:00:00', '2017-11-14 06:28:48', 'Jess Wyman');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (28, 629, '2015-03-27 12:00:00', '2017-10-05 02:47:31', 'Miss Alanis Lockman');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (37, 669, '2015-03-27 12:00:00', '2018-01-30 10:20:59', 'Prof. Arvel Kozey');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (38, 748, '2015-03-27 12:00:00', '2017-12-30 23:55:10', 'Chaim Swaniawski');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (43, 108, '2015-03-27 12:00:00', '2018-02-22 06:24:15', 'Elroy Schuster');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (45, 954, '2015-03-27 12:00:00', '2017-10-14 10:23:42', 'Prof. Nasir Hoppe');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (47, 669, '2015-03-27 12:00:00', '2017-10-10 02:25:53', 'Tiffany Jaskolski');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (58, 107, '2015-03-27 12:00:00', '2017-11-29 21:24:08', 'Tomasa Hoeger');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (67, 120, '2016-09-27 12:00:00', '2017-10-23 16:40:19', 'Terrill Bernhard');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (83, 445, '2016-09-27 12:00:00', '2018-01-19 01:35:51', 'Loy Walter');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (87, 748, '2016-09-27 12:00:00', '2018-01-28 13:19:54', 'Mrs. Raphaelle Fisher');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (88, 107, '2016-09-27 12:00:00', '2018-02-03 11:30:20', 'Jacques Glover II');
INSERT INTO `Residents` (`resident_id`, `property_id`, `date_moved_in`, `date_moved_out`, `other_details`) VALUES (90, 373, '2016-09-27 12:00:00', '2017-11-19 03:11:44', 'Cassie Johnson');


CREATE TABLE Organizations (
organization_id INTEGER NOT NULL,
parent_organization_id INTEGER,
organization_details VARCHAR(255),
PRIMARY KEY (organization_id)
);

INSERT INTO `Organizations` (`organization_id`, `parent_organization_id`, `organization_details`) VALUES (7, 7, 'Reinger, Hudson and Nolan Group');
INSERT INTO `Organizations` (`organization_id`, `parent_organization_id`, `organization_details`) VALUES (8, 7, 'Denesik and Sons Party');
INSERT INTO `Organizations` (`organization_id`, `parent_organization_id`, `organization_details`) VALUES (10, 8, 'Robel-Schulist Group');


CREATE TABLE Services (
service_id INTEGER NOT NULL,
organization_id INTEGER NOT NULL,
service_type_code CHAR(15) NOT NULL,
service_details VARCHAR(255),
PRIMARY KEY (service_id),
FOREIGN KEY (organization_id) REFERENCES Organizations (organization_id)
);
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (10, 10, 'Cleanning', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (11, 7, 'Check', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (13, 8, 'Moving Out', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (22, 10, 'Pay bills', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (29, 8, 'Moving Out', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (31, 7, 'Pay bills', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (36, 8, 'Check', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (41, 10, 'Check', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (47, 8, 'Pay bills', 'Unsatisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (49, 8, 'Moving Out', 'Satisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (52, 8, 'Pay bills', 'Unsatisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (65, 8, 'Cleanning', 'Unsatisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (66, 8, 'Pay bills', 'Unsatisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (77, 7, 'Pay bills', 'Unsatisfied');
INSERT INTO `Services` (`service_id`, `organization_id`, `service_type_code`, `service_details`) VALUES (87, 8, 'Pay bills', 'Unsatisfied');



CREATE TABLE Residents_Services (
resident_id INTEGER NOT NULL,
service_id INTEGER NOT NULL,
date_moved_in DATETIME,
property_id INTEGER,
date_requested DATETIME,
date_provided DATETIME,
other_details VARCHAR(255),
PRIMARY KEY (resident_id, service_id),
FOREIGN KEY (service_id) REFERENCES Services (service_id),
FOREIGN KEY (resident_id, property_id, date_moved_in) REFERENCES Residents (resident_id,property_id,date_moved_in)
);

INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (6, 49, '2017-06-17 15:43:33', 954, '2016-07-25 01:32:23', '2018-02-26 00:27:11', 'Satisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (23, 41, '2015-03-27 12:00:00', 879, '2016-10-10 21:42:21', '2017-08-21 06:23:06', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (28, 11, '2015-03-27 12:00:00', 629, '2017-07-14 19:03:47', '2017-08-28 03:43:56', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (43, 10, '2015-03-27 12:00:00', 108, '2016-09-20 22:50:26', '2017-10-17 03:30:08', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (45, 49, '2015-03-27 12:00:00', 954, '2017-06-14 14:04:50', '2017-08-14 08:06:43', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (47, 65, '2015-03-27 12:00:00', 669, '2016-12-16 06:08:10', '2018-01-30 09:58:57', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (67, 87, '2016-09-27 12:00:00', 120, '2016-04-27 14:51:07', '2017-11-13 10:28:34', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (83, 65, '2016-09-27 12:00:00', 445, '2016-11-27 15:37:02', '2017-09-10 00:48:58', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (87, 29, '2016-09-27 12:00:00', 748, '2016-10-13 04:15:54', '2017-10-29 13:12:29', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (90, 36, '2016-09-27 12:00:00', 373, '2016-04-13 05:09:24', '2017-10-28 12:36:43', 'Unsatisfied');
INSERT INTO `Residents_Services` (`resident_id`, `service_id`, `date_moved_in`, `property_id`, `date_requested`, `date_provided`, `other_details`) VALUES (88, 11, '2016-09-27 12:00:00', 107, '2016-06-18 20:09:24', '2017-08-08 11:24:50', 'Unsatisfied');


CREATE TABLE Things (
thing_id INTEGER NOT NULL,
organization_id INTEGER NOT NULL,
Type_of_Thing_Code CHAR(15) NOT NULL,
service_type_code CHAR(10) NOT NULL,
service_details VARCHAR(255),
PRIMARY KEY (thing_id),
FOREIGN KEY (organization_id) REFERENCES Organizations (organization_id)
);
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (1, 8, 'Electronics', 'Check', 'Unsatisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (2, 8, 'Electronics', 'Cleanning', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (10, 8, 'Commen', 'Check', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (14, 10, 'Furniture', 'Cleanning', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (26, 8, 'Electronics', 'Cleanning', 'Unsatisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (35, 7, 'Electronics', 'Cleanning', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (45, 8, 'Commen', 'Check', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (46, 8, 'Commen', 'Check', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (47, 10, 'Commen', 'Cleanning', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (58, 8, 'Electronics', 'Check', 'Satisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (68, 10, 'Commen', 'Cleanning', 'Unsatisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (80, 8, 'Furniture', 'Check', 'Unsatisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (84, 8, 'Commen', 'Check', 'Unsatisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (85, 8, 'Commen', 'Cleanning', 'Unsatisfied');
INSERT INTO `Things` (`thing_id`, `organization_id`, `Type_of_Thing_Code`, `service_type_code`, `service_details`) VALUES (92, 7, 'Commen', 'Check', 'Unsatisfied');


CREATE TABLE Customer_Events (
Customer_Event_ID INTEGER NOT NULL,
customer_id INTEGER,
date_moved_in DATETIME,
property_id INTEGER,
resident_id INTEGER,
thing_id INTEGER NOT NULL,
PRIMARY KEY (Customer_Event_ID),
FOREIGN KEY (thing_id) REFERENCES Things (thing_id),
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
FOREIGN KEY (resident_id, property_id, date_moved_in) REFERENCES Residents (resident_id,property_id,date_moved_in)
);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (70, 19, '2015-03-27 12:00:00', 605, 10, 1);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (160, 5, '2015-03-27 12:00:00', 879, 23, 80);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (166, 16, '2015-03-27 12:00:00', 629, 28, 14);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (216, 79, '2015-03-27 12:00:00', 669, 37, 46);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (226, 19, '2015-03-27 12:00:00', 748, 38, 80);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (256, 79, '2015-03-27 12:00:00', 108, 43, 2);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (428, 63, '2015-03-27 12:00:00', 954, 45, 68);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (530, 4, '2015-03-27 12:00:00', 669, 47, 10);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (559, 19, '2015-03-27 12:00:00', 107, 58, 1);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (591, 91, '2016-09-27 12:00:00', 120, 67, 10);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (606, 31, '2016-09-27 12:00:00', 445, 83, 85);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (627, 91, '2016-09-27 12:00:00', 748, 87, 92);
INSERT INTO `Customer_Events` (`Customer_Event_ID`, `customer_id`, `date_moved_in`, `property_id`, `resident_id`, `thing_id`) VALUES (817, 19, '2016-09-27 12:00:00', 107, 88, 10);


CREATE TABLE Customer_Event_Notes (
Customer_Event_Note_ID INTEGER NOT NULL,
Customer_Event_ID INTEGER NOT NULL,
service_type_code CHAR(15) NOT NULL,
resident_id INTEGER NOT NULL,
property_id INTEGER NOT NULL,
date_moved_in DATETIME NOT NULL,
PRIMARY KEY (Customer_Event_Note_ID),
FOREIGN KEY (Customer_Event_ID) REFERENCES Customer_Events (Customer_Event_ID)
);

INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (18, 70, 'Cleanning', 58, 107, '2016-08-04 01:06:05');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (21, 428, 'Check', 87, 445, '2016-12-11 01:05:14');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (32, 70, 'Check', 37, 669, '2016-07-10 04:09:56');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (46, 627, 'Cleanning', 87, 373, '2016-05-24 02:56:54');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (49, 559, 'Check', 45, 849, '2016-08-08 07:58:26');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (50, 606, 'Check', 45, 849, '2017-04-25 09:08:14');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (55, 817, 'Cleanning', 43, 120, '2017-06-26 13:24:36');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (56, 216, 'Check', 88, 748, '2016-11-04 12:46:21');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (59, 591, 'Cleanning', 28, 605, '2016-05-14 15:58:33');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (65, 591, 'Cleanning', 28, 879, '2017-04-12 19:47:08');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (75, 70, 'Check', 43, 120, '2016-10-28 01:43:42');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (88, 606, 'Cleanning', 67, 791, '2016-11-23 05:53:40');
INSERT INTO `Customer_Event_Notes` (`Customer_Event_Note_ID`, `Customer_Event_ID`, `service_type_code`, `resident_id`, `property_id`, `date_moved_in`) VALUES (91, 817, 'Cleanning', 43, 120, '2017-04-28 10:17:13');


CREATE TABLE Timed_Status_of_Things (
thing_id INTEGER NOT NULL,
Date_and_Date DATETIME NOT NULL,
Status_of_Thing_Code CHAR(15) NOT NULL,
PRIMARY KEY (thing_id, Date_and_Date, Status_of_Thing_Code),
FOREIGN KEY (thing_id) REFERENCES Things (thing_id)
);
CREATE TABLE Timed_Locations_of_Things (
thing_id INTEGER NOT NULL,
Date_and_Time DATETIME NOT NULL,
Location_Code CHAR(15) NOT NULL,
PRIMARY KEY (thing_id, Date_and_Time, Location_Code),
FOREIGN KEY (thing_id) REFERENCES Things (thing_id));


INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (2, '2016-10-12 12:03:07', '064 Charles Mou');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (10, '2016-12-29 00:39:19', '288 Lang Ferry');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (10, '2017-10-21 04:21:54', '854 Keeling Sho');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (14, '2017-03-19 19:28:13', '1316 Morgan Spr');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (26, '2016-04-26 16:34:09', '192 Kub Rapids');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (45, '2017-04-19 16:41:03', '4667 Kellen Fie');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (45, '2017-04-22 00:37:48', '1313 Sawayn Riv');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (58, '2016-08-04 00:25:55', '94425 Nellie Kn');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (68, '2017-03-06 01:56:27', '4223 Rae Fork S');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (68, '2017-08-31 13:54:13', '9628 Bins Islan');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (85, '2016-11-07 09:43:05', '2677 Runolfsson');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (85, '2017-01-02 23:26:47', '26281 Holden Pa');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (85, '2017-11-26 00:13:44', '1537 Schmeler G');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (92, '2017-03-19 13:57:49', '113 Geo Glens A');
INSERT INTO `Timed_Locations_of_Things` (`thing_id`, `Date_and_Time`, `Location_Code`) VALUES (92, '2017-10-21 21:35:37', '9569 Tanner Inl');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (2, '2016-05-27 23:33:34', 'Open');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (2, '2016-07-17 08:35:27', 'Close');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (2, '2017-06-19 02:59:21', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (10, '2016-09-06 16:31:13', 'Close');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (10, '2016-11-14 17:30:51', 'Open');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (14, '2017-07-03 02:22:12', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (26, '2016-04-10 06:32:15', 'Close');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (26, '2017-08-05 02:10:02', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (26, '2018-02-04 02:44:39', 'Close');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (35, '2017-11-27 06:32:46', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (47, '2016-04-02 00:57:17', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (47, '2016-12-02 11:08:16', 'Close');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (58, '2017-05-31 00:52:33', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (80, '2016-10-08 08:02:57', 'Open');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (84, '2017-12-28 16:05:08', 'Open');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (85, '2017-03-24 12:12:46', 'Close');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (92, '2016-11-24 12:44:00', 'In Progress');
INSERT INTO `Timed_Status_of_Things` (`thing_id`, `Date_and_Date`, `Status_of_Thing_Code`) VALUES (92, '2017-09-27 01:35:51', 'Close');
