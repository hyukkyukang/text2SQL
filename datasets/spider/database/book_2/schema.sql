PRAGMA foreign_keys = ON;

CREATE TABLE "publication" (
"Publication_ID" int,
"Book_ID" int,
"Publisher" text,
"Publication_Date" text,
"Price" real,
PRIMARY KEY ("Publication_ID"),
FOREIGN KEY ("Book_ID") REFERENCES "book"("Book_ID")
);

CREATE TABLE "book" (
"Book_ID" int,
"Title" text,
"Issues" real,
"Writer" text,
PRIMARY KEY ("Book_ID")
);


INSERT INTO  "book" VALUES (1,"The Black Lamb","6","Timothy Truman");
INSERT INTO  "book" VALUES (2,"Bloody Mary","4","Garth Ennis");
INSERT INTO  "book" VALUES (3,"Bloody Mary : Lady Liberty","4","Garth Ennis");
INSERT INTO  "book" VALUES (4,"BrainBanx","6","Elaine Lee");
INSERT INTO  "book" VALUES (5,"Cyberella","12","Howard Chaykin");
INSERT INTO  "book" VALUES (6,"Dead Corps","4","Christopher Hinz");
INSERT INTO  "book" VALUES (7,"The Dome: Ground Zero","1","Dave Gibbons");
INSERT INTO  "book" VALUES (8,"Gemini Blood","9","Christopher Hinz");
INSERT INTO  "book" VALUES (9,"Michael Moorcock's Multiverse","12","Michael Moorcock");
INSERT INTO  "book" VALUES (10,"Sheva's War","5","Christopher Moeller");


INSERT INTO  "publication" VALUES (1,1,"Pearson","August 2008","15000000");
INSERT INTO  "publication" VALUES (2,3,"Thomson Reuters","March 2008","6000000");
INSERT INTO  "publication" VALUES (3,4,"Wiley","June 2006","4100000");
INSERT INTO  "publication" VALUES (4,5,"Wiley","October 2005","3000000");
INSERT INTO  "publication" VALUES (5,7,"Springer Nature","August 2008","3000000");
INSERT INTO  "publication" VALUES (6,9,"Pearson","March 2007","2000000");
INSERT INTO  "publication" VALUES (7,10,"Bertelsmann","April 2007","2000000");
