PRAGMA foreign_keys = ON;

CREATE TABLE `Attribute_Definitions` (
`attribute_id` INTEGER PRIMARY KEY,
`attribute_name` VARCHAR(30),
`attribute_data_type` VARCHAR(10)
);
INSERT INTO Attribute_Definitions (`attribute_id`, `attribute_name`, `attribute_data_type`) VALUES (1, 'Green', 'Bool');
INSERT INTO Attribute_Definitions (`attribute_id`, `attribute_name`, `attribute_data_type`) VALUES (2, 'Black', 'Bool');
INSERT INTO Attribute_Definitions (`attribute_id`, `attribute_name`, `attribute_data_type`) VALUES (3, 'Yellow', 'Bool');
INSERT INTO Attribute_Definitions (`attribute_id`, `attribute_name`, `attribute_data_type`) VALUES (4, 'Sweet', 'Bool');

CREATE TABLE `Catalogs` (
`catalog_id` INTEGER PRIMARY KEY,
`catalog_name` VARCHAR(50),
`catalog_publisher` VARCHAR(80),
`date_of_publication` DATETIME,
`date_of_latest_revision` DATETIME
);
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (1, 'Chocolate', 'Koepp-Rutherford handmade chocolate store',  '2013-03-15 05:09:17', '2017-09-26 12:10:36');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (2, 'Coffee Bean', 'Murray Coffee shop',  '2012-04-13 06:37:09', '2017-10-26 01:16:51');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (3, 'Lemonade', 'Russel-Gislason Lemon shop',  '2012-11-27 19:29:22', '2017-12-04 06:48:13');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (4, 'Breakfast Tea', 'Grady & Kautzer',  '2011-07-22 04:57:19', '2017-03-30 09:15:37');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (5, 'Coco powder', 'Lidl',  '2013-03-15 05:09:17', '2017-09-26 12:10:36');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (6, 'Latte', 'Murray Coffee shop',  '2012-04-13 06:37:09', '2017-10-26 01:16:51');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (7, 'Sparkling Water', 'Russel-Gislason Lemon shop',  '2012-11-27 19:29:22', '2017-12-04 06:48:13');
INSERT INTO Catalogs (`catalog_id`, `catalog_name`, `catalog_publisher`,  `date_of_publication`, `date_of_latest_revision`) VALUES (8, 'Jam', 'Grady & Kautzer',  '2011-07-22 04:57:19', '2017-03-30 09:15:37');


CREATE TABLE `Catalog_Structure` (
`catalog_level_number` INTEGER PRIMARY KEY,
`catalog_id` INTEGER NOT NULL,
`catalog_level_name` VARCHAR(50),
FOREIGN KEY (`catalog_id` ) REFERENCES `Catalogs`(`catalog_id` )
);

INSERT INTO Catalog_Structure (`catalog_level_number`, `catalog_id`, `catalog_level_name`) VALUES (1, 1, 'Category');
INSERT INTO Catalog_Structure (`catalog_level_number`, `catalog_id`, `catalog_level_name`) VALUES (8, 2, 'Sub-Category');
INSERT INTO Catalog_Structure (`catalog_level_number`, `catalog_id`, `catalog_level_name`) VALUES (9, 8, 'Product');


CREATE TABLE `Catalog_Contents` (
`catalog_entry_id` INTEGER PRIMARY KEY,
`catalog_level_number` INTEGER NOT NULL,
`parent_entry_id` INTEGER,
`previous_entry_id` INTEGER,
`next_entry_id` INTEGER,
`catalog_entry_name` VARCHAR(80),
`product_stock_number` VARCHAR(50),
`price_in_dollars` DOUBLE NULL,
`price_in_euros` DOUBLE NULL,
`price_in_pounds` DOUBLE NULL,
`capacity` VARCHAR(20),
`length` VARCHAR(20),
`height` VARCHAR(20),
`width` VARCHAR(20),
FOREIGN KEY (`catalog_level_number` ) REFERENCES `Catalog_Structure`(`catalog_level_number` )
);
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (1, 1, 5, 9, 7, 'Cola', '89 cp', '200.78', '159.84', '172.17', '1', '3', '9', '5');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (2, 8, 6, 9, 8, 'Root beer', '37 hq', '687.59', '590.11', '471.78', '8', '6', '5', '6');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (3, 8, 6, 6, 1, 'Cream Soda', '52 ee', '360.5', '202.32', '110.32', '5', '9', '7', '8');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (4, 1, 7, 8, 6, 'Carbonated Water', '15 mr', '667.89', '458.45', '349.01', '8', '6', '2', '1');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (5, 9, 4, 7, 6, 'Ginger Beer', '42 cp', '616.22', '537.66', '405.75', '5', '5', '7', '9');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (6, 1, 3, 4, 8, 'Tizer', '61 py', '642.37', '434.21', '331.43', '6', '6', '7', '1');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (7, 9, 7, 3, 3, 'Vimto', '01 ap', '745.02', '510.32', '497.4', '6', '9', '6', '5');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (8, 8, 6, 5, 3, 'Ramune', '53 bg', '574.35', '441.82', '440.52', '4', '4', '7', '5');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (9, 1, 7, 9, 9, 'Sprite Lemo', '24 ec', '952.37', '703.17', '433.82', '8', '7', '1', '3');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (10, 8, 5, 6, 6, 'Dr Pepper', '26 op', '777.41', '616.54', '572.41', '1', '6', '1', '6');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (11, 1, 3, 6, 9, 'Diet Pepsi', '49 jg', '808.31', '643.77', '515.62', '9', '8', '3', '3');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (12, 8, 4, 5, 3, 'Diet Mountain Dew', '96 zx', '883.43', '752.87', '678.01', '8', '8', '1', '3');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (13, 1, 5, 9, 1, 'Mountain Dew', '49 cz', '475.79', '457.4', '335.63', '7', '8', '4', '5');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (14, 9, 3, 5, 8, 'Fenta Orange', '65 wc', '415.92', '385.85', '371.9', '7', '4', '3', '7');
INSERT INTO Catalog_Contents (`catalog_entry_id`, `catalog_level_number`, `parent_entry_id`, `previous_entry_id`, `next_entry_id`, `catalog_entry_name`, `product_stock_number`, `price_in_dollars`, `price_in_euros`, `price_in_pounds`, `capacity`, `length`, `height`, `width`) VALUES (15, 1, 6, 8, 9, 'Wanglaoji', '51 kr', '533.6', '498.62', '422.71', '4', '5', '8', '8');



CREATE TABLE `Catalog_Contents_Additional_Attributes` (
`catalog_entry_id` INTEGER NOT NULL,
`catalog_level_number` INTEGER NOT NULL,
`attribute_id` INTEGER NOT NULL,
`attribute_value` VARCHAR(255) NOT NULL,
FOREIGN KEY (`catalog_entry_id` ) REFERENCES `Catalog_Contents`(`catalog_entry_id` ),
FOREIGN KEY (`catalog_level_number` ) REFERENCES `Catalog_Structure`(`catalog_level_number` )
);
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (5, 8, 4, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (15, 9, 3, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (11, 1, 2, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (12, 1, 4, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (1, 8, 3, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (8, 1, 3, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (14, 9, 2, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (15, 9, 2, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (15, 1, 3, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (1, 8, 4, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (11, 1, 3, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (8, 9, 3, '0');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (2, 8, 4, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (6, 1, 1, '1');
INSERT INTO Catalog_Contents_Additional_Attributes (`catalog_entry_id`, `catalog_level_number`, `attribute_id`, `attribute_value`) VALUES (4, 8, 4, '0');
