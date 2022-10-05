
PRAGMA foreign_keys = ON;

CREATE TABLE "people" (
"People_ID" int,
"Name" text,
"Country" text,
"Is_Male" text,
"Age" int,
PRIMARY KEY ("People_ID")
);



INSERT INTO  "people" VALUES ("1","Mike Weir","Canada","T",34);
INSERT INTO  "people" VALUES ("2","Juli Hanson","Sweden","F",32);
INSERT INTO  "people" VALUES ("3","Ricky Barnes","United States","T",30);
INSERT INTO  "people" VALUES ("4","Summer Duval","United States","F",30);
INSERT INTO  "people" VALUES ("5","Todd Hamilton","United States","T",27);
INSERT INTO  "people" VALUES ("6","Annie Mediate","United States","F",26);
INSERT INTO  "people" VALUES ("7","Lucas Glover","United States","T",31);
INSERT INTO  "people" VALUES ("8","Joe O'Hair","United States","F",31);
INSERT INTO  "people" VALUES ("9","Graeme McDowell","Northern Ireland","T",34);
INSERT INTO  "people" VALUES ("10","Jamie Mickelson","United States","F",36);
INSERT INTO  "people" VALUES ("11","Adam Scott","Australia","T",26);
INSERT INTO  "people" VALUES ("12","Danny Toms","United States","F",25);


CREATE TABLE "church" (
"Church_ID" int,
"Name" text,
"Organized_by" text,
"Open_Date" int,
"Continuation_of" text,
PRIMARY KEY ("Church_ID")
);


INSERT INTO  "church" VALUES (1,"Pure Church of Christ","Wycam Clark","1831","Church of Christ");
INSERT INTO  "church" VALUES (2,"Independent Church","– Hoton","1832","Church of Christ");
INSERT INTO  "church" VALUES (3,"Church of Christ","Ezra Booth","1836","Church of the Latter Day Saints");
INSERT INTO  "church" VALUES (4,"Church of Christ (Parrishite)","Warren Parrish","1837","Church of the Latter Day Saints");
INSERT INTO  "church" VALUES (5,"Alston Church","Isaac Russell","1839","Church of Jesus Christ of Latter Day Saints");
INSERT INTO  "church" VALUES (6,"Church of Christ","William Chubby","1830","Church of Jesus Christ of Latter Day Saints");
INSERT INTO  "church" VALUES (7,"Church of Jesus Christ, the Bride, the Lamb's Wife","George M. Hinkle","1840","Church of Jesus Christ of Latter Day Saints");
INSERT INTO  "church" VALUES (8,"Church of Christ","Hiram Page","1842","Church of Jesus Christ of Latter Day Saints");
INSERT INTO  "church" VALUES (9,"True Church of Jesus Christ of Latter Day Saints","William Law","1844","Church of Jesus Christ of Latter Day Saints");


CREATE TABLE "wedding" (
"Church_ID" int,
"Male_ID" int,
"Female_ID" int,
"Year" int,
PRIMARY KEY ("Church_ID","Male_ID","Female_ID"),
FOREIGN KEY ("Church_ID") REFERENCES `church`("Church_ID"),
FOREIGN KEY ("Male_ID") REFERENCES `people`("People_ID"),
FOREIGN KEY ("Female_ID") REFERENCES `people`("People_ID")
);

INSERT INTO  "wedding" VALUES (1,1,2,"2014");
INSERT INTO  "wedding" VALUES (3,3,4,"2015");
INSERT INTO  "wedding" VALUES (5,5,6,"2016");
INSERT INTO  "wedding" VALUES (4,7,8,"2016");

