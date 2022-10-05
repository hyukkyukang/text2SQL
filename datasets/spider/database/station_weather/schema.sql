PRAGMA foreign_keys = ON;

CREATE TABLE "train" (
    "id" int,
    "train_number" int,
    "name" text,
    "origin" text,
    "destination" text,
    "time" text,
    "interval" text,
    primary key ("id")
);

CREATE TABLE "station" (
    "id" int,
    "network_name" text,
    "services" text,
    "local_authority" text,
    primary key ("id")
);

CREATE TABLE "route" (
    "train_id" int,
    "station_id" int,
    primary key ("train_id", "station_id"),
    foreign key ("train_id") references `train`("id"),
    foreign key ("station_id") references `station`("id")
);

CREATE TABLE "weekly_weather" (
    "station_id" int,
    "day_of_week" text,
    "high_temperature" int,
    "low_temperature" int,
    "precipitation" real,
    "wind_speed_mph" int,
    primary key ("station_id", "day_of_week"),
    foreign key ("station_id") references "station"("id")
);

INSERT INTO  "train" VALUES ("1","16724","Ananthapuri Express","Trivandrum","Chennai","17:15","Daily");
INSERT INTO  "train" VALUES ("2","16127","Guruvayur Express","Chennai","Guruvayur","22:10","Daily");
INSERT INTO  "train" VALUES ("3","16128","Guruvayur Express","Guruvayur","Chennai","4:49","Daily");
INSERT INTO  "train" VALUES ("4","16723","Ananthapuri Express","Chennai","Trivandrum","11:35","Daily");
INSERT INTO  "train" VALUES ("5","16382","Jayanthi Janatha Express","Kanniyakumari","Mumbai","06:30","Daily");
INSERT INTO  "train" VALUES ("6","16525","Island Express","Kanniyakumari","Bangalore","11:15","Daily");
INSERT INTO  "train" VALUES ("7","56701","Madurai Fast Passenger","Quilon","Madurai","21:49","Daily");
INSERT INTO  "train" VALUES ("8","56700","Quilon Fast Passenger","Madurai","Quilon Junction","04:55","Daily");
INSERT INTO  "train" VALUES ("9","16526","Island Express","Bangalore","Kanniyakumari","16:59","Daily");
INSERT INTO  "train" VALUES ("10","16381","Jayanthi Janatha Express","Mumbai","Kanniyakumari","10:38","Daily");
INSERT INTO  "train" VALUES ("11","16650","Parasuram Express","Nagercoil","Mangalore","04:20","Daily");

INSERT INTO  "station" VALUES (1, "Amersham","Metropolitan line and Chiltern Railways","Chiltern");
INSERT INTO  "station" VALUES (2, "Bushey","London Overground and London Midland","Watford");
INSERT INTO  "station" VALUES (3, "Brentwood","Greater Anglia","Brentwood");
INSERT INTO  "station" VALUES (4, "Broxbourne","Greater Anglia","Broxbourne");
INSERT INTO  "station" VALUES (5, "Carpenders Park","London Overground","Three Rivers");
INSERT INTO  "station" VALUES (6, "Chafford Hundred","c2c","Thurrock");
INSERT INTO  "station" VALUES (7, "Chalfont & Latimer","Metropolitan line and Chiltern Railways","Chiltern");
INSERT INTO  "station" VALUES (8, "Chesham","Metropolitan line","Chiltern");
INSERT INTO  "station" VALUES (9, "Cheshunt","Greater Anglia","Broxbourne");
INSERT INTO  "station" VALUES (10, "Chorleywood","Metropolitan line and Chiltern Railways","Three Rivers");
INSERT INTO  "station" VALUES (11, "Croxley","Metropolitan line","Three Rivers");

INSERT INTO "weekly_weather" VALUES (1, "Monday", 59, 54, "90", 13);
INSERT INTO "weekly_weather" VALUES (1, "Tuesday",  66, 55, "20", 12);
INSERT INTO "weekly_weather" VALUES (1, "Wednesday", 60, 52, "10", 14);
INSERT INTO "weekly_weather" VALUES (1, "Thursday",  55, 50, "30", 13);
INSERT INTO "weekly_weather" VALUES (1, "Friday",  55, 52, "50", 17);
INSERT INTO "weekly_weather" VALUES (1, "Saturday",  55, 52, "50", 14);
INSERT INTO "weekly_weather" VALUES (1, "Sunday",  54, 52, "50", 12);
INSERT INTO "weekly_weather" VALUES (2, "Monday",  58, 54, "60", 20);
INSERT INTO "weekly_weather" VALUES (2, "Tuesday", 57, 54, "80", 22);
INSERT INTO "weekly_weather" VALUES (2, "Wednesday",  59, 55, "90", 23);
INSERT INTO "weekly_weather" VALUES (2, "Thursday",  59, 56, "70", 24);
INSERT INTO "weekly_weather" VALUES (3, "Monday", 49, 46, "30", 10);
INSERT INTO "weekly_weather" VALUES (3, "Tuesday",  50, 49, "50", 9);
INSERT INTO "weekly_weather" VALUES (3, "Wednesday",  55, 54, "60", 8);
INSERT INTO "weekly_weather" VALUES (4, "Monday", 58, 54, "70", 7);
INSERT INTO "weekly_weather" VALUES (10, "Tuesday", 59, 52, "90", 22);

INSERT INTO "route" VALUES (1,1);
INSERT INTO "route" VALUES (1,2);
INSERT INTO "route" VALUES (1,3);
INSERT INTO "route" VALUES (2,1);
INSERT INTO "route" VALUES (2,3);
INSERT INTO "route" VALUES (2,7);
INSERT INTO "route" VALUES (3,4);
INSERT INTO "route" VALUES (4,6);
INSERT INTO "route" VALUES (4,2);
INSERT INTO "route" VALUES (5,1);
INSERT INTO "route" VALUES (6,5);
INSERT INTO "route" VALUES (7,4);
INSERT INTO "route" VALUES (7,5);
INSERT INTO "route" VALUES (7,8);
INSERT INTO "route" VALUES (8,8);
INSERT INTO "route" VALUES (9,7);
INSERT INTO "route" VALUES (9,8);
INSERT INTO "route" VALUES (10,9);

