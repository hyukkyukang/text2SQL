PRAGMA foreign_keys = ON;

CREATE TABLE "artist" (
    "Artist_ID" int,
    "Artist" text,
    "Age" int,
    "Famous_Title" text,
    "Famous_Release_date" text,
    PRIMARY KEY ("Artist_ID")
);



CREATE TABLE "volume" (
    "Volume_ID" int,
    "Volume_Issue" text,
    "Issue_Date" text,
    "Weeks_on_Top" real,
    "Song" text,
    "Artist_ID" int,
    PRIMARY KEY ("Volume_ID"),
    FOREIGN KEY (`Artist_ID`) REFERENCES `artist`(`Artist_ID`)
);




INSERT INTO  "artist" VALUES (1,"Gorgoroth",34,"Bergen 1996","November 2007");
INSERT INTO  "artist" VALUES (2,"Ophiolatry",35,"Transmutation","January 21, 2008");
INSERT INTO  "artist" VALUES (3,"Ophiolatry",22,"Antievangelistical Process (re-release)","2009");
INSERT INTO  "artist" VALUES (4,"Black Flame",18,"Imperivm","June 23, 2008");
INSERT INTO  "artist" VALUES (5,"Tangorodrim",35,"Unholy Metal Way (re-release)","2009");
INSERT INTO  "artist" VALUES (6,"Tangorodrim",27,"Those Who Unleashed (re-release)","2009");
INSERT INTO  "artist" VALUES (7,"Triumfall",49,"Antithesis of All Flesh","June 15, 2009");


INSERT INTO  "volume" VALUES (1,"45:14 §","27 December 1986 - 10 January","3"," The Way",1);
INSERT INTO  "volume" VALUES (2,"45:15","17 January","1"," Everybody Have Fun Tonight ",2);
INSERT INTO  "volume" VALUES (3,"45:16","24 January","1"," Walk Like an Egyptian ",1);
INSERT INTO  "volume" VALUES (4,"45:21-22","28 February - 7 March","2"," Touch Me (I Want Your Body) ",2);
INSERT INTO  "volume" VALUES (5,"46:5","9 May","1"," With or Without You ",1);
INSERT INTO  "volume" VALUES (6,"46:6-8","16 May - 30 May","3"," (I Just) Died in Your Arms ",1);
INSERT INTO  "volume" VALUES (7,"46:9","6 June","1"," La Isla Bonita ",4);
INSERT INTO  "volume" VALUES (8,"46:10","13 June","1","Looking for a New Love",5);
INSERT INTO  "volume" VALUES (9,"46:14-15","11 July - 18 July","2"," Always ",6);
INSERT INTO  "volume" VALUES (10,"46:16","25 July","1","Head to Toe ",5);



CREATE TABLE "music_festival" (
    "ID" int,
    "Music_Festival" text,
    "Date_of_ceremony" text,
    "Category" text,
    "Volume" int,
    "Result" text,
    PRIMARY KEY (`ID`),
    FOREIGN KEY (`Volume`) REFERENCES `volume`(`Volume_ID`)
);

INSERT INTO  "music_festival" VALUES (1,"34th England Academy Prize","18 February 2011","Best Song",1,"Nominated");
INSERT INTO  "music_festival" VALUES (2,"34th Japan Academy Prize","18 February 2011","Best Lyrics",2,"Nominated");
INSERT INTO  "music_festival" VALUES (3,"34th European Academy Prize","18 February 2011","Best Song",3,"Awarded");
INSERT INTO  "music_festival" VALUES (4,"36th Japan Academy Prize","18 February 2011","Best Song",4,"Awarded");
INSERT INTO  "music_festival" VALUES (5,"34th USA Academy Prize","18 February 2011","Best Song",5,"Nominated");
INSERT INTO  "music_festival" VALUES (6,"40th Japan Academy Prize","18 February 2011","Best Song",6,"Nominated");
INSERT INTO  "music_festival" VALUES (7,"37th Sweden Academy Prize","18 February 2011","Best Lyrics",7,"Nominated");
INSERT INTO  "music_festival" VALUES (8,"37th Canadian Academy Prize","18 February 2011","Best Lyrics",8,"Nominated");
INSERT INTO  "music_festival" VALUES (9,"35th China Academy Prize","18 February 2011","Best Sound Song",9,"Awarded");
