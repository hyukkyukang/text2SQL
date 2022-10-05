PRAGMA foreign_keys = ON;
CREATE TABLE "battle" (
"id" int,
"name" text,
"date" text,
"bulgarian_commander" text,
"latin_commander" text,
"result" text,
primary key("id")
);

CREATE TABLE "ship" (
"lost_in_battle" int,
"id" int,
"name" text,
"tonnage" text,
"ship_type" text,
"location" text,
"disposition_of_ship" text,
primary key("id"),
foreign key (`lost_in_battle`) references `battle`("id") 
);


CREATE TABLE "death" (
"caused_by_ship_id" int,
"id" int,
"note" text,
"killed" int,
"injured" int,
primary key("id"),
foreign key ("caused_by_ship_id") references `ship`("id") 
);

INSERT INTO  "battle" VALUES (1,"Battle of Adrianople","14 April 1205","Kaloyan","Baldwin I","Bulgarian victory");
INSERT INTO  "battle" VALUES (2,"Battle of Serres","June 1205","Kaloyan","Unknown","Bulgarian victory");
INSERT INTO  "battle" VALUES (3,"Battle of Rusion","31 January 1206","Kaloyan","Thierry de Termond","Bulgarian victory");
INSERT INTO  "battle" VALUES (4,"Battle of Rodosto","February 1206","Kaloyan","Unknown","Bulgarian victory");
INSERT INTO  "battle" VALUES (5,"Battle of Messinopolis","4 September 1207","Unknown","Boniface of Montferrat","Bulgarian victory");
INSERT INTO  "battle" VALUES (6,"Battle of Boruy","June 1205","Boril","Henry I","Bulgarian victory");
INSERT INTO  "battle" VALUES (7,"Battle of Philippopolis","31 June 1208","Boril","Henry I","Latin victory");
INSERT INTO  "battle" VALUES (8,"Siege of Constantinople","1235","Ivan Asen II","John of Brienne","Two Year Truce");


INSERT INTO  "ship" VALUES (8, 1, "Lettice","t","Brig","English Channel","Captured");
INSERT INTO  "ship" VALUES (7, 2, "Bon Accord","t","Brig","English Channel","Captured");
INSERT INTO  "ship" VALUES (6, 3, "Mary","t","Brig","English Channel","Captured");
INSERT INTO  "ship" VALUES (5, 4, "HMS Avon","391","18-gun Brig","English Channel","Wrecked");
INSERT INTO  "ship" VALUES (5, 5, "Three Brothers","t","Brig","SW Approaches","Scuttled");
INSERT INTO  "ship" VALUES (4, 6, "Bacchus","t","Brig","English Channel","Sank");
INSERT INTO  "ship" VALUES (8, 7, "HMS Atalanta","225","8 gun Brig","Mid-Atlantic","Captured");

INSERT INTO  "death" VALUES (1, "1","Dantewada, Chhattisgarh","8","0");
INSERT INTO  "death" VALUES (2, "2","Dantewada, Chhattisgarh","3","0");
INSERT INTO  "death" VALUES (3, "13","Erraboru, Chhattisgarh","25","0");
INSERT INTO  "death" VALUES (3, "3","East Champaran, Bihar","2","0");
INSERT INTO  "death" VALUES (4, "4","Gajapati, Odisha","3","0");
INSERT INTO  "death" VALUES (4, "5","Sundargarh, Odisha","0","9");
INSERT INTO  "death" VALUES (5, "6","Dantewada, Chhattisgarh","0","0");
INSERT INTO  "death" VALUES (5, "7","Dantewada, Chhattisgarh","4","5");
INSERT INTO  "death" VALUES (6, "8","Kanker, Chhattisgarh","0","0");
INSERT INTO  "death" VALUES (1, "9","Dantewada, Chhattisgarh","29","0");
INSERT INTO  "death" VALUES (3, "10","WestMidnapore, West Bengal","0","0");
INSERT INTO  "death" VALUES (2, "11","Bastar, Chattisgarh","0","0");
INSERT INTO  "death" VALUES (5, "12","Bokaro, Jharkhand","14","0");
