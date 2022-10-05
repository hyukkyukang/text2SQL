
PRAGMA foreign_keys = ON;

CREATE TABLE "employee" (
"Employee_ID" int,
"Name" text,
"Age" int,
"City" text,
PRIMARY KEY ("Employee_ID")
);


INSERT INTO  "employee" VALUES (1, "George Chuter",23,"Bristol");
INSERT INTO  "employee" VALUES (2,"Lee Mears",29,"Bath");
INSERT INTO  "employee" VALUES (3,"Mark Regan",43,"Bristol");
INSERT INTO  "employee" VALUES (4,"Jason Hobson",30,"Bristol");
INSERT INTO  "employee" VALUES (5,"Tim Payne",29,"Wasps");
INSERT INTO  "employee" VALUES (6,"Andrew Sheridan",28,"Sale");
INSERT INTO  "employee" VALUES (7,"Matt Stevens",29,"Bath");
INSERT INTO  "employee" VALUES (8,"Phil Vickery",40,"Wasps");
INSERT INTO  "employee" VALUES (9,"Steve Borthwick",32,"Bath");
INSERT INTO  "employee" VALUES (10,"Louis Deacon",36,"Leicester");



CREATE TABLE "shop" (
"Shop_ID" int,
"Name" text,
"Location" text,
"District" text,
"Number_products" int,
"Manager_name" text,
PRIMARY KEY ("Shop_ID")
);


INSERT INTO  "shop" VALUES (1,"FC Haka","Valkeakoski","Tehtaan kenttä","3516","Olli Huttunen");
INSERT INTO  "shop" VALUES (2,"HJK","Helsinki","Finnair Stadium","10770","Antti Muurinen");
INSERT INTO  "shop" VALUES (3,"FC Honka","Espoo","Tapiolan Urheilupuisto","6000","Mika Lehkosuo");
INSERT INTO  "shop" VALUES (4,"FC Inter","Turku","Veritas Stadion","10000","Job Dragtsma");
INSERT INTO  "shop" VALUES (5,"FF Jaro","Jakobstad","Jakobstads Centralplan","5000","Mika Laurikainen");
INSERT INTO  "shop" VALUES (6,"FC KooTeePee","Kotka","Arto Tolsa Areena","4780","Tommi Kautonen");
INSERT INTO  "shop" VALUES (7,"KuPS","Kuopio","Magnum Areena","3500","Kai Nyyssönen");
INSERT INTO  "shop" VALUES (8,"FC Lahti","Lahti","Lahden Stadion","15000","Ilkka Mäkelä");
INSERT INTO  "shop" VALUES (9,"IFK Mariehamn","Mariehamn","Wiklöf Holding Arena","1600","Pekka Lyyski");


CREATE TABLE "hiring" (
"Shop_ID" int,
"Employee_ID" int,
"Start_from" text,
"Is_full_time" bool,
PRIMARY KEY ("Employee_ID"),
FOREIGN KEY (`Shop_ID`) REFERENCES `shop`(`Shop_ID`),
FOREIGN KEY (`Employee_ID`) REFERENCES `employee`(`Employee_ID`)
);

INSERT INTO  "hiring" VALUES (1,1,"2009","T");
INSERT INTO  "hiring" VALUES (1,2,"2003","T");
INSERT INTO  "hiring" VALUES (8,3,"2011","F");
INSERT INTO  "hiring" VALUES (4,4,"2012","T");
INSERT INTO  "hiring" VALUES (5,5,"2013","T");
INSERT INTO  "hiring" VALUES (2,6,"2010","F");
INSERT INTO  "hiring" VALUES (6,7,"2008","T");




CREATE TABLE "evaluation" (
"Employee_ID" text,
"Year_awarded" text,
"Bonus" real,
PRIMARY KEY ("Employee_ID","Year_awarded"),
FOREIGN KEY (`Employee_ID`) REFERENCES `employee`(`Employee_ID`)
);


INSERT INTO  "evaluation" VALUES (1,"2011", 3000);
INSERT INTO  "evaluation" VALUES (2,"2015", 3200);
INSERT INTO  "evaluation" VALUES (1,"2016", 2900);
INSERT INTO  "evaluation" VALUES (4,"2017", 3200);
INSERT INTO  "evaluation" VALUES (7,"2018", 3200);
INSERT INTO  "evaluation" VALUES (10,"2016", 4000);

