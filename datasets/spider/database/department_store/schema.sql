PRAGMA foreign_keys = ON;
CREATE TABLE `Addresses` (
`address_id` INTEGER PRIMARY KEY,
`address_details` VARCHAR(255)
);


INSERT INTO Addresses (`address_id`, `address_details`) VALUES (1, '28481 Crist Circle
East Burdettestad, IA 21232');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (2, '0292 Mitchel Pike
Port Abefurt, IA 84402-4249');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (3, '4062 Mante Place
West Lindsey, DE 76199-8015');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (4, '99666 Julie Junction
Marvinburgh, OH 16085-1623');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (5, '195 Mara Rue
Jenkinsmouth, OK 22345');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (6, '11784 Stehr Road
Port Isaac, NV 61159');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (7, '69482 Renner Ville Suite 653
Langworthborough, OH 95195');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (8, '36594 O''Keefe Lock
New Cali, RI 42319');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (9, '7181 Wuckert Port Apt. 571
Lake Zariaburgh, IL 98085');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (10, '92594 Marvin Trafficway
Pourosfurt, IA 98649');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (11, '0258 Kessler Mountains Suite 688
Mooreside, ME 41586-5022');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (12, '69275 Mose Drive
Wilkinsonstad, CO 79055-7622');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (13, '8207 Morissette Lakes
East Rheaview, ID 47493');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (14, '145 Alice Corners
Willmsport, NV 36680');
INSERT INTO Addresses (`address_id`, `address_details`) VALUES (15, '521 Molly Harbors Apt. 567
Reingerland, HI 97099-1005');

CREATE TABLE `Staff` (
`staff_id` INTEGER PRIMARY KEY,
`staff_gender` VARCHAR(1),
`staff_name` VARCHAR(80)
);

INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (1, '1', 'Tom');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (2, '1', 'Malika');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (3, '1', 'Katelynn');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (4, '1', 'Vanessa');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (5, '0', 'Maximus');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (6, '1', 'Tyson');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (7, '1', 'Yolanda');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (8, '1', 'Vito');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (9, '1', 'Zakary');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (10, '1', 'Sabrina');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (11, '1', 'Dannie');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (12, '1', 'Melody');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (13, '1', 'Archibald');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (14, '1', 'Adrienne');
INSERT INTO Staff (`staff_id`, `staff_gender`, `staff_name`) VALUES (15, '1', 'Kristy');

CREATE TABLE `Suppliers` (
`supplier_id` INTEGER PRIMARY KEY,
`supplier_name` VARCHAR(80),
`supplier_phone` VARCHAR(80)
);

INSERT INTO Suppliers (`supplier_id`, `supplier_name`, `supplier_phone`) VALUES (1, 'Lidl', '(692)009-5928');
INSERT INTO Suppliers (`supplier_id`, `supplier_name`, `supplier_phone`) VALUES (2, 'AB Store', '1-483-283-4742');
INSERT INTO Suppliers (`supplier_id`, `supplier_name`, `supplier_phone`) VALUES (3, 'Tesco', '287-071-1153x254');
INSERT INTO Suppliers (`supplier_id`, `supplier_name`, `supplier_phone`) VALUES (4, 'Audi', '1-432-960-2402x1734');

CREATE TABLE `Department_Store_Chain` (
`dept_store_chain_id` INTEGER PRIMARY KEY,
`dept_store_chain_name` VARCHAR(80)
);

INSERT INTO Department_Store_Chain (`dept_store_chain_id`, `dept_store_chain_name`) VALUES (1, 'South');
INSERT INTO Department_Store_Chain (`dept_store_chain_id`, `dept_store_chain_name`) VALUES (2, 'West');
INSERT INTO Department_Store_Chain (`dept_store_chain_id`, `dept_store_chain_name`) VALUES (3, 'East');
INSERT INTO Department_Store_Chain (`dept_store_chain_id`, `dept_store_chain_name`) VALUES (4, 'North');


CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`payment_method_code` VARCHAR(10) NOT NULL,
`customer_code` VARCHAR(20),
`customer_name` VARCHAR(80),
`customer_address` VARCHAR(255),
`customer_phone` VARCHAR(80),
`customer_email` VARCHAR(80)
);
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (1, 'Credit Card', '401', 'Ahmed', '75099 Tremblay Port Apt. 163
South Norrisland, SC 80546', '254-072-4068x33935', 'margarett.vonrueden@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (2, 'Credit Card', '665', 'Chauncey', '8408 Lindsay Court
East Dasiabury, IL 72656-3552', '+41(8)1897032009', 'stiedemann.sigrid@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (3, 'Direct Debit', '844', 'Lukas', '7162 Rodolfo Knoll Apt. 502
Lake Annalise, TN 35791-8871', '197-417-3557', 'joelle.monahan@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (4, 'Direct Debit', '662', 'Lexus', '9581 Will Flat Suite 272
East Cathryn, WY 30751-4404', '+08(3)8056580281', 'gbrekke@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (5, 'Credit Card', '848', 'Tara', '5065 Mraz Fields Apt. 041
East Chris, NH 41624', '1-064-498-6609x051', 'nicholas44@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (6, 'Credit Card', '916', 'Jon', '841 Goyette Unions
South Dionbury, NC 62021', '(443)013-3112x528', 'cconroy@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (7, 'Credit Card', '172', 'Cristobal', '8327 Christiansen Lakes Suite 409
Schneiderland, IA 93624', '877-150-8674x63517', 'shawna.cummerata@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (8, 'Direct Debit', '927', 'Adah', '5049 Hand Land
Coymouth, IL 97300-7731', '1-695-364-7586x59256', 'kathlyn24@example.org');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (9, 'Credit Card', '808', 'Yasmeen', '3558 Witting Meadow Apt. 483
Lake Moriahbury, OH 91556-2122', '587.398.2400x31176', 'ludwig54@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (10, 'Credit Card', '887', 'Karson', '7308 Joan Lake Suite 346
Lizethtown, DE 56522', '857-844-9339x40140', 'moriah91@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (11, 'Direct Debit', '611', 'Cordell', '362 Fisher Forge Apt. 900
New Mckenna, CA 98525-5674', '(730)934-8249', 'qstokes@example.org');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (12, 'Credit Card', '182', 'Darron', '84445 Elinor Glens
Port Zita, SD 39410', '117.822.3577', 'gwisozk@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (13, 'Credit Card', '589', 'Kenya', '338 Floy Mountains Suite 589
Yesseniaville, TN 60847', '08023680831', 'maxime86@example.net');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (14, 'Direct Debit', '240', 'Abbie', '983 Elinore Passage
Darrionborough, SC 53915-0479', '07594320656', 'celine.bogan@example.com');
INSERT INTO Customers (`customer_id`, `payment_method_code`, `customer_code`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`) VALUES (15, 'Credit Card', '980', 'Lyric', '649 Ocie Lights
Wyatttown, UT 12697', '1-472-036-0434', 'schultz.arnoldo@example.net');


CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`product_type_code` VARCHAR(10) NOT NULL,
`product_name` VARCHAR(80),
`product_price` DECIMAL(19,4)
);
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (1, 'Clothes', 'red jeans', '734.7300');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (2, 'Clothes', 'yellow jeans', '687.2300');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (3, 'Clothes', 'black jeans', '695.1600');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (4, 'Clothes', 'blue jeans', '939.5700');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (5, 'Clothes', 'red jeans', '534.5200');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (6, 'Clothes', 'red topping', '408.8200');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (7, 'Clothes', 'black topping', '916.5300');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (8, 'Clothes', 'yellow topping', '918.4100');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (9, 'Clothes', 'blue topping', '604.8600');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (10, 'Hardware', 'monitor', '813.7600');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (11, 'Hardware', 'mouse', '803.7400');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (12, 'Hardware', 'drive', '944.9600');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (13, 'Hardware', 'keyboard', '629.8900');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (14, 'Hardware', 'speaker', '612.4600');
INSERT INTO Products (`product_id`, `product_type_code`, `product_name`, `product_price`) VALUES (15, 'Hardware', 'mic', '971.4400');

CREATE TABLE `Supplier_Addresses` (
`supplier_id` INTEGER NOT NULL,
`address_id` INTEGER NOT NULL,
`date_from` DATETIME NOT NULL,
`date_to` DATETIME,
PRIMARY KEY (`supplier_id`, `address_id`),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` ),
FOREIGN KEY (`supplier_id` ) REFERENCES `Suppliers`(`supplier_id` )
);

INSERT INTO Supplier_Addresses (`supplier_id`, `address_id`, `date_from`, `date_to`) VALUES (4, 5, '2016-09-22 16:41:31', '2018-03-14 20:06:37');
INSERT INTO Supplier_Addresses (`supplier_id`, `address_id`, `date_from`, `date_to`) VALUES (3, 9, '2014-11-07 19:18:49', '2018-03-16 16:39:58');
INSERT INTO Supplier_Addresses (`supplier_id`, `address_id`, `date_from`, `date_to`) VALUES (3, 2, '2008-11-22 12:01:25', '2018-03-02 19:50:22');
INSERT INTO Supplier_Addresses (`supplier_id`, `address_id`, `date_from`, `date_to`) VALUES (2, 11, '2015-03-16 19:30:29', '2018-03-24 00:14:45');


CREATE TABLE `Customer_Addresses` (
`customer_id` INTEGER NOT NULL,
`address_id` INTEGER NOT NULL,
`date_from` DATETIME NOT NULL,
`date_to` DATETIME,
PRIMARY KEY (`customer_id`, `address_id`),
FOREIGN KEY (`address_id` ) REFERENCES `Addresses`(`address_id` ),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);


INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (2, 9, '2017-12-11 05:00:22', '2018-03-20 20:52:34');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (1, 6, '2017-10-07 23:00:26', '2018-02-28 14:53:52');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (10, 8, '2017-04-04 20:00:27', '2018-02-27 20:08:33');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (1, 9, '2017-12-14 07:40:08', '2018-03-24 14:31:59');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (1, 2, '2017-07-31 20:18:52', '2018-03-12 05:32:28');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (8, 2, '2018-01-27 06:27:34', '2018-03-23 17:49:51');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (1, 14, '2017-08-06 20:57:36', '2018-03-05 21:19:53');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (6, 13, '2017-09-07 04:41:01', '2018-02-27 23:10:07');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (7, 7, '2017-10-02 19:56:27', '2018-03-22 17:22:34');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (8, 4, '2018-01-15 12:05:39', '2018-03-13 21:49:51');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (7, 4, '2018-02-22 04:46:48', '2018-02-26 00:52:25');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (2, 4, '2017-11-28 23:36:20', '2018-03-02 17:46:11');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (12, 14, '2017-11-01 04:21:41', '2018-03-05 16:18:34');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (7, 10, '2018-01-07 13:31:08', '2018-03-09 07:06:56');
INSERT INTO Customer_Addresses (`customer_id`, `address_id`, `date_from`, `date_to`) VALUES (4, 12, '2017-08-27 13:38:37', '2018-03-17 15:44:10');



CREATE TABLE `Customer_Orders` (
`order_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`order_status_code` VARCHAR(10) NOT NULL,
`order_date` DATETIME NOT NULL,
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);

INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (1, 12, 'Completed', '2018-02-10 15:44:48');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (2, 4, 'New', '2018-01-31 17:49:18');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (3, 1, 'PartFilled', '2018-02-26 12:39:33');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (4, 4, 'Pending', '2018-03-07 16:55:17');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (5, 4, 'New', '2018-02-12 19:34:12');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (6, 11, 'PartFilled', '2018-03-06 16:35:51');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (7, 1, 'Cancelled', '2018-02-15 02:25:32');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (8, 13, 'Pending', '2018-03-05 23:17:54');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (9, 7, 'Pending', '2018-02-09 11:16:46');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (10, 11, 'Cancelled', '2018-03-22 10:49:25');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (11, 8, 'Cancelled', '2018-02-16 19:42:39');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (12, 4, 'New', '2018-02-02 23:42:01');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (13, 15, 'PartFilled', '2018-02-26 05:34:18');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (14, 6, 'Completed', '2018-03-18 15:12:39');
INSERT INTO Customer_Orders (`order_id`, `customer_id`, `order_status_code`, `order_date`) VALUES (15, 10, 'Pending', '2018-03-16 22:42:46');


CREATE TABLE `Department_Stores` (
`dept_store_id` INTEGER PRIMARY KEY,
`dept_store_chain_id` INTEGER,
`store_name` VARCHAR(80),
`store_address` VARCHAR(255),
`store_phone` VARCHAR(80),
`store_email` VARCHAR(80),
FOREIGN KEY (`dept_store_chain_id` ) REFERENCES `Department_Store_Chain`(`dept_store_chain_id` )
);


INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (1, 1, 'store_name', '01290 Jeremie Parkway Suite 753
North Arielle, MS 51249', '(948)944-5099x2027', 'bmaggio@example.com');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (2, 3, 'store_name', '082 Purdy Expressway
O''Connellshire, IL 31732', '877-917-5029', 'larissa10@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (3, 4, 'store_name', '994 Travis Plains
North Wadeton, WV 27575-3951', '1-216-312-0375', 'alexandro.mcclure@example.net');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (4, 2, 'store_name', '93472 Mayert Shore Apt. 360
Mitchellton, TN 84209', '670-466-6367', 'bryon24@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (5, 3, 'store_name', '88112 Parisian Lights
Sporermouth, MN 25962', '01399327266', 'creola23@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (6, 4, 'store_name', '49708 Marcella Valleys Suite 181
Ninamouth, WA 86667', '1-859-843-1957', 'jerod.reynolds@example.net');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (7, 4, 'store_name', '41924 Alfredo Cliff
New Eviestad, NY 17573', '1-109-872-9142x77078', 'ihamill@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (8, 4, 'store_name', '7081 Shanna Cape
West Zacheryshire, NC 17408', '+67(5)4983519062', 'casper.adolfo@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (9, 4, 'store_name', '5288 Kaia Street
Devonton, NJ 61782-9006', '(723)503-7086x356', 'selmer.stiedemann@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (10, 3, 'store_name', '00578 Lisa Gateway Suite 476
Strosinville, VA 03998-3292', '07126036440', 'luisa57@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (11, 2, 'store_name', '34894 Everett Road
South Jeremiehaven, GA 08730', '611-037-9309', 'vonrueden.vern@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (12, 4, 'store_name', '2676 Cruickshank Gardens
North Ginahaven, CT 85046', '(626)763-7031', 'freda.toy@example.org');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (13, 2, 'store_name', '29297 West Road Suite 210
West Dulceside, UT 58085-8998', '1-764-126-7567x0795', 'katlynn62@example.com');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (14, 1, 'store_name', '16650 Lysanne River Apt. 281
North Garettton, AL 84756-4375', '319.331.3397', 'mohr.elwin@example.net');
INSERT INTO Department_Stores (`dept_store_id`, `dept_store_chain_id`, `store_name`, `store_address`, `store_phone`, `store_email`) VALUES (15, 3, 'store_name', '82470 Hansen Squares Suite 190
Wehnermouth, NC 76791', '(587)993-3604x3077', 'kelly30@example.com');


CREATE TABLE `Departments` (
`department_id` INTEGER PRIMARY KEY,
`dept_store_id` INTEGER NOT NULL,
`department_name` VARCHAR(80),
FOREIGN KEY (`dept_store_id` ) REFERENCES `Department_Stores`(`dept_store_id` )
);
INSERT INTO Departments (`department_id`, `dept_store_id`, `department_name`) VALUES (1, 5, 'human resource');
INSERT INTO Departments (`department_id`, `dept_store_id`, `department_name`) VALUES (2, 11, 'purchasing');
INSERT INTO Departments (`department_id`, `dept_store_id`, `department_name`) VALUES (3, 4, 'marketing');
INSERT INTO Departments (`department_id`, `dept_store_id`, `department_name`) VALUES (4, 11, 'advertising');
INSERT INTO Departments (`department_id`, `dept_store_id`, `department_name`) VALUES (5, 4, 'managing');


CREATE TABLE `Order_Items` (
`order_item_id` INTEGER PRIMARY KEY,
`order_id` INTEGER NOT NULL,
`product_id` INTEGER NOT NULL,
FOREIGN KEY (`order_id` ) REFERENCES `Customer_Orders`(`order_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` )
);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (1, 9, 7);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (2, 1, 3);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (3, 5, 2);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (4, 14, 10);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (5, 15, 4);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (6, 14, 13);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (7, 6, 13);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (8, 12, 8);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (9, 13, 12);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (10, 14, 13);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (11, 7, 11);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (12, 14, 14);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (13, 15, 5);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (14, 8, 10);
INSERT INTO Order_Items (`order_item_id`, `order_id`, `product_id`) VALUES (15, 5, 4);
CREATE TABLE `Product_Suppliers` (
`product_id` INTEGER NOT NULL,
`supplier_id` INTEGER NOT NULL,
`date_supplied_from` DATETIME NOT NULL,
`date_supplied_to` DATETIME,
`total_amount_purchased` VARCHAR(80),
`total_value_purchased` DECIMAL(19,4),
PRIMARY KEY (`product_id`, `supplier_id`),
FOREIGN KEY (`supplier_id` ) REFERENCES `Suppliers`(`supplier_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` )
);


CREATE TABLE `Staff_Department_Assignments` (
`staff_id` INTEGER NOT NULL,
`department_id` INTEGER NOT NULL,
`date_assigned_from` DATETIME NOT NULL,
`job_title_code` VARCHAR(10) NOT NULL,
`date_assigned_to` DATETIME,
PRIMARY KEY (`staff_id`, `department_id`),
FOREIGN KEY (`department_id` ) REFERENCES `Departments`(`department_id` ),
FOREIGN KEY (`staff_id` ) REFERENCES `Staff`(`staff_id` )
);

INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (4, 3, '2017-06-19 00:49:05', '2018-03-24 19:29:18', '89366.05', '36014.6000');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (8, 4, '2017-07-02 00:35:12', '2018-03-25 07:30:49', '25085.57', '36274.5600');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (3, 3, '2017-10-14 19:15:37', '2018-03-24 02:29:44', '15752.45', '7273.7400');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (7, 1, '2017-08-22 00:58:42', '2018-03-24 02:38:31', '22332.08', '8042.7800');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (15, 4, '2017-12-08 09:14:05', '2018-03-24 23:03:30', '25318.21', '29836.2600');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (11, 1, '2017-12-01 19:46:53', '2018-03-24 05:22:36', '35149.74', '67216.3100');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (11, 3, '2017-07-13 15:02:24', '2018-03-24 23:01:03', '31862.59', '76992.4200');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (5, 2, '2017-07-28 19:23:39', '2018-03-24 09:17:15', '85922.86', '82524.9500');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (6, 2, '2017-12-20 07:07:31', '2018-03-24 23:25:58', '64444.18', '97371.1200');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (4, 1, '2017-09-19 02:14:02', '2018-03-25 09:15:30', '32881.38', '29987.7100');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (15, 2, '2017-08-07 12:08:00', '2018-03-23 19:21:12', '13712.91', '48100.2300');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (4, 4, '2017-06-09 01:30:40', '2018-03-24 12:35:08', '79316.31', '98086.8000');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (8, 2, '2017-06-25 14:59:40', '2018-03-24 12:27:13', '83873.58', '99049.0100');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (7, 4, '2017-11-17 08:23:16', '2018-03-25 12:03:33', '20689.78', '61800.9500');
INSERT INTO Product_Suppliers (`product_id`, `supplier_id`, `date_supplied_from`, `date_supplied_to`, `total_amount_purchased`, `total_value_purchased`) VALUES (14, 1, '2017-08-09 21:26:38', '2018-03-24 18:16:47', '20447.99', '27257.6000');

INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (5, 4, '2017-06-11 22:55:20', 'Department Manager', '2018-03-23 21:59:11');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (10, 5, '2017-12-18 19:12:15', 'Sales Person', '2018-03-23 20:25:24');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (1, 5, '2018-02-14 03:15:29', 'Clerical Staff', '2018-03-24 19:57:56');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (8, 1, '2017-05-14 12:30:33', 'Clerical Staff', '2018-03-25 03:15:31');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (15, 2, '2017-03-31 23:07:54', 'Department Manager', '2018-03-24 09:11:14');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (2, 5, '2017-11-14 04:38:44', 'Administration', '2018-03-24 07:04:28');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (9, 4, '2016-09-20 02:59:15', 'Sales Person', '2018-03-24 20:13:13');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (8, 2, '2017-05-10 02:32:17', 'Administration', '2018-03-24 02:36:57');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (3, 5, '2016-10-19 08:11:39', 'Clerical Staff', '2018-03-25 15:34:31');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (6, 1, '2017-12-26 06:34:20', 'Department Manager', '2018-03-25 09:53:37');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (6, 2, '2016-09-15 11:00:41', 'Administration', '2018-03-25 02:29:08');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (8, 5, '2017-06-06 22:22:17', 'Clerical Staff', '2018-03-24 13:02:22');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (12, 5, '2016-11-12 14:10:55', 'Sales Person', '2018-03-25 02:59:19');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (7, 3, '2016-05-17 07:02:37', 'Clerical Staff', '2018-03-24 10:45:21');
INSERT INTO Staff_Department_Assignments (`staff_id`, `department_id`, `date_assigned_from`, `job_title_code`, `date_assigned_to`) VALUES (2, 3, '2016-06-24 17:31:24', 'Administration', '2018-03-25 13:32:57');
