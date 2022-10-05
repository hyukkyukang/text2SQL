PRAGMA foreign_keys = ON;

CREATE TABLE "candidate" (
"Candidate_ID" int,
"People_ID" int,
"Poll_Source" text,
"Date" text,
"Support_rate" real,
"Consider_rate" real,
"Oppose_rate" real,
"Unsure_rate" real,
PRIMARY KEY ("Candidate_ID"),
FOREIGN KEY ("People_ID") REFERENCES "people"("People_ID")
);

CREATE TABLE "people" (
"People_ID" int,
"Sex" text,
"Name" text,
"Date_of_Birth" text,
"Height" real,
"Weight" real,
PRIMARY KEY ("People_ID")
);

INSERT INTO  "people" VALUES (1,"M","Hubert Henno","06.10.1976","188","83");
INSERT INTO  "people" VALUES (2,"M","Dominique Daquin","10.11.1972","197","85");
INSERT INTO  "people" VALUES (3,"F","Stéphane Antiga","03.02.1976","200","94");
INSERT INTO  "people" VALUES (4,"M","Laurent Capet","05.05.1972","202","92");
INSERT INTO  "people" VALUES (5,"F","Frantz Granvorka","10.03.1976","195","90");
INSERT INTO  "people" VALUES (6,"M","Vincent Montméat","01.09.1977","196","88");
INSERT INTO  "people" VALUES (7,"M","Loïc De Kergret","20.08.1970","193","89");
INSERT INTO  "people" VALUES (8,"M","Philippe Barça-Cysique","22.04.1977","194","88");
INSERT INTO  "people" VALUES (9,"M","Guillaume Samica","28.09.1981","196","82");

INSERT INTO  "candidate" VALUES (1,1,"WNBC/Marist Poll","Feb 12–15, 2007","0.25","0.30","0.43","0.2");
INSERT INTO  "candidate" VALUES (2,3,"WNBC/Marist Poll","Feb 12–15, 2007","0.17","0.42","0.32","0.9");
INSERT INTO  "candidate" VALUES (3,4,"FOX News/Opinion Dynamics Poll","Feb 13–14, 2007","0.18","0.34","0.44","0.3");
INSERT INTO  "candidate" VALUES (4,6,"Newsweek Poll","Nov 9–10, 2006","0.33","0.20","0.45","0.2");
INSERT INTO  "candidate" VALUES (5,7,"Newsweek Poll","Nov 9–10, 2006","0.24","0.30","0.32","0.4");
INSERT INTO  "candidate" VALUES (6,9,"Newsweek Poll","Nov 9–10, 2006","0.24","0.27","0.43","0.2");

