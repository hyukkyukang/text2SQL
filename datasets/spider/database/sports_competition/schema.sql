
PRAGMA foreign_keys = ON;

CREATE TABLE "club" (
"Club_ID" int,
"name" text,
"Region" text,
"Start_year" text,
PRIMARY KEY ("Club_ID")
);

INSERT INTO  "club" VALUES (1,"AIB","USA","2009");
INSERT INTO  "club" VALUES (2,"BK Slide","UK","1998");
INSERT INTO  "club" VALUES (3,"IFG","China","2005");
INSERT INTO  "club" VALUES (4,"ASC","Japan","2001");
INSERT INTO  "club" VALUES (5,"HGS2","England","2000");
INSERT INTO  "club" VALUES (6,"HSBIF","Brazil","2011");


CREATE TABLE "club_rank" (
"Rank" real,
"Club_ID" int,
"Gold" real,
"Silver" real,
"Bronze" real,
"Total" real,
PRIMARY KEY ("Rank","Club_ID")
FOREIGN KEY (`Club_ID`) REFERENCES `club`(`Club_ID`)
);

CREATE TABLE "player" (
"Player_ID" int,
"name" text,
"Position" text,
"Club_ID" int,
"Apps" real,
"Tries" real,
"Goals" text,
"Points" real,
PRIMARY KEY ("Player_ID"),
FOREIGN KEY (`Club_ID`) REFERENCES `club`(`Club_ID`)
);

CREATE TABLE "competition" (
"Competition_ID" int,
"Year" real,
"Competition_type" text,
"Country" text,
PRIMARY KEY ("Competition_ID")
);

INSERT INTO  "club_rank" VALUES ("1",2,"11","11","9","31");
INSERT INTO  "club_rank" VALUES ("2",3,"8","7","6","21");
INSERT INTO  "club_rank" VALUES ("3",1,"7","4","2","13");
INSERT INTO  "club_rank" VALUES ("4",4,"4","2","6","12");
INSERT INTO  "club_rank" VALUES ("5",5,"3","3","0","6");
INSERT INTO  "club_rank" VALUES ("6",6,"2","1","0","3");

INSERT INTO  "player" VALUES (1,"Michael Platt","Full Back",1,"20","5","0","20");
INSERT INTO  "player" VALUES (2,"Dave Halley","Right Wing",2,"23","9","0","36");
INSERT INTO  "player" VALUES (3,"James Evans","Right Centre",1,"30","9","0","36");
INSERT INTO  "player" VALUES (4,"Tame Tupou","Left Wing",2,"10","3","0","12");
INSERT INTO  "player" VALUES (5,"Iestyn Harris","Stand Off",4,"27","3","50/60","110");
INSERT INTO  "player" VALUES (6,"Paul Deacon (c)","Scrum Half",4,"20","3","90/106","188");
INSERT INTO  "player" VALUES (7,"Joe Vagana","Prop",5,"19","1","0/1","4");
INSERT INTO  "player" VALUES (8,"Terry Newton","Hooker",5,"26","9","0","36");
INSERT INTO  "player" VALUES (9,"Andy Lynch","Prop",2,"29","5","0","20");
INSERT INTO  "player" VALUES (10,"David Solomona","Second Row",2,"24","5","0","20");
INSERT INTO  "player" VALUES (11,"Glenn Morrison (vc)","Second Row",2,"14","6","0","24");
INSERT INTO  "player" VALUES (12,"Jamie Langley (vc)","Loose Forward",2,"28","2","0","8");
INSERT INTO  "player" VALUES (13,"Chris Feather","Prop",3,"13","1","0","4");
INSERT INTO  "player" VALUES (14,"Matt Cook","Second Row",4,"17","4","0","16");
INSERT INTO  "player" VALUES (15,"Sam Burgess","Loose Forward",4,"23","8","0","32");

INSERT INTO  "competition" VALUES (1,"2006","Friendly","Italy");
INSERT INTO  "competition" VALUES (2,"2006","Friendly","Spain");
INSERT INTO  "competition" VALUES (3,"2006","Friendly","Australia");
INSERT INTO  "competition" VALUES (4,"2006","Friendly","Russia");
INSERT INTO  "competition" VALUES (5,"2007","Friendly","Russia");
INSERT INTO  "competition" VALUES (6,"2007","Friendly","Australia");
INSERT INTO  "competition" VALUES (7,"2007","Tournament","Russia");
INSERT INTO  "competition" VALUES (8,"2007","Tournament","Slovenia");
INSERT INTO  "competition" VALUES (9,"2007","Tournament","Slovenia");
INSERT INTO  "competition" VALUES (10,"2007","Friendly","Italy");
INSERT INTO  "competition" VALUES (11,"2007","Friendly","Ireland");

CREATE TABLE "competition_result" (
"Competition_ID" int,
"Club_ID_1" int,
"Club_ID_2" int,
"Score" text,
PRIMARY KEY ("Competition_ID","Club_ID_1","Club_ID_2"),
FOREIGN KEY (`Club_ID_1`) REFERENCES `club`(`Club_ID`),
FOREIGN KEY (`Club_ID_2`) REFERENCES `club`(`Club_ID`),
FOREIGN KEY (`Competition_ID`) REFERENCES `competition`(`Competition_ID`)
);


INSERT INTO  "competition_result" VALUES (1,1,2,"11:10");
INSERT INTO  "competition_result" VALUES (2,3,2,"25:2");
INSERT INTO  "competition_result" VALUES (10,4,2,"13:10");
INSERT INTO  "competition_result" VALUES (4,1,2,"12:9");
INSERT INTO  "competition_result" VALUES (5,1,4,"10:3");
INSERT INTO  "competition_result" VALUES (6,1,6,"10:11");
