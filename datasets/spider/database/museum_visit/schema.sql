
PRAGMA foreign_keys = ON;

CREATE TABLE "museum" (
"Museum_ID" int,
"Name" text,
"Num_of_Staff" int,
"Open_Year" text,
PRIMARY KEY ("Museum_ID")
);



INSERT INTO  "museum" VALUES ("1","Plaza Museum","62","2000");
INSERT INTO  "museum" VALUES ("2","Capital Plaza Museum","25","2012");
INSERT INTO  "museum" VALUES ("3","Jefferson Development Museum","18","2010");
INSERT INTO  "museum" VALUES ("4","Willow Grande Museum","17","2011");
INSERT INTO  "museum" VALUES ("5","RiverPark Museum","16","2008");
INSERT INTO  "museum" VALUES ("6","Place Tower Museum","16","2008");
INSERT INTO  "museum" VALUES ("7","Central City District Residential Museum","15","2010");
INSERT INTO  "museum" VALUES ("8","ZirMed Gateway Museum","12","2009");

CREATE TABLE "visitor" (
"ID" int,
"Name" text,
"Level_of_membership" int,
"Age" int,
PRIMARY KEY ("ID")
);

INSERT INTO  "visitor" VALUES (1,"Gonzalo Higuaín ",8,35);
INSERT INTO  "visitor" VALUES (2,"Guti Midfielder",5,28);
INSERT INTO  "visitor" VALUES (3,"Arjen Robben",1,27);
INSERT INTO  "visitor" VALUES (4,"Raúl Brown",2,56);
INSERT INTO  "visitor" VALUES (5,"Fernando Gago",6,36);
INSERT INTO  "visitor" VALUES (6,"Rafael van der Vaart",1,25);

CREATE TABLE "visit" (
"Museum_ID" int,
"visitor_ID" text,
"Num_of_Ticket" int,
"Total_spent" real,
PRIMARY KEY ("Museum_ID","visitor_ID"),
FOREIGN KEY ("Museum_ID") REFERENCES `museum`("Museum_ID"),
FOREIGN KEY ("visitor_ID") REFERENCES `visitor`("ID")
);

INSERT INTO  "visit" VALUES (1,5,20,320.14);
INSERT INTO  "visit" VALUES (2,5,4,89.98);
INSERT INTO  "visit" VALUES (4,3,10,320.44);
INSERT INTO  "visit" VALUES (2,3,24,209.98);
INSERT INTO  "visit" VALUES (4,6,3,20.44);
INSERT INTO  "visit" VALUES (8,6,2,19.98);



