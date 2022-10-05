PRAGMA foreign_keys = ON;
CREATE TABLE `Investors` (
`investor_id` INTEGER PRIMARY KEY,
`Investor_details` VARCHAR(255)
);
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (1, 'z');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (2, 'z');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (3, 'd');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (4, 'd');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (5, 'b');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (6, 'k');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (7, 'l');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (8, 't');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (9, 'y');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (10, 'r');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (11, 'q');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (12, 'c');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (13, 'o');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (14, 'w');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (15, 'i');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (16, 'y');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (17, 'k');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (18, 'w');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (19, 'l');
INSERT INTO Investors (`investor_id`, `Investor_details`) VALUES (20, 'j');

CREATE TABLE `Lots` (
`lot_id` INTEGER PRIMARY KEY,
`investor_id` INTEGER NOT NULL,
`lot_details` VARCHAR(255),
FOREIGN KEY (`investor_id` ) REFERENCES `Investors`(`investor_id` )
);
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (1, 13, 'r');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (2, 16, 'z');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (3, 10, 's');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (4, 19, 's');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (5, 6, 'q');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (6, 20, 'd');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (7, 7, 'm');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (8, 7, 'h');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (9, 20, 'z');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (10, 9, 'x');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (11, 1, 'd');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (12, 19, 'm');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (13, 7, 'z');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (14, 6, 'd');
INSERT INTO Lots (`lot_id`, `investor_id`, `lot_details`) VALUES (15, 1, 'h');

CREATE TABLE `Ref_Transaction_Types` (
`transaction_type_code` VARCHAR(10) PRIMARY KEY,
`transaction_type_description` VARCHAR(80) NOT NULL
);
INSERT INTO Ref_Transaction_Types (`transaction_type_code`, `transaction_type_description`) VALUES ('SALE', 'Sale');
INSERT INTO Ref_Transaction_Types (`transaction_type_code`, `transaction_type_description`) VALUES ('PUR', 'Purchase');



CREATE TABLE `Transactions` (
`transaction_id` INTEGER PRIMARY KEY,
`investor_id` INTEGER NOT NULL,
`transaction_type_code` VARCHAR(10) NOT NULL,
`date_of_transaction` DATETIME,
`amount_of_transaction` DECIMAL(19,4),
`share_count` VARCHAR(40),
`other_details` VARCHAR(255),
FOREIGN KEY (`investor_id` ) REFERENCES `Investors`(`investor_id` ),FOREIGN KEY (`transaction_type_code` ) REFERENCES `Ref_Transaction_Types`(`transaction_type_code` )
);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (1, 6, 'SALE', '1988-09-16 19:02:51', '302507.6996', '8718572', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (2, 18, 'PUR', '1982-06-06 17:19:00', '27.2570', '9', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (3, 2, 'SALE', '1979-04-27 06:03:59', '48777.9690', '8580', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (4, 14, 'PUR', '2001-11-28 15:06:25', '4.5263', '8040', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (5, 8, 'PUR', '1977-08-17 13:13:30', '0.0000', '930', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (6, 19, 'PUR', '1985-10-08 13:13:39', '207484122.2796', '2751', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (7, 7, 'PUR', '1990-12-02 09:03:38', '822.8030', '1522', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (8, 17, 'SALE', '2004-01-18 20:37:50', '78035671.4424', '96178', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (9, 20, 'PUR', '1977-08-13 02:18:47', '82057.2070', '', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (10, 2, 'SALE', '1981-01-28 08:07:03', '29.3534', '1654756', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (11, 3, 'SALE', '2000-04-03 20:55:43', '0.0000', '674529892', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (12, 18, 'SALE', '1983-11-01 17:57:27', '1.0000', '587', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (13, 3, 'SALE', '2002-04-07 20:28:37', '183.2000', '', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (14, 3, 'PUR', '2002-09-13 03:04:56', '0.0000', '630021', NULL);
INSERT INTO Transactions (`transaction_id`, `investor_id`, `transaction_type_code`, `date_of_transaction`, `amount_of_transaction`, `share_count`, `other_details`) VALUES (15, 19, 'PUR', '1997-12-30 05:05:40', '8.9000', '93191', NULL);


CREATE TABLE `Sales` (
`sales_transaction_id` INTEGER PRIMARY KEY,
`sales_details` VARCHAR(255),
FOREIGN KEY (`sales_transaction_id` ) REFERENCES `Transactions`(`transaction_id` )
);

INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (1, 'x');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (2, 'o');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (3, 'a');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (4, 'f');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (5, 'y');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (6, 'x');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (7, 'p');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (8, 'e');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (9, 'p');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (10, 's');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (11, 's');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (12, 't');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (13, 'p');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (14, 'n');
INSERT INTO Sales (`sales_transaction_id`, `sales_details`) VALUES (15, 'e');

CREATE TABLE `Purchases` (
`purchase_transaction_id` INTEGER NOT NULL,
`purchase_details` VARCHAR(255) NOT NULL,
FOREIGN KEY (`purchase_transaction_id` ) REFERENCES `Transactions`(`transaction_id` )
);

INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (1, 'c');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (2, 'y');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (3, 'i');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (4, 'x');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (5, 'y');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (6, 'a');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (7, 'r');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (8, 'a');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (9, 'r');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (10, 'l');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (11, 'z');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (12, 'h');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (13, 't');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (14, 'o');
INSERT INTO Purchases (`purchase_transaction_id`, `purchase_details`) VALUES (15, 'x');


CREATE TABLE `Transactions_Lots` (
`transaction_id` INTEGER NOT NULL,
`lot_id` INTEGER NOT NULL,
FOREIGN KEY (`lot_id` ) REFERENCES `Lots`(`lot_id` ),
FOREIGN KEY (`transaction_id` ) REFERENCES `Transactions`(`transaction_id` )
);


INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (3, 11);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (3, 8);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (2, 11);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (3, 14);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (12, 10);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (15, 10);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (10, 10);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (1, 1);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (1, 14);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (3, 4);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (14, 9);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (7, 1);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (12, 15);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (6, 3);
INSERT INTO Transactions_Lots (`transaction_id`, `lot_id`) VALUES (2, 1);
