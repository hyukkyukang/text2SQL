PRAGMA foreign_keys = ON;

CREATE TABLE "musical" (
"Musical_ID" int,
"Name" text,
"Year" int,
"Award" text,
"Category" text,
"Nominee" text,
"Result" text,
PRIMARY KEY ("Musical_ID")
);

CREATE TABLE "actor" (
"Actor_ID" int,
"Name" text,
"Musical_ID" int,
"Character" text,
"Duration" text,
"age" int,
PRIMARY KEY ("Actor_ID"),
FOREIGN KEY ("Musical_ID") REFERENCES "actor"("Actor_ID")
);

INSERT INTO  "musical" VALUES (1,"The Phantom of the Opera","1986","Tony Award","Best Book of a Musical","Bob Fosse","Nominated");
INSERT INTO  "musical" VALUES (2,"Les Misérables","1986","Tony Award","Best Performance by a Leading Actor in a Musical","Cleavant Derricks","Nominated");
INSERT INTO  "musical" VALUES (3,"Wicked","1986","Tony Award","Best Direction of a Musical","Bob Fosse","Nominated");
INSERT INTO  "musical" VALUES (4,"West Side Story","1986","Tony Award","Best Choreography","Bob Fosse","Won");
INSERT INTO  "musical" VALUES (5,"Rent","1986","Drama Desk Award","Outstanding Actor in a Musical","Cleavant Derricks","Nominated");
INSERT INTO  "musical" VALUES (6,"The Book of Mormon","1986","Drama Desk Award","Outstanding Director of a Musical","Bob Fosse","Nominated");
INSERT INTO  "musical" VALUES (7,"Chicago","1986","Drama Desk Award","Outstanding Choreography","Bob Fosse","Won");

INSERT INTO  "actor" VALUES (1,"Ray Meagher",1,"Alf Stewart","1988—","26");
INSERT INTO  "actor" VALUES (2,"Tom Oliver",1,"Lou Carpenter","1988, 1992—","22");
INSERT INTO  "actor" VALUES (3,"Lynne McGranger",2,"Irene Roberts","1993—","21");
INSERT INTO  "actor" VALUES (4,"Kate Ritchie",2,"Sally Fletcher","1988–2008, 2013","20");
INSERT INTO  "actor" VALUES (5,"Alan Fletcher",4,"Karl Kennedy","1994—","20");
INSERT INTO  "actor" VALUES (6,"Jackie Woodburne",6,"Susan Kennedy","1994—","20");
INSERT INTO  "actor" VALUES (7,"Ryan Moloney",6,"Toadfish Rebecchi","1995, 1996—","18");
INSERT INTO  "actor" VALUES (8,"Ian Smith",6,"Harold Bishop","1987–1991, 1996–2009, 2011","17");
INSERT INTO  "actor" VALUES (9,"Stefan Dennis",6,"Paul Robinson","1985–1992, 1993, 2004—","17");

