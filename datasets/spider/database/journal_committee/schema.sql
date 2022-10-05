CREATE TABLE IF NOT EXISTS "journal" (
"Journal_ID" int,
"Date" text,
"Theme" text,
"Sales" int,
PRIMARY KEY ("Journal_ID")
);
INSERT INTO journal VALUES(1,'September 9, 2001','Miami Dolphins',798);
INSERT INTO journal VALUES(2,'September 23, 2001','at Jacksonville Jaguars',994);
INSERT INTO journal VALUES(4,'October 7, 2001','at Baltimore Ravens',7494);
INSERT INTO journal VALUES(5,'October 14, 2001','Tampa Bay Buccaneers',4798);
INSERT INTO journal VALUES(6,'October 21, 2001','at Detroit Lions',2940);
INSERT INTO journal VALUES(7,'October 29, 2001','at Pittsburgh Steelers',1763);
INSERT INTO journal VALUES(8,'November 4, 2001','Jacksonville Jaguars',1232);
INSERT INTO journal VALUES(9,'November 12, 2001','Baltimore Ravens',6532);
INSERT INTO journal VALUES(10,'November 18, 2001','at Cincinnati Bengals',3421);
INSERT INTO journal VALUES(11,'November 25, 2001','Pittsburgh Steelers',3342);
INSERT INTO journal VALUES(12,'December 2, 2001','at Cleveland Browns',3534);
INSERT INTO journal VALUES(13,'December 9, 2001','at Minnesota Vikings',4271);
INSERT INTO journal VALUES(14,'December 16, 2001','Green Bay Packers',2804);
INSERT INTO journal VALUES(15,'December 22, 2001','at Oakland Raiders',1934);
INSERT INTO journal VALUES(16,'December 30, 2001','Cleveland Browns',3798);
INSERT INTO journal VALUES(17,'January 6, 2002','Cincinnati Bengals',5342);
CREATE TABLE IF NOT EXISTS "editor" (
"Editor_ID" int,
"Name" text,
"Age" real,
PRIMARY KEY ("Editor_ID")
);
INSERT INTO editor VALUES(1.0,'Kamila Porczyk',34.0);
INSERT INTO editor VALUES(2.0,'Anna Powierza',35.0);
INSERT INTO editor VALUES(3.0,'Marek Siudym',20.999999999999999999);
INSERT INTO editor VALUES(4.0,'Piotr Pręgowski',43.000000000000000001);
INSERT INTO editor VALUES(5.0,'Szymon Wydra',20.0);
INSERT INTO editor VALUES(6.0,'Władysław Grzywna',24.0);
INSERT INTO editor VALUES(7.0,'Mariusz Zalejski',25.0);
INSERT INTO editor VALUES(8.0,'Grażyna Wolszczak',54.0);
INSERT INTO editor VALUES(9.0,'Maria Góralczyk',37.999999999999999999);
CREATE TABLE IF NOT EXISTS "journal_committee" (
"Editor_ID" int,
"Journal_ID" int,
"Work_Type" text,
PRIMARY KEY ("Editor_ID","Journal_ID"),
FOREIGN KEY ("Editor_ID") REFERENCES `editor`("Editor_ID"),
FOREIGN KEY ("Journal_ID") REFERENCES `journal`("Journal_ID")
);
INSERT INTO journal_committee VALUES(1,13,'Photo');
INSERT INTO journal_committee VALUES(8,17,'Article');
INSERT INTO journal_committee VALUES(6,11,'Photo');
INSERT INTO journal_committee VALUES(4,2,'Article');
INSERT INTO journal_committee VALUES(3,6,'Title');
INSERT INTO journal_committee VALUES(9,12,'Photo');
INSERT INTO journal_committee VALUES(8,4,'Photo');

