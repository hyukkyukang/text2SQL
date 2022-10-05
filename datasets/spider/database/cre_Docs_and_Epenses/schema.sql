PRAGMA foreign_keys = ON;

CREATE TABLE Ref_Document_Types (
Document_Type_Code CHAR(15) NOT NULL,
Document_Type_Name VARCHAR(255) NOT NULL,
Document_Type_Description VARCHAR(255) NOT NULL,
PRIMARY KEY (Document_Type_Code)
);
CREATE TABLE Ref_Budget_Codes (
Budget_Type_Code CHAR(15) NOT NULL,
Budget_Type_Description VARCHAR(255) NOT NULL,
PRIMARY KEY (Budget_Type_Code)
);
INSERT INTO Ref_Budget_Codes (`Budget_Type_Code`, `Budget_Type_Description`) VALUES ('GV', 'Government');
INSERT INTO Ref_Budget_Codes (`Budget_Type_Code`, `Budget_Type_Description`) VALUES ('ORG', 'Organisation');
INSERT INTO Ref_Budget_Codes (`Budget_Type_Code`, `Budget_Type_Description`) VALUES ('SF', 'Self founded');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('BK', 'Book', 'excellent');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('CV', 'CV', 'excellent');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('PT', 'Presentation', 'very good');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('PP', 'Paper', 'good');
INSERT INTO Ref_Document_Types (`Document_Type_Code`, `Document_Type_Name`, `Document_Type_Description`) VALUES ('FM', 'Film', 'fun');


CREATE TABLE Projects (
Project_ID INTEGER NOT NULL,
Project_Details VARCHAR(255),
PRIMARY KEY (Project_ID)
);
INSERT INTO Projects (`Project_ID`, `Project_Details`) VALUES (30, 'Society Research project');
INSERT INTO Projects (`Project_ID`, `Project_Details`) VALUES (35, 'Internet of Things project');
INSERT INTO Projects (`Project_ID`, `Project_Details`) VALUES (105, 'Graph Database project');
INSERT INTO Projects (`Project_ID`, `Project_Details`) VALUES (134, 'Human Resource project');
INSERT INTO Projects (`Project_ID`, `Project_Details`) VALUES (195, 'Population Research project');


CREATE TABLE Documents (
Document_ID INTEGER NOT NULL,
Document_Type_Code CHAR(15) NOT NULL,
Project_ID INTEGER NOT NULL,
Document_Date DATETIME,
Document_Name VARCHAR(255),
Document_Description VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Document_ID),
FOREIGN KEY (Document_Type_Code) REFERENCES Ref_Document_Types (Document_Type_Code),
FOREIGN KEY (Project_ID) REFERENCES Projects (Project_ID)
);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (29, 'CV', 30, '2004-08-28 06:59:19', 'Review on UK files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (42, 'BK', 105, '2012-12-27 19:09:18', 'Review on Canadian files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (57, 'CV', 195, '1980-10-22 14:17:11', 'Review on French files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (121, 'BK', 105, '1981-11-29 10:23:01', 'Review on USA files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (181, 'PP', 105, '1970-06-17 14:03:21', 'Chapter on private files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (192, 'PP', 134, '2013-01-26 15:15:25', 'Book on USA files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (226, 'BK', 30, '1991-07-08 08:49:59', 'Review on UK files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (227, 'BK', 30, '1970-03-06 07:34:49', 'Deontae files', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (240, 'BK', 105, '1971-06-09 19:03:41', 'Winona Book', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (300, 'FM', 35, '2007-09-26 02:39:11', 'Trenton Presentation', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (309, 'BK', 35, '1978-10-15 10:33:17', 'Noel CV', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (318, 'PP', 134, '1970-01-30 10:53:35', 'King Book', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (367, 'CV', 134, '1983-08-24 17:10:26', 'Jevon Paper', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (371, 'PP', 105, '1976-05-06 12:56:12', 'Katheryn statement', NULL, NULL);
INSERT INTO Documents (`Document_ID`, `Document_Type_Code`, `Project_ID`, `Document_Date`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (383, 'PP', 35, '2005-10-28 03:17:16', 'Review on UK files', NULL, NULL);


CREATE TABLE Statements (
Statement_ID INTEGER NOT NULL,
Statement_Details VARCHAR(255),
PRIMARY KEY (Statement_ID),
FOREIGN KEY (Statement_ID) REFERENCES Documents (Document_ID)
);
INSERT INTO Statements (`Statement_ID`, `Statement_Details`) VALUES (57, 'Open Project');
INSERT INTO Statements (`Statement_ID`, `Statement_Details`) VALUES (192, 'Private Project');



CREATE TABLE Documents_with_Expenses (
Document_ID INTEGER NOT NULL,
Budget_Type_Code CHAR(15) NOT NULL,
Document_Details VARCHAR(255),
PRIMARY KEY (Document_ID),
FOREIGN KEY (Budget_Type_Code) REFERENCES Ref_Budget_Codes (Budget_Type_Code),
FOREIGN KEY (Document_ID) REFERENCES Documents (Document_ID)
);
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (57, 'GV', 'government');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (192, 'GV', 'government');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (226, 'GV', 'government');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (227, 'GV', 'government');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (240, 'GV', 'government');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (300, 'GV', 'government');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (309, 'SF', 'safety');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (367, 'SF', 'safety');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (371, 'ORG', 'organization');
INSERT INTO Documents_with_Expenses (`Document_ID`, `Budget_Type_Code`, `Document_Details`) VALUES (383, 'ORG', 'organization');


CREATE TABLE Accounts (
Account_ID INTEGER NOT NULL,
Statement_ID INTEGER NOT NULL,
Account_Details VARCHAR(255),
PRIMARY KEY (Account_ID),
FOREIGN KEY (Statement_ID) REFERENCES Statements (Statement_ID)
);
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (7, 57, '495.063');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (61, 57, '930.14');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (98, 57, '6035.84');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (136, 57, '199.52');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (164, 192, '12223.93');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (209, 57, '11130.23');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (211, 192, '1230.454');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (240, 192, '6352.31');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (262, 57, '147.96');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (280, 57, '187.14');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (321, 192, '745.817');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (346, 192, '127.9');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (414, 57, '25.41');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (427, 57, '1168.32');
INSERT INTO Accounts (`Account_ID`, `Statement_ID`, `Account_Details`) VALUES (451, 192, '658.26');
