PRAGMA foreign_keys = ON;


CREATE TABLE "country" (
    "Country_id" int,
    "Country_name" text,
    "Capital" text,
    "Official_native_language" text,
    PRIMARY KEY ("Country_id")
);


CREATE TABLE `team` (
      `Team_id` int,
      `Name` text,
      PRIMARY KEY (`Team_id`)
) ;

INSERT INTO `team` (`Team_id`, `Name`) VALUES (1, 'Columbus Crew');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (2, 'Evalyn Feil');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (3, 'Anais VonRueden');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (4, 'Miami Fusion');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (5, 'Enrique Osinski');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (6, 'Brown Erdman');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (7, 'Los Angeles Galaxy');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (8, 'Berneice Hand');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (9, 'Ryley Goldner');
INSERT INTO `team` (`Team_id`, `Name`) VALUES (10, 'D.C. United');

CREATE TABLE "match_season" (
    "Season" real,
    "Player" text,
    "Position" text,
    "Country" int,
    "Team" int,
    "Draft_Pick_Number" int,
    "Draft_Class" text,
    "College" text,
    PRIMARY KEY ("Season"),
    FOREIGN KEY (`Country`) REFERENCES `country`(`Country_id`),
    FOREIGN KEY (`Team`) REFERENCES `team`(`Team_id`)
);


CREATE TABLE "player" (
    "Player_ID" int,
    "Player" text,
    "Years_Played" text,
    "Total_WL" text,
    "Singles_WL" text,
    "Doubles_WL" text,
    "Team" int,
    PRIMARY KEY ("Player_ID"),
    FOREIGN KEY (`Team`) REFERENCES `team`(`Team_id`)
);



INSERT INTO  "country" VALUES (1,"Indonesia","Jakarta","Bahasa Indonesia");
INSERT INTO  "country" VALUES (2,"Iran","Tehran","Persian ( Arabic script )");
INSERT INTO  "country" VALUES (3,"Iraq","Baghdad","Arabic ( Arabic script ) Kurdish");
INSERT INTO  "country" VALUES (4,"Ireland","Dublin","Irish English");
INSERT INTO  "country" VALUES (5,"Isle of Man","Douglas","English Manx");
INSERT INTO  "country" VALUES (6,"United States","Washington","English");

INSERT INTO  "match_season" VALUES ("1996","Steve Ralston Category:Articles with hCards","Midfielder",6,1,18,"1996 MLS College Draft","Florida International");
INSERT INTO  "match_season" VALUES ("1997","Mike Duhaney Category:Articles with hCards","Defender",6,2,87,"1996 MLS Inaugural Player Draft","UNLV");
INSERT INTO  "match_season" VALUES ("1998","Ben Olsen Category:Articles with hCards","Midfielder",4,3,2,"Project-40","Virginia");
INSERT INTO  "match_season" VALUES ("1999","Jay Heaps Category:Articles with hCards","Defender",5,4,5,"1999 MLS College Draft","Duke");
INSERT INTO  "match_season" VALUES ("2000","Carlos Bocanegra Category:Articles with hCards","Defender",5,5,4,"2000 MLS SuperDraft","UCLA");
INSERT INTO  "match_season" VALUES ("2001","Rodrigo Faria Category:Articles with hCards","Forward",4,5,13,"2001 MLS SuperDraft","Concordia College");
INSERT INTO  "match_season" VALUES ("2002","Kyle Martino Category:Articles with hCards","Midfielder",6,3,8,"2002 MLS SuperDraft","Virginia");
INSERT INTO  "match_season" VALUES ("2003","Damani Ralph Category:Articles with hCards","Forward",1,2,18,"2003 MLS SuperDraft","Connecticut");
INSERT INTO  "match_season" VALUES ("2004","Clint Dempsey Category:Articles with hCards","Midfielder",6,3,8,"2004 MLS SuperDraft","Furman");
INSERT INTO  "match_season" VALUES ("2005","Michael Parkhurst Category:Articles with hCards","Defender",6,4,9,"2005 MLS SuperDraft","Wake Forest");
INSERT INTO  "match_season" VALUES ("2006","Jonathan Bornstein Category:Articles with hCards","Defender",6,10,37,"2006 MLS SuperDraft","UCLA");
INSERT INTO  "match_season" VALUES ("2007","Maurice Edu Category:Articles with hCards","Midfielder",4,9,1,"2007 MLS SuperDraft","Maryland");
INSERT INTO  "match_season" VALUES ("2008","Sean Franklin Category:Articles with hCards","Defender",6,5,4,"2008 MLS SuperDraft","Cal State Northridge");
INSERT INTO  "match_season" VALUES ("2009","Omar Gonzalez Category:Articles with hCards","Defender",6,5,3,"2009 MLS SuperDraft","Maryland");
INSERT INTO  "match_season" VALUES ("2010","Andy Najar Category:Articles with hCards","Midfielder",4,5,6,"D.C. United Academy","none");
INSERT INTO  "match_season" VALUES ("2011","C. J. Sapong Category:Articles with hCards","Forward",6,3,10,"2011 MLS SuperDraft","James Madison");


INSERT INTO  "player" VALUES (1,"Cho Soong-Jae (630)","1 (2011)","2–0","1–0","1–0",1);
INSERT INTO  "player" VALUES (2,"Chung Hong (717)","1 (2011)","0–0","0–0","0–0",1);
INSERT INTO  "player" VALUES (3,"Im Kyu-tae (492)","8 (2003–2005, 2007–2011)","6–9","5–7","1–2",1);
INSERT INTO  "player" VALUES (4,"Jeong Suk-Young (793)","2 (2010–2011)","1–2","1–2","0–0",1);
INSERT INTO  "player" VALUES (5,"Kim Hyun-Joon (908)","2 (2010–2011)","3–4","2–1","1–3",2);
INSERT INTO  "player" VALUES (6,"Kim Young-Jun (474)","4 (2003–2004, 2010–2011)","6–4","6–3","0–1",4);
INSERT INTO  "player" VALUES (7,"Lim Yong-Kyu (288)","3 (2009–2011)","7–6","5–6","2–0",6);
INSERT INTO  "player" VALUES (8,"Seol Jae-Min (none)","2 (2010-2011)","2–2","0–0","2–2",1);
INSERT INTO  "player" VALUES (9,"An Jae-Sung","3 (2005, 2007–2008)","4–3","3–2","1–1",1);
INSERT INTO  "player" VALUES (10,"Bae Nam-Ju","2 (1988, 1990)","1–3","0–2","1–1",8);

