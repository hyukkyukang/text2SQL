PRAGMA foreign_keys = ON;

CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`address_content` VARCHAR(80),
`city` VARCHAR(50),
`zip_postcode` VARCHAR(20),
`state_province_county` VARCHAR(50),
`country` VARCHAR(50),
`other_address_details` VARCHAR(255)
);

INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (1, '9443 Boyle Route Suite 857', 'Lucasville', '416', 'Colorado', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (2, '1969 Jabari Port Suite 393', 'New Sabryna', '721', 'SouthCarolina', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (3, '295 Hackett Curve', 'Reingertown', '255', 'NewJersey', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (4, '92865 Margaretta Streets Suite 467', 'Gleasonmouth', '940', 'Arizona', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (5, '08996 Brisa Lane Apt. 583', 'Stantonville', '354', 'Mississippi', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (6, '826 Murray Locks Apt. 654', 'South Meghanview', '918', 'Colorado', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (7, '59540 Grover Wells Apt. 814', 'Lake Walterton', '767', 'Virginia', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (8, '78614 Maybell Alley Suite 057', 'South Bellaland', '921', 'Florida', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (9, '9168 King Rest', 'Felicityfort', '482', 'Texas', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (10, '120 Noble Radial', 'East Julianaside', '821', 'Texas', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (11, '618 Odie Villages Suite 133', 'Lake Geovannyton', '623', 'NewMexico', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (12, '16438 Herman Pine', 'New Terrillport', '684', 'Arkansas', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (13, '47831 Martin Islands', 'Port Lilyan', '235', 'RhodeIsland', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (14, '995 Weimann Gateway', 'Lake Ryann', '470', 'Kentucky', 'USA', NULL);
INSERT INTO Addresses (`address_id`, `address_content`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details`) VALUES (15, '41632 Kerluke Field', 'East Pascale', '720', 'Texas', 'USA', NULL);



CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`product_details` VARCHAR(255)
);
INSERT INTO Products (`product_id`, `product_details`) VALUES (1, 'Americano');
INSERT INTO Products (`product_id`, `product_details`) VALUES (2, 'Dove Chocolate');
INSERT INTO Products (`product_id`, `product_details`) VALUES (3, 'Latte');


CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`payment_method` VARCHAR(15) NOT NULL,
`customer_name` VARCHAR(80),
`date_became_customer` DATETIME,
`other_customer_details` VARCHAR(255)
);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (1, 'Cash', 'Dr. Julia Wuckert MD', '2018-03-01 23:20:10', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (2, 'Cheque', 'Tillman Ernser', '2018-02-28 11:37:44', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (3, 'Credit Card', 'Rodrick Heaney', '2018-03-09 17:41:58', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (4, 'Credit Card', 'Prof. Alexzander Hamill', '2018-02-24 00:20:18', 'VIP');
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (5, 'Cheque', 'Prof. Reyes Berge II', '2018-03-07 18:05:11', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (6, 'Cash', 'Maudie Kertzmann', '2018-02-26 11:57:47', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (7, 'Credit Card', 'Mozell Morissette', '2018-02-25 13:15:04', 'VIP');
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (8, 'Credit Card', 'Eunice Morar', '2018-03-21 01:01:04', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (9, 'Cheque', 'Devin Mills', '2018-03-05 16:52:51', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (10, 'Cash', 'Kitty Padberg III', '2018-03-22 18:09:09', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (11, 'Cheque', 'Salvatore Tillman', '2018-03-04 00:17:48', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (12, 'Cheque', 'Clifford Pagac', '2018-02-24 10:24:23', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (13, 'Credit Card', 'Miss Aliyah Witting', '2018-03-05 07:19:45', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (14, 'Cheque', 'Alexane Kilback', '2018-03-08 01:17:31', NULL);
INSERT INTO Customers (`customer_id`, `payment_method`, `customer_name`, `date_became_customer`, `other_customer_details`) VALUES (15, 'Cash', 'Prof. Ibrahim Bashirian', '2018-03-15 02:54:27', NULL);


CREATE TABLE `Customer_Addresses` (
`customer_id` INTEGER NOT NULL,
`address_id` INTEGER NOT NULL,
`date_address_from` DATETIME NOT NULL,
`address_type` VARCHAR(15) NOT NULL,
`date_address_to` DATETIME,
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` ),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (2, 11, '1985-03-29 20:31:43', 'Billing', '1993-02-17 17:55:18');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (13, 11, '2010-08-25 04:24:35', 'Billing', '1972-02-17 22:23:38');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (2, 14, '2010-12-26 08:52:50', 'Residential', '1979-07-16 18:22:39');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (15, 15, '1995-12-16 07:21:04', 'Billing', '1990-06-29 13:39:18');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (6, 7, '1972-12-08 17:12:08', 'Residential', '2010-11-10 11:35:28');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (10, 12, '1979-01-26 17:55:38', 'Residential', '1977-07-07 08:38:29');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (1, 14, '1990-11-25 12:40:25', 'Residential', '1974-03-28 18:09:39');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (10, 3, '1986-09-12 22:07:06', 'Residential', '2003-11-08 12:14:09');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (14, 15, '2003-07-08 05:33:19', 'Residential', '2010-05-08 10:00:17');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (13, 6, '2010-02-25 11:15:16', 'Residential', '1977-05-17 23:47:09');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (12, 7, '2013-01-29 23:14:00', 'Residential', '2008-04-30 00:20:58');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (4, 5, '2005-06-22 09:38:54', 'Billing', '1970-02-22 03:46:01');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (8, 6, '2016-11-24 11:00:17', 'Billing', '1970-09-18 09:07:32');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (5, 5, '1980-04-11 23:46:50', 'Billing', '1977-12-07 13:55:11');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_address_from`, `address_type`, `date_address_to`) VALUES (11, 11, '1979-01-11 13:53:30', 'Residential', '1971-11-17 18:29:57');


CREATE TABLE `Customer_Contact_Channels` (
`customer_id` INTEGER NOT NULL,
`channel_code` VARCHAR(15) NOT NULL,
`active_from_date` DATETIME NOT NULL,
`active_to_date` DATETIME,
`contact_number` VARCHAR(50) NOT NULL,
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);
CREATE TABLE `Customer_Orders` (
`order_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`order_status` VARCHAR(15) NOT NULL,
`order_date` DATETIME,
`order_details` VARCHAR(255),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);

CREATE TABLE `Order_Items` (
`order_id` INTEGER NOT NULL,
`product_id` INTEGER NOT NULL,
`order_quantity` VARCHAR(15),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` ),
FOREIGN KEY (`order_id` ) REFERENCES `Customer_Orders`(`order_id` )
);
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (9, 'Email', '2017-12-07 18:18:15', '2018-03-23 13:37:14', '940.035.6435x0225');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (2, 'Email', '2017-04-07 04:51:41', '2018-03-23 01:30:52', '189.449.8326x7607');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (9, 'Email', '2017-05-25 16:08:45', '2018-03-13 07:32:25', '958-653-2640');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (2, 'Email', '2018-01-05 21:42:56', '2018-03-15 14:58:13', '1-968-863-4947x96956');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (4, 'Cell', '2017-08-07 08:07:10', '2018-03-02 17:44:49', '(165)527-5756x2419');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (2, 'Cell', '2017-09-21 12:41:56', '2018-03-08 19:28:16', '1-077-864-0102');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (3, 'Handheld', '2017-05-11 12:32:16', '2018-03-20 14:35:34', '06068550461');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (14, 'Handheld', '2017-05-23 15:20:20', '2018-03-15 02:34:01', '542.983.0224');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (13, 'Handheld', '2017-08-26 15:16:44', '2018-03-16 14:00:15', '(379)834-0867x267');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (6, 'Handheld', '2017-07-01 17:59:48', '2018-02-25 22:20:55', '(620)266-6990x8590');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (10, 'Fax', '2017-06-21 06:41:19', '2018-03-15 06:00:34', '(068)656-5276x84466');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (13, 'Fax', '2017-10-29 04:16:39', '2018-03-08 17:19:29', '496-074-8589x5477');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (15, 'Handheld', '2017-09-08 14:00:01', '2018-03-04 13:35:57', '1-687-190-8968x63811');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (2, 'Handheld', '2018-03-01 10:17:18', '2018-03-20 14:01:12', '118.523.6764x57405');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (5, 'Handheld', '2017-11-14 16:16:02', '2018-03-02 03:22:26', '445.924.9417');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (9, 'Mobile', '2017-05-25 20:36:21', '2018-02-24 00:57:39', '(155)830-6182');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (3, 'Handheld', '2017-09-11 05:05:47', '2018-03-14 14:56:28', '1-453-027-1291');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (9, 'Handheld', '2018-01-02 18:37:48', '2018-03-10 05:10:35', '026.019.5981x72518');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (10, 'Cell', '2017-12-06 15:25:33', '2018-03-19 06:34:34', '495-168-9662');
INSERT INTO Customer_Contact_Channels (`customer_id`, `channel_code`, `active_from_date`, `active_to_date`, `contact_number`) VALUES (14, 'Cell', '2017-10-17 11:46:37', '2018-03-08 20:07:20', '846.043.4809x0426');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (1, 15, 'Cancelled', '2018-03-21 11:20:46', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (2, 3, 'Cancelled', '2018-03-05 06:35:33', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (3, 5, 'Delivered', '2018-03-04 07:16:22', 'Second time');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (4, 12, 'Cancelled', '2018-02-28 15:46:06', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (5, 12, 'Delivered', '2018-03-08 15:30:24', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (6, 5, 'Cancelled', '2018-03-10 06:12:51', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (7, 10, 'Cancelled', '2018-03-23 04:39:50', 'Second time');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (8, 3, 'Cancelled', '2018-03-17 02:51:37', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (9, 8, 'Cancelled', '2018-03-23 06:25:41', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (10, 12, 'Cancelled', '2018-03-17 07:13:53', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (11, 8, 'Cancelled', '2018-03-19 18:05:50', 'Second time');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (12, 10, 'Delivered', '2018-03-16 03:16:57', 'Second time');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (13, 4, 'Delivered', '2018-03-22 14:57:30', NULL);
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (14, 11, 'Cancelled', '2018-02-24 13:18:49', 'Second time');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status`, `order_date`, `order_details`) VALUES (15, 10, 'Delivered', '2018-03-06 12:31:35', NULL);
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (14, 2, '5');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (5, 2, '9');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (14, 3, '2');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (2, 2, '9');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (13, 1, '9');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (10, 1, '5');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (10, 3, '6');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (7, 2, '9');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (14, 3, '8');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (10, 2, '5');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (10, 2, '9');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (11, 2, '1');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (10, 3, '6');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (8, 1, '7');
INSERT INTO Order_Items (`order_id`, `product_id`, `order_quantity`) VALUES (8, 2, '5');
