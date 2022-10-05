PRAGMA foreign_keys = ON;

CREATE TABLE "county_public_safety" (
"County_ID" int,
"Name" text,
"Population" int,
"Police_officers" int,
"Residents_per_officer" int,
"Case_burden" int,
"Crime_rate" real,
"Police_force" text,
"Location" text,
PRIMARY KEY ("County_ID")
);

CREATE TABLE "city" (
"City_ID" int,
"County_ID" int,
"Name" text,
"White" real,
"Black" real,
"Amerindian" real,
"Asian" real,
"Multiracial" real,
"Hispanic" real,
PRIMARY KEY ("City_ID"),
FOREIGN KEY ("County_ID") REFERENCES "county_public_safety"("County_ID")
);

INSERT INTO  "county_public_safety" VALUES (1,"Abbotsford","128165","187","685","81","118","Abbotsford Police Department","East");
INSERT INTO  "county_public_safety" VALUES (2,"Burnaby","204320","253","808","100","123","RCMP","East");
INSERT INTO  "county_public_safety" VALUES (3,"Campbell River","30810","40","770","137","178","RCMP","West");
INSERT INTO  "county_public_safety" VALUES (4,"Castlegar","7821","11","711","107","150","RCMP","North");
INSERT INTO  "county_public_safety" VALUES (5,"Central Saanich","16821","21","801","39","49","Central Saanich Police","East");
INSERT INTO  "county_public_safety" VALUES (6,"Chilliwack","73066","91","803","140","174","RCMP","West");



INSERT INTO  "city" VALUES (1,1,"Adjuntas","93.1","3.1","0.3","0.0","3.4","99.6");
INSERT INTO  "city" VALUES (2,1,"Aguada","86.6","5.3","0.3","0.1","7.7","99.4");
INSERT INTO  "city" VALUES (3,1,"Aguadilla","83.0","7.4","0.3","0.2","8.2","98.5");
INSERT INTO  "city" VALUES (4,2,"Aguas Buenas","72.5","12.6","0.6","0.1","14.2","99.5");
INSERT INTO  "city" VALUES (5,2,"Aibonito","83.5","7.3","0.2","0.0","9.0","99.3");
INSERT INTO  "city" VALUES (6,3,"Añasco","82.0","7.2","0.4","0.1","10.3","99.2");
INSERT INTO  "city" VALUES (7,3,"Arecibo","84.5","6.1","0.4","0.1","7.9","99.2");
INSERT INTO  "city" VALUES (8,3,"Arroyo","53.5","32.5","0.9","0.2","13.0","99.1");
INSERT INTO  "city" VALUES (9,3,"Barceloneta","80.7","7.6","0.3","0.1","11.2","99.4");
INSERT INTO  "city" VALUES (10,3,"Barranquitas","86.0","5.4","0.3","0.0","8.3","99.3");
INSERT INTO  "city" VALUES (11,3,"Bayamón","78.3","10.3","0.6","0.2","10.7","99.0");
INSERT INTO  "city" VALUES (12,4,"Cabo Rojo","84.1","5.4","0.3","0.1","10.1","98.9");
INSERT INTO  "city" VALUES (13,4,"Caguas","76.1","11.0","0.6","0.2","12.1","99.1");
INSERT INTO  "city" VALUES (14,5,"Camuy","87.9","4.1","0.3","0.1","7.6","99.4");
INSERT INTO  "city" VALUES (15,5,"Canóvanas","61.2","21.6","0.9","0.2","16.1","99.2");
INSERT INTO  "city" VALUES (16,6,"Carolina","64.3","22.8","0.9","0.4","11.7","98.6");
INSERT INTO  "city" VALUES (17,6,"Cataño","70.7","14.4","1.0","0.3","13.7","99.0");

