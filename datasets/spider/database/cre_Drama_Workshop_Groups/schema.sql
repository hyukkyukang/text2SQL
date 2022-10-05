PRAGMA foreign_keys = ON;

CREATE TABLE Ref_Payment_Methods (
payment_method_code CHAR(10) NOT NULL,
payment_method_description VARCHAR(80),
PRIMARY KEY (payment_method_code),
UNIQUE (payment_method_code)
);
INSERT INTO Ref_Payment_Methods (`payment_method_code`, `payment_method_description`) VALUES ('American E', 'credit');
INSERT INTO Ref_Payment_Methods (`payment_method_code`, `payment_method_description`) VALUES ('MasterCard', 'debit');
INSERT INTO Ref_Payment_Methods (`payment_method_code`, `payment_method_description`) VALUES ('Visa', 'Visa');

CREATE TABLE Ref_Service_Types (
Service_Type_Code CHAR(15) NOT NULL,
Parent_Service_Type_Code CHAR(15),
Service_Type_Description VARCHAR(255),
PRIMARY KEY (Service_Type_Code),
UNIQUE (Service_Type_Code)
);

INSERT INTO Ref_Service_Types ( `Service_Type_Code`,`Parent_Service_Type_Code`,`Service_Type_Description`) VALUES ('1','1','provide photo service');
INSERT INTO Ref_Service_Types ( `Service_Type_Code`,`Parent_Service_Type_Code`,`Service_Type_Description`) VALUES ('2','1','provide dinning service');
INSERT INTO Ref_Service_Types ( `Service_Type_Code`,`Parent_Service_Type_Code`,`Service_Type_Description`) VALUES ('3','1','provide filming service');
INSERT INTO Ref_Service_Types ( `Service_Type_Code`,`Parent_Service_Type_Code`,`Service_Type_Description`) VALUES ('4','1','provide adv promoting service');



