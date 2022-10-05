PRAGMA foreign_keys = ON;
CREATE TABLE Customers (
Customer_ID INTEGER NOT NULL,
Customer_Details VARCHAR(255) NOT NULL,
PRIMARY KEY (Customer_ID)
);
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (1, 'America Jaskolski');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (2, 'Ellsworth Paucek');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (3, 'Mrs. Hanna Willms');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (4, 'Dr. Diana Rath');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (5, 'Selena Gerhold');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (6, 'Lauriane Ferry PhD');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (7, 'Sydnie Friesen');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (8, 'Dayana Robel');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (9, 'Mr. Edwardo Blanda I');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (10, 'Augustine Kerluke');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (11, 'Buddy Marquardt');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (12, 'Mr. Randal Lynch III');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (13, 'Mrs. Liza Heller V');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (14, 'Mrs. Lilly Graham III');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (15, 'Miss Felicita Reichel');

CREATE TABLE Customer_Policies (
Policy_ID INTEGER NOT NULL,
Customer_ID INTEGER NOT NULL,
Policy_Type_Code CHAR(15) NOT NULL,
Start_Date DATE,
End_Date DATE,
PRIMARY KEY (Policy_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID)
);

INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (119, 1, 'Car', '2018-01-21', '2017-12-15');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (141, 2, 'Life', '2017-08-21', '2017-09-29');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (143, 3, 'Car', '2017-06-16', '2017-12-09');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (218, 4, 'Car', '2017-09-18', '2017-11-23');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (264, 4, 'Car', '2016-12-25', '2018-01-25');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (270, 5, 'Life', '2016-07-17', '2018-01-05');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (352, 6, 'Property', '2016-05-23', '2017-12-09');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (396, 7, 'Travel', '2017-07-30', '2017-10-09');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (473, 3, 'Travel', '2017-04-24', '2017-12-14');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (552, 12, 'Travel', '2017-12-13', '2017-11-05');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (587, 13, 'Travel', '2017-03-23', '2017-09-01');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (738, 8, 'Travel', '2018-06-16', '2017-12-04');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (744, 6, 'Property', '2017-12-01', '2018-03-07');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (858, 9, 'Property', '2016-05-30', '2018-02-11');
INSERT INTO `Customer_Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (900, 2, 'Property', '2017-01-20', '2017-12-11');
CREATE TABLE Claims (
Claim_ID INTEGER NOT NULL,
Policy_ID INTEGER NOT NULL,
Date_Claim_Made DATE,
Date_Claim_Settled DATE,
Amount_Claimed INTEGER,
Amount_Settled INTEGER,
PRIMARY KEY (Claim_ID),
FOREIGN KEY (Policy_ID) REFERENCES Customer_Policies (Policy_ID)
);

INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (143, 744, '2017-03-11', '2017-11-03', 43884, 1085);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (423, 552, '2016-08-12', '2018-01-27', 79134, 1724);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (442, 473, '2017-02-24', '2018-01-21', 70088, 1189);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (486, 141, '2018-06-14', '2017-12-20', 69696, 1638);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (546, 744, '2017-05-03', '2017-12-22', 46479, 1091);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (563, 141, '2016-08-02', '2017-09-04', 41078, 1570);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (569, 473, '2018-07-15', '2017-11-19', 49743, 930);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (571, 858, '2017-08-03', '2018-02-18', 89632, 1528);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (621, 744, '2016-12-18', '2018-01-11', 43708, 1652);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (761, 473, '2016-08-26', '2017-09-04', 83703, 1372);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (801, 738, '2017-10-21', '2018-01-05', 3326, 1353);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (843, 143, '2017-10-14', '2018-02-20', 10209, 1639);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (935, 143, '2018-07-13', '2017-11-22', 70674, 1637);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (957, 352, '2018-11-08', '2017-09-15', 38280, 1050);
INSERT INTO `Claims` (`Claim_ID`, `Policy_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`) VALUES (965, 119, '2017-07-17', '2018-03-09', 35824, 1636);



CREATE TABLE Settlements (
Settlement_ID INTEGER NOT NULL,
Claim_ID INTEGER NOT NULL,
Date_Claim_Made DATE,
Date_Claim_Settled DATE,
Amount_Claimed INTEGER,
Amount_Settled INTEGER,
Customer_Policy_ID INTEGER NOT NULL,
PRIMARY KEY (Settlement_ID),
FOREIGN KEY (Claim_ID) REFERENCES Claims (Claim_ID)
);
CREATE TABLE Payments (
Payment_ID INTEGER NOT NULL,
Settlement_ID INTEGER NOT NULL,
Payment_Method_Code VARCHAR(255),
Date_Payment_Made DATE,
Amount_Payment INTEGER,
PRIMARY KEY (Payment_ID),
FOREIGN KEY (Settlement_ID) REFERENCES Settlements (Settlement_ID)
);



INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (357, 486, '2018-08-07', '2018-01-16', 38543, 1181, 515);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (412, 621, '2017-08-27', '2018-02-04', 57669, 1427, 617);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (476, 801, '2016-09-05', '2018-03-02', 30954, 1805, 943);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (512, 801, '2016-05-18', '2018-02-11', 82506, 1737, 133);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (516, 563, '2017-05-19', '2017-10-06', 37302, 1767, 638);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (527, 801, '2018-11-10', '2018-02-15', 25078, 930, 727);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (558, 569, '2018-05-12', '2017-11-30', 16603, 1516, 536);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (564, 761, '2016-07-04', '2018-02-20', 62680, 1676, 839);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (597, 486, '2017-04-18', '2017-12-24', 4456, 1698, 359);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (616, 957, '2017-07-31', '2018-01-27', 24055, 1262, 590);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (648, 761, '2017-09-22', '2018-02-14', 32079, 1266, 805);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (682, 801, '2017-03-04', '2018-02-20', 56850, 1508, 564);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (756, 571, '2017-04-14', '2017-11-15', 8634, 1293, 448);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (897, 843, '2017-03-29', '2018-02-20', 20569, 1885, 678);
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Date_Claim_Made`, `Date_Claim_Settled`, `Amount_Claimed`, `Amount_Settled`, `Customer_Policy_ID`) VALUES (983, 621, '2016-07-19', '2017-11-04', 3864, 1042, 419);

INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (384, 516, 'MasterCard', '2018-02-16', 241730);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (435, 476, 'MasterCard', '2017-05-28', 448613);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (484, 516, 'MasterCard', '2017-06-24', 456098);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (498, 682, 'Discover Card', '2017-08-06', 38324);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (542, 597, 'MasterCard', '2018-01-10', 407235);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (559, 512, 'MasterCard', '2018-02-18', 235893);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (678, 516, 'Visa', '2017-12-16', 459407);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (739, 597, 'Discover Card', '2017-10-07', 71246);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (754, 516, 'Visa', '2018-02-24', 7343);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (774, 527, 'MasterCard', '2018-01-28', 319142);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (779, 564, 'Visa', '2017-05-28', 155654);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (791, 983, 'Visa', '2017-05-03', 172309);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (886, 516, 'MasterCard', '2017-07-31', 423154);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (912, 648, 'Discover Card', '2017-05-04', 123255);
INSERT INTO `Payments` (`Payment_ID`, `Settlement_ID`, `Payment_Method_Code`, `Date_Payment_Made`, `Amount_Payment`) VALUES (983, 682, 'American Express', '2018-01-19', 177130);
