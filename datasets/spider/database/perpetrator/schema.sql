PRAGMA foreign_keys = ON;

CREATE TABLE "perpetrator" (
"Perpetrator_ID" int,
"People_ID" int,
"Date" text,
"Year" real,
"Location" text,
"Country" text,
"Killed" int,
"Injured" int,
PRIMARY KEY ("Perpetrator_ID"),
FOREIGN KEY ("People_ID") REFERENCES "people"("People_ID")
);

CREATE TABLE "people" (
"People_ID" int,
"Name" text,
"Height" real,
"Weight" real,
"Home Town" text,
PRIMARY KEY ("People_ID")
);



INSERT INTO  "people" VALUES (1,"Ron Baxter","6.4","205","Los Angeles, CA");
INSERT INTO  "people" VALUES (2,"Brent Boyd","6.3","185","Baton Rouge, LA");
INSERT INTO  "people" VALUES (3,"Tyrone Brayan","6.7","220","Placentia, CA");
INSERT INTO  "people" VALUES (4,"Rob Cunningham","6.8","215","Westport, CT");
INSERT INTO  "people" VALUES (5,"John Danks","6.6","190","Beaver Dam, KY");
INSERT INTO  "people" VALUES (6,"Ovie Dotson","6.5","200","San Antonio, TX");
INSERT INTO  "people" VALUES (7,"Gary Goodner","6.7","220","Denton, TX");
INSERT INTO  "people" VALUES (8,"Henry Johnson","6.6","190","Los Angeles, CA");
INSERT INTO  "people" VALUES (9,"Jim Krivacs","6.1","160","Indianapolis, IN");
INSERT INTO  "people" VALUES (10,"John Moore","6.1","170","Altoona, PA");
INSERT INTO  "people" VALUES (11,"Mike Murphy","6.8","215","Austin, TX");


INSERT INTO  "perpetrator" VALUES (1,1,"04.26 April 26/27","1982","Uiryeong","South Korea","56","37");
INSERT INTO  "perpetrator" VALUES (2,3,"11.18 Nov. 18","1995","Zhaodong","China","32","16");
INSERT INTO  "perpetrator" VALUES (3,4,"05.21 May 21","1938","Kaio","Japan","30","3");
INSERT INTO  "perpetrator" VALUES (4,6,"09.20 Sep. 20","1994","Beijing","China","23","80");
INSERT INTO  "perpetrator" VALUES (5,8,"04.00 April","1950","Nainital","India","22","0");

