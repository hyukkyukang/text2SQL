PRAGMA foreign_keys = ON;
CREATE TABLE Ref_Template_Types (
Template_Type_Code CHAR(15) NOT NULL,
Template_Type_Description VARCHAR(255) NOT NULL,
PRIMARY KEY (Template_Type_Code)
);
CREATE TABLE Templates (
Template_ID INTEGER NOT NULL,
Version_Number INTEGER NOT NULL,
Template_Type_Code CHAR(15) NOT NULL,
Date_Effective_From DATETIME,
Date_Effective_To DATETIME,
Template_Details VARCHAR(255) NOT NULL,
PRIMARY KEY (Template_ID),
FOREIGN KEY (Template_Type_Code) REFERENCES Ref_Template_Types (Template_Type_Code)
);
CREATE TABLE Documents (
Document_ID INTEGER NOT NULL,
Template_ID INTEGER,
Document_Name VARCHAR(255),
Document_Description VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Document_ID),
FOREIGN KEY (Template_ID) REFERENCES Templates (Template_ID)
);
CREATE TABLE Paragraphs (
Paragraph_ID INTEGER NOT NULL,
Document_ID INTEGER NOT NULL,
Paragraph_Text VARCHAR(255),
Other_Details VARCHAR(255),
PRIMARY KEY (Paragraph_ID),
FOREIGN KEY (Document_ID) REFERENCES Documents (Document_ID)
);
INSERT INTO Ref_Template_Types (`Template_Type_Code`, `Template_Type_Description`) VALUES ('PPT', 'Presentation');
INSERT INTO Ref_Template_Types (`Template_Type_Code`, `Template_Type_Description`) VALUES ('CV', 'CV');
INSERT INTO Ref_Template_Types (`Template_Type_Code`, `Template_Type_Description`) VALUES ('AD', 'Advertisement');
INSERT INTO Ref_Template_Types (`Template_Type_Code`, `Template_Type_Description`) VALUES ('PP', 'Paper');
INSERT INTO Ref_Template_Types (`Template_Type_Code`, `Template_Type_Description`) VALUES ('BK', 'Book');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (0, 5, 'PP', '2005-11-12 07:09:48', '2008-01-05 14:19:28', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (1, 9, 'PP', '2010-09-24 01:15:11', '1999-07-08 03:31:04', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (4, 4, 'BK', '2002-03-02 14:39:49', '2001-04-18 09:29:52', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (6, 2, 'PPT', '1975-05-20 22:51:19', '1992-05-02 20:06:11', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (7, 8, 'PPT', '1993-10-07 02:33:04', '1975-07-16 04:52:10', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (8, 3, 'BK', '1983-07-16 21:16:16', '1976-10-28 10:08:50', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (9, 2, 'BK', '1997-04-17 08:29:44', '1994-12-07 13:26:23', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (10, 1, 'PPT', '2003-06-05 04:03:45', '2007-06-06 06:18:53', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (11, 6, 'BK', '1996-02-04 11:27:24', '1995-09-19 22:27:48', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (14, 7, 'AD', '1975-10-20 02:28:58', '1979-11-04 08:58:39', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (15, 9, 'CV', '1986-12-09 14:51:36', '1993-03-24 14:30:23', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (16, 5, 'CV', '2012-04-05 07:11:42', '1980-05-07 12:15:47', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (18, 5, 'PP', '1984-08-07 13:36:26', '1998-05-12 12:51:29', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (19, 7, 'AD', '1999-06-21 11:10:30', '1974-09-14 06:34:39', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (20, 6, 'BK', '1986-11-14 12:20:18', '2008-08-08 18:36:43', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (21, 9, 'AD', '2002-08-25 13:26:23', '2015-09-06 01:08:44', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (22, 0, 'PP', '2005-02-20 00:31:34', '1989-11-24 19:06:06', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (23, 2, 'BK', '1979-12-24 10:28:16', '2000-10-22 11:57:12', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (24, 8, 'PP', '2008-08-01 13:57:26', '1973-01-12 14:13:34', '');
INSERT INTO Templates (`Template_ID`, `Version_Number`, `Template_Type_Code`, `Date_Effective_From`, `Date_Effective_To`, `Template_Details`) VALUES (25, 5, 'PP', '1979-10-20 21:23:20', '2006-02-06 23:52:04', '');


INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (0, 7, 'Introduction of OS', 'n', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (1, 25, 'Understanding DB', 'y', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (3, 6, 'Summer Show', 'u', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (76, 20, 'Robbin CV', 'y', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (80, 14, 'Welcome to NY', 'h', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (82, 11, 'Data base', 'w', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (2394, 10, 'Customer reviews', 'y', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (3830, 14, 'Do not panic', 'k', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (33930, 1, 'How Google people work', 'z', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (50123, 22, 'Learning French', 'r', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (651512, 21, 'How to write a CV', 'f', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (801801, 4, 'How to read a book', 'w', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (3540024, 8, 'Palm reading', 'y', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (16514113, 25, 'A history of Arts', 'h', NULL);
INSERT INTO Documents (`Document_ID`, `Template_ID`, `Document_Name`, `Document_Description`, `Other_Details`) VALUES (385906526, 11, 'About Korea', 'b', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (7, 2394, 'Korea', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (9, 3, 'Somalia', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (65, 50123, 'Palestinian Territory', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (241, 651512, 'Jersey', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (3708, 33930, 'UK', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (9946, 385906526, 'Fiji', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (16615, 80, 'Japan', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (1104059, 3830, 'Senegal', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (243399026, 651512, 'Indonesia', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (280120913, 2394, 'Ukraine', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (510442723, 2394, 'Korea', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (571212310, 16514113, 'Brazil', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (608931827, 80, 'Micronesia', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (765713812, 16514113, 'Ireland', NULL);
INSERT INTO Paragraphs (`Paragraph_ID`, `Document_ID`, `Paragraph_Text`, `Other_Details`) VALUES (946335436, 3540024, 'Papua New Guinea', NULL);
