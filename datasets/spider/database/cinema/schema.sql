
PRAGMA foreign_keys = ON;


CREATE TABLE "film" (
"Film_ID" int,
"Rank_in_series" int,
"Number_in_season" int,
"Title" text,
"Directed_by" text,
"Original_air_date" text,
"Production_code" text,
PRIMARY KEY ("Film_ID")
);

CREATE TABLE "cinema" (
"Cinema_ID" int,
"Name" text,
"Openning_year" int,
"Capacity" int,
"Location" text,
PRIMARY KEY ("Cinema_ID"));

INSERT INTO  "film" VALUES (1,"26","1","The Case of the Mystery Weekend","Bill Schreiner","September 21–25, 1992","50021–50025");
INSERT INTO  "film" VALUES (2,"27","2","The Case of the Smart Dummy","Bill Schreiner","September 28–October 2, 1992","50231–50235");
INSERT INTO  "film" VALUES (3,"28","3","The Case: Off the Record","Bill Schreiner","October 5–9, 1992","50011–50015");
INSERT INTO  "film" VALUES (4,"29","4","The Case of the Bermuda Triangle","Jesus Salvador Treviño","October 12–16, 1992","50251–50255");
INSERT INTO  "film" VALUES (5,"30","5","The Case of the Piggy Banker","Bill Schreiner","October 19–23, 1992","50241–50245");

INSERT INTO  "cinema" VALUES (1,"Codling","2010","1100","County Wicklow");
INSERT INTO  "cinema" VALUES (2,"Carrowleagh","2012","368","County Cork");
INSERT INTO  "cinema" VALUES (3,"Dublin Array","2015","364","County Dublin");
INSERT INTO  "cinema" VALUES (4,"Glenmore","2009","305","County Clare");
INSERT INTO  "cinema" VALUES (5,"Glenough","2010","325","County Tipperary");
INSERT INTO  "cinema" VALUES (6,"Gortahile","2010","208","County Laois");
INSERT INTO  "cinema" VALUES (7,"Grouse Lodge","2011","203","County Tipperary");
INSERT INTO  "cinema" VALUES (8,"Moneypoint","2011","225","County Clare");
INSERT INTO  "cinema" VALUES (9,"Mount Callan","2011","908","County Clare");
INSERT INTO  "cinema" VALUES (10,"Oriel","2013","330","County Louth");

CREATE TABLE "schedule" (
"Cinema_ID" int,
"Film_ID" int,
"Date" text,
"Show_times_per_day" int,
"Price" float,
PRIMARY KEY ("Cinema_ID","Film_ID"),
FOREIGN KEY (`Film_ID`) REFERENCES `film`(`Film_ID`),
FOREIGN KEY (`Cinema_ID`) REFERENCES `cinema`(`Cinema_ID`)
);


INSERT INTO  "schedule" VALUES (1,1,"21 May",5,12.99);
INSERT INTO  "schedule" VALUES (1,2,"21 May",3,12.99);
INSERT INTO  "schedule" VALUES (1,3,"21 Jun",2,8.99);
INSERT INTO  "schedule" VALUES (2,1,"11 July",5,9.99);
INSERT INTO  "schedule" VALUES (6,5,"2 Aug",4,12.99);
INSERT INTO  "schedule" VALUES (9,4,"20 May",5,9.99);
INSERT INTO  "schedule" VALUES (10,1,"19 May",5,15.99);

