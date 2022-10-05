CREATE TABLE "basketball_match" (
"Team_ID" int,
"School_ID" int,
"Team_Name" text,
"ACC_Regular_Season" text,
"ACC_Percent" text,
"ACC_Home" text,
"ACC_Road" text,
"All_Games" text,
"All_Games_Percent" int,
"All_Home" text,
"All_Road" text,
"All_Neutral" text,
PRIMARY KEY ("Team_ID"),
FOREIGN KEY (`School_ID`) REFERENCES `university`(`School_ID`)
);

CREATE TABLE "university" (
"School_ID" int,
"School" text,
"Location" text,
"Founded" real,
"Affiliation" text,
"Enrollment" real,
"Nickname" text,
"Primary_conference" text,
PRIMARY KEY ("School_ID")
);

INSERT INTO  "basketball_match" VALUES ("1","1","North Carolina","14–2",".875","6–2","8–0","35–2",".946","14–2","13–0","9–1");
INSERT INTO  "basketball_match" VALUES ("2","2","Duke","13–3",".813","7–1","6–2","28–6",".824","15–1","8–2","5–3");
INSERT INTO  "basketball_match" VALUES ("3","4","Clemson","10–6",".625","7–1","3–5","24–10",".706","14–2","6–5","4–3");
INSERT INTO  "basketball_match" VALUES ("4","5","Virginia Tech","9–7",".563","6–2","3–5","21–14",".600","14–3","4–8","3–3");


INSERT INTO  "university" VALUES ("1","University of Delaware","Newark, DE","1743","Public","19067","Fightin' Blue Hens","Colonial Athletic Association ( D-I )");
INSERT INTO  "university" VALUES ("2","Lebanon Valley College","Annville, PA","1866","Private/Methodist","2100","Flying Dutchmen","MAC Commonwealth Conference ( D-III )");
INSERT INTO  "university" VALUES ("3","University of Rhode Island","Kingston, RI","1892","Public","19095","Rams","Atlantic 10 Conference ( D-I )");
INSERT INTO  "university" VALUES ("4","Rutgers University","New Brunswick, NJ","1766","Public","56868","Scarlet Knights","American Athletic Conference ( D-I )");
INSERT INTO  "university" VALUES ("5","Stony Brook University","Stony Brook, NY","1957","Public","23997","Seawolves","America East Conference ( D-I )");
