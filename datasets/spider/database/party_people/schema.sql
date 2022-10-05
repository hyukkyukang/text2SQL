
PRAGMA foreign_keys = ON;


CREATE TABLE "region" (
"Region_ID" int,
"Region_name" text,
"Date" text,
"Label" text,
"Format" text,
"Catalogue" text,
PRIMARY KEY ("Region_ID")
);


INSERT INTO  "region" VALUES (1,"United Kingdom","1 July 2002","Parlophone","CD","540 3622");
INSERT INTO  "region" VALUES (2,"United Kingdom","1 July 2002","Parlophone","2× LP","539 9821");
INSERT INTO  "region" VALUES (3,"Japan","3 July 2002","Toshiba-EMI","CD","TOCP-66045");
INSERT INTO  "region" VALUES (4,"United States","16 July 2002","Astralwerks","CD","ASW 40362");
INSERT INTO  "region" VALUES (5,"United States","16 July 2002","Astralwerks","CD digipak","ASW 40522");



CREATE TABLE "party" (
"Party_ID" int,
"Minister" text,
"Took_office" text,
"Left_office" text,
"Region_ID" int,
"Party_name" text,
PRIMARY KEY ("Party_ID"),
FOREIGN KEY (`Region_ID`) REFERENCES `region`(`Region_ID`)
);

CREATE TABLE "member" (
"Member_ID" int,
"Member_Name" text,
"Party_ID" text,
"In_office" text,
PRIMARY KEY ("Member_ID"),
FOREIGN KEY (`Party_ID`) REFERENCES `party`(`Party_ID`)
);


INSERT INTO  "party" VALUES ("1","Dr. Kwame Nkrumah (MP)","1957","1958",1,"Convention Peoples Party");
INSERT INTO  "party" VALUES ("2","Kojo Botsio (MP)","1958","1959",2,"Progress Party");
INSERT INTO  "party" VALUES ("3","Ebenezer Ako-Adjei (MP)","1959","1960",3,3);
INSERT INTO  "party" VALUES ("4","Imoru Egala (MP)","1960","1961",4,"Convention Union Party");
INSERT INTO  "party" VALUES ("5","Ebenezer Ako-Adjei (MP)","1961","1962",5,"Sinefine Party");


INSERT INTO  "member" VALUES (1,"Hon Tony Abbott",3,"1994–present");
INSERT INTO  "member" VALUES (2,"Hon Dick Adams",2,"1993–2013");
INSERT INTO  "member" VALUES (3,"Anthony Albanese",2,"1996–present");
INSERT INTO  "member" VALUES (4,"Hon John Anderson",1,"1989–2007");
INSERT INTO  "member" VALUES (5,"Peter Andren",3,"1996–2007");
INSERT INTO  "member" VALUES (6,"Hon Kevin Andrews",3,"1991–present");
INSERT INTO  "member" VALUES (7,"Hon Fran Bailey",3,"1990–1993, 1996–2010");
INSERT INTO  "member" VALUES (8,"Hon Bruce Baird",3,"2001–2007");
INSERT INTO  "member" VALUES (9,"Mark Baker",3,"2004–2007");
INSERT INTO  "member" VALUES (10,"Hon Bob Baldwin",3,"2001–present");
INSERT INTO  "member" VALUES (11,"Phil Barresi",3,"1996–2007");
INSERT INTO  "member" VALUES (12,"Kerry Bartlett",1,"1996–2007");
INSERT INTO  "member" VALUES (13,"Hon Kim Beazley",2,"1980–2007");
INSERT INTO  "member" VALUES (14,"Hon Arch Bevis",2,"1990–2010");
INSERT INTO  "member" VALUES (15,"Hon Bruce Billson",3,"1996–present");


CREATE TABLE "party_events" (
"Event_ID" int,
"Event_Name" text,
"Party_ID" int,
"Member_in_charge_ID" int,
PRIMARY KEY ("Event_ID"),
FOREIGN KEY (`Party_ID`) REFERENCES `party`(`Party_ID`),
FOREIGN KEY (`Member_in_charge_ID`) REFERENCES `member`(`Member_ID`)
);


INSERT INTO  "party_events" VALUES (1,"Annaual Meeting", 1,4);
INSERT INTO  "party_events" VALUES (2,"Conference", 1,12);
INSERT INTO  "party_events" VALUES (3,"Annaual Meeting", 2,2);
INSERT INTO  "party_events" VALUES (4,"Budget Meeting", 2,3);
INSERT INTO  "party_events" VALUES (5,"Annaual Meeting", 3,10);
INSERT INTO  "party_events" VALUES (6,"Election Meeting", 3,11);
INSERT INTO  "party_events" VALUES (7,"Budget Meeting", 3,15);
INSERT INTO  "party_events" VALUES (8,"Election Meeting", 1,4);
