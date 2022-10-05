PRAGMA foreign_keys = ON;
CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`line_1_number_building` VARCHAR(80),
`city` VARCHAR(50),
`zip_postcode` VARCHAR(20),
`state_province_county` VARCHAR(50),
`country` VARCHAR(50)
);

INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (1, '4315 Kerluke Canyon Apt. 800', 'Hertafurt', '740', 'Nevada', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (2, '319 Kozey Highway Suite 973', 'Edgardoberg', '282', 'Colorado', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (3, '592 Frederique Ridge', 'Gilbertmouth', '167', 'Virginia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (4, '01868 Laverna Green', 'Lake Floyd', '041', 'Oklahoma', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (5, '6017 Price Greens', 'Gibsonfurt', '873', 'District of Columbia', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (6, '037 Luella Path', 'North Jairo', '126', 'Maryland', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (7, '044 Greenfelder Fort', 'East Rickey', '564', 'Louisiana', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (8, '2676 Connelly Islands Apt. 199', 'West Kaiatown', '770', 'Oregon', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (9, '6830 Alexanne Forks Apt. 925', 'Agustinstad', '248', 'Illinois', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (10, '918 Lauren Drive', 'Gleasonland', '116', 'Kentucky', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (11, '70345 Marvin Glens Apt. 669', 'Lake Katheryn', '505', 'Kentucky', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (12, '65854 McKenzie Tunnel', 'North Lisandroport', '202', 'Maine', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (13, '494 Bruen Radial Apt. 723', 'Estaland', '381', 'Idaho', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (14, '794 Doyle Lake Apt. 531', 'West Muriel', '571', 'Vermont', 'USA');
INSERT INTO Addresses (`address_id`, `line_1_number_building`, `city`, `zip_postcode`, `state_province_county`, `country`) VALUES (15, '9590 Rogahn Point Apt. 466', 'Port Montytown', '037', 'SouthDakota', 'USA');



CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`product_type_code` VARCHAR(15),
`product_name` VARCHAR(80),
`product_price` DOUBLE NULL
);
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (1, 'Hardware', 'Apple', '54753982.574522');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (2, 'Clothes', 'jcrew', '30590929.528306');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (3, 'Hardware', 'Apple', '10268.85297069');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (4, 'Hardware', 'Apple', '22956668.699482');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (5, 'Clothes', 'jcrew', '5927021.8748021');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (6, 'Hardware', 'Apple', '77.109961147471');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (7, 'Hardware', 'Apple', '450.39232520498');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (8, 'Hardware', 'Sony', '4446237.9177554');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (9, 'Clothes', 'jcrew', '622.79275984494');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (10, 'Hardware', 'Sony', '7171.5933353284');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (11, 'Clothes', 'jcrew', '149.95519076938');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (12, 'Clothes', 'gucci', '593.80519929985');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (13, 'Clothes', 'gucci', '11388.26282462');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (14, 'Hardware', 'Sony', '389.91542644329');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (15, 'Clothes', 'gucci', '310488248.48788');


CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`payment_method_code` VARCHAR(15),
`customer_number` VARCHAR(20),
`customer_name` VARCHAR(80),
`customer_address` VARCHAR(255),
`customer_phone` VARCHAR(80),
`customer_email` VARCHAR(80)
);
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (1, 'Credit Card', '456', 'Kayley', '636 Chanelle Isle Apt. 846', '+87(9)5279161988', 'antonette73@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (2, 'Credit Card', '553', 'Sterling', '12174 Boyer Crossroad', '896.685.8228x2786', 'stroman.chadd@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (3, 'Credit Card', '951', 'Buford', '650 Spencer Way Apt. 584', '(192)144-4687', 'pattie.mayer@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (4, 'Direct Debit', '497', 'Caterina', '075 Skiles Expressway', '387.053.1225', 'dbeahan@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (5, 'Direct Debit', '752', 'Raymond', '8497 Huel Stravenue', '1-513-427-0125', 'bergnaum.ashton@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (6, 'Direct Debit', '838', 'Cheyenne', '058 Ben Street Apt. 034', '009-136-4509x19635', 'rhayes@example.org');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (7, 'Direct Debit', '429', 'Cecelia', '4065 Forest Vista Apt. 103', '672-559-0630x7875', 'caesar.lemke@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (8, 'Credit Card', '564', 'Brenna', '440 Aiden Ports', '1-271-345-4681x1131', 'macy.huel@example.org');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (9, 'Credit Card', '525', 'Lela', '13256 Valentina Valleys Suite 292', '838.718.8618x23239', 'vandervort.helena@example.org');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (10, 'Credit Card', '795', 'Cleo', '91702 Hilpert Pines Suite 177', '1-202-928-5395', 'xrosenbaum@example.org');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (11, 'Direct Debit', '233', 'Shany', '55270 Carter Street Apt. 214', '936.929.9929', 'kling.jesus@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (12, 'Credit Card', '586', 'Madaline', '8428 Cecile Land Apt. 192', '097-514-4641', 'brady.ernser@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (13, 'Direct Debit', '445', 'Melissa', '251 Botsford Harbors Suite 399', '529.148.1926', 'howard27@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (14, 'Direct Debit', '735', 'Orion', '10823 Rollin Spur', '479-171-6355x66065', 'kip.abernathy@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (15, 'Direct Debit', '523', 'Ottilie', '4098 Kreiger Knoll Suite 758', '393-750-2077x72779', 'morton06@example.net');

CREATE TABLE `Contacts` (
`contact_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`gender` VARCHAR(1),
`first_name` VARCHAR(80),
`last_name` VARCHAR(50),
`contact_phone` VARCHAR(80)
);

INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (1, 4, 'male', 'Cierra', 'Collins',  '+73(2)0854391820');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (2, 6, 'male', 'Jennifer', 'Doyle',  '482-949-1364x17500');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (3, 8, 'female', 'Carli', 'Blick',  '(608)868-5069x554');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (4, 14, 'female', 'Gustave', 'Ebert', '00414184198');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (5, 3, 'male', 'Danika', 'Bauch',  '1-368-227-6322');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (6, 9, 'female', 'Rachelle', 'Stamm', '048-342-0880x5170');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (7, 10, 'male', 'Sid', 'Legros',  '658.850.7946x9993');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (8, 7, 'female', 'Adella', 'Streich',  '1-613-226-7727');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (9, 4, 'male', 'Etha', 'Raynor',  '385-123-4556');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (10, 15, 'female', 'Skye', 'Ratke',  '+62(3)0497423927');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (11, 10, 'female', 'Leif', 'Buckridge',  '+96(5)1807022818');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (12, 6, 'female', 'Shyann', 'Hills',  '(842)564-7057x121');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (13, 3, 'male', 'Darion', 'Leannon',  '1-279-181-8737');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (14, 8, 'female', 'Amani', 'Kunze',  '405-058-1659');
INSERT INTO Contacts (`contact_id`, `customer_id`, `gender`, `first_name`, `last_name`, `contact_phone`) VALUES (15, 14, 'female', 'Hellen', 'Little',  '136.724.5322');


CREATE TABLE `Customer_Address_History` (
`customer_id` INTEGER NOT NULL,
`address_id` INTEGER NOT NULL,
`date_from` DATETIME NOT NULL,
`date_to` DATETIME,
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` ),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` )
);
CREATE TABLE `Customer_Orders` (
`order_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`order_date` DATETIME NOT NULL,
`order_status_code` VARCHAR(15),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);

CREATE TABLE `Order_Items` (
`order_item_id` INTEGER NOT NULL ,
`order_id` INTEGER NOT NULL,
`product_id` INTEGER NOT NULL,
`order_quantity` VARCHAR(80),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` ),
FOREIGN KEY (`order_id` ) REFERENCES `Customer_Orders`(`order_id` )
);
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (12, 7, '2015-07-23 14:37:18', '2018-03-07 12:04:20');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (12, 2, '2016-11-06 14:33:12', '2018-03-14 21:36:28');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (3, 9, '2011-11-19 12:17:36', '2018-03-22 10:20:16');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (13, 15, '2009-02-16 23:04:20', '2018-03-07 17:47:47');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (3, 12, '2008-06-22 21:50:44', '2018-03-13 00:08:29');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (11, 10, '2012-04-09 18:10:36', '2018-03-11 20:16:56');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (11, 10, '2014-11-17 15:11:26', '2018-03-08 23:31:30');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (2, 13, '2011-01-02 21:42:29', '2018-02-25 19:55:00');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (13, 11, '2015-05-01 12:44:46', '2018-03-24 06:20:36');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (12, 3, '2011-06-02 02:53:28', '2018-03-10 00:47:18');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (6, 1, '2013-06-14 23:07:04', '2018-03-16 14:49:28');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (14, 12, '2008-10-13 04:37:27', '2018-03-19 10:10:53');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (13, 5, '2012-03-16 17:42:30', '2018-02-27 07:31:19');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (7, 13, '2012-11-19 09:20:49', '2018-03-11 20:11:21');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (7, 3, '2012-11-09 07:15:16', '2018-03-09 12:03:31');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (2, 4, '2011-11-02 17:31:41', '2018-03-07 05:29:10');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (9, 13, '2010-03-25 08:23:20', '2018-03-09 16:41:55');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (6, 12, '2017-10-25 07:35:59', '2018-03-11 21:40:52');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (7, 3, '2009-05-22 04:42:28', '2018-03-18 11:13:27');
INSERT INTO Customer_Address_History (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (12, 9, '2016-12-23 04:42:07', '2018-03-20 01:13:38');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (1, 2, '2009-07-19 13:40:49', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (2, 2, '1976-05-28 15:02:44', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (3, 6, '1979-03-29 02:47:13', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (4, 4, '2003-01-17 00:06:12', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (5, 13, '1992-04-19 21:42:58', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (6, 4, '1972-03-17 21:42:29', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (7, 10, '2002-01-20 01:52:53', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (8, 2, '1985-01-03 05:22:09', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (9, 9, '2016-09-17 03:00:47', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (10, 5, '1971-12-04 19:14:18', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (11, 10, '1993-05-08 14:12:06', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (12, 10, '1998-06-14 21:22:53', 'Completed');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (13, 9, '1997-08-02 09:44:57', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (14, 3, '1979-07-13 17:19:40', 'Part');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_date`, `order_status_code`) VALUES (15, 1, '2007-01-19 07:54:50', 'Completed');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (1, 9, 15, '3');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (2, 8, 12, '7');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (3, 11, 9, '9');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (4, 15, 2, 'male');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (5, 13, 3, '3');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (6, 3, 6, '4');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (7, 7, 4, '8');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (8, 6, 2, '7');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (9, 3, 15, '2');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (10, 4, 12, '5');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (11, 14, 11, '8');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (12, 6, 2, '7');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (13, 7, 5, '9');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (14, 5, 13, '4');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `order_quantity`) VALUES (15, 7, 3, '8');
