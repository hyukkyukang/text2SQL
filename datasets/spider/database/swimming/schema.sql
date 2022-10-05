
PRAGMA foreign_keys = ON;

CREATE TABLE "swimmer" (
"ID" int,
"name" text,
"Nationality" text,
"meter_100" real,
"meter_200" text,
"meter_300" text,
"meter_400" text,
"meter_500" text,
"meter_600" text,
"meter_700" text,
"Time" text,
PRIMARY KEY ("ID")
);



INSERT INTO  "swimmer" VALUES ("7","Przemysław Stańczyk","Poland","57.31","1:57.10","2:56.02","3:55.36","4:54.21","5:52.59","6:50.91","7:47.91");
INSERT INTO  "swimmer" VALUES ("4","Craig Stevens","Australia","57.35","1:56.34","2:55.90","3:55.72","4:55.08","5:54.45","6:52.69","7:48.67");
INSERT INTO  "swimmer" VALUES ("5","Federico Colbertaldo","Italy","57.66","1:56.77","2:56.04","3:55.37","4:54.48","5:53.53","6:52.58","7:49.98");
INSERT INTO  "swimmer" VALUES ("8","Sébastien Rouault","France","55.67","1:54.40","2:53.46","3:52.93","4:52.85","5:53.03","6:53.34","7:52.04");
INSERT INTO  "swimmer" VALUES ("1","Sergiy Fesenko","Ukraine","57.34","1:57.26","2:57.10","3:57.12","4:57.03","5:56.31","6:55.07","7:53.43");
INSERT INTO  "swimmer" VALUES ("2","Grant Hackett","Australia","57.34","1:57.21","2:56.95","3:57.00","4:56.96","5:57.10","6:57.44","7:55.39");
INSERT INTO  "swimmer" VALUES ("6","Ryan Cochrane","Canada","57.84","1:57.26","2:56.64","3:56.34","4:56.15","5:56.99","6:57.69","7:56.56");
INSERT INTO  "swimmer" VALUES ("3","Oussama Mellouli","Tunisia","57.31","1:56.44","2:55.94","3:55.49","4:54.19","5:52.92","6:50.80","7:46.95");



CREATE TABLE "stadium" (
"ID" int,
"name" text,
"Capacity" int,
"City" text,
"Country" text,
"Opening_year" int,
PRIMARY KEY ("ID")
);



INSERT INTO  "stadium" VALUES (1,"Nou Mestalla","75000","Valencia","Spain","2004");
INSERT INTO  "stadium" VALUES (2,"Gazprom Arena","69501","Saint Petersburg","Russia","2005");
INSERT INTO  "stadium" VALUES (3,"Baku Olympic Stadium","68000","Baku","Azerbaijan","2005");
INSERT INTO  "stadium" VALUES (4,"Estadio La Peineta","67500","Madrid","Spain","2005");
INSERT INTO  "stadium" VALUES (5,"Ferenc Puskás Stadion","65000","Budapest","Hungary","2006");
INSERT INTO  "stadium" VALUES (6,"Stade des Lumières","61556","Lyon","France","2004");
INSERT INTO  "stadium" VALUES (7,"Northumberland Development Project","56250","London","England","2006");
INSERT INTO  "stadium" VALUES (8,"Fisht Olympic Stadium","47659","Sochi","Russia","2004");
INSERT INTO  "stadium" VALUES (9,"Arena Baltika","45015","Kaliningrad","Russia","2007");
INSERT INTO  "stadium" VALUES (10,"Yubileyniy Stadium","45015","Saransk","Russia","2005");


CREATE TABLE "event" (
"ID" int,
"Name" text,
"Stadium_ID" int,
"Year" text,
PRIMARY KEY ("ID"),
FOREIGN KEY (`Stadium_ID`) REFERENCES `stadium`(`ID`)
);
INSERT INTO  "event" VALUES (1,"FINA",1,"2016");
INSERT INTO  "event" VALUES (2,"Pacific",10,"2011");
INSERT INTO  "event" VALUES (3,"World Master",2,"2012");
INSERT INTO  "event" VALUES (4,"World Junior",3,"2013");
INSERT INTO  "event" VALUES (5,"IPC",4,"2014");
INSERT INTO  "event" VALUES (6,"European FINA",8,"2017");

CREATE TABLE "record" (
"ID" int,
"Result" text,
"Swimmer_ID" int,
"Event_ID" int,
PRIMARY KEY ("Swimmer_ID","Event_ID"),
FOREIGN KEY (`Event_ID`) REFERENCES `event`(`ID`),
FOREIGN KEY (`Swimmer_ID`) REFERENCES `swimmer`(`ID`)
);



INSERT INTO  "record" VALUES (1,"NC",1,1);
INSERT INTO  "record" VALUES (2,"Win",1,2);
INSERT INTO  "record" VALUES (3,"Loss",3,3);
INSERT INTO  "record" VALUES (4,"Win",4,3);
INSERT INTO  "record" VALUES (5,"Loss",1,3);
INSERT INTO  "record" VALUES (6,"Win",6,3);
INSERT INTO  "record" VALUES (7,"Win",5,3);
INSERT INTO  "record" VALUES (8,"Win",2,1);
INSERT INTO  "record" VALUES (9,"Win",3,1);
INSERT INTO  "record" VALUES (10,"Win",4,1);
INSERT INTO  "record" VALUES (11,"Win",4,2);
INSERT INTO  "record" VALUES (12,"Win",3,5);
INSERT INTO  "record" VALUES (13,"Loss",4,4);
