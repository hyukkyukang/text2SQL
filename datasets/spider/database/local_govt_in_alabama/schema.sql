PRAGMA foreign_keys = ON;


CREATE TABLE Services (
Service_ID INTEGER NOT NULL,
Service_Type_Code CHAR(15) NOT NULL,
PRIMARY KEY (Service_ID)
);
INSERT INTO `Services` (`Service_ID`, `Service_Type_Code`) VALUES (2, 'Marriage');
INSERT INTO `Services` (`Service_ID`, `Service_Type_Code`) VALUES (5, 'Death Proof');
INSERT INTO `Services` (`Service_ID`, `Service_Type_Code`) VALUES (6, 'Birth Proof');
INSERT INTO `Services` (`Service_ID`, `Service_Type_Code`) VALUES (8, 'Property Change');


CREATE TABLE Participants (
Participant_ID INTEGER NOT NULL,
Participant_Type_Code CHAR(15) NOT NULL,
Participant_Details VARCHAR(255),
PRIMARY KEY (Participant_ID)
);
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (9, 'Organizer', 'Karlee Batz');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (26, 'Organizer', 'Vilma Schinner');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (28, 'Organizer', 'Lupe Deckow');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (36, 'Organizer', 'Kenyatta Kuhn');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (37, 'Participant', 'Miss Kaci Lebsack');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (38, 'Organizer', 'Macy Mayer DDS');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (60, 'Participant', 'Dewitt Walter');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (63, 'Participant', 'Prof. Michelle Maggio Jr.');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (64, 'Participant', 'Dr. Jaydon Renner');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (66, 'Participant', 'Justyn Lebsack');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (75, 'Participant', 'Berniece Weimann');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (86, 'Organizer', 'Neil Blick');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (90, 'Participant', 'Dedrick Ebert');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (96, 'Organizer', 'Miss Joyce Cremin');
INSERT INTO `Participants` (`Participant_ID`, `Participant_Type_Code`, `Participant_Details`) VALUES (98, 'Participant', 'Dr. Kris Deckow');


CREATE TABLE Events (
Event_ID INTEGER NOT NULL,
Service_ID INTEGER NOT NULL,
Event_Details VARCHAR(255),
PRIMARY KEY (Event_ID),
FOREIGN KEY (Service_ID) REFERENCES Services (Service_ID)
);
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (3, 5, 'Success');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (8, 8, 'Success');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (13, 8, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (16, 2, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (17, 5, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (38, 6, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (40, 6, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (43, 8, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (48, 8, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (57, 5, 'Success');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (60, 2, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (74, 2, 'Success');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (80, 5, 'Success');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (95, 2, 'Fail');
INSERT INTO `Events` (`Event_ID`, `Service_ID`, `Event_Details`) VALUES (96, 2, 'Success');


CREATE TABLE Participants_in_Events (
Event_ID INTEGER NOT NULL,
Participant_ID INTEGER NOT NULL,
PRIMARY KEY (Event_ID, Participant_ID),
FOREIGN KEY (Participant_ID) REFERENCES Participants (Participant_ID),
FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID)
);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (3, 26);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (3, 66);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (8, 86);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (13, 64);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (13, 90);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (16, 60);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (17, 37);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (17, 66);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (38, 66);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (40, 37);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (40, 86);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (57, 90);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (60, 26);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (80, 36);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (80, 66);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (80, 96);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (95, 63);
INSERT INTO `Participants_in_Events` (`Event_ID`, `Participant_ID`) VALUES (96, 90);
