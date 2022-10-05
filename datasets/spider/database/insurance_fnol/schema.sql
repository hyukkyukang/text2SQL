PRAGMA foreign_keys = ON;

CREATE TABLE Customers (
Customer_ID INTEGER NOT NULL,
Customer_name VARCHAR(40),
PRIMARY KEY (Customer_ID)
);
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (194, 'America Jaskolski');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (214, 'Ellsworth Paucek');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (256, 'Mrs. Hanna Willms');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (562, 'Dr. Diana Rath');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (582, 'Selena Gerhold');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (641, 'Dayana Robel');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (682, 'Mr. Edwardo Blanda I');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (756, 'Mr. Randal Lynch III');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (805, 'Mrs. Liza Heller V');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (826, 'Mrs. Lilly Graham III');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (882, 'Miss Felicita Reichel');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (892, 'Sydnie Friesen');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (923, 'David Ross');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (956, 'Cai Zhang');
INSERT INTO `Customers` (`Customer_ID`, `Customer_name`) VALUES (996, 'Jay Chou');

CREATE TABLE Services (
Service_ID INTEGER NOT NULL,
Service_name VARCHAR(40),
PRIMARY KEY (Service_ID)
);

INSERT INTO `Services` (`Service_ID`, `Service_name`) VALUES (1, 'New policy application');
INSERT INTO `Services` (`Service_ID`, `Service_name`) VALUES (4, 'Close a policy');
INSERT INTO `Services` (`Service_ID`, `Service_name`) VALUES (6, 'Change a policy');
INSERT INTO `Services` (`Service_ID`, `Service_name`) VALUES (9, 'Upgrade a policy');

CREATE TABLE Available_Policies (
Policy_ID INTEGER NOT NULL,
policy_type_code CHAR(15),
Customer_Phone VARCHAR(255),
PRIMARY KEY (Policy_ID),
UNIQUE (Policy_ID)
);

INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (246, 'Life Insurance', '+16(2)5838999222');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (257, 'Property Insurance', '242.763.9214');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (300, 'Property Insurance', '1-416-503-7735x94204');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (301, 'Property Insurance', '(777)537-7792');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (346, 'Mortgage Insurance', '1-446-940-9907x257');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (366, 'Mortgage Insurance', '(379)862-8274x12620');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (472, 'Mortgage Insurance', '+85(6)1302858396');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (583, 'Travel Insurance', '1-797-927-3585x9321');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (586, 'Life Insurance', '991.642.6485x822');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (630, 'Property Insurance', '813.178.8211x557');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (636, 'Life Insurance', '889-572-0609x552');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (751, 'Life Insurance', '1-138-841-3073');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (879, 'Mortgage Insurance', '1-381-132-0127x3801');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (927, 'Mortgage Insurance', '00481937923');
INSERT INTO `Available_Policies` (`Policy_ID`, `policy_type_code`, `Customer_Phone`) VALUES (993, 'Property Insurance', '405.090.8654x021');
CREATE TABLE Customers_Policies (
Customer_ID INTEGER NOT NULL,
Policy_ID INTEGER NOT NULL,
Date_Opened DATE,
Date_Closed DATE,
PRIMARY KEY (Customer_ID, Policy_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID),
FOREIGN KEY (Policy_ID) REFERENCES Available_Policies (Policy_ID)
);
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (214, 257, '2016-11-19', '2018-03-04');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (214, 301, '2016-04-12', '2018-02-07');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (256, 583, '2016-07-22', '2018-02-20');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (562, 346, '2017-01-09', '2018-03-08');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (562, 583, '2016-06-24', '2018-02-22');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (582, 586, '2016-04-11', '2018-03-17');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (641, 366, '2016-07-10', '2018-02-24');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (641, 472, '2016-07-07', '2018-03-10');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (682, 583, '2016-11-01', '2018-03-03');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (826, 630, '2016-11-18', '2018-02-13');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (892, 927, '2017-01-08', '2018-02-25');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (996, 366, '2016-10-31', '2018-03-19');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (996, 879, '2017-01-05', '2018-02-20');
INSERT INTO `Customers_Policies` (`Customer_ID`, `Policy_ID`, `Date_Opened`, `Date_Closed`) VALUES (996, 993, '2016-07-03', '2018-03-20');

CREATE TABLE First_Notification_of_Loss (
FNOL_ID INTEGER NOT NULL,
Customer_ID INTEGER NOT NULL,
Policy_ID INTEGER NOT NULL,
Service_ID INTEGER NOT NULL,
PRIMARY KEY (FNOL_ID),
UNIQUE (FNOL_ID),
FOREIGN KEY (Service_ID) REFERENCES Services (Service_ID),
FOREIGN KEY (Customer_ID, Policy_ID) REFERENCES Customers_Policies (Customer_ID,Policy_ID)
);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (532, 214, 257, 6);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (1611, 996, 993, 9);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (1722, 996, 879, 6);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (2543, 996, 366, 1);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (4226, 892, 927, 1);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (4323, 826, 630, 4);
INSERT INTO `First_Notification_of_Loss` (`FNOL_ID`, `Customer_ID`, `Policy_ID`, `Service_ID`) VALUES (4525, 582, 586, 1);

CREATE TABLE Claims (
Claim_ID INTEGER NOT NULL,
FNOL_ID INTEGER NOT NULL,
Effective_Date DATE,
PRIMARY KEY (Claim_ID),
UNIQUE (Claim_ID),
FOREIGN KEY (FNOL_ID) REFERENCES First_Notification_of_Loss (FNOL_ID)
);
CREATE TABLE Settlements (
Settlement_ID INTEGER NOT NULL,
Claim_ID INTEGER,
Effective_Date DATE,
Settlement_Amount REAL,
PRIMARY KEY (Settlement_ID),
UNIQUE (Settlement_ID),
FOREIGN KEY (Claim_ID) REFERENCES Claims (Claim_ID)
);

INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (134, 1722, '1973-08-18');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (145, 1611, '2014-10-19');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (228, 532, '1975-05-07');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (309, 2543, '1982-05-03');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (311, 4226, '1992-02-09');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (360, 4226, '2006-06-10');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (428, 4226, '1992-01-05');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (604, 4323, '2009-02-11');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (641, 4525, '1985-03-24');
INSERT INTO `Claims` (`Claim_ID`, `FNOL_ID`, `Effective_Date`) VALUES (717, 4525, '1996-11-29');




INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (161, 717, '2009-11-20', '6451.65');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (176, 641, '1971-06-29', '1588.45');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (205, 604, '1978-09-09', '9814.39');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (208, 428, '2003-12-28', '8827.06');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (393, 360, '2006-04-19', '8013.95');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (543, 309, '1972-03-02', '2722.67');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (544, 311, '1973-10-27', '9164.1');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (604, 228, '2014-12-09', '2138.96');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (616, 145, '1995-04-02', '3101.3');
INSERT INTO `Settlements` (`Settlement_ID`, `Claim_ID`, `Effective_Date`, `Settlement_Amount`) VALUES (628, 134, '2001-07-02', '1721.17');
