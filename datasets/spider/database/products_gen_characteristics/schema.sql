PRAGMA foreign_keys = ON;
CREATE TABLE `Ref_Characteristic_Types` (
`characteristic_type_code` VARCHAR(15) PRIMARY KEY,
`characteristic_type_description` VARCHAR(80)
);
CREATE TABLE `Ref_Colors` (
`color_code` VARCHAR(15) PRIMARY KEY,
`color_description` VARCHAR(80)
);
CREATE TABLE `Ref_Product_Categories` (
`product_category_code` VARCHAR(15) PRIMARY KEY,
`product_category_description` VARCHAR(80),
`unit_of_measure` VARCHAR(20)
);
INSERT INTO Ref_Characteristic_Types (`characteristic_type_code`, `characteristic_type_description`) VALUES ('Grade', 'Grade');
INSERT INTO Ref_Characteristic_Types (`characteristic_type_code`, `characteristic_type_description`) VALUES ('Purity', 'Purity');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('9', 'red');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('5', 'green');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('1', 'yellow');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('4', 'blue');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('7', 'black');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('2', 'white');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('8', 'purple');
INSERT INTO Ref_Colors (`color_code`, `color_description`) VALUES ('3', 'gray');
INSERT INTO Ref_Product_Categories (`product_category_code`, `product_category_description`, `unit_of_measure`) VALUES ('Herbs', 'Herbs', 'Handful             ');
INSERT INTO Ref_Product_Categories (`product_category_code`, `product_category_description`, `unit_of_measure`) VALUES ('Seeds', 'Seeds', 'Weight - pound,kilo.');
INSERT INTO Ref_Product_Categories (`product_category_code`, `product_category_description`, `unit_of_measure`) VALUES ('Spices', 'Spices', 'Weight - pound,kilo.');

CREATE TABLE `Characteristics` (
`characteristic_id` INTEGER PRIMARY KEY,
`characteristic_type_code` VARCHAR(15) NOT NULL,
`characteristic_data_type` VARCHAR(10),
`characteristic_name` VARCHAR(80),
`other_characteristic_details` VARCHAR(255),
FOREIGN KEY (`characteristic_type_code` ) REFERENCES `Ref_Characteristic_Types`(`characteristic_type_code` )
);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (1, 'Grade', 'numquam', 'slow', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (2, 'Grade', 'doloribus', 'fast', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (3, 'Purity', 'rem', 'warm', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (4, 'Grade', 'aut', 'hot', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (5, 'Purity', 'impedit', 'hot', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (6, 'Purity', 'qui', 'warm', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (7, 'Grade', 'et', 'cool', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (8, 'Grade', 'dolores', 'cool', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (9, 'Grade', 'quam', 'cool', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (10, 'Grade', 'velit', 'fast', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (11, 'Purity', 'at', 'fast', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (12, 'Grade', 'totam', 'error', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (13, 'Purity', 'mollitia', 'slow', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (14, 'Purity', 'placeat', 'slow', NULL);
INSERT INTO Characteristics (`characteristic_id`, `characteristic_type_code`, `characteristic_data_type`, `characteristic_name`, `other_characteristic_details`) VALUES (15, 'Grade', 'facere', 'slow', NULL);


CREATE TABLE `Products` (
`product_id` INTEGER PRIMARY KEY,
`color_code` VARCHAR(15) NOT NULL,
`product_category_code` VARCHAR(15) NOT NULL,
`product_name` VARCHAR(80),
`typical_buying_price` VARCHAR(20),
`typical_selling_price` VARCHAR(20),
`product_description` VARCHAR(255),
`other_product_details` VARCHAR(255),
FOREIGN KEY (`product_category_code` ) REFERENCES `Ref_Product_Categories`(`product_category_code` ),FOREIGN KEY (`color_code` ) REFERENCES `Ref_Colors`(`color_code` )
);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (1, '4', 'Spices', 'cumin', '', '2878.3', 'et', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (2, '2', 'Spices', 'peper', '352447.2874677', '1892070.2803543', 'rerum', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (3, '9', 'Herbs', 'basil', '503.8431967', '0.1859512', 'officia', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (4, '1', 'Herbs', 'borage', '', '10377614.847385', 'blanditiis', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (5, '4', 'Spices', 'chili', '', '39446', 'eius', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (6, '4', 'Seeds', 'ginger', '5.578', '52735.6101', 'doloribus', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (7, '9', 'Seeds', 'sesame', '1284268.0659', '68205825.7', 'et', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (8, '9', 'Herbs', 'caraway', '24493', '', 'nulla', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (9, '2', 'Herbs', 'catnip', '12008702.623', '21577.891642', 'vel', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (10, '5', 'Seeds', 'flax', '339404395.7', '59622629.74', 'et', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (11, '7', 'Herbs', 'chervil', '', '', 'minus', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (12, '4', 'Seeds', 'voluptatem', '162', '149', 'officia', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (13, '5', 'Spices', 'cinnam', '1686539.4', '17595111.4', 'nisi', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (14, '4', 'Seeds', 'lotus', '43221310.465574', '63589.4054376', 'exercitationem', NULL);
INSERT INTO Products (`product_id`, `color_code`, `product_category_code`, `product_name`, `typical_buying_price`, `typical_selling_price`, `product_description`, `other_product_details`) VALUES (15, '2', 'Herbs', 'laurel', '', '57857', 'ut', NULL);


CREATE TABLE `Product_Characteristics` (
`product_id` INTEGER NOT NULL,
`characteristic_id` INTEGER NOT NULL,
`product_characteristic_value` VARCHAR(50),
FOREIGN KEY (`characteristic_id` ) REFERENCES `Characteristics`(`characteristic_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products`(`product_id` )
);
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (13, 13, 'low');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (11, 2, 'low');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (5, 15, 'low');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (1, 13, 'low');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (7, 12, 'low');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (11, 6, 'low');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (7, 2, 'medium');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (12, 10, 'medium');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (8, 11, 'high');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (14, 4, 'medium');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (11, 3, 'medium');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (6, 15, 'high');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (11, 3, 'high');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (6, 10, 'high');
INSERT INTO Product_Characteristics (`product_id`, `characteristic_id`, `product_characteristic_value`) VALUES (12, 2, 'high');
