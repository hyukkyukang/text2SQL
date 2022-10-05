PRAGMA foreign_keys = ON;

CREATE TABLE "architect" (
"id" text,
"name" text,
"nationality" text,
"gender" text,
primary key("id")
);

CREATE TABLE "bridge" (
"architect_id" int,
"id" int,
"name" text,
"location" text,
"length_meters" real,
"length_feet" real,
primary key("id"),
foreign key ("architect_id" ) references `architect`("id")
);

CREATE TABLE "mill" (
"architect_id" int,
"id" int,
"location" text,
"name" text,
"type" text,
"built_year" int,
"notes" text,
primary key ("id"),
foreign key ("architect_id" ) references `architect`("id")
);


INSERT INTO  "architect" VALUES (1, "Frank Lloyd Wright", "American", "male");
INSERT INTO  "architect" VALUES (2, "Frank Gehry", "Canadian", "male");
INSERT INTO  "architect" VALUES (3, "Zaha Hadid", "Iraqi, British", "female");
INSERT INTO  "architect" VALUES (4, "Mies Van Der Rohe", "German, American", "male");
INSERT INTO  "architect" VALUES (5, "Le Corbusier", "Swiss, French", "male");


INSERT INTO  "bridge" VALUES (1,"1","Xian Ren Qiao (Fairy Bridge)","Guangxi , China","121","400");
INSERT INTO  "bridge" VALUES (2,"2","Landscape Arch","Arches National Park , Utah , USA","88","290");
INSERT INTO  "bridge" VALUES (3,"3","Kolob Arch","Zion National Park , Utah , USA","87","287");
INSERT INTO  "bridge" VALUES (4,"4","Aloba Arch","Ennedi Plateau , Chad","76","250");
INSERT INTO  "bridge" VALUES (5,"5","Morning Glory Natural Bridge","Negro Bill Canyon , Utah , USA","74","243");
INSERT INTO  "bridge" VALUES (5,"6","Rainbow Bridge","Glen Canyon National Recreation Area , Utah , USA","71","234");
INSERT INTO  "bridge" VALUES (4,"7","Gaotun Natural Bridge","Guizhou , China","70","230");
INSERT INTO  "bridge" VALUES (3,"8","Sipapu Natural Bridge","Natural Bridges National Monument , Utah , USA","69","225");
INSERT INTO  "bridge" VALUES (2,"9","Stevens Arch","Escalante Canyon , Utah , USA","67","220");
INSERT INTO  "bridge" VALUES (1,"10","Shipton's Arch","Xinjiang , China","65","212");
INSERT INTO  "bridge" VALUES (1,"11","Jiangzhou Arch","Guangxi , China","65","212");
INSERT INTO  "bridge" VALUES (1,"12","Hazarchishma Natural Bridge","Bamiyan Province , Afghanistan","64.2","210.6");
INSERT INTO  "bridge" VALUES (2,"13","Outlaw Arch","Dinosaur National Monument , Colorado , USA","63","206");
INSERT INTO  "bridge" VALUES (2,"14","Snake Bridge","Sanostee , New Mexico , USA","62","204");
INSERT INTO  "bridge" VALUES (5,"15","Wrather Arch","Wrather Canyon , Arizona , USA","75","246");


INSERT INTO  "mill" VALUES (1,1,"Coswarem","Le Vieux Molen","Grondzeiler","1840","Molenechos (Dutch)");
INSERT INTO  "mill" VALUES (1,2,"Donceel","Moulin Bertrand","Grondzeiler","1890","Molenechos (Dutch)");
INSERT INTO  "mill" VALUES (2,3,"Fexhe-le-haut-Clocher","Moulin de Fexhe","Grondzeiler","1843","Molenechos (Dutch)");
INSERT INTO  "mill" VALUES (3,4,"Momalle","Moulin de Momalle","Bergmolen","1850","Molenechos (Dutch)");
INSERT INTO  "mill" VALUES (4,5,"Othée","Moulin du Château","Grondzeiler","1856","Molenechos (Dutch)");
INSERT INTO  "mill" VALUES (4,6,"Pousset","Moulin de Pousset","Grondzeiler","1819","Molenechos (Dutch)");

