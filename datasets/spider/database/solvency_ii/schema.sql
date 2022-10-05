PRAGMA foreign_keys = ON;



CREATE TABLE Addresses (
Address_ID INTEGER NOT NULL ,
address_details VARCHAR(255),
PRIMARY KEY (Address_ID),
UNIQUE (Address_ID)
);
CREATE TABLE Locations (
Location_ID INTEGER NOT NULL ,
Other_Details VARCHAR(255),
PRIMARY KEY (Location_ID)
);
CREATE TABLE Products (
Product_ID INTEGER NOT NULL,
Product_Type_Code CHAR(15),
Product_Name VARCHAR(255),
Product_Price DECIMAL(20,4),
PRIMARY KEY (Product_ID),
UNIQUE (Product_ID)
);
CREATE TABLE Parties (
Party_ID INTEGER NOT NULL,
Party_Details VARCHAR(255),
PRIMARY KEY (Party_ID)
);
CREATE TABLE Assets (
Asset_ID INTEGER NOT NULL ,
Other_Details VARCHAR(255),
PRIMARY KEY (Asset_ID)
);
CREATE TABLE Channels (
Channel_ID INTEGER NOT NULL ,
Other_Details VARCHAR(255),
PRIMARY KEY (Channel_ID)
);
CREATE TABLE Finances (
Finance_ID INTEGER NOT NULL ,
Other_Details VARCHAR(255),
PRIMARY KEY (Finance_ID)
);


INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (1, '465 Emely Bypass
West Mafalda, CO 23309');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (2, '669 Carter Trafficway
Port Delbert, OK 66249');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (3, '38247 Ernser Gateway Suite 442
Bogisichland, VT 71460');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (4, '732 Greenholt Valleys
East Marionfort, VT 89477-0433');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (5, '382 Demond Alley
Luellamouth, MT 67912');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (6, '3851 Quigley Flats
O''Reillychester, CA 92522-9526');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (7, '78950 Kamryn Centers
Chelsealand, NE 22947-6129');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (8, '682 Kautzer Forest Apt. 509
Jaydenfurt, NE 85011-5059');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (9, '11093 Balistreri Forge
Gaylordtown, VT 05705');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (10, '9113 Wisoky Glen Apt. 601
Lake Immanuel, UT 01388');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (11, '73409 Linnea Loop Apt. 778
Haagberg, AK 41204-1496');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (12, '8220 Concepcion Neck Suite 394
East Beauview, LA 19968-4755');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (13, '513 Lindgren River
North Scottymouth, IN 85224-1392');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (14, '9694 Wava Roads
Ricechester, DC 70816-9058');
INSERT INTO `Addresses` (`Address_ID`, `address_details`) VALUES (15, '068 O''Connell Tunnel
West Colemanburgh, MO 87777');

INSERT INTO `Assets` (`Asset_ID`, `Other_Details`) VALUES (1, 'Transportation Cars');
INSERT INTO `Assets` (`Asset_ID`, `Other_Details`) VALUES (2, 'Meeting Rooms');
INSERT INTO `Assets` (`Asset_ID`, `Other_Details`) VALUES (3, 'Dinning Tables');

INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (1, '145');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (2, '348');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (3, '933');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (4, '631');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (5, '681');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (6, '993');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (7, '249');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (8, '644');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (9, '668');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (10, '058');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (11, '163');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (12, '285');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (13, '943');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (14, '292');
INSERT INTO `Channels` (`Channel_ID`, `Other_Details`) VALUES (15, '177');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (1, 'Mutual');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (2, 'Good');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (3, 'Bad');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (4, 'Mutual');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (5, 'Bad');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (6, 'Good');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (7, 'Good');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (8, 'Mutual');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (9, 'Bad');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (10, 'Bad');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (11, 'Mutual');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (12, 'Mutual');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (13, 'Good');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (14, 'Good');
INSERT INTO `Finances` (`Finance_ID`, `Other_Details`) VALUES (15, 'Mutual');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (1, 'Rowe PLC');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (2, 'Ebert, Green and Bogisich');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (3, 'Prohaska LLC');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (4, 'White, Kassulke and Barrows');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (5, 'Wintheiser-Sauer');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (6, 'Morar-Denesik');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (7, 'Rowe-Stoltenberg');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (8, 'Price-Lynch');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (9, 'Ryan-Wyman');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (10, 'Hilll Ltd');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (11, 'Fritsch LLC');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (12, 'Kuvalis-Goodwin');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (13, 'Sanford Inc');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (14, 'Waelchi-Wehner');
INSERT INTO `Locations` (`Location_ID`, `Other_Details`) VALUES (15, 'Daugherty, Nader and Balistreri');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (3, 'European People''s Party');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (4, 'European Free Alliance');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (5, 'European Alliance for Freedom');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (6, 'European Christian Political Movement');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (7, 'Movement for a Europe of Nations and Freedom');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (8, 'Alliance of Liberals and Democrats for Europe');
INSERT INTO `Parties` (`Party_ID`, `Party_Details`) VALUES (9, 'EUDemocrats');

INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (1, 'Books', 'Business Policy', '1336.2600');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (3, 'Food', 'Special Dinning', '2894.9400');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (5, 'Clothes', 'Men suits', '3298.8400');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (6, 'Electronics', 'TV Equipments', '932.2500');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (7, 'Books', 'Business Policy B', '3215.6600');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (10, 'Electronics', 'TV Equipments', '4427.4900');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (11, 'Electronics', 'Conference Equipments', '3289.4700');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (18, 'Books', 'Trading Policy', '3228.4900');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (20, 'Books', 'Trading Policy B', '4343.8300');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (22, 'Food', 'Dinning', '3574.5600');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (24, 'Food', 'Dinning', '4895.8600');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (26, 'Food', 'Dinning', '2339.9700');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (29, 'Food', 'Special Dinning', '502.1500');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (34, 'Electronics', 'TV Equipments', '970.7700');
INSERT INTO `Products` (`Product_ID`, `Product_Type_Code`, `Product_Name`, `Product_Price`) VALUES (45, 'Clothes', 'Men suits', '3541.1700');



CREATE TABLE Events (
Event_ID INTEGER NOT NULL ,
Address_ID INTEGER,
Channel_ID INTEGER NOT NULL,
Event_Type_Code CHAR(15),
Finance_ID INTEGER NOT NULL,
Location_ID INTEGER NOT NULL,
PRIMARY KEY (Event_ID),
UNIQUE (Event_ID),
FOREIGN KEY (Location_ID) REFERENCES Locations (Location_ID),
FOREIGN KEY (Address_ID) REFERENCES Addresses (Address_ID),
FOREIGN KEY (Finance_ID) REFERENCES Finances (Finance_ID)
);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (1, 3, 12, 'Trade Show', 2, 13);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (2, 15, 13, 'Press Conferenc', 8, 11);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (3, 12, 1, 'Press Conferenc', 12, 6);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (4, 13, 10, 'Ceremonies', 7, 6);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (5, 9, 4, 'Trade Show', 15, 6);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (6, 15, 12, 'Seminar', 15, 9);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (7, 15, 6, 'Trade Show', 13, 15);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (8, 3, 15, 'Trade Show', 1, 6);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (9, 12, 3, 'Press Conferenc', 3, 11);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (10, 15, 10, 'Conference', 7, 12);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (11, 10, 4, 'Trade Show', 2, 8);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (12, 14, 9, 'Trade Show', 14, 7);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (13, 12, 13, 'Trade Show', 12, 12);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (14, 10, 11, 'Seminar', 5, 10);
INSERT INTO `Events` (`Event_ID`, `Address_ID`, `Channel_ID`, `Event_Type_Code`, `Finance_ID`, `Location_ID`) VALUES (15, 2, 2, 'Conference', 10, 5);

CREATE TABLE Products_in_Events (
Product_in_Event_ID INTEGER NOT NULL,
Event_ID INTEGER NOT NULL,
Product_ID INTEGER NOT NULL,
PRIMARY KEY (Product_in_Event_ID),
FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID),
FOREIGN KEY (Product_ID) REFERENCES Products (Product_ID)
);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (13, 4, 29);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (23, 8, 3);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (32, 14, 10);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (33, 5, 18);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (43, 4, 45);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (46, 7, 3);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (50, 14, 6);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (61, 7, 3);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (63, 6, 34);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (64, 15, 6);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (69, 8, 20);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (74, 1, 6);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (79, 4, 45);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (90, 14, 26);
INSERT INTO `Products_in_Events` (`Product_in_Event_ID`, `Event_ID`, `Product_ID`) VALUES (99, 10, 11);


CREATE TABLE Parties_in_Events (
Party_ID INTEGER NOT NULL,
Event_ID INTEGER NOT NULL,
Role_Code CHAR(15),
PRIMARY KEY (Party_ID, Event_ID),
FOREIGN KEY (Party_ID) REFERENCES Parties (Party_ID),
FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID)
);
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (3, 7, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (3, 8, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (4, 1, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (4, 3, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (4, 8, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (5, 9, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (5, 10, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (5, 15, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (6, 6, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (6, 12, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (6, 13, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (9, 3, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (9, 4, 'Participant');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (9, 10, 'Organizer');
INSERT INTO `Parties_in_Events` (`Party_ID`, `Event_ID`, `Role_Code`) VALUES (9, 12, 'Organizer');

CREATE TABLE Agreements (
Document_ID INTEGER NOT NULL ,
Event_ID INTEGER NOT NULL,
PRIMARY KEY (Document_ID),
FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID)
);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (13, 5);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (9, 6);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (6, 8);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (11, 8);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (4, 9);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (12, 9);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (7, 10);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (5, 11);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (10, 11);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (14, 12);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (1, 13);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (2, 13);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (3, 15);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (8, 15);
INSERT INTO `Agreements` (`Document_ID`, `Event_ID`) VALUES (15, 15);

CREATE TABLE Assets_in_Events (
Asset_ID INTEGER NOT NULL,
Event_ID INTEGER NOT NULL,
PRIMARY KEY (Asset_ID, Event_ID),
FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID),
FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID)
);

INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (1, 4);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (1, 5);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (1, 9);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (1, 10);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (2, 8);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (2, 14);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (3, 2);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (3, 5);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (3, 8);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (3, 9);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (3, 10);
INSERT INTO `Assets_in_Events` (`Asset_ID`, `Event_ID`) VALUES (3, 12);

