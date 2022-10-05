
PRAGMA foreign_keys = ON;

CREATE TABLE "product" (
"product_id" int,
"product" text,
"dimensions" text,
"dpi" real,
"pages_per_minute_color" real,
"max_page_size" text,
"interface" text,
PRIMARY KEY ("product_id")
);

CREATE TABLE "store" (
"Store_ID" int,
"Store_Name" text,
"Type" text,
"Area_size" real,
"Number_of_product_category" real,
"Ranking" int,
PRIMARY KEY ("Store_ID")
);

CREATE TABLE "district" (
"District_ID" int,
"District_name" text,
"Headquartered_City" text,
"City_Population" real,
"City_Area" real,
PRIMARY KEY ("District_ID")
);


INSERT INTO  "product" VALUES (1,"Fujitsu fi-6130 A4 Series Scanner","301 x 160 x 158","600","30","A4","USB 2.0");
INSERT INTO  "product" VALUES (2,"Plustek MobileOffice D28 Corporate","303 x 94 x 60","600","28","A4","USB 2.0");
INSERT INTO  "product" VALUES (3,"Xerox Travel Scanner 100","289 x 51 x 38","600","4","A4","USB 2.0");
INSERT INTO  "product" VALUES (4,"ScanShell 3000DN","300 x 50 x 45","600","3","A4","USB 2.0");
INSERT INTO  "product" VALUES (5,"Canon imageFORMULA P-150","280 x 95 x 40","600","10","216mm x 356mm","USB 2.0");
INSERT INTO  "product" VALUES (6,"Canon DR-2080C","298 x 209 x 99","600","36","216mm x 355mm","USB 2.0");
INSERT INTO  "store" VALUES (1,"Miramichi","City Mall","179.84","17811","2");
INSERT INTO  "store" VALUES (2,"Neguac","Village Store","26.69","1678","3");
INSERT INTO  "store" VALUES (3,"Rogersville","Village Store","7.23","1170","1");
INSERT INTO  "store" VALUES (4,"Blackville","Village Store","21.73","990","10");
INSERT INTO  "store" VALUES (5,"Doaktown","City Mall","28.74","793","9");
INSERT INTO  "district" VALUES ("1","Attock District","Attock City","94620","20");
INSERT INTO  "district" VALUES ("2","Bahawalnagar District","Bahawalnagar City","134936","13");
INSERT INTO  "district" VALUES ("3","Bahawalpur District","Bahawalpur City","530438","38");
INSERT INTO  "district" VALUES ("4","Bhakkar District","Bhakkar City","89380","15");
INSERT INTO  "district" VALUES ("5","Chakwal District","Chakwal City","113524","10");
INSERT INTO  "district" VALUES ("6","Chiniot District","Chiniot City","219254","12");
INSERT INTO  "district" VALUES ("7","Dera Ghazi Khan District","Dera Ghazi Khan City","464742","22");
INSERT INTO  "district" VALUES ("8","Faisalabad District","Faisalabad City","2793721","147");
INSERT INTO  "district" VALUES ("9","Gujranwala District","Gujranwala City","1526168","75");
INSERT INTO  "district" VALUES ("10","Gujrat District","Gujrat City","328512","25");
INSERT INTO  "district" VALUES ("11","Hafizabad District","Hafizabad City","165936","10");
INSERT INTO  "district" VALUES ("12","Jhang District","Jhang City","365198","28");
INSERT INTO  "district" VALUES ("13","Jhelum District","Jhelum City","172073","22");
INSERT INTO  "district" VALUES ("14","Kasur District","Kasur City","314617","18");
INSERT INTO  "district" VALUES ("15","Khanewal District","Khanewal City","165038","17");



CREATE TABLE "store_product" (
"Store_ID" int,
"Product_ID" int,
PRIMARY KEY ("Store_ID","Product_ID"),
FOREIGN KEY (`Store_ID`) REFERENCES `store`(`Store_ID`),
FOREIGN KEY (`Product_ID`) REFERENCES `product`(`Product_ID`)
);

INSERT INTO  "store_product" VALUES (1,1);
INSERT INTO  "store_product" VALUES (1,2);
INSERT INTO  "store_product" VALUES (1,3);
INSERT INTO  "store_product" VALUES (1,4);
INSERT INTO  "store_product" VALUES (1,6);

INSERT INTO  "store_product" VALUES (2,1);
INSERT INTO  "store_product" VALUES (3,2);
INSERT INTO  "store_product" VALUES (2,3);
INSERT INTO  "store_product" VALUES (3,4);
INSERT INTO  "store_product" VALUES (2,6);


INSERT INTO  "store_product" VALUES (5,1);
INSERT INTO  "store_product" VALUES (5,2);
INSERT INTO  "store_product" VALUES (5,3);
INSERT INTO  "store_product" VALUES (5,4);
INSERT INTO  "store_product" VALUES (5,6);



CREATE TABLE "store_district" (
"Store_ID" int,
"District_ID" int,
PRIMARY KEY ("Store_ID"),
FOREIGN KEY (`Store_ID`) REFERENCES `store`(`Store_ID`),
FOREIGN KEY (`District_ID`) REFERENCES `district`(`District_ID`)
);

INSERT INTO  "store_district" VALUES (1,15);
INSERT INTO  "store_district" VALUES (2,15);
INSERT INTO  "store_district" VALUES (3,11);
INSERT INTO  "store_district" VALUES (4,4);
INSERT INTO  "store_district" VALUES (5,3);
