PRAGMA foreign_keys = ON;
CREATE TABLE Customers (
Customer_ID INTEGER NOT NULL,
Customer_Details VARCHAR(255) NOT NULL,
PRIMARY KEY (Customer_ID)
);
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (252, 'America Jaskolski');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (263, 'Ellsworth Paucek');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (334, 'Mrs. Hanna Willms');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (380, 'Dr. Diana Rath');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (430, 'Selena Gerhold');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (435, 'Lauriane Ferry PhD');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (520, 'Sydnie Friesen');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (588, 'Dayana Robel');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (593, 'Mr. Edwardo Blanda I');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (799, 'Augustine Kerluke');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (808, 'Buddy Marquardt');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (810, 'Mr. Randal Lynch III');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (857, 'Mrs. Liza Heller V');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (858, 'Mrs. Lilly Graham III');
INSERT INTO `Customers` (`Customer_ID`, `Customer_Details`) VALUES (994, 'Miss Felicita Reichel');

CREATE TABLE Staff (
Staff_ID INTEGER NOT NULL,
Staff_Details VARCHAR(255) NOT NULL,
PRIMARY KEY (Staff_ID)
);

CREATE TABLE Policies (
Policy_ID INTEGER NOT NULL,
Customer_ID INTEGER NOT NULL,
Policy_Type_Code CHAR(15) NOT NULL,
Start_Date DATETIME,
End_Date DATETIME,
PRIMARY KEY (Policy_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID)
);


INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (125, 808, 'Deputy', '2018-02-10 08:56:30', '2018-03-18 09:17:26');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (151, 380, 'Jurisdiction', '2017-12-20 06:02:31', '2017-09-16 22:04:13');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (287, 334, 'Jurisdiction', '2017-03-16 18:16:52', '2017-11-24 06:36:51');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (299, 857, 'Uniformed', '2018-03-13 12:30:19', '2018-01-22 05:24:10');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (507, 858, 'Uniformed', '2017-03-19 03:11:19', '2017-11-01 00:41:27');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (518, 808, 'Uniformed', '2016-05-11 14:56:17', '2018-03-15 05:02:00');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (626, 435, 'Uniformed', '2016-05-14 19:09:36', '2018-01-18 06:17:36');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (628, 430, 'Deputy', '2018-09-19 17:22:07', '2018-01-01 23:58:06');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (703, 380, 'Deputy', '2016-06-04 00:10:01', '2018-01-19 22:45:33');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (708, 252, 'Normal', '2018-07-21 10:36:53', '2018-03-07 13:52:47');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (768, 588, 'Uniformed', '2017-01-01 01:48:08', '2017-09-30 03:16:49');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (773, 334, 'Uniformed', '2017-02-11 01:53:11', '2018-01-15 03:23:05');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (780, 435, 'Uniformed', '2016-08-02 01:46:25', '2018-03-03 18:36:22');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (801, 380, 'Uniformed', '2018-09-05 22:15:23', '2018-03-17 10:16:59');
INSERT INTO `Policies` (`Policy_ID`, `Customer_ID`, `Policy_Type_Code`, `Start_Date`, `End_Date`) VALUES (936, 994, 'Jurisdiction', '2016-07-23 04:08:35', '2017-10-07 08:29:25');


INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (406, 'Clifton');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (427, 'Cathryn');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (510, 'Kaci');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (589, 'Margaretta');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (634, 'Maryse');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (673, 'Roman');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (687, 'Eladio');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (718, 'Vernie');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (735, 'Evans');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (771, 'Bo');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (803, 'Zachery');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (822, 'Julius');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (833, 'Allen');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (986, 'Alexander');
INSERT INTO `Staff` (`Staff_ID`, `Staff_Details`) VALUES (987, 'Gideon');


