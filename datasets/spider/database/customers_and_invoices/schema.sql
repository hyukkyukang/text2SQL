PRAGMA foreign_keys = ON;
CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`customer_first_name` VARCHAR(50),
`customer_middle_initial` VARCHAR(1),
`customer_last_name` VARCHAR(50),
`gender` VARCHAR(1),
`email_address` VARCHAR(255),
`login_name` VARCHAR(80),
`login_password` VARCHAR(20),
`phone_number` VARCHAR(255),
`town_city` VARCHAR(50),
`state_county_province` VARCHAR(50),
`country` VARCHAR(50)
);

INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (1, 'Dee', 'A', 'Larkin', '1', 'thora.torphy@example.org', 'xhartmann', '77789d292604ea04406f', '241.796.1219x37862', 'North Nellie', 'WestVirginia', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (2, 'Brennon', 'H', 'Weimann', '0', 'roosevelt.collier@example.org', 'shayne.lesch', 'ce97a3e4539347daab96', '(943)219-4234x415', 'South Isabell', 'Oklahoma', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (3, 'Joesph', 'K', 'Schaefer', '0', 'homenick.ambrose@example.net', 'feeney.lauriane', 'a6c7a7064c36b038d402', '(488)524-5345', 'New Nikolas', 'Arkansas', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (4, 'Zita', 'L', 'Trantow', '0', 'destinee06@example.com', 'rubye.padberg', 'eb32d2933362d38faff7', '(193)465-6674x4952', 'Ellaburgh', 'Colorado', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (5, 'Murl', 'B', 'Shanahan', '1', 'jovani64@example.com', 'jankunding', '398c1603aec3e9de2684', '1-546-447-9843x13741', 'North Helmerbury', 'Idaho', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (6, 'Vesta', 'E', 'Leuschke', '1', 'philip94@example.org', 'zdeckow', 'bdbc3c18cf28303c4f6a', '+69(0)7149212554', 'North Devonte', 'Mississippi', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (7, 'Dangelo', 'M', 'Spinka', '1', 'zullrich@example.net', 'camilla.dubuque', '180a37476c537e78d3de', '1-904-787-7320', 'West Khaliltown', 'Kansas', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (8, 'Meaghan', 'M', 'Keeling', '0', 'pyundt@example.org', 'lowe.wilber', 'e67856613cd71f1b2884', '06015518212', 'Kenshire', 'Mississippi', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (9, 'Abbey', 'B', 'Ruecker', '0', 'anastacio45@example.org', 'dubuque.gina', 'd7629de5171fe29106c8', '1-344-593-4896x425', 'Bruenchester', 'California', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (10, 'Devin', 'V', 'Glover', '0', 'udeckow@example.com', 'ypowlowski', '604f9062a5a0de83ef9d', '197-955-3766', 'Lake Eusebiomouth', 'Florida', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (11, 'Neoma', 'G', 'Hauck', '1', 'michel92@example.org', 'ahmad.hagenes', '035f2ba1e2a675c4f426', '+95(0)1523064649', 'New Rachellefort', 'Alabama', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (12, 'Jensen', 'M', 'Muller', '0', 'lew.nicolas@example.org', 'pbecker', '5fe7c12dc3176ddf67c4', '(650)406-8761', 'Carleefort', 'Montana', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (13, 'Kieran', 'A', 'Auer', '0', 'nnolan@example.org', 'sophia97', 'd4ade599672bccdabeee', '(157)046-6255x98627', 'Lake Freemanville', 'Kentucky', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (14, 'Percival', 'B', 'Kessler', '1', 'jacobi.shanon@example.org', 'lucy.jast', '178613c20728eec256db', '(791)562-7792x45732', 'Port Hollie', 'Louisiana', 'USA');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_middle_initial`, `customer_last_name`, `gender`, `email_address`, `login_name`, `login_password`, `phone_number`,  `town_city`, `state_county_province`, `country`) VALUES (15, 'Ruby', 'K', 'Boyle', '0', 'gwolff@example.net', 'dthiel', 'eff2c0dbf972481ba23c', '1-546-302-5676', 'East Stephaniafort', 'SouthDakota', 'USA');


CREATE TABLE `Orders` (
`order_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`date_order_placed` DATETIME NOT NULL,
`order_details` VARCHAR(255),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (1, 12, '2012-06-27 20:49:56', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (2, 12, '2012-08-25 07:51:54', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (3, 8, '2017-11-05 15:32:38', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (4, 5, '2017-11-27 21:50:58', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (5, 15, '2015-05-17 03:05:32', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (6, 5, '2015-11-25 22:55:41', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (7, 3, '2016-04-15 03:33:59', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (8, 3, '2010-01-28 03:43:26', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (9, 2, '2017-03-08 05:42:10', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (10, 11, '2017-12-04 02:59:10', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (11, 14, '2010-10-22 06:45:16', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (12, 1, '2017-05-24 19:26:44', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (13, 10, '2015-08-06 22:40:40', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (14, 10, '2017-10-29 04:20:08', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `date_order_placed`, `order_details`) VALUES (15, 6, '2013-10-25 17:40:25', NULL);



CREATE TABLE `Invoices` (
`invoice_number` INTEGER PRIMARY KEY,
`order_id` INTEGER NOT NULL,
`invoice_date` DATETIME,
FOREIGN KEY (`order_id` ) REFERENCES `Orders`(`order_id` )
);
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (1, 9, '2018-03-01 16:40:48');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (2, 9, '2018-03-20 00:21:41');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (3, 3, '2018-03-05 08:47:33');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (4, 9, '2018-02-28 19:01:06');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (5, 13, '2018-03-07 02:04:32');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (6, 8, '2018-03-16 21:57:43');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (7, 10, '2018-03-13 07:27:38');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (8, 10, '2018-03-19 17:06:30');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (9, 12, '2018-03-16 11:01:06');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (10, 11, '2018-03-01 01:44:08');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (11, 5, '2018-03-23 04:59:28');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (12, 3, '2018-03-15 21:24:13');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (13, 3, '2018-03-03 20:44:06');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (14, 4, '2018-03-19 22:38:10');
INSERT INTO Invoices (`invoice_number`, `order_id`, `invoice_date`) VALUES (15, 14, '2018-03-15 09:38:49');


CREATE TABLE `Accounts` (
`account_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`date_account_opened` DATETIME,
`account_name` VARCHAR(50),
`other_account_details` VARCHAR(255),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);



INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (1, 8, '2016-07-30 22:22:24', '900', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (2, 3, '2017-05-29 16:45:17', '520', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (3, 8, '2012-05-04 18:50:32', '323', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (4, 15, '2011-03-29 15:06:59', '390', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (5, 15, '2014-08-11 18:15:14', '935', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (6, 12, '2014-05-30 12:16:52', '371', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (7, 13, '2015-11-03 08:04:15', '398', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (8, 9, '2009-06-13 11:41:52', '710', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (9, 8, '2010-10-22 13:33:45', '337', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (10, 15, '2016-04-25 21:49:17', '429', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (11, 13, '2012-07-09 23:40:15', '191', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (12, 8, '2015-02-02 09:47:08', '601', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (13, 13, '2010-06-16 09:35:00', '272', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (14, 13, '2014-12-28 07:29:42', '861', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `date_account_opened`, `account_name`, `other_account_details`) VALUES (15, 6, '2008-05-04 22:15:56', '662', 'VIP');


CREATE TABLE `Product_Categories` (
`production_type_code` VARCHAR(15) PRIMARY KEY,
`product_type_description` VARCHAR(80),
`vat_rating` DECIMAL(19,4)
);
CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`parent_product_id` INTEGER,
`production_type_code` VARCHAR(15) NOT NULL,
`unit_price` DECIMAL(19,4),
`product_name` VARCHAR(80),
`product_color` VARCHAR(20),
`product_size` VARCHAR(20),
FOREIGN KEY (`production_type_code` ) REFERENCES `Product_Categories`(`production_type_code` )
);

INSERT INTO Product_Categories (`production_type_code`, `product_type_description`, `vat_rating`) VALUES ('Food', 'Food', '15.8400');
INSERT INTO Product_Categories (`production_type_code`, `product_type_description`, `vat_rating`) VALUES ('DVDs', 'Dvd products', '11.4000');
INSERT INTO Product_Categories (`production_type_code`, `product_type_description`, `vat_rating`) VALUES ('Books', 'Books', '13.9500');
INSERT INTO Product_Categories (`production_type_code`, `product_type_description`, `vat_rating`) VALUES ('Electronics', 'Electrical devices', '17.9000');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (1, 4, 'Food', '617.9500', 'Coffee Bean', 'Red', 'Medium');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (2, 4, 'Books', '558.4900', 'Learning French', 'Yellow', 'Medium');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (3, 8, 'Electronics', '563.5800', 'Fans', 'Black', 'Medium');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (4, 8, 'Electronics', '985.7800', 'Hard Drive', 'Black', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (5, 7, 'DVDs', '682.0600', 'Arts', 'Yellow', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (6, 7, 'Books', '469.7100', 'Art History', 'Yellow', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (7, 5, 'Books', '409.8300', 'Learning English', 'Red', 'Large');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (8, 1, 'Books', '49.6200', 'Menus', 'Black', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (9, 8, 'Food', '694.3100', 'Beer Menus', 'Black', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (10, 9, 'Electronics', '937.8500', 'TV', 'Red', 'Medium');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (11, 8, 'DVDs', '52.8800', 'Harry Potter 1', 'Black', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (12, 1, 'DVDs', '729.0900', 'Harry Potter 2', 'Red', 'Medium');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (13, 6, 'Food', '639.7600', 'Chocolate', 'Yellow', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (14, 1, 'DVDs', '469.8700', 'Harry Potter 3', 'Yellow', 'Small');
INSERT INTO Products (`product_id`, `parent_product_id`, `production_type_code`, `unit_price`, `product_name`, `product_color`, `product_size`) VALUES (15, 2, 'DVDs', '82.9600', 'Harry Potter 4', 'Yellow', 'Large');


CREATE TABLE `Financial_Transactions` (
`transaction_id` INTEGER NOT NULL ,
`account_id` INTEGER NOT NULL,
`invoice_number` INTEGER,
`transaction_type` VARCHAR(15) NOT NULL,
`transaction_date` DATETIME,
`transaction_amount` DECIMAL(19,4),
`transaction_comment` VARCHAR(255),
`other_transaction_details` VARCHAR(255),
FOREIGN KEY (`invoice_number` ) REFERENCES `Invoices`(`invoice_number` ),
FOREIGN KEY (`account_id` ) REFERENCES `Accounts`(`account_id` )
);
CREATE TABLE `Order_Items` (
`order_item_id` INTEGER PRIMARY KEY,
`order_id` INTEGER NOT NULL,
`product_id` INTEGER NOT NULL,
`product_quantity` VARCHAR(50),
`other_order_item_details` VARCHAR(255),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` ),
FOREIGN KEY (`order_id` ) REFERENCES `Orders`(`order_id` )
);


INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (1, 13, 12, 'Payment', '2018-03-15 21:13:57', '613.9600');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (2, 9, 1, 'Payment', '2018-03-13 13:27:46', '368.4600');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (3, 6, 1, 'Refund', '2018-03-03 01:50:25', '1598.2500');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (4, 9, 12, 'Payment', '2018-03-10 13:46:48', '540.7300');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (5, 9, 2, 'Payment', '2018-03-23 04:56:12', '1214.2200');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (6, 12, 3, 'Refund', '2018-03-22 21:58:37', '1903.4100');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (7, 13, 14, 'Payment', '2018-03-12 03:06:52', '1585.0300');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (8, 14, 15, 'Payment', '2018-03-11 21:57:47', '1425.4100');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (9, 8, 12, 'Payment', '2018-03-07 04:32:54', '1517.7700');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (10, 6, 15, 'Payment', '2018-03-14 19:09:07', '1477.5700');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (11, 6, 13, 'Refund', '2018-03-12 22:51:05', '1567.6400');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (12, 9, 6, 'Refund', '2018-03-05 19:55:23', '1781.2400');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (13, 13, 12, 'Refund', '2018-03-24 12:05:11', '899.8700');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (14, 11, 5, 'Refund', '2018-03-13 03:51:59', '1462.6200');
INSERT INTO Financial_Transactions (`transaction_id`, `account_id`, `invoice_number`, `transaction_type`, `transaction_date`, `transaction_amount`) VALUES (15, 4, 14, 'Refund', '2018-02-27 14:58:30', '1979.6600');
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (1, 4, 4, '6', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (2, 4, 10, '7', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (3, 15, 5, '4', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (4, 1, 3, '9', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (5, 2, 14, '3', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (6, 13, 12, '8', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (7, 1, 15, '3', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (8, 10, 4, '4', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (9, 14, 5, '1', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (10, 13, 9, '2', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (11, 15, 7, '5', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (12, 4, 14, '4', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (13, 12, 13, '1', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (14, 13, 14, '2', NULL);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`, `product_quantity`, `other_order_item_details`) VALUES (15, 13, 14, '6', NULL);

CREATE TABLE `Invoice_Line_Items` (
`order_item_id` INTEGER NOT NULL,
`invoice_number` INTEGER NOT NULL,
`product_id` INTEGER NOT NULL,
`product_title` VARCHAR(80),
`product_quantity` VARCHAR(50),
`product_price` DECIMAL(19,4),
`derived_product_cost` DECIMAL(19,4),
`derived_vat_payable` DECIMAL(19,4),
`derived_total_cost` DECIMAL(19,4),
FOREIGN KEY (`order_item_id` ) REFERENCES `Order_Items`(`order_item_id` ),
FOREIGN KEY (`invoice_number` ) REFERENCES `Invoices`(`invoice_number` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` )
);
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (14, 9, 5, 'prod_name', '4', '742.3700', '191.1100', NULL, '69.8200');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (3, 9, 15, 'prod_name', '1', '814.8700', '176.2900', NULL, '59.5600');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (4, 10, 15, 'prod_name', '8', '943.0700', '73.1400', NULL, '59.9300');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (6, 15, 14, 'prod_name', '2', '749.6000', '197.0600', NULL, '82.7700');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (8, 11, 10, 'prod_name', '2', '942.9900', '88.4300', NULL, '86.5600');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (9, 11, 9, 'prod_name', '6', '486.6900', '64.6700', NULL, '83.4000');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (8, 14, 3, 'prod_name', '3', '995.3400', '28.1800', NULL, '58.2400');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (11, 1, 6, 'prod_name', '9', '429.0500', '254.0800', NULL, '79.4800');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (15, 9, 3, 'prod_name', '4', '727.4100', '66.0000', NULL, '53.5300');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (7, 9, 14, 'prod_name', '9', '559.9500', '89.1600', NULL, '45.6600');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (5, 7, 8, 'prod_name', '6', '787.6100', '150.0400', NULL, '51.2700');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (10, 10, 1, 'prod_name', '9', '781.4600', '256.8400', NULL, '71.2200');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (10, 14, 11, 'prod_name', '7', '884.4000', '249.1900', NULL, '78.2600');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (10, 5, 11, 'prod_name', '5', '556.3600', '295.2600', NULL, '61.0000');
INSERT INTO Invoice_Line_Items (`order_item_id`, `invoice_number`, `product_id`, `product_title`, `product_quantity`, `product_price`, `derived_product_cost`, `derived_vat_payable`, `derived_total_cost`) VALUES (8, 12, 6, 'prod_name', '8', '597.2800', '188.7100', NULL, '98.7700');
