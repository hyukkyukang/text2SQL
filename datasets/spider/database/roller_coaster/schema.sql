PRAGMA foreign_keys = ON;

CREATE TABLE "roller_coaster" (
"Roller_Coaster_ID" int,
"Name" text,
"Park" text,
"Country_ID" int,
"Length" real,
"Height" real,
"Speed" text,
"Opened" text,
"Status" text,
PRIMARY KEY ("Roller_Coaster_ID"),
FOREIGN KEY ("Country_ID") REFERENCES `country`("Country_ID")
);

CREATE TABLE "country" (
"Country_ID" int,
"Name" text,
"Population" int,
"Area" int,
"Languages" text,
PRIMARY KEY ("Country_ID")
);

INSERT INTO  "country" VALUES (1,"Austria","8206524","83871","German");
INSERT INTO  "country" VALUES (2,"Finland","5261008","338145","Finnish Swedish");
INSERT INTO  "country" VALUES (3,"Sweden","9047752","449964","Swedish");

INSERT INTO  "roller_coaster" VALUES (1,"Boardwalk Bullet","Kemah Boardwalk",1,"3236","96","51","August 31, 2007","Operating");
INSERT INTO  "roller_coaster" VALUES (2,"Dauling Dragon","Happy Valley",1,"3914","105","55","2012","Operating");
INSERT INTO  "roller_coaster" VALUES (3,"Hades 360","Mt. Olympus",1,"4726","136","70","May 14, 2005","Operating");
INSERT INTO  "roller_coaster" VALUES (4,"Ravine Flyer II","Waldameer",2,"2900","120","57","May 17, 2008","Operating");
INSERT INTO  "roller_coaster" VALUES (5,"Twister","Gröna Lund",2,"1574","50","37.9","2011","Operating");
INSERT INTO  "roller_coaster" VALUES (6,"The Voyage","Holiday World",3,"6442","163","67","May 6, 2006","Operating");
