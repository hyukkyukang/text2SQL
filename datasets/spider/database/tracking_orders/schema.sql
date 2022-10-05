PRAGMA foreign_keys = ON;
CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`customer_name` VARCHAR(80),
`customer_details` VARCHAR(255)
);
CREATE TABLE `Invoices` (
`invoice_number` INTEGER PRIMARY KEY,
`invoice_date` DATETIME,
`invoice_details` VARCHAR(255)
);

CREATE TABLE `Orders` (
`order_id` INTEGER PRIMARY KEY,
`customer_id` INTEGER NOT NULL,
`order_status` VARCHAR(10) NOT NULL,
`date_order_placed` DATETIME NOT NULL,
`order_details` VARCHAR(255),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);

CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`product_name` VARCHAR(80),
`product_details` VARCHAR(255)
);

CREATE TABLE `Order_Items` (
`order_item_id` INTEGER PRIMARY KEY,
`product_id` INTEGER NOT NULL,
`order_id` INTEGER NOT NULL,
`order_item_status` VARCHAR(10) NOT NULL,
`order_item_details` VARCHAR(255),
FOREIGN KEY (`order_id` ) REFERENCES `Orders`(`order_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` )
);

CREATE TABLE `Shipments` (
`shipment_id` INTEGER PRIMARY KEY,
`order_id` INTEGER NOT NULL,
`invoice_number` INTEGER NOT NULL,
`shipment_tracking_number` VARCHAR(80),
`shipment_date` DATETIME,
`other_shipment_details` VARCHAR(255),
FOREIGN KEY (`order_id` ) REFERENCES `Orders`(`order_id` ),
FOREIGN KEY (`invoice_number` ) REFERENCES `Invoices`(`invoice_number` )
);

CREATE TABLE `Shipment_Items` (
`shipment_id` INTEGER NOT NULL,
`order_item_id` INTEGER NOT NULL,
FOREIGN KEY (`order_item_id` ) REFERENCES `Order_Items`(`order_item_id` ),
FOREIGN KEY (`shipment_id` ) REFERENCES `Shipments`(`shipment_id` )
);

INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (1, 'Savannah', 'rerum');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (2, 'George', 'est');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (3, 'Alberto', 'deleniti');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (4, 'Leilani', 'sequi');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (5, 'Hadley', 'corrupti');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (6, 'Chaz', 'nostrum');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (7, 'Violet', 'consectetur');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (8, 'Parker', 'rerum');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (9, 'Devan', 'doloribus');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (10, 'Beulah', 'commodi');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (11, 'Hershel', 'vel');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (12, 'Conrad', 'eligendi');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (13, 'Samson', 'dicta');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (14, 'Mabelle', 'quidem');
INSERT INTO Customers (`customer_id`, `customer_name`, `customer_details`) VALUES (15, 'Jeramie', 'officia');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (1, '1989-09-03 16:03:05', 'vitae');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (2, '1989-12-11 16:40:57', 'magnam');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (3, '1995-10-07 14:13:05', 'et');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (4, '1985-04-27 08:38:49', 'tempore');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (5, '1971-02-12 00:29:57', 'labore');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (6, '2007-12-25 15:49:37', 'optio');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (7, '1991-01-05 16:44:25', 'reiciendis');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (8, '2012-06-12 07:34:17', 'doloremque');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (9, '1974-07-27 16:18:49', 'quo');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (10, '2005-02-27 19:53:13', 'eveniet');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (11, '1972-08-12 05:48:49', 'earum');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (12, '1987-11-15 15:41:40', 'ea');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (13, '1981-03-28 20:01:44', 'voluptatem');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (14, '1998-07-30 15:39:12', 'repellat');
INSERT INTO Invoices (`invoice_number`, `invoice_date`, `invoice_details`) VALUES (15, '2012-12-08 02:21:54', 'voluptatem');

INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (1, 2, 'Shipped', '2009-02-21 15:26:19', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (2, 11, 'Shipped', '1974-06-24 22:10:26', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (3, 4, 'Shipped', '1982-12-29 21:10:11', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (4, 15, 'Packing', '1974-08-10 08:15:16', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (5, 5, 'Packing', '2010-06-08 02:20:49', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (6, 7, 'Packing', '1975-12-23 15:59:43', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (7, 15, 'Packing', '1976-09-01 09:27:00', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (8, 10, 'On Road', '1997-01-27 19:12:01', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (9, 3, 'On Road', '1983-09-08 12:32:49', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (10, 2, 'On Road', '1982-12-09 09:42:23', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (11, 9, 'On Road', '1979-12-07 02:03:49', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (12, 2, 'On Road', '1976-01-18 08:09:12', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (13, 15, 'On Road', '2002-12-06 14:13:30', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (14, 10, 'On Road', '2002-09-13 07:38:09', NULL);
INSERT INTO Orders (`order_id`, `customer_id`, `order_status`, `date_order_placed`, `order_details`) VALUES (15, 8, 'On Road', '1971-05-10 01:54:18', NULL);

INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (1, 'food', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (2, 'book', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (3, 'food', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (4, 'food', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (5, 'clothes', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (6, 'clothes', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (7, 'clothes', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (8, 'book', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (9, 'book', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (10, 'phone', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (11, 'phone', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (12, 'phone', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (13, 'phone', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (14, 'music', NULL);
INSERT INTO Products (`product_id`, `product_name`, `product_details`) VALUES (15, 'music', NULL);

INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (1, 5, 13, '3452', '1983-08-13 22:34:11', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (2, 7, 2, '0114', '1977-11-10 12:11:25', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (3, 10, 5, '478', '2006-01-17 03:08:05', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (4, 5, 2, '08858', '1982-01-24 12:13:16', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (5, 6, 15, '35342', '1981-11-13 23:20:42', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (6, 4, 3, '7480', '1978-05-17 00:03:43', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (7, 13, 15, '7662', '1999-10-12 10:41:49', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (8, 9, 10, '2323', '1983-03-08 16:14:58', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (9, 8, 10, '5991', '1986-06-07 13:54:27', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (10, 14, 15, '0182', '1973-06-20 14:26:43', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (11, 8, 2, '1334', '1992-08-13 04:04:52', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (12, 2, 9, '2421', '1985-11-12 12:41:34', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (13, 3, 10, '2424', '1970-02-02 05:23:57', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (14, 12, 3, '4029', '2014-01-15 20:52:15', NULL);
INSERT INTO Shipments (`shipment_id`, `order_id`, `invoice_number`, `shipment_tracking_number`, `shipment_date`, `other_shipment_details`) VALUES (15, 7, 9, '2436', '1991-04-01 15:24:24', NULL);


INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (1, 4, 6, 'Finish', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (2, 15, 6, 'Finish', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (3, 12, 15, 'Finish', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (4, 8, 15, 'Payed', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (5, 11, 6, 'Payed', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (6, 14, 8, 'Payed', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (7, 3, 5, 'Payed', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (8, 4, 10, 'Cancel', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (9, 11, 15, 'Cancel', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (10, 7, 7, 'Cancel', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (11, 15, 11, 'Cancel', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (12, 1, 11, 'Cancel', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (13, 14, 7, 'Payed', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (14, 15, 14, 'Payed', NULL);
INSERT INTO Order_Items (`order_item_id`, `product_id`, `order_id`, `order_item_status`, `order_item_details`) VALUES (15, 3, 9, 'Payed', NULL);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (11, 12);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (10, 15);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (10, 12);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (2, 2);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (14, 10);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (3, 7);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (4, 5);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (13, 7);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (12, 10);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (5, 13);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (15, 4);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (4, 11);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (12, 15);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (5, 5);
INSERT INTO Shipment_Items (`shipment_id`, `order_item_id`) VALUES (2, 10);
