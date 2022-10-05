
PRAGMA foreign_keys = ON;



CREATE TABLE "conductor" (
"Conductor_ID" int,
"Name" text,
"Age" int,
"Nationality" text,
"Year_of_Work" int,
PRIMARY KEY ("Conductor_ID")
);

INSERT INTO  "conductor" VALUES (1,"Antal Doráti",40,"USA",10);
INSERT INTO  "conductor" VALUES (2,"Igor Stravinsky",41,"UK",11);
INSERT INTO  "conductor" VALUES (3,"Colin Davis",42,"USA",6);
INSERT INTO  "conductor" VALUES (4,"Paul Jorgensen",43,"UK",11);
INSERT INTO  "conductor" VALUES (5,"Antal Brown",43,"USA",20);
INSERT INTO  "conductor" VALUES (6,"Charles Dutoit",43,"France",12);

INSERT INTO  "conductor" VALUES (7,"Gerard Schwarz",50,"USA",20);
INSERT INTO  "conductor" VALUES (8,"Pierre Boulez",49,"UK",11);
INSERT INTO  "conductor" VALUES (9,"Valeri Gergiev",47,"USA",16);
INSERT INTO  "conductor" VALUES (10,"Robert Craft",63,"UK",21);
INSERT INTO  "conductor" VALUES (11,"Seiji Ozawa",43,"USA",10);
INSERT INTO  "conductor" VALUES (12,"Michael Tilson Thomas",42,"France",12);




CREATE TABLE "orchestra" (
"Orchestra_ID" int,
"Orchestra" text,
"Conductor_ID" int,
"Record_Company" text,
"Year_of_Founded" real,
"Major_Record_Format" text,
PRIMARY KEY ("Orchestra_ID"),
FOREIGN KEY (`Conductor_ID`) REFERENCES `conductor`(`Conductor_ID`)
);

CREATE TABLE "performance" (
"Performance_ID" int,
"Orchestra_ID" int,
"Type" text,
"Date" text,
"Official_ratings_(millions)" real,
"Weekly_rank" text,
"Share" text,
PRIMARY KEY ("Performance_ID"),
FOREIGN KEY (`Orchestra_ID`) REFERENCES `orchestra`(`Orchestra_ID`)
);

CREATE TABLE "show" (
"Show_ID" int,
"Performance_ID" int,
"If_first_show" bool,
"Result" text,
"Attendance" real,
FOREIGN KEY (`Performance_ID`) REFERENCES `performance`(`Performance_ID`)
);



INSERT INTO  "orchestra" VALUES (1,"London Symphony Orchestra",1,"Mercury Records","2003","CD");
INSERT INTO  "orchestra" VALUES (2,"Columbia Symphony Orchestra",2,"Columbia Masterworks","2009","CD / LP");
INSERT INTO  "orchestra" VALUES (3,"Royal Concertgebouw Orchestra",3,"Philips","2008","CD");
INSERT INTO  "orchestra" VALUES (4,"Royal Danish Orchestra",4,"Kultur","2002","DVD");
INSERT INTO  "orchestra" VALUES (5,"Detroit Symphony Orchestra",5,"Decca Records","2002","CD");
INSERT INTO  "orchestra" VALUES (6,"Montreal Symphony Orchestra",6,"Decca Records","2004","CD");
INSERT INTO  "orchestra" VALUES (7,"Seattle Symphony Orchestra",7,"Delos Records","2002","CD");
INSERT INTO  "orchestra" VALUES (8,"Chicago Symphony Orchestra",8,"Deutsche Grammophon","2003","CD");
INSERT INTO  "orchestra" VALUES (9,"Kirov Orchestra",9,"Philips Classics Records","2008","CD");
INSERT INTO  "orchestra" VALUES (10,"Philharmonia Orchestra",10,"Koch Records / Naxos Records","2006","CD");
INSERT INTO  "orchestra" VALUES (11,"Orchestre de Paris",11,"EMI","2007","CD");
INSERT INTO  "orchestra" VALUES (12,"San Francisco Symphony Orchestra",12,"RCA","2008","CD");

INSERT INTO  "performance" VALUES (1,1,"Auditions 1","9 June","5.20","12","22.7%");
INSERT INTO  "performance" VALUES (2,2,"Auditions 2","10 June","6.73","8","28.0%");
INSERT INTO  "performance" VALUES (3,3,"Auditions 3","11 June","7.28","15","29.4%");
INSERT INTO  "performance" VALUES (4,4,"Auditions 4","12 June","7.39","13","29.3%");
INSERT INTO  "performance" VALUES (5,5,"Auditions 5","13 June","7.51","11","29.2%");
INSERT INTO  "performance" VALUES (11,11,"Semi-final 1","14 June","8.36","9","34.0%");
INSERT INTO  "performance" VALUES (6,6,"Semi-final 2","15 June","9.28","8","38.1%");
INSERT INTO  "performance" VALUES (7,7,"Semi-final 3","16 June","9.29","7","40.9%");
INSERT INTO  "performance" VALUES (8,8,"Live final","17 June","11.58","1","43.7%");
INSERT INTO  "performance" VALUES (9,9,"Live final results","17 June","11.45","2","44.7%");
INSERT INTO  "performance" VALUES (10,10,"Series average","2007","8.38","TBC","34%");

INSERT INTO  "show" VALUES (1,1,"Glebe Park","T","1026");
INSERT INTO  "show" VALUES (2,2,"Fir Park","T","695");
INSERT INTO  "show" VALUES (3,3,"St. Mirren Park","F","555");
INSERT INTO  "show" VALUES (4,4,"St. Mirren Park","F","1925");
INSERT INTO  "show" VALUES (5,5,"Hampden Park","T","2431");
