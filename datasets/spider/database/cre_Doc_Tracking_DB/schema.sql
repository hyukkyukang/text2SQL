PRAGMA foreign_keys = ON;
CREATE TABLE Ref_Document_Types (
Document_Type_Code CHAR(15) NOT NULL,
Document_Type_Name VARCHAR(255) NOT NULL,
Document_Type_Description VARCHAR(255) NOT NULL,
PRIMARY KEY (Document_Type_Code)
);

CREATE TABLE Ref_Calendar (
Calendar_Date DATETIME NOT NULL,
Day_Number INTEGER,
PRIMARY KEY (Calendar_Date)
);
CREATE TABLE Ref_Locations (
Location_Code CHAR(15) NOT NULL,
Location_Name VARCHAR(255) NOT NULL,
Location_Description VARCHAR(255) NOT NULL,
PRIMARY KEY (Location_Code)
);

CREATE TABLE Roles (
Role_Code CHAR(15) NOT NULL,
Role_Name VARCHAR(255),
Role_Description VARCHAR(255),
PRIMARY KEY (Role_Code)
);

CREATE TABLE All_Documents (
Document_ID INTEGER NOT NULL,
Date_Stored DATETIME,
Document_Type_Code CHAR(15) NOT NULL,
Document_Name CHAR(255),
Document_Description CHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Document_ID),
FOREIGN KEY (Document_Type_Code) REFERENCES Ref_Document_Types (Document_Type_Code),
FOREIGN KEY (Date_Stored) REFERENCES Ref_Calendar (Calendar_Date)
);

CREATE TABLE Employees (
Employee_ID INTEGER NOT NULL,
Role_Code CHAR(15) NOT NULL,
Employee_Name VARCHAR(255),
Gender_MFU CHAR(1) NOT NULL,
Date_of_Birth DATETIME NOT NULL,
Other_Details VARCHAR(255),
PRIMARY KEY (Employee_ID),
FOREIGN KEY (Role_Code) REFERENCES Roles (Role_Code)
);

CREATE TABLE Document_Locations (
Document_ID INTEGER NOT NULL,
Location_Code CHAR(15) NOT NULL,
Date_in_Location_From DATETIME NOT NULL,
Date_in_Locaton_To DATETIME,
PRIMARY KEY (Document_ID, Location_Code, Date_in_Location_From),
FOREIGN KEY (Location_Code) REFERENCES Ref_Locations (Location_Code),
FOREIGN KEY (Date_in_Location_From) REFERENCES Ref_Calendar (Calendar_Date),
FOREIGN KEY (Date_in_Locaton_To) REFERENCES Ref_Calendar (Calendar_Date),
FOREIGN KEY (Document_ID) REFERENCES All_Documents (Document_ID)
);

