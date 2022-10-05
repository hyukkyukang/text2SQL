PRAGMA foreign_keys = ON;
CREATE TABLE Ref_Hotel_Star_Ratings (
star_rating_code CHAR(15) NOT NULL,
star_rating_description VARCHAR(80),
PRIMARY KEY (star_rating_code),
UNIQUE (star_rating_code)
);


CREATE TABLE Locations (
Location_ID INTEGER NOT NULL,
Location_Name VARCHAR(255),
Address VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Location_ID)
);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (333, 'Astro Orbiter', '660 Shea Crescent', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (368, 'African Animals', '254 Ottilie Junction', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (417, 'American Adventure', '53815 Sawayn Tunnel Apt. 297', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (579, 'The Barnstormer', '3374 Sarina Manor', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (603, 'African Adventure', '88271 Barrows Union Suite 203', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (650, 'UK Gallery', '4411 Sabrina Radial Suite 582', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (655, 'The Boneyard', '0692 Georgiana Pass', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (661, 'Shark World', '2485 Mueller Squares Suite 537', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (740, 'Space Spin', '5536 Betsy Street Apt. 646', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (759, 'Butterflies', '959 Feest Glen Suite 523', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (858, 'Soak Station', '4908 Reinger Vista', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (861, 'Castle', '14034 Kohler Drive', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (867, 'Coral Reefs', '4510 Schuster Stream Apt. 613', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (868, 'Film Festival', '770 Edd Lane Apt. 098', NULL);
INSERT INTO Locations (`Location_ID`, `Location_Name`, `Address`, `Other_Details`) VALUES (885, 'Fossil Fun Games', '101 Paucek Crescent', NULL);


CREATE TABLE Ref_Attraction_Types (
Attraction_Type_Code CHAR(15) NOT NULL,
Attraction_Type_Description VARCHAR(255),
PRIMARY KEY (Attraction_Type_Code),
UNIQUE (Attraction_Type_Code)
);

INSERT INTO Ref_Attraction_Types (`Attraction_Type_Code`, `Attraction_Type_Description`) VALUES ('2', 'park');
INSERT INTO Ref_Attraction_Types (`Attraction_Type_Code`, `Attraction_Type_Description`) VALUES ('3', 'garden');
INSERT INTO Ref_Attraction_Types (`Attraction_Type_Code`, `Attraction_Type_Description`) VALUES ('5', 'gallery');
INSERT INTO Ref_Attraction_Types (`Attraction_Type_Code`, `Attraction_Type_Description`) VALUES ('6', 'adventure');
INSERT INTO Ref_Attraction_Types (`Attraction_Type_Code`, `Attraction_Type_Description`) VALUES ('9', 'museum');
INSERT INTO Ref_Hotel_Star_Ratings (`star_rating_code`, `star_rating_description`) VALUES ('1', 'star');
INSERT INTO Ref_Hotel_Star_Ratings (`star_rating_code`, `star_rating_description`) VALUES ('2', 'star');
INSERT INTO Ref_Hotel_Star_Ratings (`star_rating_code`, `star_rating_description`) VALUES ('3', 'star');
INSERT INTO Ref_Hotel_Star_Ratings (`star_rating_code`, `star_rating_description`) VALUES ('4', 'star');
INSERT INTO Ref_Hotel_Star_Ratings (`star_rating_code`, `star_rating_description`) VALUES ('5', 'star');


CREATE TABLE Visitors (
Tourist_ID INTEGER NOT NULL,
Tourist_Details VARCHAR(255),
PRIMARY KEY (Tourist_ID),
UNIQUE (Tourist_ID)
);
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (164, 'Toney');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (189, 'Graciela');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (204, 'Vincent');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (211, 'Vivian');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (241, 'Nettie');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (295, 'Laurence');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (359, 'Newell');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (377, 'Marisol');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (399, 'Jarrell');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (439, 'Edna');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (500, 'Maud');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (513, 'Alison');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (541, 'Rosalind');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (545, 'Tevin');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (578, 'Aleen');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (610, 'Marcelle');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (652, 'Lizzie');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (779, 'Wayne');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (841, 'Teresa');
INSERT INTO Visitors (`Tourist_ID`, `Tourist_Details`) VALUES (888, 'Elnora');



CREATE TABLE Features (
Feature_ID INTEGER NOT NULL,
Feature_Details VARCHAR(255),
PRIMARY KEY (Feature_ID)
);

INSERT INTO Features (`Feature_ID`, `Feature_Details`) VALUES (523, 'cafe');
INSERT INTO Features (`Feature_ID`, `Feature_Details`) VALUES (528, 'park');
INSERT INTO Features (`Feature_ID`, `Feature_Details`) VALUES (543, 'garden');
INSERT INTO Features (`Feature_ID`, `Feature_Details`) VALUES (681, 'shopping');
INSERT INTO Features (`Feature_ID`, `Feature_Details`) VALUES (955, 'parking');


CREATE TABLE Hotels (
hotel_id INTEGER NOT NULL,
star_rating_code CHAR(15) NOT NULL,
pets_allowed_yn CHAR(1),
price_range real,
other_hotel_details VARCHAR(255),
PRIMARY KEY (hotel_id),
FOREIGN KEY (star_rating_code) REFERENCES Ref_Hotel_Star_Ratings (star_rating_code)
);

INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (123, '5', '1', '2914989.571', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (144, '4', '', '', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (172, '5', '', '17012.682586009', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (222, '5', '1', '', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (239, '3', '1', '', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (264, '1', '1', '48525.4530675', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (314, '5', '1', '766712918.96763', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (331, '1', '1', '', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (350, '1', '', '', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (373, '5', '1', '250548014.90329', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (376, '2', '', '', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (379, '4', '1', '38014975.47848', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (420, '5', '1', '9393.86291219', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (421, '3', '', '5526556.6412', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (426, '5', '', '245.067720121', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (431, '2', '1', '43.729525', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (442, '2', '1', '289775.7331715', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (473, '1', '1', '2374.7971074', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (514, '5', '', '1381255.81865', NULL);
INSERT INTO Hotels (`hotel_id`, `star_rating_code`, `pets_allowed_yn`, `price_range`, `other_hotel_details`) VALUES (555, '5', '1', '5390.432113', NULL);


CREATE TABLE Tourist_Attractions (
Tourist_Attraction_ID INTEGER NOT NULL,
Attraction_Type_Code CHAR(15) NOT NULL,
Location_ID INTEGER NOT NULL,
How_to_Get_There VARCHAR(255),
Name VARCHAR(255),
Description VARCHAR(255),
Opening_Hours VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Tourist_Attraction_ID),
FOREIGN KEY (Location_ID) REFERENCES Locations (Location_ID),
FOREIGN KEY (Attraction_Type_Code) REFERENCES Ref_Attraction_Types (Attraction_Type_Code)
);

INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (2113, '2', 579, 'bus', 'art museum', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (2701, '6', 417, 'walk', 'UK gallery', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (5076, '2', 868, 'shuttle', 'flying elephant', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (5265, '5', 603, 'bus', 'film festival', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (6476, '3', 417, 'shuttle', 'US museum', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (6523, '9', 858, 'walk', 'fun games', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (6653, '9', 655, 'walk', 'history gallery', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (6852, '5', 858, 'walk', 'exploration trial', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (7067, '5', 417, 'bus', 'haunted mansion', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (8429, '9', 867, 'walk', 'presidents hall', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (8449, '2', 579, 'bus', 'impressions de France', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (8698, '5', 661, 'bus', 'jungle cruise', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (9360, '5', 868, 'shuttle', 'fun shops', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (9561, '2', 759, 'bus', 'cafe', NULL, NULL, NULL);
INSERT INTO Tourist_Attractions (`Tourist_Attraction_ID`, `Attraction_Type_Code`, `Location_ID`, `How_to_Get_There`, `Name`, `Description`, `Opening_Hours`, `Other_Details`) VALUES (9919, '6', 579, 'shuttle', 'parking', NULL, NULL, NULL);



CREATE TABLE Street_Markets (
Market_ID INTEGER NOT NULL,
Market_Details VARCHAR(255),
PRIMARY KEY (Market_ID),
FOREIGN KEY (Market_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);
CREATE TABLE Shops (
Shop_ID INTEGER NOT NULL,
Shop_Details VARCHAR(255),
PRIMARY KEY (Shop_ID),
FOREIGN KEY (Shop_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);
CREATE TABLE Museums (
Museum_ID INTEGER NOT NULL,
Museum_Details VARCHAR(255),
PRIMARY KEY (Museum_ID),
FOREIGN KEY (Museum_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);
CREATE TABLE Royal_Family (
Royal_Family_ID INTEGER NOT NULL,
Royal_Family_Details VARCHAR(255),
PRIMARY KEY (Royal_Family_ID),
FOREIGN KEY (Royal_Family_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);
CREATE TABLE Theme_Parks (
Theme_Park_ID INTEGER NOT NULL,
Theme_Park_Details VARCHAR(255),
PRIMARY KEY (Theme_Park_ID),
FOREIGN KEY (Theme_Park_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);


INSERT INTO Museums (`Museum_ID`,`Museum_Details`) VALUES (2113,'Yale Center for British Art');
INSERT INTO Museums (`Museum_ID`,`Museum_Details`) VALUES (2701,'The Metropolitan Museum of Art');
INSERT INTO Museums (`Museum_ID`,`Museum_Details`) VALUES (5076,'MoMA');

INSERT INTO Theme_Parks (`Theme_Park_ID`,`Theme_Park_Details`) VALUES (5265,'Disney');
INSERT INTO Theme_Parks (`Theme_Park_ID`,`Theme_Park_Details`) VALUES (6476,'Sea World');
INSERT INTO Theme_Parks (`Theme_Park_ID`,`Theme_Park_Details`) VALUES (6523, 'Universal Studios');


INSERT INTO Street_Markets (`Market_ID`,`Market_Details`) VALUES (6852, 'Broadway');
INSERT INTO Street_Markets (`Market_ID`,`Market_Details`) VALUES (7067, 'Fish Farm Market');

INSERT INTO Shops (`Shop_ID`,`Shop_Details`) VALUES (8429, 'soup');
INSERT INTO Shops (`Shop_ID`,`Shop_Details`) VALUES (8449, 'coffee');
INSERT INTO Shops (`Shop_ID`,`Shop_Details`) VALUES (8698, 'Flower');
INSERT INTO Shops (`Shop_ID`,`Shop_Details`) VALUES (9360, 'see food');

INSERT INTO Royal_Family (`Royal_Family_ID`,`Royal_Family_Details`) VALUES (9561,NULL);
INSERT INTO Royal_Family (`Royal_Family_ID`,`Royal_Family_Details`) VALUES (9919,NULL);


CREATE TABLE Visits (
Visit_ID INTEGER NOT NULL,
Tourist_Attraction_ID INTEGER NOT NULL,
Tourist_ID INTEGER NOT NULL,
Visit_Date DATETIME NOT NULL,
Visit_Details VARCHAR(40) NOT NULL,
PRIMARY KEY (Visit_ID),
FOREIGN KEY (Tourist_Attraction_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID),
FOREIGN KEY (Tourist_ID) REFERENCES Visitors (Tourist_ID)
);


INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (183, 6653, 377, '2004-08-21 03:06:14', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (268, 5076, 204, '2013-08-06 05:35:51', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (273, 9360, 211, '2013-10-27 09:56:08', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (302, 6476, 377, '1990-08-15 14:24:10', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (356, 6476, 439, '1980-11-26 02:08:00', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (381, 6523, 211, '2017-03-19 08:48:19', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (416, 6476, 841, '2008-11-09 01:28:01', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (479, 6852, 439, '1989-08-24 20:26:37', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (563, 6852, 610, '1993-02-01 15:27:20', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (612, 9919, 204, '2007-09-17 10:12:45', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (729, 6476, 513, '1998-05-12 00:50:20', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (776, 8698, 513, '2010-10-04 01:34:12', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (781, 6852, 779, '2018-01-09 20:39:52', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (866, 8429, 545, '1971-12-16 06:41:26', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (909, 8698, 779, '1998-12-10 02:46:43', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (937, 6523, 541, '1996-01-08 13:23:41', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (962, 9919, 610, '2007-09-03 04:30:01', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (968, 6852, 377, '1974-12-31 23:18:24', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (977, 8698, 500, '2001-11-13 10:08:28', '');
INSERT INTO Visits (`Visit_ID`, `Tourist_Attraction_ID`, `Tourist_ID`, `Visit_Date`, `Visit_Details`) VALUES (999, 2701, 610, '1990-11-12 00:54:50', '');



CREATE TABLE Photos (
Photo_ID INTEGER NOT NULL,
Tourist_Attraction_ID INTEGER NOT NULL,
Name VARCHAR(255),
Description VARCHAR(255),
Filename VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Photo_ID),
FOREIGN KEY (Tourist_Attraction_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (211, 8449, 'game1', NULL, '702', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (280, 7067, 'game2', NULL, '762', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (303, 5076, 'game3', NULL, '392', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (327, 9919, 'fun1', NULL, '820', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (332, 5076, 'fun2', NULL, '060', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (428, 6523, 'fun3', NULL, '148', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (435, 8429, 'fun4', NULL, '453', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (437, 2701, 'fun5', NULL, '128', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (525, 5265, 'park1', NULL, '538', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (534, 6852, 'park2', NULL, '325', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (537, 6653, 'park3', NULL, '695', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (550, 5076, 'din1', NULL, '259', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (558, 8698, 'din2', NULL, '863', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (571, 6653, 'din3', NULL, '864', NULL);
INSERT INTO Photos (`Photo_ID`, `Tourist_Attraction_ID`, `Name`, `Description`, `Filename`, `Other_Details`) VALUES (596, 9561, 'din4', NULL, '141', NULL);


CREATE TABLE Staff (
Staff_ID INTEGER NOT NULL,
Tourist_Attraction_ID INTEGER NOT NULL,
Name VARCHAR(40),
Other_Details VARCHAR(255),
PRIMARY KEY (Staff_ID),
FOREIGN KEY (Tourist_Attraction_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID)
);


INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (170, 6476, 'Whitney', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (219, 6476, 'Kaela', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (237, 7067, 'Eunice', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (249, 5265, 'Kiarra', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (310, 9561, 'Phoebe', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (433, 9360, 'Vickie', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (463, 6653, 'Jannie', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (470, 6523, 'Lenore', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (487, 6852, 'Asia', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (491, 6852, 'Janet', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (532, 6852, 'Elouise', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (591, 9360, 'Gina', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (595, 8698, 'Beth', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (596, 2701, 'Ruthie', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (604, 6852, 'Aurore', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (619, 2113, 'Cortney', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (643, 6523, 'Astrid', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (667, 9561, 'Shemar', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (860, 6476, 'Trinity', NULL);
INSERT INTO Staff (`Staff_ID`, `Tourist_Attraction_ID`, `Name`, `Other_Details`) VALUES (952, 5265, 'Carmella', NULL);




CREATE TABLE Tourist_Attraction_Features (
Tourist_Attraction_ID INTEGER NOT NULL,
Feature_ID INTEGER NOT NULL,
PRIMARY KEY (Tourist_Attraction_ID, Feature_ID),
FOREIGN KEY (Tourist_Attraction_ID) REFERENCES Tourist_Attractions (Tourist_Attraction_ID),
FOREIGN KEY (Feature_ID) REFERENCES Features (Feature_ID)
);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (5076, 528);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (5076, 681);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (5265, 523);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (5265, 955);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (6476, 543);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (6476, 681);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (6476, 955);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (6523, 528);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (6852, 528);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (6852, 955);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (7067, 543);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (8429, 681);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (8449, 528);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (8698, 528);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (8698, 543);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (8698, 681);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (9561, 681);
INSERT INTO Tourist_Attraction_Features (`Tourist_Attraction_ID`, `Feature_ID`) VALUES (9919, 681);
