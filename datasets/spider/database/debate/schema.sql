
PRAGMA foreign_keys = ON;

CREATE TABLE "people" (
"People_ID" int,
"District" text,
"Name" text,
"Party" text,
"Age" int,
PRIMARY KEY ("People_ID")
);

CREATE TABLE "debate" (
"Debate_ID" int,
"Date" text,
"Venue" text,
"Num_of_Audience" int,
PRIMARY KEY ("Debate_ID")
);

INSERT INTO  "people" VALUES (1,"New York 1","Luther C. Carter","Republican",35);
INSERT INTO  "people" VALUES (2,"New York 2","James Humphrey","Republican",38);
INSERT INTO  "people" VALUES (3,"New York 3","Daniel Sickles","Democratic",46);
INSERT INTO  "people" VALUES (4,"New York 4","Thomas J. Barr","Independent Democrat",48);
INSERT INTO  "people" VALUES (5,"New York 5","William B. Maclay","Democratic",36);
INSERT INTO  "people" VALUES (6,"New York 6","John Cochrane","Democratic",46);
INSERT INTO  "people" VALUES (7,"New York 7","George Briggs","Republican",42);
INSERT INTO  "people" VALUES (8,"New York 8","Horace F. Clark","Anti-Lecompton Democrat",45);
INSERT INTO  "people" VALUES (9,"New York 9","John B. Haskin","Anti-Lecompton Democrat",43);
INSERT INTO  "people" VALUES (10,"New York 10","Charles Van Wyck","Republican",36);



INSERT INTO  "debate" VALUES (1,"October 21, 2011","Manama , Bahrain",342);
INSERT INTO  "debate" VALUES (2,"December 17, 2014","Doha , Qatar",134);
INSERT INTO  "debate" VALUES (3,"August 3, 2015","Manama , Bahrain",90);
INSERT INTO  "debate" VALUES (4,"October 27, 2015","Manama , Bahrain",209);
INSERT INTO  "debate" VALUES (5,"January 12, 2017","Dubai , UAE",313);
INSERT INTO  "debate" VALUES (6,"January 21, 2017","Abu Dhabi , UAE",159);




CREATE TABLE "debate_people" (
"Debate_ID" int,
"Affirmative" int,
"Negative" int,
"If_Affirmative_Win" bool,
PRIMARY KEY ("Debate_ID","Affirmative","Negative"),
FOREIGN KEY ("Debate_ID") REFERENCES `debate`("Debate_ID"),
FOREIGN KEY ("Affirmative") REFERENCES `people`("People_ID"),
FOREIGN KEY ("Negative") REFERENCES `people`("People_ID")
);


INSERT INTO  "debate_people" VALUES (1,1,10,"F");
INSERT INTO  "debate_people" VALUES (5,2,8,"F");
INSERT INTO  "debate_people" VALUES (3,4,7,"T");
INSERT INTO  "debate_people" VALUES (6,5,6,"T");
INSERT INTO  "debate_people" VALUES (4,5,8,"F");
