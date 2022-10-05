PRAGMA foreign_keys = ON;

CREATE TABLE "aircraft" (
"Aircraft_ID" int,
"Order_Year" int,
"Manufacturer" text,
"Model" text,
"Fleet_Series" text,
"Powertrain" text,
"Fuel_Propulsion" text,
PRIMARY KEY ("Aircraft_ID")
);


CREATE TABLE "pilot" (
"Pilot_ID" int,
"Pilot_name" text,
"Rank" int,
"Age" int,
"Nationality" text,
"Position" text,
"Join_Year" int,
"Team" text,
PRIMARY KEY ("Pilot_ID")
);

INSERT INTO  "aircraft" VALUES (1,"1992","Gillig","Phantom (High Floor)","444-464 (21)","DD S50EGR Allison WB-400R","Diesel");
INSERT INTO  "aircraft" VALUES (2,"1996","Gillig","Phantom (High Floor)","465-467 (3)","DD S50 Allison WB-400R","Diesel");
INSERT INTO  "aircraft" VALUES (3,"1998","Gillig","Phantom (High Floor)","468-473 (6)","DD S50 Allison WB-400R","Diesel");
INSERT INTO  "aircraft" VALUES (4,"2000","Gillig","Advantage (Low Floor)","474-481 (8)","Cummins ISC Allison WB-400R","Diesel");
INSERT INTO  "aircraft" VALUES (5,"2002","Gillig","Advantage (Low Floor)","482-492 (11)","Cummins ISL Allison WB-400R","Diesel");
INSERT INTO  "aircraft" VALUES (6,"2010","NFI","GE40LFR","300-309 (10)","Ford Triton V10 ISE-Thundervolt TB40-HG","Hybrid");
INSERT INTO  "aircraft" VALUES (7,"2011","NFI","C40LFR","310-329 (20)","Cummins Westport ISL-G Allison WB-400R","CNG");


INSERT INTO  "pilot" VALUES (1,"Patrick O'Bryant","13",33,"United States","Center Team","2009","Bradley");
INSERT INTO  "pilot" VALUES (2,"Jermaine O'Neal","6",40,"United States","Forward-Center Team","2008","Eau Claire High School");
INSERT INTO  "pilot" VALUES (3,"Dan O'Sullivan","45",37,"United States","Center Team","1999","Fordham");
INSERT INTO  "pilot" VALUES (4,"Charles Oakley","34",22,"United Kindom","Forward Team","2001","Virginia Union");
INSERT INTO  "pilot" VALUES (5,"Hakeem Olajuwon","34",32,"Nigeria","Center Team","2010","Houston");


CREATE TABLE "pilot_record" (
"Record_ID" int,
"Pilot_ID" int,
"Aircraft_ID" int,
"Date" text,
PRIMARY KEY ("Pilot_ID", "Aircraft_ID", "Date"),
FOREIGN KEY (`Pilot_ID`) REFERENCES `pilot`(`Pilot_ID`),
FOREIGN KEY (`Aircraft_ID`) REFERENCES `aircraft`(`Aircraft_ID`)
);

INSERT INTO  "pilot_record" VALUES (1,1,1,"2003/01/04");
INSERT INTO  "pilot_record" VALUES (2,2,1,"2004/01/04");
INSERT INTO  "pilot_record" VALUES (3,1,4,"2005/01/04");
INSERT INTO  "pilot_record" VALUES (4,3,6,"2006/01/04");
INSERT INTO  "pilot_record" VALUES (5,4,2,"2007/01/04");
INSERT INTO  "pilot_record" VALUES (6,1,5,"2008/01/04");

