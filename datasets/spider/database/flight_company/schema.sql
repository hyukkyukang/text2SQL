PRAGMA foreign_keys = ON;

CREATE TABLE "airport" (
"id" int,
"City" text,
"Country" text,
"IATA" text,
"ICAO" text,
"name" text,
primary key("id")
);


CREATE TABLE "operate_company" (
"id" int,
"name" text,
"Type" text,
"Principal_activities" text,
"Incorporated_in" text,
"Group_Equity_Shareholding" real,
primary key ("id")
);

CREATE TABLE "flight" (
"id" int,
"Vehicle_Flight_number" text,
"Date" text,
"Pilot" text,
"Velocity" real,
"Altitude" real,
"airport_id" int,
"company_id" int,
primary key ("id"),
foreign key ("airport_id") references `airport`("id"),
foreign key ("company_id") references `operate_company`("id")
);



INSERT INTO  "airport" VALUES (1,"Akureyri","Iceland","AEY","BIAR","Akureyri Airport");
INSERT INTO  "airport" VALUES (2,"Amsterdam","Netherlands","AMS","EHAM","Schiphol Airport");
INSERT INTO  "airport" VALUES (3,"Anchorage","United States","ANC","PANC","Ted Stevens Airport");
INSERT INTO  "airport" VALUES (4,"Baltimore","United States","BWI","KBWI","Baltimore-Washington Airport");
INSERT INTO  "airport" VALUES (5,"Barcelona","Spain","BCN","LEBL","El Prat Airport");
INSERT INTO  "airport" VALUES (6,"Bergen","Norway","BGO","ENBR","Bergen Airport");
INSERT INTO  "airport" VALUES (7,"Billund","Denmark","BLL","EKBI","Billund Airport");
INSERT INTO  "airport" VALUES (8,"Boston","United States","BOS","KBOS","Logan International Airport");
INSERT INTO  "airport" VALUES (9,"Brussels","Belgium","BRU","EBBR","National Airport");




INSERT INTO  "operate_company" VALUES (1, "Air China","Corporate","Airline","China","18.77");
INSERT INTO  "operate_company" VALUES (2, "Air China Cargo","Joint Venture","Cargo airline","China","49");
INSERT INTO  "operate_company" VALUES (3, "Air Hong Kong","Joint Venture","Cargo airline","Hong Kong","60");
INSERT INTO  "operate_company" VALUES (4, "Dragonair","Subsidiary","Airline","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (5, "Cathay Pacific Cargo","Subsidiary","Cargo airline","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (6, "Cathay Pacific Catering Services (HK) Limited","Subsidiary","Catering services","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (7, "Cathay Pacific Services Limited","Subsidiary","Cargo","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (8, "Cathay Pacific Holidays","Subsidiary","Travel agency","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (9, "Dragonair Holidays","Subsidiary","Travel agency","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (10, "Hong Kong Airport Services","Subsidiary","Ground handling","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (11, "Vogue Laundry Service Limited","Subsidiary","Laundry","Hong Kong","100");
INSERT INTO  "operate_company" VALUES (12, "China Pacific Laundry Services","Joint Venture","Laundry","Taiwan","45");
INSERT INTO  "operate_company" VALUES (13, "VN/CX Catering Services Limited","Joint Venture","Catering services","Vietnam","40");
INSERT INTO  "operate_company" VALUES (14, "CLS Catering Services Limited","Joint Venture","Catering services","Canada","30");


INSERT INTO  "flight" VALUES (1,"M2-F1 #0","March 1, 1963","Thompson","135","0", 1,2);
INSERT INTO  "flight" VALUES (2,"M2-F1 #1","August 16, 1963","Thompson","240","3650",2,3);
INSERT INTO  "flight" VALUES (3,"M2-F1 #6","September 3, 1963","Thompson","240","3650",2,4);
INSERT INTO  "flight" VALUES (4,"M2-F1 #13","October 25, 1963","Thompson","240","3650",3,4);
INSERT INTO  "flight" VALUES (5,"M2-F1 #14","November 8, 1963","Thompson","240","3650",4,5);
INSERT INTO  "flight" VALUES (6,"M2-F1 #21","January 29, 1964","Thompson","240","3650",4,6);
INSERT INTO  "flight" VALUES (7,"M2-F1 #33","March 30, 1964","Peterson","240","3650",5,11);
INSERT INTO  "flight" VALUES (8,"M2-F1 #39","May 19, 1964","Peterson","240","3650",2,13);
INSERT INTO  "flight" VALUES (9,"M2-F1 #61","July 16, 1965","Thompson","240","3650",6,11);
INSERT INTO  "flight" VALUES (10,"M2-F1 #64","August 30, 1965","Thompson","240","3650",9,1);
INSERT INTO  "flight" VALUES (11,"M2-F1 #70","October 8, 1965","Thompson","240","3650",4,5);
INSERT INTO  "flight" VALUES (12,"M2-F1 #71","March 28, 1966","Thompson","240","3650",6,7);
INSERT INTO  "flight" VALUES (13,"M2-F1 #73","August 4, 1966","Peterson","240","3650",8,9);