CREATE TABLE Documents_to_be_Destroyed (
Document_ID INTEGER NOT NULL,
Destruction_Authorised_by_Employee_ID INTEGER,
Destroyed_by_Employee_ID INTEGER,
Planned_Destruction_Date DATETIME,
Actual_Destruction_Date DATETIME,
Other_Details VARCHAR(255),
PRIMARY KEY (Document_ID),
FOREIGN KEY (Destroyed_by_Employee_ID) REFERENCES Employees (Employee_ID),
FOREIGN KEY (Destruction_Authorised_by_Employee_ID) REFERENCES Employees (Employee_ID),
FOREIGN KEY (Planned_Destruction_Date) REFERENCES Ref_Calendar (Calendar_Date),
FOREIGN KEY (Actual_Destruction_Date) REFERENCES Ref_Calendar (Calendar_Date),
FOREIGN KEY (Document_ID) REFERENCES All_Documents (Document_ID)
);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1972-03-31 09:47:22', 5);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1976-06-15 03:40:06', 7);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1985-05-13 12:19:43', 7);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1986-10-14 17:53:39', 1);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1987-11-05 06:11:22', 3);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1988-02-01 14:41:52', 8);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1994-11-15 03:49:54', 9);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1995-01-01 03:52:11', 1);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('1997-03-10 15:24:00', 7);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('2007-05-28 16:28:48', 2);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('2008-06-08 12:45:38', 3);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('2009-08-18 03:29:08', 8);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('2010-11-26 19:22:50', 7);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('2012-07-03 09:48:46', 7);
INSERT INTO Ref_Calendar (`Calendar_Date`, `Day_Number`) VALUES ('2017-01-06 23:17:22', 8);
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('CV', 'CV', '');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('BK', 'Book', '');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('PR', 'Paper', '');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('RV', 'Review', '');
INSERT INTO Ref_Locations (`Location_Code`, `Location_Name`, `Location_Description`) VALUES ('b', 'Brazil', '');
INSERT INTO Ref_Locations (`Location_Code`, `Location_Name`, `Location_Description`) VALUES ('c', 'Canada', '');
INSERT INTO Ref_Locations (`Location_Code`, `Location_Name`, `Location_Description`) VALUES ('e', 'Edinburgh', '');
INSERT INTO Ref_Locations (`Location_Code`, `Location_Name`, `Location_Description`) VALUES ('n', 'Nanjing', '');
INSERT INTO Ref_Locations (`Location_Code`, `Location_Name`, `Location_Description`) VALUES ('x', 'Xiamen', '');
INSERT INTO Roles (`Role_Code`, `Role_Name`, `Role_Description`) VALUES ('MG', 'Manager', 'Vero harum corrupti odit ipsa vero et odio. Iste et recusandae temporibus maxime. Magni aspernatur fugit quis explicabo totam esse corrupti.');
INSERT INTO Roles (`Role_Code`, `Role_Name`, `Role_Description`) VALUES ('ED', 'Editor', 'Itaque dolor ut nemo rerum vitae provident. Vel laborum ipsum velit sint. Et est omnis dignissimos.');
INSERT INTO Roles (`Role_Code`, `Role_Name`, `Role_Description`) VALUES ('PT', 'Photo', 'Aut modi nihil molestias temporibus sit rerum. Sit neque eaque odio omnis incidunt.');
INSERT INTO Roles (`Role_Code`, `Role_Name`, `Role_Description`) VALUES ('PR', 'Proof Reader', 'Ut sed quae eaque mollitia qui hic. Natus ea expedita et odio illum fugiat qui natus. Consequatur velit ut dolorem cum ullam esse deserunt dignissimos. Enim non non rem officiis quis.');
INSERT INTO Roles (`Role_Code`, `Role_Name`, `Role_Description`) VALUES ('HR', 'Human Resource', 'Et totam est quibusdam aspernatur ut. Vitae perferendis eligendi voluptatem molestiae rem ut enim. Ipsum expedita quae earum unde est. Repellendus ut ipsam nihil accusantium sit. Magni accusantium numquam quod et.');

INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (25, 'HR', 'Leo', '', '1973-02-15 17:16:00', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (30, 'MG', 'Ebba', '', '1979-09-20 12:50:15', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (38, 'ED', 'Stephanie', '1', '2012-03-30 23:02:28', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (55, 'ED', 'Harley', '', '1972-02-18 11:53:30', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (57, 'ED', 'Armani', '', '1988-12-08 06:13:33', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (71, 'ED', 'Gussie', '', '1973-04-04 21:41:22', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (99, 'ED', 'Izabella', '1', '1977-07-04 16:25:21', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (123, 'PT', 'Hugh', '', '2010-03-15 00:17:13', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (136, 'ED', 'Mallie', '', '1980-12-11 20:28:20', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (138, 'ED', 'Beatrice', '1', '2013-04-02 23:55:48', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (156, 'PR', 'Diego', '', '1998-05-30 12:54:10', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (159, 'PR', 'Arno', '', '2010-06-10 20:36:34', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (173, 'PR', 'Alene', '1', '1980-10-14 12:23:10', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (181, 'PR', 'Ettie', '1', '1988-08-03 00:11:14', NULL);
INSERT INTO Employees (`Employee_ID`, `Role_Code`, `Employee_Name`, `Gender_MFU`, `Date_of_Birth`, `Other_Details`) VALUES (183, 'PR', 'Jeramie', '', '1993-08-21 05:22:10', NULL);


INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (7, '1976-06-15 03:40:06', 'CV', 'Robin CV', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (11, '1986-10-14 17:53:39', 'CV', 'Marry CV', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (25, '2008-06-08 12:45:38', 'BK', 'One hundred years of solitude', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (39, '2012-07-03 09:48:46', 'BK', 'How to read a book', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (72, '2012-07-03 09:48:46', 'CV', 'Alan CV', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (81, '1995-01-01 03:52:11', 'BK', 'Hua Mulan', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (99, '2008-06-08 12:45:38', 'CV', 'Leon CV', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (111, '1987-11-05 06:11:22', 'PR', 'Learning features of CNN', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (119, '2008-06-08 12:45:38', 'RV', 'Marriage and population', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (120, '1997-03-10 15:24:00', 'RV', 'Society and tax', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (166, '1997-03-10 15:24:00', 'PR', 'Are you talking to a machine', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (170, '2009-08-18 03:29:08', 'RV', 'Population', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (230, '1976-06-15 03:40:06', 'CV', 'Martin CV', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (252, '1976-06-15 03:40:06', 'BK', 'Summer', NULL, NULL);
INSERT INTO All_Documents (`Document_ID`, `Date_Stored`, `Document_Type_Code`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (260, '1997-03-10 15:24:00', 'BK', 'Cats and me', NULL, NULL);
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (7, 'e', '2017-01-06 23:17:22', '2008-06-08 12:45:38');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (11, 'x', '2017-01-06 23:17:22', '2012-07-03 09:48:46');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (81, 'c', '1972-03-31 09:47:22', '1987-11-05 06:11:22');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (81, 'c', '2017-01-06 23:17:22', '2010-11-26 19:22:50');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (81, 'x', '2008-06-08 12:45:38', '1976-06-15 03:40:06');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (111, 'x', '1986-10-14 17:53:39', '2010-11-26 19:22:50');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (119, 'b', '2017-01-06 23:17:22', '1995-01-01 03:52:11');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (166, 'b', '1985-05-13 12:19:43', '1986-10-14 17:53:39');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (166, 'b', '1986-10-14 17:53:39', '2010-11-26 19:22:50');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (170, 'x', '1997-03-10 15:24:00', '1976-06-15 03:40:06');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (230, 'e', '1972-03-31 09:47:22', '1987-11-05 06:11:22');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (230, 'e', '2010-11-26 19:22:50', '2017-01-06 23:17:22');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (252, 'n', '2017-01-06 23:17:22', '1997-03-10 15:24:00');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (252, 'x', '1972-03-31 09:47:22', '2009-08-18 03:29:08');
INSERT INTO Document_Locations (`Document_ID`, `Location_Code`, `Date_in_Location_From`, `Date_in_Locaton_To`) VALUES (260, 'e', '2009-08-18 03:29:08', '1986-10-14 17:53:39');
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (7, 156, 138, '1988-02-01 14:41:52', '2017-01-06 23:17:22', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (11, 55, 173, '2010-11-26 19:22:50', '1986-10-14 17:53:39', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (25, 183, 156, '2009-08-18 03:29:08', '1995-01-01 03:52:11', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (39, 183, 136, '1976-06-15 03:40:06', '2009-08-18 03:29:08', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (99, 55, 99, '2017-01-06 23:17:22', '1986-10-14 17:53:39', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (111, 38, 173, '1972-03-31 09:47:22', '2009-08-18 03:29:08', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (120, 183, 173, '1972-03-31 09:47:22', '1995-01-01 03:52:11', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (166, 156, 38, '1987-11-05 06:11:22', '2012-07-03 09:48:46', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (170, 123, 136, '2017-01-06 23:17:22', '1988-02-01 14:41:52', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (252, 30, 55, '1972-03-31 09:47:22', '1985-05-13 12:19:43', NULL);
INSERT INTO Documents_to_be_Destroyed (`Document_ID`, `Destruction_Authorised_by_Employee_ID`, `Destroyed_by_Employee_ID`, `Planned_Destruction_Date`, `Actual_Destruction_Date`, `Other_Details`) VALUES (260, 55, 99, '2017-01-06 23:17:22', '2017-01-06 23:17:22', NULL);