CREATE TABLE Addresses (
Address_ID VARCHAR(100) NOT NULL,
Line_1 VARCHAR(255),
Line_2 VARCHAR(255),
City_Town VARCHAR(255),
State_County VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Address_ID),
UNIQUE (Address_ID)
);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('110', '4753 Dach Highway', 'Suite 846', 'Feliciaberg', 'Florida', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('124', '391 Vandervort Fall Apt. 446', 'Apt. 107', 'West Sherwoodstad', 'Indiana', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('148', '809 Izabella Islands', 'Suite 271', 'Schadenville', 'Ohio', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('15', '3720 Vito View Apt. 148', 'Apt. 584', 'New Jaquelinmouth', 'Ohio', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('180', '8835 Boehm Greens', 'Apt. 741', 'Chrisside', 'Maryland', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('19', '77667 Nathan Union Apt. 606', 'Apt. 114', 'Desireefort', 'WestVirginia', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('192', '545 Lula Mission', 'Suite 311', 'East Aracely', 'Oklahoma', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('201', '2893 Jenkins Station Suite 815', 'Suite 570', 'Monahanshire', 'Kentucky', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('207', '87789 Reilly Canyon Suite 872', 'Apt. 136', 'Rueckermouth', 'Maryland', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('230', '0855 Ziemann Island', 'Apt. 597', 'Purdyville', 'SouthCarolina', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('266', '2082 Runolfsson Cliffs', 'Apt. 460', 'Macejkovicchester', 'Alaska', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('286', '51237 Maiya Center', 'Suite 714', 'New Lonzoville', 'Nebraska', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('314', '70561 Vicenta Islands Apt. 873', 'Apt. 352', 'Cronaborough', 'Ohio', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('362', '384 Fahey Flat Apt. 886', 'Suite 583', 'South Birdie', 'Pennsylvania', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('369', '899 Okuneva Haven', 'Apt. 615', 'Jasthaven', 'Delaware', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('374', '956 Aliyah Cape', 'Suite 226', 'South Eugenia', 'Washington', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('383', '788 Flossie Junction Apt. 770', 'Apt. 861', 'Nataliamouth', 'WestVirginia', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('39', '9799 Andres Shoal', 'Apt. 012', 'North Antonina', 'SouthDakota', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('74', '8682 Boyle Glen', 'Apt. 012', 'Lindberg', 'Alabama', NULL);
INSERT INTO Addresses (`Address_ID`, `Line_1`, `Line_2`, `City_Town`, `State_County`, `Other_Details`) VALUES ('98', '32128 Klocko Oval', 'Suite 184', 'Port Maximeview', 'Arizona', NULL);



CREATE TABLE Products (
Product_ID VARCHAR(100) NOT NULL,
Product_Name VARCHAR(255),
Product_Price DECIMAL(20,4),
Product_Description VARCHAR(255),
Other_Product_Service_Details VARCHAR(255),
PRIMARY KEY (Product_ID),
UNIQUE (Product_ID)
);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('11', 'photo', '4448536.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('154', 'film', '2302.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('156', 'film', '17622723.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('179', 'film', '1432324.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('188', 'film', '49097627.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('21', 'photo', '22082866.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('216', 'film', '157216.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('232', 'photo', '22.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('233', 'photo', '4082352.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('250', 'photo', '797.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('273', 'photo', '1577.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('300', 'dinning', '30625.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('46', 'dinning', '50828.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('81', 'dinning', '634660.0000', NULL, NULL);
INSERT INTO Products (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Description`, `Other_Product_Service_Details`) VALUES ('83', 'film', '900.0000', NULL, NULL);


CREATE TABLE Marketing_Regions (
Marketing_Region_Code CHAR(15) NOT NULL,
Marketing_Region_Name VARCHAR(255) NOT NULL,
Marketing_Region_Descriptrion VARCHAR(255) NOT NULL,
Other_Details VARCHAR(255),
PRIMARY KEY (Marketing_Region_Code),
UNIQUE (Marketing_Region_Code)
);

INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('CA', 'Canada', 'Our target market', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('CN', 'China', 'Our largest market', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('ES', 'Spain', '', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('FR', 'France', '', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('IN', 'India', '', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('MX', 'Mexico', '', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('RU', 'Russia', '', NULL);
INSERT INTO Marketing_Regions (`Marketing_Region_Code`, `Marketing_Region_Name`, `Marketing_Region_Descriptrion`, `Other_Details`) VALUES ('US', 'United States', 'Our main market', NULL);


CREATE TABLE Clients (
Client_ID INTEGER NOT NULL,
Address_ID INTEGER NOT NULL,
Customer_Email_Address VARCHAR(255),
Customer_Name VARCHAR(255),
Customer_Phone VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Client_ID),
UNIQUE (Client_ID),
FOREIGN KEY (Address_ID) REFERENCES Addresses (Address_ID)
);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (423, 201, 'branson94@example.net', 'Clifford', '(042)912-3404x5135', 'VIP');
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (426, 383, 'alba04@example.com', 'Bettye', '(604)849-0214', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (478, 15, 'westley30@example.net', 'Reinhold', '1-048-214-4640x64380', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (508, 98, 'hudson.kristina@example.net', 'Jack', '(966)022-6448x3428', 'Super VIP');
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (509, 286, 'white.alysa@example.com', 'Rosanna', '(651)611-6111x61144', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (527, 74, 'buddy98@example.org', 'Kelton', '581.457.6800', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (591, 98, 'considine.shyanne@example.net', 'Connor', '1-479-550-1510x89172', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (605, 15, 'strosin.keara@example.com', 'Garfield', '+63(3)8897932425', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (628, 383, 'cconn@example.net', 'Urban', '405.225.1435', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (631, 374, 'qaltenwerth@example.com', 'Vita', '1-299-766-5382x3122', 'VIP');
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (699, 98, 'lbalistreri@example.net', 'Rory', '1-431-563-2576x9849', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (735, 110, 'dina.gutmann@example.net', 'Arvid', '(745)818-8559x747', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (768, 369, 'rempel.jamison@example.com', 'Consuelo', '(729)754-0764x6020', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (775, 383, 'jklocko@example.net', 'Alvis', '+12(5)4915316228', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (776, 374, 'lacy92@example.com', 'Tevin', '08761812417', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (868, 74, 'boyer.carleton@example.com', 'Krista', '(066)903-6363', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (887, 39, 'vparker@example.net', 'Genesis', '1-121-643-1101', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (938, 180, 'cleora.strosin@example.org', 'Horace', '935-161-0948x33010', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (943, 39, 'kbailey@example.com', 'Marquis', '398-003-6983x1691', NULL);
INSERT INTO Clients (`Client_ID`, `Address_ID`, `Customer_Email_Address`, `Customer_Name`, `Customer_Phone`, `Other_Details`) VALUES (953, 362, 'conn.josiane@example.com', 'Malcolm', '(995)964-6385', NULL);


CREATE TABLE Drama_Workshop_Groups (
Workshop_Group_ID INTEGER NOT NULL,
Address_ID INTEGER NOT NULL,
Currency_Code CHAR(15) NOT NULL,
Marketing_Region_Code CHAR(15) NOT NULL,
Store_Name VARCHAR(255),
Store_Phone VARCHAR(255),
Store_Email_Address VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Workshop_Group_ID),
UNIQUE (Workshop_Group_ID),
FOREIGN KEY (Address_ID) REFERENCES Addresses (Address_ID)
);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (136, 383, 'EU', 'FR', 'Amely Cafe', '122-084-8029', 'amely.ruecker@example.com', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (140, 180, 'EU', 'DE', 'Veda Film', '793-966-9311x5303', 'breitenberg.veda@example.com', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (176, 286, 'EU', 'RU', 'Queen Art', '492-463-5967', 'quigley.queen@example.org', 'Good');
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (314, 369, 'EU', 'RU', 'Kole Photo', '(256)743-0310', 'kole.torp@example.org', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (382, 266, 'USD', 'US', 'WAT Food', '(411)133-9128', 'watsica.hettie@example.com', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (405, 207, 'EU', 'ES', 'Hansen Print', '1-764-337-3453', 'hansen.krista@example.net', 'Good');
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (415, 383, 'EU', 'RU', 'Roo Place', '(422)705-5633', 'roosevelt61@example.com', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (431, 110, 'USD', 'MX', 'Uhuels Fruit', '(636)443-4067', 'uhuels@example.net', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (470, 369, 'USD', 'DE', 'Harry Beef', '(904)958-9909x0087', 'harry.nicolas@example.org', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (685, 201, 'EU', 'RU', 'Welch Flower', '334-591-4561x465', 'welch.colby@example.net', 'Bad');
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (708, 230, 'EU', 'RU', 'Kling Workshop', '499-032-2149', 'katherine.kling@example.org', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (735, 286, 'EU', 'FR', 'Orn News', '+60(6)8081312118', 'arturo.orn@example.org', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (838, 124, 'EU', 'RU', 'Bednar Film', '1-351-773-1587x95545', 'bednar.michael@example.org', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (942, 98, 'EU', 'IE', 'Kessler Exploration', '(020)161-0983x567', 'kessler.maximillia@example.net', NULL);
INSERT INTO Drama_Workshop_Groups (`Workshop_Group_ID`, `Address_ID`, `Currency_Code`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES (954, 374, 'EU', 'PT', 'Warino Photo', '1-811-875-3222', 'waino.king@example.com', NULL);



CREATE TABLE Performers (
Performer_ID INTEGER NOT NULL,
Address_ID INTEGER NOT NULL,
Customer_Name VARCHAR(255),
Customer_Phone VARCHAR(255),
Customer_Email_Address VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Performer_ID),
UNIQUE (Performer_ID),
FOREIGN KEY (Address_ID) REFERENCES Addresses (Address_ID)
);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (153, 124, 'Shawna', '664.495.1939', 'krogahn@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (211, 124, 'Ashley', '893-536-8857', 'preston45@example.net', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (313, 39, 'Oren', '1-952-052-6685x28082', 'ferry.carolina@example.net', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (341, 110, 'Issac', '08639382978', 'wisozk.john@example.org', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (360, 207, 'Shaniya', '472.072.6649x4161', 'wschroeder@example.org', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (376, 180, 'Peyton', '905.705.9514', 'clotilde04@example.net', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (379, 192, 'Trudie', '782-118-0067', 'trey88@example.net', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (415, 110, 'Gwen', '342-389-0010x682', 'okub@example.org', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (433, 110, 'Doyle', '547.535.3455', 'otilia.ortiz@example.net', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (448, 192, 'Fritz', '858.603.7004', 'cummings.matteo@example.com', 'Did not pay');
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (466, 374, 'Tyrique', '1-417-019-8634', 'cokuneva@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (650, 15, 'Keanu', '(654)496-1642x31167', 'hudson.cristobal@example.net', 'Did not pay');
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (656, 148, 'Dariana', '320.705.7190x0354', 'hbreitenberg@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (798, 266, 'Sid', '1-260-605-6483', 'kellen89@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (808, 374, 'Vernon', '+11(1)8172674604', 'ianderson@example.com', 'Pay good tips');
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (832, 124, 'Marques', '087-833-4617x095', 'joel24@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (882, 207, 'Destiney', '(054)005-5168', 'jennyfer81@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (904, 314, 'Jeanie', '323-787-3435x31522', 'anderson34@example.net', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (954, 362, 'Joannie', '1-856-024-7910x2017', 'chaim10@example.com', NULL);
INSERT INTO Performers (`Performer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES (976, 19, 'Elyse', '483.180.0168x1288', 'myrtice.satterfield@example.net', NULL);


CREATE TABLE Customers (
Customer_ID VARCHAR(100) NOT NULL,
Address_ID INTEGER NOT NULL,
Customer_Name VARCHAR(255),
Customer_Phone VARCHAR(255),
Customer_Email_Address VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Customer_ID),
UNIQUE (Customer_ID),
FOREIGN KEY (Address_ID) REFERENCES Addresses (Address_ID)
);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('240', 286, 'Harold', '624-096-7791', 'jerde.harmon@example.com', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('267', 98, 'Federico', '914-915-7483', 'johnson27@example.com', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('304', 369, 'Samson', '1-463-121-4086x655', 'dalton75@example.com', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('418', 369, 'Daryl', '(191)727-6065x6351', 'hickle.jazmyn@example.org', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('516', 110, 'Robert', '903.657.6967x467', 'fheathcote@example.com', 'VIP');
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('518', 180, 'Jacques', '02902266118', 'eleannon@example.org', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('546', 266, 'Davonte', '(941)313-1839x94608', 'keanu70@example.net', 'VIP');
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('556', 19, 'Blake', '056.568.7725', 'clemens43@example.org', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('633', 148, 'Elwyn', '388.863.3459x0915', 'ggrant@example.com', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('712', 266, 'Alek', '398.352.1753', 'terry.nels@example.com', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('714', 230, 'Adelbert', '(514)659-1318x46123', 'hermann.veum@example.org', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('793', 74, 'Isaiah', '347.178.3326', 'dudley08@example.net', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('823', 383, 'Ephraim', '03189033909', 'gage.johns@example.org', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('957', 207, 'Cedrick', '620-987-5897', 'nschmidt@example.org', NULL);
INSERT INTO Customers (`Customer_ID`, `Address_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Email_Address`, `Other_Details`) VALUES ('998', 201, 'Wade', '+46(5)7576252034', 'cassin.cielo@example.org', NULL);


CREATE TABLE Stores (
Store_ID VARCHAR(100) NOT NULL,
Address_ID INTEGER NOT NULL,
Marketing_Region_Code CHAR(15) NOT NULL,
Store_Name VARCHAR(255),
Store_Phone VARCHAR(255),
Store_Email_Address VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Store_ID),
UNIQUE (Store_ID),
FOREIGN KEY (Address_ID) REFERENCES Addresses (Address_ID),
FOREIGN KEY (Marketing_Region_Code) REFERENCES Marketing_Regions (Marketing_Region_Code)
);
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('150', 286, 'IN', 'FJA Filming', '+65(1)3590790358', 'fjacobson@example.com', NULL);
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('229', 266, 'CA', 'Rob Dinning', '1-327-185-9368', 'rborer@example.org', '5 stars');
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('231', 230, 'ES', 'Adan Dinning', '896-931-9633x869', 'adan93@example.com', NULL);
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('236', 74, 'CA', 'Fred Dinning', '893-457-3102x4293', 'frederik37@example.org', NULL);
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('291', 266, 'RU', 'Ewi Filming', '+46(1)1411714927', 'ewisoky@example.org', NULL);
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('344', 369, 'ES', 'Shery Photo', '1-678-902-9434x1148', 'shirley07@example.net', '4 stars');
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('421', 192, 'FR', 'Carmol Photo', '(941)444-7666x7089', 'carmel04@example.com', '3 stars');
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('444', 110, 'CN', 'FK Filming', '086-705-8793', 'fkuvalis@example.net', NULL);
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('512', 369, 'CA', 'Adam Photo', '127.870.0753x54565', 'adams.miles@example.net', '5 stars');
INSERT INTO Stores (`Store_ID`, `Address_ID`, `Marketing_Region_Code`, `Store_Name`, `Store_Phone`, `Store_Email_Address`, `Other_Details`) VALUES ('518', 110, 'ES', 'Lur Photo', '605-319-8245', 'lurline24@example.org', NULL);


CREATE TABLE Bookings (
Booking_ID INTEGER NOT NULL ,
Customer_ID INTEGER NOT NULL,
Workshop_Group_ID VARCHAR(100) NOT NULL,
Status_Code CHAR(15) NOT NULL,
Store_ID INTEGER NOT NULL,
Order_Date DATETIME NOT NULL,
Planned_Delivery_Date DATETIME NOT NULL,
Actual_Delivery_Date DATETIME NOT NULL,
Other_Order_Details VARCHAR(255),
PRIMARY KEY (Booking_ID),
UNIQUE (Booking_ID),
FOREIGN KEY (Customer_ID) REFERENCES Clients (Client_ID),
FOREIGN KEY (Workshop_Group_ID) REFERENCES Drama_Workshop_Groups (Workshop_Group_ID)
);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (1, 938, '140', 'good', 8, '2016-12-12 10:43:01', '2013-03-10 18:47:05', '1997-11-21 10:07:40', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (2, 868, '838', 'stop', 7, '1976-08-20 00:33:08', '2009-07-09 09:18:38', '1976-01-08 07:19:23', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (3, 735, '176', 'good', 9, '1975-11-23 06:28:47', '1989-01-05 19:24:45', '1990-03-16 19:38:47', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (4, 527, '708', 'stop', 6, '1995-02-02 15:52:57', '2017-04-27 00:16:00', '1996-10-24 21:15:27', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (5, 591, '176', 'good', 9, '1995-05-10 14:49:47', '1979-07-19 19:44:01', '1971-01-13 13:24:52', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (6, 953, '735', 'good', 1, '1992-11-26 18:11:10', '2016-06-06 20:35:14', '2016-04-30 11:45:39', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (7, 735, '954', 'stop', 4, '1975-12-30 14:12:32', '2008-07-18 18:15:40', '1983-10-09 10:48:48', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (8, 605, '176', 'good', 2, '1992-05-11 23:22:41', '1973-04-02 03:10:21', '1983-07-01 22:10:19', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (9, 508, '405', 'good', 4, '1971-05-11 06:53:01', '1974-05-07 21:40:39', '1986-10-04 13:31:10', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (10, 938, '735', 'good', 4, '1982-05-19 05:37:51', '1999-05-11 01:26:06', '1989-11-17 00:32:13', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (11, 423, '136', 'good', 4, '1991-10-11 17:24:15', '1978-04-10 12:23:59', '1983-02-07 20:27:10', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (12, 776, '954', 'good', 5, '1984-12-17 12:53:51', '2014-06-05 10:19:46', '1985-09-02 11:34:39', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (13, 605, '685', 'good', 6, '1996-09-14 10:17:55', '1993-04-17 23:53:01', '1982-04-18 02:59:08', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (14, 426, '954', 'stop', 6, '2007-08-05 15:46:29', '1971-06-29 03:04:47', '1995-12-21 05:01:38', NULL);
INSERT INTO Bookings (`Booking_ID`, `Customer_ID`, `Workshop_Group_ID`, `Status_Code`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (15, 426, '176', 'stop', 8, '1976-10-24 07:40:47', '1972-06-25 15:51:34', '2004-02-22 04:37:14', NULL);


CREATE TABLE Performers_in_Bookings (
Order_ID INTEGER NOT NULL,
Performer_ID INTEGER NOT NULL,
PRIMARY KEY (Order_ID, Performer_ID),
FOREIGN KEY (Performer_ID) REFERENCES Performers (Performer_ID),
FOREIGN KEY (Order_ID) REFERENCES Bookings (Booking_ID)
);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (1, 153);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (1, 341);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (2, 466);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (3, 798);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (4, 313);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (7, 882);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (8, 650);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (8, 976);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (9, 376);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (9, 656);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (9, 954);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (11, 360);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (13, 313);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (13, 808);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (15, 313);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (15, 656);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (15, 832);
INSERT INTO Performers_in_Bookings (`Order_ID`, `Performer_ID`) VALUES (15, 904);


CREATE TABLE Customer_Orders (
Order_ID INTEGER NOT NULL ,
Customer_ID INTEGER NOT NULL,
Store_ID INTEGER NOT NULL,
Order_Date DATETIME NOT NULL,
Planned_Delivery_Date DATETIME NOT NULL,
Actual_Delivery_Date DATETIME NOT NULL,
Other_Order_Details VARCHAR(255),
PRIMARY KEY (Order_ID),
UNIQUE (Order_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID),
FOREIGN KEY (Store_ID) REFERENCES Stores (Store_ID)
);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (1, 516, 231, '1994-08-03 12:34:58', '1977-03-11 03:58:19', '1992-07-21 22:11:11', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (2, 418, 229, '2014-07-10 10:56:01', '1996-08-26 19:19:59', '1998-08-22 17:57:32', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (3, 712, 229, '1981-06-20 16:29:43', '1980-12-19 05:49:35', '2011-04-13 07:15:35', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (4, 240, 229, '1999-11-20 18:48:05', '1973-08-20 08:52:39', '2004-03-27 23:30:12', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (5, 418, 150, '1973-02-16 19:28:34', '1990-09-25 07:14:01', '2004-04-23 21:19:39', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (6, 556, 344, '1988-11-13 15:42:13', '2012-05-19 00:38:52', '2015-06-20 20:51:17', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (7, 546, 291, '1998-03-10 14:01:00', '2014-06-18 09:42:23', '1972-08-15 19:12:14', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (8, 240, 231, '1979-09-01 06:29:01', '1996-05-17 09:10:57', '1996-02-16 04:20:17', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (9, 240, 344, '1993-11-22 14:56:28', '1984-05-07 12:05:33', '1976-05-20 03:24:23', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (10, 546, 518, '1985-05-29 01:20:18', '1977-07-08 16:35:46', '2003-12-16 23:37:19', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (11, 304, 421, '2000-07-03 21:41:50', '1994-08-08 03:08:23', '1990-11-14 03:53:06', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (12, 516, 231, '2011-01-05 08:01:07', '2004-04-24 01:52:57', '1993-09-16 23:20:05', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (13, 240, 512, '2003-06-24 11:44:51', '1979-05-15 03:00:09', '2011-04-23 06:39:09', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (14, 546, 444, '1971-05-12 10:12:46', '1987-03-21 18:50:27', '2016-10-18 16:11:20', NULL);
INSERT INTO Customer_Orders (`Order_ID`, `Customer_ID`, `Store_ID`, `Order_Date`, `Planned_Delivery_Date`, `Actual_Delivery_Date`, `Other_Order_Details`) VALUES (15, 712, 231, '2008-04-02 18:00:15', '1994-11-12 04:49:11', '1996-04-13 19:05:34', NULL);

CREATE TABLE Order_Items (
Order_Item_ID INTEGER NOT NULL ,
Order_ID INTEGER NOT NULL,
Product_ID INTEGER NOT NULL,
Order_Quantity VARCHAR(288),
Other_Item_Details VARCHAR(255),
PRIMARY KEY (Order_Item_ID),
FOREIGN KEY (Order_ID) REFERENCES Customer_Orders (Order_ID),
FOREIGN KEY (Product_ID) REFERENCES Products (Product_ID)
);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (1, 3, 233, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (2, 15, 300, '2', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (3, 12, 300, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (4, 4, 273, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (5, 3, 46, '2', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (6, 5, 83, '2', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (7, 10, 179, '2', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (8, 4, 156, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (9, 12, 216, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (10, 11, 46, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (11, 2, 300, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (12, 12, 156, '2', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (13, 6, 233, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (14, 1, 81, '1', NULL);
INSERT INTO Order_Items (`Order_Item_ID`, `Order_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (15, 7, 300, '2', NULL);

CREATE TABLE Invoices (
Invoice_ID INTEGER NOT NULL,
Order_ID INTEGER NOT NULL,
payment_method_code CHAR(15),
Product_ID INTEGER NOT NULL,
Order_Quantity VARCHAR(288),
Other_Item_Details VARCHAR(255),
Order_Item_ID INTEGER NOT NULL,
PRIMARY KEY (Invoice_ID),
FOREIGN KEY (Order_ID) REFERENCES Customer_Orders (Order_ID),
FOREIGN KEY (Order_ID) REFERENCES Bookings (Booking_ID),
FOREIGN KEY (payment_method_code) REFERENCES Ref_Payment_Methods (payment_method_code)
);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (128, 14, 'MasterCard', 4, 2, NULL, 1);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (162, 13, 'MasterCard', 9, 2, NULL, 9);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (164, 7, 'Visa', 7, 2, NULL, 1);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (212, 8, 'Visa', 4, 2, NULL, 8);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (272, 10, 'American E', 3, 2, NULL, 5);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (398, 3, 'American E', 4, 1, NULL, 5);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (406, 14, 'MasterCard', 7, 2, NULL, 1);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (483, 7, 'Visa', 8, 1, NULL, 3);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (548, 4, 'MasterCard', 3, 1, NULL, 1);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (587, 1, 'American E', 4, 2, NULL, 1);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (612, 6, 'American E', 3, 1, NULL, 8);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (633, 11, 'Visa', 2, 1, NULL, 7);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (679, 12, 'MasterCard', 9, 2, NULL, 8);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (733, 11, 'Visa', 6, 1, NULL, 4);
INSERT INTO Invoices (`Invoice_ID`, `Order_ID`, `payment_method_code`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`, `Order_Item_ID`) VALUES (777, 7, 'MasterCard', 6, 2, NULL, 7);


CREATE TABLE Services (
Service_ID INTEGER NOT NULL,
Service_Type_Code CHAR(15),
Workshop_Group_ID INTEGER NOT NULL,
Product_Description VARCHAR(255),
Product_Name VARCHAR(255),
Product_Price DECIMAL(20,4),
Other_Product_Service_Details VARCHAR(255),
PRIMARY KEY (Service_ID),
UNIQUE (Service_ID),
FOREIGN KEY (Workshop_Group_ID) REFERENCES Drama_Workshop_Groups (Workshop_Group_ID),
FOREIGN KEY (Service_Type_Code) REFERENCES Ref_Service_Types (Service_Type_Code)
);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (191, '1', 415, NULL, 'film', '58932775.8822', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (219, '2', 838, NULL, 'film', '2704.4719', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (220, '1', 708, NULL, 'dinning', '6888.8306', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (396, '3', 735, NULL, 'photo', '31862.0853', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (414, '2', 954, NULL, 'photo', '213.9459', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (421, '3', 470, NULL, 'photo', '8004.9880', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (525, '4', 838, NULL, 'photo', '3499362.8145', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (597, '2', 735, NULL, 'photo', '5396.2935', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (630, '4', 176, NULL, 'photo', '19845767.8923', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (640, '2', 382, NULL, 'dinning', '7299.6747', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (662, '2', 954, NULL, 'dinning', '641544.2835', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (773, '3', 314, NULL, 'dinning', '827055.7309', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (779, '1', 431, NULL, 'film', '9130.7326', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (798, '1', 176, NULL, 'film', '84063402.4351', NULL);
INSERT INTO Services (`Service_ID`, `Service_Type_Code`, `Workshop_Group_ID`, `Product_Description`, `Product_Name`, `Product_Price`, `Other_Product_Service_Details`) VALUES (840, '1', 405, NULL, 'film', '187358.6469', NULL);



CREATE TABLE Bookings_Services (
Order_ID INTEGER NOT NULL,
Product_ID INTEGER NOT NULL,
PRIMARY KEY (Order_ID, Product_ID),
FOREIGN KEY (Order_ID) REFERENCES Bookings (Booking_ID),
FOREIGN KEY (Product_ID) REFERENCES Services (Service_ID)
);

INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (1, 396);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (1, 779);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (4, 191);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (4, 414);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (5, 773);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (7, 191);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (7, 640);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (8, 414);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (9, 630);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (12, 597);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (13, 396);
INSERT INTO Bookings_Services (`Order_ID`, `Product_ID`) VALUES (14, 525);



CREATE TABLE Invoice_Items (
Invoice_Item_ID INTEGER NOT NULL ,
Invoice_ID INTEGER NOT NULL,
Order_ID INTEGER NOT NULL,
Order_Item_ID INTEGER NOT NULL,
Product_ID INTEGER NOT NULL,
Order_Quantity INTEGER,
Other_Item_Details VARCHAR(255),
PRIMARY KEY (Invoice_Item_ID),
FOREIGN KEY (Order_Item_ID) REFERENCES Order_Items (Order_Item_ID),
FOREIGN KEY (Invoice_ID) REFERENCES Invoices (Invoice_ID),
FOREIGN KEY (Order_ID, Product_ID) REFERENCES Bookings_Services (Order_ID,Product_ID)
);
INSERT INTO Invoice_Items (`Invoice_Item_ID`, `Invoice_ID`, `Order_ID`, `Order_Item_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (1, 128, 1, 5, 396, 2, NULL);
INSERT INTO Invoice_Items (`Invoice_Item_ID`, `Invoice_ID`, `Order_ID`, `Order_Item_ID`, `Product_ID`, `Order_Quantity`, `Other_Item_Details`) VALUES (2, 162, 4, 6, 191, 6, 'Good quality');
