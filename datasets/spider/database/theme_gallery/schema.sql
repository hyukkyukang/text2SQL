
PRAGMA foreign_keys = ON;

CREATE TABLE "artist" (
"Artist_ID" int,
"Name" text,
"Country" text,
"Year_Join" int,
"Age" int,
PRIMARY KEY ("Artist_ID")
);

INSERT INTO  "artist" VALUES (1,"Vijay Singh","Fiji","1998",45);
INSERT INTO  "artist" VALUES (2,"John Daly","United States","1991",46);
INSERT INTO  "artist" VALUES (3,"Paul Azinger","United States","1993",47);
INSERT INTO  "artist" VALUES (4,"Jeff Sluman","United States","1988",57);
INSERT INTO  "artist" VALUES (5,"Mark Brooks","United States","1996",48);
INSERT INTO  "artist" VALUES (6,"Nick Price","Zimbabwe","1994",48);
INSERT INTO  "artist" VALUES (7,"Larry Nelson","United States","1981",50);



CREATE TABLE "exhibition" (
"Exhibition_ID" int,
"Year" int,
"Theme" text,
"Artist_ID" int,
"Ticket_Price" real,
PRIMARY KEY ("Exhibition_ID"),
FOREIGN KEY (`Artist_ID`) REFERENCES `artist`(`Artist_ID`)
);

INSERT INTO  "exhibition" VALUES (1,"2004","Santa Claus",1,"19.95");
INSERT INTO  "exhibition" VALUES (2,"2005","Christmas stocking",2,"19.95");
INSERT INTO  "exhibition" VALUES (3,"2006","Santa Claus and Rudolph the Red-Nosed Reindeer",4,"14.95");
INSERT INTO  "exhibition" VALUES (4,"2007","Christmas Tree",1,"16.95");
INSERT INTO  "exhibition" VALUES (5,"2008","Spring",6,"29.95");
INSERT INTO  "exhibition" VALUES (6,"2009","Summer",3,"9.95");



CREATE TABLE "exhibition_record" (
"Exhibition_ID" int,
"Date" text,
"Attendance" int,
PRIMARY KEY ("Exhibition_ID","Date"),
FOREIGN KEY (`Exhibition_ID`) REFERENCES `exhibition`(`Exhibition_ID`)
);



INSERT INTO  "exhibition_record" VALUES (1,"December 2",965);
INSERT INTO  "exhibition_record" VALUES (1,"December 5",1098);
INSERT INTO  "exhibition_record" VALUES (1,"December 7",2983);
INSERT INTO  "exhibition_record" VALUES (2,"December 9",1239);
INSERT INTO  "exhibition_record" VALUES (2,"December 12",1313);
INSERT INTO  "exhibition_record" VALUES (2,"December 13",10908);
INSERT INTO  "exhibition_record" VALUES (3,"December 16",1134);
INSERT INTO  "exhibition_record" VALUES (3,"February 19",1233);
INSERT INTO  "exhibition_record" VALUES (3,"February 21",9089);
INSERT INTO  "exhibition_record" VALUES (4,"February 23",3139);
INSERT INTO  "exhibition_record" VALUES (5,"February 25",24808);
INSERT INTO  "exhibition_record" VALUES (5,"February 26",13142);
INSERT INTO  "exhibition_record" VALUES (5,"February 28",4231);

