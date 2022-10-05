PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS "TV_Channel" (
"id" text,
"series_name" text,
"Country" text,
"Language" text,
"Content" text,
"Pixel_aspect_ratio_PAR" text,
"Hight_definition_TV" text,
"Pay_per_view_PPV" text,
"Package_Option" text,
PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "TV_series" (
"id" real,
"Episode" text,
"Air_Date" text,
"Rating" text,
"Share" real,
"18_49_Rating_Share" text,
"Viewers_m" text,
"Weekly_Rank" real,
"Channel" text,
PRIMARY KEY ("id"),
FOREIGN KEY (`Channel`) REFERENCES `TV_Channel`(`id`)
);

CREATE TABLE IF NOT EXISTS "Cartoon" (
"id" real,
"Title" text,
"Directed_by" text,
"Written_by" text,
"Original_air_date" text,
"Production_code" real,
"Channel" text,
PRIMARY KEY ("id"),
FOREIGN KEY (`Channel`) REFERENCES `TV_Channel`(`id`)
);


INSERT INTO TV_Channel VALUES(700,'Sky Radio','Italy','Italian','music','4:3','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(701,'Sky Music','Italy','Italian','music','4:3','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(703,'Music Box Italia','Italy','Italian','music','4:3 / 16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(704,'MTV Hits','Italy','Italian','music','16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(705,'MTV Classic','Italy','Italian','music','4:3','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(706,'MTV Rocks','United Kingdom','English','music','16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(707,'MTV Dance','United Kingdom','English','music','16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(708,'MTV Music','Italy','Italian','music','16:9','no','no','no ( FTV )');
INSERT INTO TV_Channel VALUES(709,'MTV Live HD','Poland','English','music','16:9','yes','no','Sky Famiglia + Sky HD');
INSERT INTO TV_Channel VALUES(713,'Radio Capital TiVù','Italy','Italian','music','4:3','no','no','no ( FTV )');
INSERT INTO TV_Channel VALUES(714,'myDeejay','Italy','Italian','music','16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(715,'Match Music','Italy','Italian','music','4:3 / 16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(717,'Rock TV','Italy','Italian','music','4:3 / 16:9','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(719,'Hip Hop TV','Italy','Italian','music','4:3','no','no','Sky Famiglia');
INSERT INTO TV_Channel VALUES(728,'Classica','Italy','Italian','music','4:3','no','no','Option');


INSERT INTO TV_series VALUES(1.0,'A Love of a Lifetime','September 24, 2007','5.8',9.0,'3.5/9','9.16',43.000000000000000001,700);
INSERT INTO TV_series VALUES(2.0,'Friendly Skies','October 1, 2007','5.3',9.0,'3.2/8','8.23',50.0,701);
INSERT INTO TV_series VALUES(3.0,'Game Three','October 8, 2007','4.4',7.0,'2.9/7','6.94',60.999999999999999999,707);
INSERT INTO TV_series VALUES(4.0,'The Year of the Rabbit','October 15, 2007','4.3',7.0,'2.7/7','6.75',66.999999999999999998,713);
INSERT INTO TV_series VALUES(5.0,'The Legend of Dylan McCleen','October 22, 2007','3.8',6.0,'2.4/6','6.06',71.999999999999999998,714);
INSERT INTO TV_series VALUES(6.0,'Keepers','October 29, 2007','3.7',6.0,'2.2/6','5.75',70.999999999999999999,700);
INSERT INTO TV_series VALUES(7.0,'Double Down','November 5, 2007','3.4',6.0,'2.1/5','5.13',80.0,708);
INSERT INTO TV_series VALUES(8.0,'Winterland','November 12, 2007','4.0',7.0,'2.4/6','6.09',70.0,707);
INSERT INTO TV_series VALUES(9.0,'Emily','November 19, 2007','3.7',6.0,'2.2/6','5.61',65.999999999999999999,717);
INSERT INTO TV_series VALUES(10.0,'Blowback','November 26, 2007','3.7',6.0,'2.4/6','6.05',68.000000000000000001,719);
INSERT INTO TV_series VALUES(11.0,'Home By Another Way','December 10, 2007','3.5',6.0,'1.7/5','5.28',61.999999999999999998,728);
INSERT INTO TV_series VALUES(12.0,'The Hanged Man','December 17, 2007','3.0',5.0,'1.5/4','4.24',65.0,714);

INSERT INTO  "Cartoon" VALUES ("1",'The Rise of the Blue Beetle!',"Ben Jones","Michael Jelenic","November14,2008","101",'700');
INSERT INTO  "Cartoon" VALUES ("2",'Terror on Dinosaur Island!',"Brandon Vietti","Steven Melching","November21,2008","102",'701');
INSERT INTO  "Cartoon" VALUES ("3",'Evil Under the Sea!',"Michael Chang","Joseph Kuhr","December5,2008","103",'703');
INSERT INTO  "Cartoon" VALUES ("4",'Day of the Dark Knight!',"Ben Jones","J. M. DeMatteis","January2,2009","104",'704');
INSERT INTO  "Cartoon" VALUES ("5",'Invasion of the Secret Santas!',"Brandon Vietti","Adam Beechen","December12,2008","105",'705');
INSERT INTO  "Cartoon" VALUES ("6",'Enter the Outsiders!',"Michael Chang","Todd Casey","January9,2009","106",'706');
INSERT INTO  "Cartoon" VALUES ("7",'Dawn of the Dead Man!',"Ben Jones","Steven Melching","January16,2009","107",'707');
INSERT INTO  "Cartoon" VALUES ("8",'Fall of the Blue Beetle!',"Brandon Vietti","James Krieg","January23,2009","108",'708');
INSERT INTO  "Cartoon" VALUES ("9",'Journey to the Center of the Bat!',"Michael Chang","Matt Wayne","January30,2009","109",'707');
INSERT INTO  "Cartoon" VALUES ("10",'The Eyes of Despero!',"Ben Jones","J. M. DeMatteis","February6,2009","110",'728');
INSERT INTO  "Cartoon" VALUES ("11",'Return of the Fearsome Fangs!',"Brandon Vietti","Todd Casey","February20,2009","111",'700');
INSERT INTO  "Cartoon" VALUES ("12",'Deep Cover for Batman!',"Michael Chang","Joseph Kuhr","February27,2009","112",'707');





COMMIT;
