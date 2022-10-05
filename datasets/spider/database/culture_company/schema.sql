PRAGMA foreign_keys = ON;

CREATE TABLE "book_club" (
"book_club_id" int,
"Year" int,
"Author_or_Editor" text,
"Book_Title" text,
"Publisher" text,
"Category" text,
"Result" text,
PRIMARY KEY ("book_club_id")
);

INSERT INTO  "book_club" VALUES (1, "1989","Michael Nava","Goldenboy","Alyson","Gay M/SF","Won [A ]");
INSERT INTO  "book_club" VALUES (2, "1989","Donald Ward","Death Takes the Stage","St. Martin's Press","Gay M/SF","Nom");
INSERT INTO  "book_club" VALUES (3, "1989","Michael Bishop","Unicorn Mountain","William Morrow","Gay M/SF","Nom");
INSERT INTO  "book_club" VALUES (4, "1989","Joseph Hansen","Obedience","Mysterious Press","Gay M/SF","Nom");
INSERT INTO  "book_club" VALUES (5, "1989","George Baxt","Whoӳ Next","International Polygonics","Gay M/SF","Nom");
INSERT INTO  "book_club" VALUES (6, "1989","Antoinette Azolakov","Skiptrace","Banned Books","Lesb. M/SF","Won");
INSERT INTO  "book_club" VALUES (7,"1989","Claire McNab","Lessons In Murder","Naiad Press","Lesb. M/SF","Nom");
INSERT INTO  "book_club" VALUES (8, "1989","Judy Grahn","Mundaneӳ World","Crossing Press","Lesb. M/SF","Nom");
INSERT INTO  "book_club" VALUES (9, "1989","Dolores Klaich","Heavy Gilt","Naiad Press","Lesb. M/SF","Nom");
INSERT INTO  "book_club" VALUES (10, "1989","Sandy Bayer","The Crystal Curtain","Alyson","Lesb. M/SF","Nom");
INSERT INTO  "book_club" VALUES (11, "1990","Jeffrey N. McMahan","Somewhere in the Night","Alyson","Gay SF/F","Won [B ]");
INSERT INTO  "book_club" VALUES (12, "1990","Thom Nickels","Walking Water / After All This","Banned Books","Gay SF/F","Nom");


CREATE TABLE "movie" (
"movie_id" int,
"Title" text,
"Year" int,
"Director" text,
"Budget_million" real,
"Gross_worldwide" int,
PRIMARY KEY("movie_id")
);

INSERT INTO  "movie" VALUES (1, "The Boondock Saints","1999","Troy Duffy","6","30471");
INSERT INTO  "movie" VALUES (2, "The Big Kahuna","1999","John Swanbeck","7","3728888");
INSERT INTO  "movie" VALUES (3, "Storm Catcher","1999","Anthony Hickox","5","40500");
INSERT INTO  "movie" VALUES (4, "Jill Rips","2000","Anthony Hickox","4","456774");
INSERT INTO  "movie" VALUES (5, "The Whole Nine Yards","2000","Jonathan Lynn","41.3","106371651");
INSERT INTO  "movie" VALUES (6, "Battlefield Earth","2000","Roger Christian","44","29725663");
INSERT INTO  "movie" VALUES (7, "Get Carter","2000","Stephen Kay","63.6","19412993");
INSERT INTO  "movie" VALUES (8, "The Art of War","2000","Christian Duguay","60","40400425");
INSERT INTO  "movie" VALUES (9, "Agent Red","2000","Damian Lee","47","543356");
INSERT INTO  "movie" VALUES (10, "3000 Miles to Graceland","2001","Demian Lichtenstein","62","18720175");



CREATE TABLE "culture_company" (
"Company_name" text,
"Type" text,
"Incorporated_in" text,
"Group_Equity_Shareholding" real,
"book_club_id" text,
"movie_id" text,
PRIMARY KEY("Company_name"),
FOREIGN KEY ("book_club_id") REFERENCES "book_club"("book_club_id"),
FOREIGN KEY ("movie_id") REFERENCES "movie"("movie_id")
);

INSERT INTO  "culture_company" VALUES ("Culture China","Corporate","China","18.77",1,2);
INSERT INTO  "culture_company" VALUES ("Culture China Cargo","Joint Venture","China","49",2,3);
INSERT INTO  "culture_company" VALUES ("Culture Hong Kong","Joint Venture","Hong Kong","60",3,4);
INSERT INTO  "culture_company" VALUES ("Dragonair","Subsidiary","Hong Kong","100",5,7);
INSERT INTO  "culture_company" VALUES ("Cathay Pacific Culture","Subsidiary","Hong Kong","100",5,5);
INSERT INTO  "culture_company" VALUES ("Cathay Pacific Culture Services (HK) Limited","Subsidiary","Hong Kong","100",6,6);

