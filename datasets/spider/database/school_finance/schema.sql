PRAGMA foreign_keys = ON;

CREATE TABLE "School" (
"School_id" text,
"School_name" text,
"Location" text,
"Mascot" text,
"Enrollment" int,
"IHSAA_Class" text,
"IHSAA_Football_Class" text,
"County" text,
PRIMARY KEY ("School_id")
);

CREATE TABLE "budget" (
"School_id" int,
"Year" int,
"Budgeted" int,
"total_budget_percent_budgeted" real,
"Invested" int,
"total_budget_percent_invested" real,
"Budget_invested_percent" text,
PRIMARY KEY("School_id","YEAR"),
FOREIGN KEY("School_id") REFERENCES "School"("School_id")

);

CREATE TABLE "endowment" (
"endowment_id" int,
"School_id" int,
"donator_name" text,
"amount" real,
PRIMARY KEY("endowment_id"),
FOREIGN KEY("School_id") REFERENCES "School"("School_id")
);

INSERT INTO  "School" VALUES (1,"Bremen","Bremen","Lions","495","AA","AA","50 Marshall");
INSERT INTO  "School" VALUES (2,"Culver Community","Culver","Cavaliers","287","A","A","50 Marshall");
INSERT INTO  "School" VALUES (3,"Glenn","Walkerton","Falcons","605","AAA","AAA","71 St. Joseph");
INSERT INTO  "School" VALUES (4,"Jimtown","Elkhart","Jimmies","601","AAA","AAA","20 Elkhart");
INSERT INTO  "School" VALUES (5,"Knox Community","Knox","Redskins","620","AAA","AAA","75 Starke");
INSERT INTO  "School" VALUES (6,"LaVille","Lakeville","Lancers","379","AA","A","71 St. Joseph");
INSERT INTO  "School" VALUES (7,"New Prairie 1","New Carlisle","Cougars","852","AAA","AAAA","46 LaPorte 71 St. Joseph");
INSERT INTO  "School" VALUES (8,"Triton","Bourbon","Trojans","316","A","A","50 Marshall");
INSERT INTO  "budget" VALUES (2,"1999","4979","2","2134","2","42.9");
INSERT INTO  "budget" VALUES (2,"2000","3666","2","5840","2","159.3");
INSERT INTO  "budget" VALUES (2,"2001","6803","2","8335","2","122.5");
INSERT INTO  "budget" VALUES (3,"2002","6803","2","8335","2","146.9");
INSERT INTO  "budget" VALUES (1,"2003","119527","2.4","85249","2.2","71.3");
INSERT INTO  "budget" VALUES (4,"2004","74849","2.0","95542","2.2","127.6");
INSERT INTO  "budget" VALUES (5,"2005","61283","1.3","140102","2.7","228.8");
INSERT INTO  "budget" VALUES (5,"2006","113531","2.0","146102","2.7","228.6");
INSERT INTO  "endowment" VALUES (1,1,"Monte Plata","9.51");
INSERT INTO  "endowment" VALUES (2,2,"San José de Ocoa","9.83");
INSERT INTO  "endowment" VALUES (3,3,"Distrito Nacional","9.55");
INSERT INTO  "endowment" VALUES (4,3,"Valverde","9.73");
INSERT INTO  "endowment" VALUES (5,3,"San Cristóbal","9.05");
INSERT INTO  "endowment" VALUES (6,4,"Santo Domingo Este","8.99");
INSERT INTO  "endowment" VALUES (7,4,"Santiago","8.85");
INSERT INTO  "endowment" VALUES (8,5,"Duarte","8.53");
INSERT INTO  "endowment" VALUES (9,6,"Com. Dom. En Estados Unidos","8.43");
INSERT INTO  "endowment" VALUES (10,7,"La Vega","8.82");
INSERT INTO  "endowment" VALUES (11, 8,"Peravia","8.33");

