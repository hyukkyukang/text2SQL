
PRAGMA foreign_keys = ON;

CREATE TABLE "manufacturer" (
    "Manufacturer_ID" int,
    "Open_Year" real,
    "Name" text,
    "Num_of_Factories" int,
    "Num_of_Shops" int,
    PRIMARY KEY ("Manufacturer_ID")
);



INSERT INTO  "manufacturer" VALUES (1,"1980","Chevrolet House","36","8");
INSERT INTO  "manufacturer" VALUES (2,"1990","IKEA","21","19");
INSERT INTO  "manufacturer" VALUES (3,"1991","Ford Make","12","2");
INSERT INTO  "manufacturer" VALUES (4,"1992","Jiaju","1","35");
INSERT INTO  "manufacturer" VALUES (5,"2000","Chevrolet","38","24");
INSERT INTO  "manufacturer" VALUES (6,"2001","Dodge","3","7");
INSERT INTO  "manufacturer" VALUES (7,"2008","Tomorrow","12","4");


CREATE TABLE "furniture" (
    "Furniture_ID" int,
    "Name" text,
    "Num_of_Component" int,
    "Market_Rate" real,
    PRIMARY KEY ("Furniture_ID")
);

INSERT INTO  "furniture" VALUES (1,"Billiard table",14,"52.5");
INSERT INTO  "furniture" VALUES (2,"Chabudai",4,"40.0");
INSERT INTO  "furniture" VALUES (3,"Bookcase",6,"1.0");
INSERT INTO  "furniture" VALUES (4,"Hatstand",5,"0.5");
INSERT INTO  "furniture" VALUES (5,"Bench",5,"3.5");
INSERT INTO  "furniture" VALUES (6,"Four-poster bed",3,"2.0");
INSERT INTO  "furniture" VALUES (7,"Dining set",12,"0.5");


CREATE TABLE "furniture_manufacte" (
    "Manufacturer_ID" int,
    "Furniture_ID" int,
    "Price_in_Dollar" real,
    PRIMARY KEY ("Manufacturer_ID","Furniture_ID"),
    FOREIGN KEY ("Manufacturer_ID") REFERENCES `manufacturer`("Manufacturer_ID"),
    FOREIGN KEY ("Furniture_ID") REFERENCES `furniture`("Furniture_ID")
);

INSERT INTO  "furniture_manufacte" VALUES (1,3,239);
INSERT INTO  "furniture_manufacte" VALUES (4,2,450);
INSERT INTO  "furniture_manufacte" VALUES (7,7,2124);
INSERT INTO  "furniture_manufacte" VALUES (5,1,443);
INSERT INTO  "furniture_manufacte" VALUES (7,4,1234);

