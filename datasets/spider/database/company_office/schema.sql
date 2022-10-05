PRAGMA foreign_keys = ON;

CREATE TABLE "buildings" (
"id" int,
"name" text,
"City" text,
"Height" int,
"Stories" int,
"Status" text,
PRIMARY KEY("id")
);

INSERT INTO  "buildings" VALUES (1, "Torre KOI","Monterrey","220","67","under construction");
INSERT INTO  "buildings" VALUES (2, "Torre Mitikah","Mexico City","210","60","under construction");
INSERT INTO  "buildings" VALUES (3, "Punto Chapultepec","Mexico City","210","59","proposed");
INSERT INTO  "buildings" VALUES (4, "Torre Reforma","Mexico City","330","57","under construction");
INSERT INTO  "buildings" VALUES (5, "Corporativo BBVA Bancomer","Mexico City","220","50","under construction");
INSERT INTO  "buildings" VALUES (6, "Reforma 432","Mexico City","300","100","under construction");
INSERT INTO  "buildings" VALUES (7, "Torre New York Life","Mexico City","50","6","under construction");
INSERT INTO  "buildings" VALUES (8, "LIU East","Monterrey","73","20","under construction");
INSERT INTO  "buildings" VALUES (9, "Residencial Vidalta Torre Altaire 2","Mexico City","150","44","on-hold");
INSERT INTO  "buildings" VALUES (10, "Residencial Vidalta Torre Altaire 3","Mexico City","200","44","on-hold");
INSERT INTO  "buildings" VALUES (11, "Reforma 90","Mexico City","200","42","on-hold");
INSERT INTO  "buildings" VALUES (12, "Ritz-Carlton Mexico City","Mexico City","100","34","on-hold");


CREATE TABLE "Companies" (
"id" int,
"name" text,
"Headquarters" text,
"Industry" text,
"Sales_billion" real,
"Profits_billion" real,
"Assets_billion" real,
"Market_Value_billion" text,
PRIMARY KEY ("id")
);

INSERT INTO  "Companies" VALUES ("1","JPMorgan Chase","USA","Banking","115.5","17.4","2117.6","182.2");
INSERT INTO  "Companies" VALUES ("2","HSBC","UK","Banking","103.3","13.3","2467.9","186.5");
INSERT INTO  "Companies" VALUES ("3","General Electric","USA","Conglomerate","156.2","11.6","751.2","216.2");
INSERT INTO  "Companies" VALUES ("4","ExxonMobil","USA","Oil and gas","341.6","30.5","302.5","407.2");
INSERT INTO  "Companies" VALUES ("5","Royal Dutch Shell","Netherlands","Oil and gas","369.1","20.1","317.2","212.9");
INSERT INTO  "Companies" VALUES ("6","PetroChina","China","Oil and gas","222.3","21.2","251.3","320.8");
INSERT INTO  "Companies" VALUES ("7","Industrial and Commercial Bank of China","China","Banking","69.2","18.8","1723.5","239.5");
INSERT INTO  "Companies" VALUES ("8","Berkshire Hathaway","USA","Conglomerate","136.2","13","372.2","211");
INSERT INTO  "Companies" VALUES ("9","Petrobras","Brazil","Oil and gas","121.3","21.2","313.2","238.8");
INSERT INTO  "Companies" VALUES ("10","Citigroup","USA","Banking","111.5","10.6","1913.9","132.8");
INSERT INTO  "Companies" VALUES ("11","BNP Paribas","France","Banking","130.4","10.5","2680.7","88");
INSERT INTO  "Companies" VALUES ("12","Wells Fargo","USA","Banking","93.2","12.4","1258.1","170.6");
INSERT INTO  "Companies" VALUES ("13","Santander Group","Spain","Banking","109.7","12.8","1570.6","94.7");
INSERT INTO  "Companies" VALUES ("14","AT&T Inc.","USA","Telecommunications","124.3","19.9","268.5","168.2");
INSERT INTO  "Companies" VALUES ("15","Gazprom","Russia","Oil and gas","98.7","25.7","275.9","172.9");
INSERT INTO  "Companies" VALUES ("16","Chevron","USA","Oil and gas","189.6","19","184.8","200.6");
INSERT INTO  "Companies" VALUES ("17","China Construction Bank","China","Banking","58.2","15.6","1408","224.8");
INSERT INTO  "Companies" VALUES ("18","Walmart","USA","Retailing","421.8","16.4","180.7","187.3");
INSERT INTO  "Companies" VALUES ("19","Total","France","Oil and gas","188.1","14.2","192.8","138");



CREATE TABLE "Office_locations" (
"building_id" int,
"company_id" int,
"move_in_year" int,
PRIMARY KEY ("building_id", "company_id"),
FOREIGN KEY ("building_id") REFERENCES "buildings"("id"),
FOREIGN KEY ("company_id") REFERENCES "Companies"("id")
);

INSERT INTO  "Office_locations" VALUES (1,1,2021);
INSERT INTO  "Office_locations" VALUES (2,2,2022);
INSERT INTO  "Office_locations" VALUES (3,4,2023);
INSERT INTO  "Office_locations" VALUES (4,3,2024);
INSERT INTO  "Office_locations" VALUES (5,3,2025);
INSERT INTO  "Office_locations" VALUES (5,7,2026);
INSERT INTO  "Office_locations" VALUES (11,5,2027);
INSERT INTO  "Office_locations" VALUES (7,4,2027);
INSERT INTO  "Office_locations" VALUES (3,2,2028);
INSERT INTO  "Office_locations" VALUES (3,9,2029);
INSERT INTO  "Office_locations" VALUES (10,9,2031);
INSERT INTO  "Office_locations" VALUES (6,9,2022);
INSERT INTO  "Office_locations" VALUES (8,19,2022);
INSERT INTO  "Office_locations" VALUES (9,10,2019);
INSERT INTO  "Office_locations" VALUES (3,11,2020);
INSERT INTO  "Office_locations" VALUES (2,11,2025);

