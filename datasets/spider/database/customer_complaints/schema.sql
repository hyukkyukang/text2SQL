PRAGMA foreign_keys = ON;


CREATE TABLE `Staff` (
`staff_id` INTEGER PRIMARY KEY,
`gender` VARCHAR(1),
`first_name` VARCHAR(80),
`last_name` VARCHAR(80),
`email_address` VARCHAR(255),
`phone_number` VARCHAR(80)
);
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (114, '0', 'Ward', 'Boehm', 'marcelle.ritchie@example.com', '(379)551-0838x146');
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (115, '1', 'Lucie', 'Lowe', 'ohintz@example.org', '142-311-6503x206');
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (116, '0', 'Dagmar', 'Erdman', 'wrau@example.com', '345-656-5571');
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (117, '0', 'Bradly', 'Hahn', 'brett99@example.net', '1-132-839-9409x288');
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (118, '0', 'Austin', 'Zieme', 'reichel.armani@example.org', '(383)553-1035x20399');
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (119, '0', 'Dorian', 'Oberbrunner', 'richard.gutkowski@example.com', '155-811-6153');
INSERT INTO Staff (`staff_id`, `gender`, `first_name`, `last_name`, `email_address`, `phone_number`) VALUES (120, '0', 'Mikel', 'Lynch', 'glen.borer@example.com', '751-262-8424x575');


CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`customer_type_code` VARCHAR(20) NOT NULL,
`address_line_1` VARCHAR(80),
`address_line_2` VARCHAR(80),
`town_city` VARCHAR(80),
`state` VARCHAR(80),
`email_address` VARCHAR(255),
`phone_number` VARCHAR(80)
);
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (113, 'Good Credit Rating', '144 Legros Landing', 'Apt. 551', 'Maryamport', 'Kansas', 'hsteuber@example.org', '06963347450');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (114, 'Good Credit Rating', '039 Jedidiah Estate Suite 537', 'Apt. 245',  'Sauerberg', 'Hawaii', 'cayla.satterfield@example.net', '470-803-0244');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (115, 'Good Credit Rating', '92189 Gulgowski Ranch Apt. 683', 'Apt. 828', 'Tyreekhaven', 'Tennessee', 'vida86@example.com', '997.698.4779x882');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (116, 'Good Credit Rating', '72144 Katlynn Flat Suite 512', 'Suite 959','Hansenbury', 'Tennessee', 'vbogisich@example.org', '548.373.3603x59134');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (117, 'Good Credit Rating', '1566 Ramona Overpass Apt. 464', 'Suite 151',  'North Alisaville', 'Florida', 'ubeier@example.org', '044-468-4549');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (118, 'Defaults on payments', '425 Roman Tunnel', 'Apt. 495',  'Funkstad', 'Colorado', 'lavonne.frami@example.com', '+38(3)9011433816');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (119, 'Good Credit Rating', '05355 Marcelle Radial', 'Suite 054',  'Port Joshuah', 'Pennsylvania', 'paige.hyatt@example.com', '1-369-302-7623x576');
INSERT INTO Customers (`customer_id`, `customer_type_code`, `address_line_1`, `address_line_2`,  `town_city`, `state`, `email_address`, `phone_number`) VALUES (120, 'Defaults on payments', '518 Mann Park', 'Suite 035',  'West Annamariestad', 'Iowa', 'rzulauf@example.org', '578.019.7943x328');


CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`parent_product_id` INTEGER,
`product_category_code` VARCHAR(20) NOT NULL,
`date_product_first_available` DATETIME,
`date_product_discontinued` DATETIME,
`product_name` VARCHAR(80),
`product_description` VARCHAR(255),
`product_price` DECIMAL(19,4)
);
INSERT INTO Products (`product_id`, `parent_product_id`, `product_category_code`, `date_product_first_available`, `date_product_discontinued`, `product_name`, `product_description`,  `product_price`) VALUES (117, 4, 'Food', '1988-09-29 17:54:50', '1987-12-20 13:46:16', 'Chocolate', 'Handmade chocolate', '2.8800');
INSERT INTO Products (`product_id`, `parent_product_id`, `product_category_code`, `date_product_first_available`, `date_product_discontinued`, `product_name`, `product_description`,  `product_price`) VALUES (118, 3, 'Book', '1974-06-25 12:26:47', '1991-08-20 05:22:31', 'The Great Gatsby', 'American novel','35.0000');
INSERT INTO Products (`product_id`, `parent_product_id`, `product_category_code`, `date_product_first_available`, `date_product_discontinued`, `product_name`, `product_description`,  `product_price`) VALUES (119, 8, 'Hardware', '1994-12-18 15:13:19', '1997-07-02 18:26:16', 'Keyboard', 'Designed for games', '109.9900');
INSERT INTO Products (`product_id`, `parent_product_id`, `product_category_code`, `date_product_first_available`, `date_product_discontinued`, `product_name`, `product_description`,  `product_price`) VALUES (120, 9, 'Hardware', '1998-06-20 15:04:11', '1980-06-26 10:40:19', 'Mouse', 'Blue tooth mouse', '23.3500');


CREATE TABLE `Complaints` (
`complaint_id` INTEGER NOT NULL ,
`product_id` INTEGER NOT NULL,
`customer_id` INTEGER NOT NULL,
`complaint_outcome_code` VARCHAR(20) NOT NULL,
`complaint_status_code` VARCHAR(20) NOT NULL,
`complaint_type_code` VARCHAR(20) NOT NULL,
`date_complaint_raised` DATETIME,
`date_complaint_closed` DATETIME,
`staff_id` INTEGER NOT NULL ,
FOREIGN KEY (`staff_id` ) REFERENCES `Staff`(`staff_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` ),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (1, 117, 120, 'OK', 'Closed', 'Product Failure', '2002-07-18 10:59:35', '1976-04-19 11:03:06', 114);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (2, 118, 113, 'OK', 'New', 'Product Unusable', '1973-02-10 22:55:56', '2013-09-14 02:59:10', 120);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (3, 119, 114, 'OK', 'New', 'Product Unusable', '2006-10-29 07:08:46', '1995-09-11 14:48:46', 115);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (4, 120, 114, 'OK', 'Closed', 'Product Unusable', '1977-08-06 00:31:19', '1970-10-14 00:57:25', 114);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (5, 117, 118, 'OK', 'Open', 'Product Failure', '2007-10-14 21:50:43', '2000-08-17 17:02:48', 116);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (6, 118, 114, 'OK', 'Open', 'Product Unusable', '1987-07-11 14:40:30', '1975-10-11 05:54:30', 114);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (7, 117, 117, 'OK', 'New', 'Product Unusable', '2002-07-18 10:59:35', '1976-04-19 11:03:06', 118);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (8, 117, 114, 'OK', 'New', 'Product Unusable', '1973-02-10 22:55:56', '2013-09-14 02:59:10', 117);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (9, 117, 116, 'OK', 'New', 'Product Unusable', '2006-10-29 07:08:46', '1995-09-11 14:48:46', 120);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (10, 118, 115, 'OK', 'New', 'Product Unusable', '1977-08-06 00:31:19', '1970-10-14 00:57:25', 114);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (11, 118, 116, 'OK', 'Open', 'Product Unusable', '2007-10-14 21:50:43', '2000-08-17 17:02:48', 115);
INSERT INTO Complaints (`complaint_id`, `product_id`, `customer_id`, `complaint_outcome_code`, `complaint_status_code`, `complaint_type_code`, `date_complaint_raised`, `date_complaint_closed`, `staff_id`) VALUES (12, 117, 116, 'OK', 'Open', 'Product Unusable', '1987-07-11 14:40:30', '1975-10-11 05:54:30', 114);

