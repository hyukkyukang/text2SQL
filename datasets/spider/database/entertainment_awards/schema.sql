PRAGMA foreign_keys = ON;


CREATE TABLE "festival_detail" (
"Festival_ID" int,
"Festival_Name" text,
"Chair_Name" text,
"Location" text,
"Year" int,
"Num_of_Audience" int,
PRIMARY KEY ("Festival_ID")
);

INSERT INTO  "festival_detail" VALUES (1,"Panasonic Awards","Raymond Floyd","United States","2006","152");
INSERT INTO  "festival_detail" VALUES (2,"Flower Awards","Charles Coody","United States","2007","155");
INSERT INTO  "festival_detail" VALUES (3,"Cherry Awards","Doug Ford","United States","2007","160");
INSERT INTO  "festival_detail" VALUES (4,"Gobel Awards","Arnold Palmer","United States","2008","160");
INSERT INTO  "festival_detail" VALUES (5,"LA Awards","Lucy Lu","United States","2010","161");


CREATE TABLE artwork (
"Artwork_ID" int,
"Type" text,
"Name" text,
PRIMARY KEY ("Artwork_ID")
);


INSERT INTO  artwork VALUES (1,"Program Music/Variety Show","Indonesian Idol");
INSERT INTO  artwork VALUES (2,"Program Music/Variety Show","I Know");
INSERT INTO  artwork VALUES (3,"Presenter Music/Variety Show","Loving you");
INSERT INTO  artwork VALUES (4,"Program Music/Variety Show","Why");
INSERT INTO  artwork VALUES (5,"Presenter Music/Variety Show","Boys");
INSERT INTO  artwork VALUES (6,"Program Talent Show","Cats");
INSERT INTO  artwork VALUES (7,"Presenter Talent Show","Daniel Mananta");
INSERT INTO  artwork VALUES (8,"Program Talent Show","Martin");
INSERT INTO  artwork VALUES (9,"Presenter Talent Show","Back Home");

CREATE TABLE nomination (
"Artwork_ID" int,
"Festival_ID" int,
"Result" text,
PRIMARY KEY ("Artwork_ID","Festival_ID"),
FOREIGN KEY ("Artwork_ID") REFERENCES `artwork`("Artwork_ID"),
FOREIGN KEY ("Festival_ID") REFERENCES `festival_detail`("Festival_ID")
);

INSERT INTO  nomination VALUES (1,2,"Nominated");
INSERT INTO  nomination VALUES (2,2,"Won");
INSERT INTO  nomination VALUES (3,1,"Nominated");
INSERT INTO  nomination VALUES (4,1,"Won");
INSERT INTO  nomination VALUES (8,5,"Nominated");
INSERT INTO  nomination VALUES (9,5,"Nominated");

