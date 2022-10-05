
PRAGMA foreign_keys = ON;

CREATE TABLE "party" (
"Party_ID" int,
"Party_Theme" text,
"Location" text,
"First_year" text,
"Last_year" text,
"Number_of_hosts" int,
PRIMARY KEY ("Party_ID")
);

CREATE TABLE "host" (
"Host_ID" int,
"Name" text,
"Nationality" text,
"Age" text,
PRIMARY KEY ("Host_ID")
);

INSERT INTO  "party" VALUES (1,"Spring","Hemkade 48 Zaandam","2000","2001","5");
INSERT INTO  "party" VALUES (2,"Club Q-BASE","Hemkade 48 Zaandam","2002","2002","23");
INSERT INTO  "party" VALUES (3,"Hardcore Resurrection","Various locations","2000","2003","4");
INSERT INTO  "party" VALUES (4,"Teqnology","Heineken Music Hall Amsterdam","2002","2004","6");
INSERT INTO  "party" VALUES (5,"Qlubtempo","Hemkade 48 Zaandam, Heineken Music Hall Amsterdam","2001","2007","31");
INSERT INTO  "party" VALUES (6,"QrimeTime","Heineken Music Hall Amsterdam","2004","2007","4");
INSERT INTO  "party" VALUES (7,"In Qontrol","RAI Amsterdam","2004","2010","7");
INSERT INTO  "party" VALUES (8,"Houseqlassics","Various locations","1999","2010","18");


INSERT INTO  "host" VALUES (1,"Austin Daye","United States",43);
INSERT INTO  "host" VALUES (2,"Lloyd Daniels","United States",37);
INSERT INTO  "host" VALUES (3,"Kornel David","Hungary",31);
INSERT INTO  "host" VALUES (4,"Antonio Davis","United States",26);
INSERT INTO  "host" VALUES (5,"Ed Davis","United States",45);
INSERT INTO  "host" VALUES (6,"Hubert Davis","United States",47);
INSERT INTO  "host" VALUES (7,"Carlos Delfino","Argentina",30);
INSERT INTO  "host" VALUES (8,"Justin Dentmon","United States",40);
INSERT INTO  "host" VALUES (9,"DeMar DeRozan","United States",31);
INSERT INTO  "host" VALUES (10,"Derrick Dial","United States",60);



CREATE TABLE "party_host" (
"Party_ID" int,
"Host_ID" int,
"Is_Main_in_Charge" bool,
PRIMARY KEY ("Party_ID","Host_ID"),
FOREIGN KEY ("Host_ID") REFERENCES `host`("Host_ID"),
FOREIGN KEY ("Party_ID") REFERENCES `party`("Party_ID")
);

INSERT INTO  "party_host" VALUES (1,1,"T");
INSERT INTO  "party_host" VALUES (8,7,"T");
INSERT INTO  "party_host" VALUES (6,10,"F");
INSERT INTO  "party_host" VALUES (4,2,"T");
INSERT INTO  "party_host" VALUES (2,5,"F");
INSERT INTO  "party_host" VALUES (6,3,"T");

