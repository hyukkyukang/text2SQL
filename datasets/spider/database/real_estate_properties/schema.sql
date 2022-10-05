PRAGMA foreign_keys = ON;

CREATE TABLE `Ref_Feature_Types` (
`feature_type_code` VARCHAR(20) PRIMARY KEY,
`feature_type_name` VARCHAR(80)
);
CREATE TABLE `Ref_Property_Types` (
`property_type_code` VARCHAR(20) PRIMARY KEY,
`property_type_description` VARCHAR(80)
);

CREATE TABLE `Other_Available_Features` (
`feature_id` INTEGER PRIMARY KEY,
`feature_type_code` VARCHAR(20) NOT NULL,
`feature_name` VARCHAR(80),
`feature_description` VARCHAR(80),
FOREIGN KEY (`feature_type_code` ) REFERENCES `Ref_Feature_Types`(`feature_type_code` )
);

CREATE TABLE `Properties` (
`property_id` INTEGER PRIMARY KEY,
`property_type_code` VARCHAR(20) NOT NULL,
`date_on_market` DATETIME,
`date_sold` DATETIME,
`property_name` VARCHAR(80),
`property_address` VARCHAR(255),
`room_count` INTEGER,
`vendor_requested_price` DECIMAL(19,4),
`buyer_offered_price` DECIMAL(19,4),
`agreed_selling_price` DECIMAL(19,4),
`apt_feature_1` VARCHAR(255),
`apt_feature_2` VARCHAR(255),
`apt_feature_3` VARCHAR(255),
`fld_feature_1` VARCHAR(255),
`fld_feature_2` VARCHAR(255),
`fld_feature_3` VARCHAR(255),
`hse_feature_1` VARCHAR(255),
`hse_feature_2` VARCHAR(255),
`hse_feature_3` VARCHAR(255),
`oth_feature_1` VARCHAR(255),
`oth_feature_2` VARCHAR(255),
`oth_feature_3` VARCHAR(255),
`shp_feature_1` VARCHAR(255),
`shp_feature_2` VARCHAR(255),
`shp_feature_3` VARCHAR(255),
`other_property_details` VARCHAR(255),
FOREIGN KEY (`property_type_code` ) REFERENCES `Ref_Property_Types`(`property_type_code` )
);

CREATE TABLE `Other_Property_Features` (
`property_id` INTEGER NOT NULL,
`feature_id` INTEGER NOT NULL,
`property_feature_description` VARCHAR(80),
FOREIGN KEY (`feature_id` ) REFERENCES `Other_Available_Features`(`feature_id` ),
FOREIGN KEY (`property_id` ) REFERENCES `Properties`(`property_id` )
);


INSERT INTO Ref_Feature_Types (`feature_type_code`, `feature_type_name`) VALUES ('Amenity', 'Amenity, eg Pool.');
INSERT INTO Ref_Feature_Types (`feature_type_code`, `feature_type_name`) VALUES ('Security', 'Securiyt, eg Burglar Alarm.');
INSERT INTO Ref_Property_Types (`property_type_code`, `property_type_description`) VALUES ('House', 'House, Bungalow, etc.');
INSERT INTO Ref_Property_Types (`property_type_code`, `property_type_description`) VALUES ('Apartment', 'Apartment, Flat, Condo, etc.');
INSERT INTO Ref_Property_Types (`property_type_code`, `property_type_description`) VALUES ('Field', 'Field, Meadow.');
INSERT INTO Ref_Property_Types (`property_type_code`, `property_type_description`) VALUES ('Other', 'Other, to be determined.');
INSERT INTO Ref_Property_Types (`property_type_code`, `property_type_description`) VALUES ('Shop', 'Shop, Retail Outlet.');

INSERT INTO Other_Available_Features (`feature_id`, `feature_type_code`, `feature_name`, `feature_description`) VALUES (2, 'Amenity', 'AirCon', 'Air Conditioning.');
INSERT INTO Other_Available_Features (`feature_id`, `feature_type_code`, `feature_name`, `feature_description`) VALUES (3, 'Amenity', 'Pool', 'Swimming Pool.');
INSERT INTO Other_Available_Features (`feature_id`, `feature_type_code`, `feature_name`, `feature_description`) VALUES (4, 'Security', 'BurglarAlarm', 'Burglar Alarm');


INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (1, 'House', '1991-06-21 23:52:10', '1979-05-13 16:58:06', 'park', '4745 Emerson Stravenue Suite 829
South Garret, IN 16772-5682', '7', '372652.2909', '1.6800', '4201.8000', 'aut', 'suscipit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (2, 'House', '1990-05-25 23:01:51', '1990-11-14 19:16:38', 'the cole', '098 Tremaine Highway Suite 569
South Wilford, NJ 46587-3537', '1', '661536468.4429', '8.7122', '21769471.8328', 'est', 'est', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (3, 'Other', '1986-11-26 04:12:18', '1981-06-26 21:28:28', 'prism', '062 Micaela Court Apt. 707
Margretville, WV 51628-3617', '8', '1337.0000', '11375259.5020', '5.0000', 'ut', 'et', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (4, 'Field', '2017-09-14 15:49:23', '2003-02-27 18:17:11', 'riverside', '49578 Ayden Mountains
New Russellhaven, UT 46626', '6', '192374065.8000', '15.1700', '4514.8070', 'nesciunt', 'adipisci', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (5, 'Apartment', '2016-05-06 16:53:39', '2012-08-19 07:36:57', 'parc east', '2765 Schulist Stream
Lindmouth, UT 03391-3817', '5', '983.8596', '10.1067', '1.0012', 'quo', 'sequi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (6, 'Shop', '1994-02-14 02:27:13', '1995-01-31 11:18:42', 'high line', '6837 Darien Views Apt. 475
South Maraview, KS 77770', '9', '2573.0000', '0.0000', '476919.3000', 'sed', 'culpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (7, 'Shop', '1996-09-16 22:04:27', '1998-09-15 05:26:22', 'avalon', '092 Paucek Highway Apt. 772
East Erika, IA 61358', '8', '150045.7568', '296733.0000', '2794972.2495', 'quos', 'est', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (8, 'Apartment', '1976-06-10 20:25:38', '2001-11-09 04:37:33', 'vogue', '24365 Ulices Run
Homenicktown, MD 88485-6198', '9', '13.4715', '0.0000', '0.0000', 'fuga', 'odio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (9, 'Apartment', '1978-05-15 10:53:37', '1971-04-14 03:23:49', 'longacre', '107 Roob Courts
Erdmanburgh, IA 42926-0873', '5', '2219.6778', '3520911.5258', '3344706.5755', 'enim', 'sit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (10, 'Apartment', '2003-12-25 16:13:19', '1997-01-07 19:52:45', 'renoir', '084 Lakin Vista Apt. 394
Fishertown, MA 16876', '9', '77172926.3000', '1.5509', '244353758.1824', 'consequatur', 'vero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (11, 'Other', '1981-08-23 05:40:38', '1997-11-07 20:22:05', 'murray hill', '2088 Bashirian Fork Suite 337
Faustinoport, MT 16771-9320', '2', '6713620.9000', '13991131.4340', '170766.4720', 'et', 'est', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (12, 'Apartment', '2016-05-24 09:57:45', '1980-07-08 16:13:17', 'ten tower', '743 Ephraim Greens
Anniemouth, HI 47084-3853', '5', '305.0000', '2.0000', '456840888.1600', 'qui', 'autem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (13, 'Other', '2000-08-07 06:59:14', '1973-02-24 02:56:06', 'chelsea', '60845 Else Highway Apt. 826
South Dougfort, CO 43200-4258', '2', '2198735.0950', '0.0000', '44132.4621', 'fuga', 'aut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (14, 'Other', '1986-12-31 10:05:32', '1987-12-07 07:41:27', 'wall street', '1474 Dibbert Fields Suite 055
South Renee, IN 58286-3097', '7', '78.7208', '2449185.2000', '0.0000', 'et', 'eos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Properties (`property_id`, `property_type_code`, `date_on_market`, `date_sold`, `property_name`, `property_address`, `room_count`, `vendor_requested_price`, `buyer_offered_price`, `agreed_selling_price`, `apt_feature_1`, `apt_feature_2`, `apt_feature_3`, `fld_feature_1`, `fld_feature_2`, `fld_feature_3`, `hse_feature_1`, `hse_feature_2`, `hse_feature_3`, `oth_feature_1`, `oth_feature_2`, `oth_feature_3`, `shp_feature_1`, `shp_feature_2`, `shp_feature_3`, `other_property_details`) VALUES (15, 'Apartment', '1993-08-04 10:49:04', '1984-02-01 19:54:54', 'parc coliseum', '986 Hagenes Drives
Draketon, UT 83411-3393', '3', '331.0000', '27537286.0000', '2574.0000', 'aut', 'iusto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (15, 3, 'dolorem');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (12, 4, 'earum');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (6, 2, 'illo');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (7, 2, 'hic');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (6, 3, 'et');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (14, 4, 'quo');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (4, 3, 'odio');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (1, 2, 'ad');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (11, 4, 'vitae');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (9, 3, 'quo');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (6, 3, 'corrupti');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (6, 3, 'doloribus');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (13, 2, 'autem');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (3, 2, 'cumque');
INSERT INTO Other_Property_Features (`property_id`, `feature_id`, `property_feature_description`) VALUES (14, 4, 'modi');
