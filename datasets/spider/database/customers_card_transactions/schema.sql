PRAGMA foreign_keys = ON;

CREATE TABLE `Accounts` (
`account_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`account_name` VARCHAR(50),
`other_account_details` VARCHAR(255)
);
CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`customer_first_name` VARCHAR(20),
`customer_last_name` VARCHAR(20),
`customer_address` VARCHAR(255),
`customer_phone` VARCHAR(255),
`customer_email` VARCHAR(255),
`other_customer_details` VARCHAR(255)
);
CREATE TABLE `Customers_Cards` (
`card_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`card_type_code` VARCHAR(15) NOT NULL,
`card_number` VARCHAR(80),
`date_valid_from` DATETIME,
`date_valid_to` DATETIME,
`other_card_details` VARCHAR(255)
);
CREATE TABLE `Financial_Transactions` (
`transaction_id` INTEGER NOT NULL ,
`previous_transaction_id` INTEGER,
`account_id` INTEGER NOT NULL,
`card_id` INTEGER NOT NULL,
`transaction_type` VARCHAR(15) NOT NULL,
`transaction_date` DATETIME,
`transaction_amount` DOUBLE NULL,
`transaction_comment` VARCHAR(255),
`other_transaction_details` VARCHAR(255),
FOREIGN KEY (`card_id` ) REFERENCES `Customers_Cards`(`card_id` ),
FOREIGN KEY (`account_id` ) REFERENCES `Accounts`(`account_id` )
);

INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (1, 6, '338', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (2, 14, '562', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (3, 9, '162', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (4, 12, '038', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (5, 13, '858', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (6, 12, '262', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (7, 9, '621', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (8, 8, '381', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (9, 9, '546', 'Regular');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (10, 4, '767', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (11, 4, '022', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (12, 2, '866', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (13, 10, '234', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (14, 9, '557', 'VIP');
INSERT INTO Accounts (`account_id`, `customer_id`, `account_name`, `other_account_details`) VALUES (15, 4, '725', 'VIP');
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (1, 'Aniyah', 'Feest', '55975 Theodore Estates
Lake Brody, VT 57078', '(673)872-5338', 'fahey.dorian@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (2, 'Susie', 'Wiza', '6478 Moen Isle Suite 910
Schimmelmouth, VT 96364-4898', '679-845-8645x94312', 'idickinson@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (3, 'Marcel', 'Brekke', '1965 Abernathy Plains
Port Lilla, LA 44867', '1-511-656-6664', 'nichole.rodriguez@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (4, 'Art', 'Turcotte', '6862 Domenic Port
New Elbert, DE 86980-8517', '941-213-6716x675', 'enrique59@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (5, 'Armani', 'Farrell', '3031 Ludwig Square
Unaview, SC 86336-3287', '224-123-1012', 'dauer@example.net', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (6, 'Kiel', 'Schinner', '19935 Allie Bypass Apt. 409
Coleberg, FL 69194-5357', '1-564-044-3909', 'ebert.omer@example.net', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (7, 'Izabella', 'Erdman', '23793 Athena Inlet Apt. 455
Schmidtmouth, NH 15794', '751.049.9948', 'kling.catalina@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (8, 'Elyssa', 'Lind', '094 Julianne Mill
Webstertown, KY 91980-4004', '+12(6)9024410984', 'dell13@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (9, 'Faustino', 'Langworth', '0748 Lola Union Apt. 874
Reynoldsfurt, NM 94584-3767', '284.749.0453', 'ahomenick@example.org', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (10, 'Axel', 'Effertz', '936 Lula Overpass
East Alisonville, NH 14890', '+90(8)1290735932', 'kyra.murazik@example.org', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (11, 'Frederic', 'Swift', '7127 Hilpert Parks
South Johnfort, SD 67577-9504', '1-207-977-5182', 'keegan16@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (12, 'Bryce', 'Rath', '74962 Hugh Mills
North Laurenland, KY 46376', '(415)237-0701x3115', 'grady.general@example.org', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (13, 'Serenity', 'Effertz', '71560 Eulah Squares
Torphyberg, OK 34312-0380', '1-894-567-2283', 'schaden.katrina@example.net', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (14, 'Blanche', 'Huels', '47286 Mraz Park Apt. 424
Jocelynfurt, OH 59023-2787', '(703)950-4708x8972', 'huels.antonina@example.com', NULL);
INSERT INTO Customers (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_phone`, `customer_email`, `other_customer_details`) VALUES (15, 'Nat', 'Davis', '163 Collier Square
New Ceciltown, AL 64723-5646', '246-469-4472x359', 'earlene.carroll@example.net', NULL);
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (1, 14, 'Credit', '4560596484842', '2011-04-17 09:05:28', '2018-03-07 17:06:19', '5567915676420343');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (2, 9, 'Credit', '4859448397570735', '2012-05-22 02:05:41', '2018-02-25 15:43:32', '4539333582760');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (3, 6, 'Debit', '348237249146948', '2014-08-01 14:26:45', '2018-03-24 15:29:00', '4916210554814');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (4, 15, 'Credit', '4485460762694', '2009-11-05 09:26:01', '2018-03-19 05:34:08', '5296134475180061');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (5, 13, 'Credit', '5122249720639438', '2015-12-21 22:07:49', '2018-03-22 08:31:28', '5388642773088467');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (6, 10, 'Debit', '5102229294602335', '2017-01-01 13:34:04', '2018-03-11 01:12:33', '5513587359761653');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (7, 9, 'Credit', '4716674779726', '2016-12-11 03:01:12', '2018-03-15 06:27:45', '6011771512810699');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (8, 12, 'Credit', '6011225247353230', '2016-09-17 13:31:05', '2018-03-24 00:38:54', '5428692691195935');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (9, 3, 'Debit', '4929590358481', '2015-03-27 02:01:12', '2018-03-12 02:16:45', '5307019264041461');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (10, 10, 'Debit', '4532488235104', '2011-06-15 23:10:10', '2018-03-17 21:27:32', '5571147786750739');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (11, 8, 'Debit', '4707949584519', '2013-11-17 02:58:22', '2018-03-14 14:00:07', '377852690396160');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (12, 3, 'Debit', '4929896676202959', '2015-05-09 04:05:26', '2018-03-16 16:00:19', '4556142375374');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (13, 2, 'Credit', '5484846021884483', '2008-08-20 17:59:51', '2018-03-20 02:08:02', '4916493714393');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (14, 5, 'Debit', '4929384762825', '2013-05-23 07:55:36', '2018-03-11 06:05:44', '4485258248930151');
INSERT INTO Customers_Cards (`card_id`, `customer_id`, `card_type_code`, `card_number`, `date_valid_from`, `date_valid_to`, `other_card_details`) VALUES (15, 2, 'Debit', '345475370003028', '2014-07-03 20:19:31', '2018-02-28 22:26:31', '4716851737494984');
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (1, 925, 15, 1, 'Payment', '2018-03-24 06:41:41', '1701.23', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (2, 494, 3, 2, 'Refund', '2018-03-24 12:08:55', '1931.76', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (3, 642, 4, 3, 'Payment', '2018-03-24 09:08:27', '486.56', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (4, 457, 15, 4, 'Refund', '2018-03-23 21:59:28', '1336.21', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (5, 947, 13, 5, 'Refund', '2018-03-23 21:43:32', '357.06', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (6, 958, 12, 6, 'Refund', '2018-03-24 11:48:28', '1967.75', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (7, 368, 1, 6, 'Refund', '2018-03-24 05:13:42', '1483.05', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (8, 924, 6, 7, 'Refund', '2018-03-24 14:47:05', '1194.48', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (9, 296, 9, 6, 'Payment', '2018-03-24 05:31:43', '1475.56', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (10, 495, 5, 7, 'Payment', '2018-03-24 05:45:57', '1795.66', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (11, 333, 11, 7, 'Refund', '2018-03-24 10:39:09', '462.63', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (12, 986, 10, 9, 'Payment', '2018-03-24 15:17:49', '1658.32', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (13, 885, 14, 11, 'Refund', '2018-03-24 17:00:41', '1298.73', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (14, 965, 10, 12, 'Refund', '2018-03-24 16:31:34', '945.43', NULL, NULL);
INSERT INTO Financial_Transactions (`transaction_id`, `previous_transaction_id`, `account_id`, `card_id`, `transaction_type`, `transaction_date`, `transaction_amount`, `transaction_comment`, `other_transaction_details`) VALUES (15, 203, 8, 12, 'Payment', '2018-03-24 10:48:34', '1529.97', NULL, NULL);