CREATE TABLE Claim_Headers (
Claim_Header_ID INTEGER NOT NULL,
Claim_Status_Code CHAR(15) NOT NULL,
Claim_Type_Code CHAR(15) NOT NULL,
Policy_ID INTEGER NOT NULL,
Date_of_Claim DATETIME,
Date_of_Settlement DATETIME,
Amount_Claimed DECIMAL(20,4),
Amount_Piad DECIMAL(20,4),
PRIMARY KEY (Claim_Header_ID),
FOREIGN KEY (Policy_ID) REFERENCES Policies (Policy_ID)
);
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (15, 'Settled', 'Handphone Subsidy', 518, '2016-05-31 06:07:11', '2018-02-23 03:46:38', '349.1500', '582.0300');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (24, 'Disputed', 'Child Birth', 518, '2016-12-30 21:43:21', '2017-10-08 21:43:14', '318.1600', '309.2000');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (27, 'Disputed', 'Overtime Meal Subsidy', 518, '2017-05-01 13:34:43', '2017-11-16 04:06:05', '362.7100', '132.9700');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (28, 'Disputed', 'Child Birth', 287, '2016-10-01 00:40:00', '2017-10-20 02:24:21', '789.1900', '113.8600');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (34, 'Disputed', 'Handphone Subsidy', 518, '2016-04-10 01:36:18', '2017-10-17 07:02:17', '270.4900', '643.8200');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (39, 'In Progress', 'Handphone Subsidy', 518, '2016-09-17 05:05:07', '2018-01-07 05:28:53', '616.1200', '773.5000');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (45, 'In Progress', 'Handphone Subsidy', 507, '2016-06-12 23:04:58', '2018-01-16 06:35:15', '676.8100', '289.0900');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (56, 'In Progress', 'Handphone Subsidy', 626, '2016-04-09 03:04:29', '2017-11-21 09:06:04', '818.1500', '826.0000');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (62, 'Disputed', 'Child Birth', 626, '2017-07-05 02:54:30', '2018-03-08 13:00:23', '182.7900', '558.7000');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (69, 'In Progress', 'Overtime Meal Subsidy', 626, '2016-12-17 08:28:16', '2017-12-20 09:58:14', '867.5700', '133.7200');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (72, 'Disputed', 'Overtime Meal Subsidy', 626, '2017-07-09 17:06:09', '2017-12-06 15:01:14', '672.0600', '227.8400');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (73, 'Settled', 'Overtime Meal Subsidy', 626, '2016-11-15 13:12:02', '2018-01-21 05:51:01', '228.4500', '794.6300');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (81, 'In Progress', 'Overtime Meal Subsidy', 628, '2016-09-26 04:03:48', '2017-12-20 19:06:12', '783.4200', '779.5900');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (82, 'Settled', 'Overtime Meal Subsidy', 125, '2016-09-29 02:42:22', '2017-12-06 17:10:03', '756.2700', '612.7400');
INSERT INTO `Claim_Headers` (`Claim_Header_ID`, `Claim_Status_Code`, `Claim_Type_Code`, `Policy_ID`, `Date_of_Claim`, `Date_of_Settlement`, `Amount_Claimed`, `Amount_Piad`) VALUES (90, 'Settled', 'Child Birth', 125, '2016-09-28 18:53:22', '2017-10-17 22:03:17', '425.9800', '536.9900');


CREATE TABLE Claims_Documents (
Claim_ID INTEGER NOT NULL,
Document_Type_Code CHAR(15) NOT NULL,
Created_by_Staff_ID INTEGER,
Created_Date INTEGER,
PRIMARY KEY (Claim_ID, Document_Type_Code),
FOREIGN KEY (Claim_ID) REFERENCES Claim_Headers (Claim_Header_ID),
FOREIGN KEY (Created_by_Staff_ID) REFERENCES Staff (Staff_ID)
);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (24, 'Document', 718, 8);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (27, 'Document', 986, 6);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (27, 'Medical', 427, 8);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (39, 'Document', 803, 2);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (45, 'Medical', 687, 9);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (62, 'Document', 673, 3);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (62, 'Medical', 771, 3);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (62, 'Photo', 771, 6);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (69, 'Document', 718, 1);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (73, 'Document', 986, 2);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (73, 'Medical', 771, 9);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (81, 'Photo', 589, 7);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (82, 'Medical', 803, 9);
INSERT INTO `Claims_Documents` (`Claim_ID`, `Document_Type_Code`, `Created_by_Staff_ID`, `Created_Date`) VALUES (90, 'Photo', 735, 1);


CREATE TABLE Claims_Processing_Stages (
Claim_Stage_ID INTEGER NOT NULL,
Next_Claim_Stage_ID INTEGER,
Claim_Status_Name VARCHAR(255) NOT NULL,
Claim_Status_Description VARCHAR(255) NOT NULL,
PRIMARY KEY (Claim_Stage_ID)
);
INSERT INTO `Claims_Processing_Stages` (`Claim_Stage_ID`, `Next_Claim_Stage_ID`, `Claim_Status_Name`, `Claim_Status_Description`) VALUES (1, 1, 'Open', 'Open a new claim');
INSERT INTO `Claims_Processing_Stages` (`Claim_Stage_ID`, `Next_Claim_Stage_ID`, `Claim_Status_Name`, `Claim_Status_Description`) VALUES (3, 1, 'Close', 'Close a claim');



CREATE TABLE Claims_Processing (
Claim_Processing_ID INTEGER NOT NULL,
Claim_ID INTEGER NOT NULL,
Claim_Outcome_Code CHAR(15) NOT NULL,
Claim_Stage_ID INTEGER NOT NULL,
Staff_ID INTEGER,
PRIMARY KEY (Claim_Processing_ID),
FOREIGN KEY (Claim_ID) REFERENCES Claim_Headers (Claim_Header_ID),
FOREIGN KEY (Staff_ID) REFERENCES Staff (Staff_ID)
);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (118, 28, 'In progress', 1, 771);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (145, 62, 'In progress', 1, 589);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (213, 27, 'In progress', 1, 589);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (221, 45, 'Disputed', 1, 427);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (242, 15, 'In progress', 3, 673);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (243, 15, 'Settled', 1, 687);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (309, 34, 'Disputed', 3, 771);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (342, 15, 'In progress', 3, 673);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (480, 45, 'In progress', 1, 822);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (659, 62, 'Settled', 3, 510);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (686, 27, 'Settled', 1, 718);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (720, 24, 'In progress', 1, 822);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (818, 90, 'Disputed', 3, 986);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (833, 81, 'Disputed', 3, 822);
INSERT INTO `Claims_Processing` (`Claim_Processing_ID`, `Claim_ID`, `Claim_Outcome_Code`, `Claim_Stage_ID`, `Staff_ID`) VALUES (898, 24, 'In progress', 1, 718);
