PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "player" (
"Player_ID" int,
"Sponsor_name" text,
"Player_name" text,
"Gender" text,
"Residence" text,
"Occupation" text,
"Votes" int,
"Rank" text,
PRIMARY KEY ("Player_ID")
);
INSERT INTO player VALUES(1,'Brandon—Souris','Jean Luc Bouché','M','Brandon','Locomotive Engineer',6055,'2nd');
INSERT INTO player VALUES(2,'Charleswood—St. James—Assiniboia','Fiona Shiells','F','Winnipeg','Ministerial Assistant',7190,'3rd');
INSERT INTO player VALUES(3,'Churchill','Niki Ashton','F','Thompson','Researcher',8734,'1st');
INSERT INTO player VALUES(4,'Dauphin—Swan River—Marquette','Ron Strynadka','M','Birtle','Retired',4914,'2nd');
INSERT INTO player VALUES(5,'Elmwood—Transcona','Jim Maloway','M','Winnipeg','Small Businessman',14355,'1st');
INSERT INTO player VALUES(6,'Kildonan—St. Paul','Ross Eadie','M','Winnipeg','Self Employed / Consultant',12093,'2nd');
INSERT INTO player VALUES(7,'Portage—Lisgar','Mohamed Alli','M','Winnipeg','Distribution Centre Associate',2353,'4th');
INSERT INTO player VALUES(8,'Provencher','Ross C. Martin','M','Oakbank','Design Coordinator',4947,'2nd');
INSERT INTO player VALUES(9,'Saint Boniface','Matt Schaubroeck','M','Winnipeg','Student',5502,'3rd');
INSERT INTO player VALUES(10,'Selkirk—Interlake','Patricia Cordner','F','Selkirk','Retired',9506,'2nd');
INSERT INTO player VALUES(11,'Winnipeg Centre','Pat Martin','M','Winnipeg','Parliamentarian',12285,'1st');
INSERT INTO player VALUES(12,'Winnipeg North','Judy Wasylycia-Leis','F','Winnipeg','Parliamentarian',14097,'1st');
INSERT INTO player VALUES(13,'Winnipeg South','Sean Robert','M','Winnipeg','Product Consultant - MLCC',4673,'3rd');
INSERT INTO player VALUES(14,'Winnipeg South Centre','Rachel Heinrichs','F','Winnipeg','Student',5490,'3rd');
CREATE TABLE IF NOT EXISTS "club" (
"Club_ID" int,
"Club_name" text,
"Region" text,
"Start_year" int,
PRIMARY KEY ("Club_ID")
);
INSERT INTO club VALUES(1,'AIK','USA',2009);
INSERT INTO club VALUES(2,'BK Häcken','UK',1998);
INSERT INTO club VALUES(3,'Djurgårdens IF','USA',2005);
INSERT INTO club VALUES(4,'Gefle IF','Korea',2001);
INSERT INTO club VALUES(5,'Halmstads BK','Russia',2000);
INSERT INTO club VALUES(6,'Helsingborgs IF','France',2011);
CREATE TABLE IF NOT EXISTS "coach" (
"Coach_ID" int,
"Coach_name" text,
"Gender" text,
"Club_ID" int,
"Rank" int,
PRIMARY KEY ("Coach_ID"),
FOREIGN KEY (`Club_ID`) REFERENCES `club`(`Club_ID`)
);
INSERT INTO coach VALUES(1,'Jameson Tomas','M',1,1);
INSERT INTO coach VALUES(2,'Joe Fabbri','F',1,2);
INSERT INTO coach VALUES(3,'Robert Chen','M',3,3);
INSERT INTO coach VALUES(4,'James Wong','M',3,4);
INSERT INTO coach VALUES(5,'Smith Brown','M',1,5);
CREATE TABLE IF NOT EXISTS "player_coach" (
"Player_ID" int,
"Coach_ID" int,
"Starting_year" int,
PRIMARY KEY ("Player_ID","Coach_ID"),
FOREIGN KEY (`Player_ID`) REFERENCES `player`(`Player_ID`),
FOREIGN KEY (`Coach_ID`) REFERENCES `coach`(`Coach_ID`)
);
INSERT INTO player_coach VALUES(1,1,2010);
INSERT INTO player_coach VALUES(2,1,2011);
INSERT INTO player_coach VALUES(3,1,2012);
INSERT INTO player_coach VALUES(4,2,2013);
INSERT INTO player_coach VALUES(6,3,2012);
INSERT INTO player_coach VALUES(10,3,2011);
INSERT INTO player_coach VALUES(14,5,2010);
CREATE TABLE IF NOT EXISTS "match_result" (
"Rank" int,
"Club_ID" int,
"Gold" int,
"Big_Silver" int,
"Small_Silver" int,
"Bronze" int,
"Points" int,
PRIMARY KEY ("Rank","Club_ID"),
FOREIGN KEY (`Club_ID`) REFERENCES `club`(`Club_ID`)
);
INSERT INTO match_result VALUES(1,1,20,14,9,8,168);
INSERT INTO match_result VALUES(2,2,13,11,16,9,139);
INSERT INTO match_result VALUES(3,3,12,9,4,7,102);
INSERT INTO match_result VALUES(4,4,5,12,10,8,89);
INSERT INTO match_result VALUES(5,5,7,7,9,10,84);
INSERT INTO match_result VALUES(6,6,6,6,6,6,66);
COMMIT;

