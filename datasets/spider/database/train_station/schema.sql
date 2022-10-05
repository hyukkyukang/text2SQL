PRAGMA foreign_keys = ON;

CREATE TABLE "station" (
"Station_ID" int,
"Name" text,
"Annual_entry_exit" real,
"Annual_interchanges" real,
"Total_Passengers" real,
"Location" text,
"Main_Services" text,
"Number_of_Platforms" int,
PRIMARY KEY ("Station_ID")
);

CREATE TABLE "train" (
"Train_ID" int,
"Name" text,
"Time" text,
"Service" text,
PRIMARY KEY ("Train_ID")
);

INSERT INTO  "station" VALUES ("1","London Waterloo","94.046","9.489","103.534","London","South Western Main Line West of England Main Line","19");
INSERT INTO  "station" VALUES ("2","London Victoria","76.231","9.157","85.38","London","Brighton Main Line Chatham Main Line","19");
INSERT INTO  "station" VALUES ("3","London Bridge","52.634","8.742","61.376","London","South Eastern Main Line Thameslink","12");
INSERT INTO  "station" VALUES ("4","London Liverpool Street","57.107","2.353","59.460","London","Great Eastern Main Line West Anglia Main Line","18");
INSERT INTO  "station" VALUES ("5","London Euston","36.609","3.832","40.440","London","West Coast Main Line","18");
INSERT INTO  "station" VALUES ("6","London Charing Cross","38.005","1.990","39.995","London","South Eastern Main Line","6");
INSERT INTO  "station" VALUES ("7","Birmingham New Street","31.214","5.118","36.331","Birmingham","West Coast Main Line Cross Country Route","13");
INSERT INTO  "station" VALUES ("8","London King's Cross","27.875","3.022","30.896","London","East Coast Main Line","12");
INSERT INTO  "station" VALUES ("9","Glasgow Central","26.639","3.018","29.658","Glasgow","West Coast Main Line","17");
INSERT INTO  "station" VALUES ("10","East Croydon","20.551","6.341","26.892","London","Brighton Main Line","6");
INSERT INTO  "station" VALUES ("11","London St Pancras","22.996","3.676","26.672","London","Midland Main Line Thameslink High-Speed 1 Eurostar","15");
INSERT INTO  "station" VALUES ("12","Stratford","21.797","2.064","23.862","London","Great Eastern Main Line Lea Valley Lines","15");


INSERT INTO  "train" VALUES ("1","Ananthapuri Express","17:15","Daily");
INSERT INTO  "train" VALUES ("2","Guruvayur Express","22:10","Daily");
INSERT INTO  "train" VALUES ("3","Guruvayur Express","4:49","Daily");
INSERT INTO  "train" VALUES ("4","Ananthapuri Express","11:35","Daily");
INSERT INTO  "train" VALUES ("5","Jayanthi Janatha Express","06:30","Daily");
INSERT INTO  "train" VALUES ("6","Island Express","11:15","Daily");
INSERT INTO  "train" VALUES ("7","Madurai Fast Passenger","21:49","Daily");
INSERT INTO  "train" VALUES ("8","Quilon Fast Passenger","04:55","Daily");
INSERT INTO  "train" VALUES ("9","Island Express","16:59","Daily");
INSERT INTO  "train" VALUES ("10","Jayanthi Janatha Express","10:38","Daily");
INSERT INTO  "train" VALUES ("11","Parasuram Express","04:20","Daily");


CREATE TABLE "train_station" (
"Train_ID" int,
"Station_ID" int,	
PRIMARY KEY ("Train_ID","Station_ID"),
FOREIGN KEY ("Train_ID") REFERENCES "train"("Train_ID"),
FOREIGN KEY ("Station_ID") REFERENCES "station"("Station_ID")
);

INSERT INTO  "train_station" VALUES (1,1);
INSERT INTO  "train_station" VALUES (2,1);
INSERT INTO  "train_station" VALUES (3,1);
INSERT INTO  "train_station" VALUES (4,2);
INSERT INTO  "train_station" VALUES (5,3);
INSERT INTO  "train_station" VALUES (6,5);
INSERT INTO  "train_station" VALUES (7,8);
INSERT INTO  "train_station" VALUES (8,9);
INSERT INTO  "train_station" VALUES (9,9);
INSERT INTO  "train_station" VALUES (10,10);
INSERT INTO  "train_station" VALUES (11,10);


