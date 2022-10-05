PRAGMA foreign_keys = ON;

CREATE TABLE "race" (
"Race_ID" int,
"Name" text,
"Class" text,
"Date" text,
"Track_ID" text,
PRIMARY KEY ("Race_ID"),
FOREIGN KEY ("Track_ID") REFERENCES "track"("Track_ID")
);

CREATE TABLE "track" (
"Track_ID" int,
"Name" text,
"Location" text,
"Seating" real,
"Year_Opened" real,
PRIMARY KEY ("Track_ID")
);

INSERT INTO  "track" VALUES (1,"Auto Club Speedway","Fontana, CA","92000","1997");
INSERT INTO  "track" VALUES (2,"Chicagoland Speedway","Joliet, IL","75000","2001");
INSERT INTO  "track" VALUES (3,"Darlington Raceway","Darlington, SC","63000","1950");
INSERT INTO  "track" VALUES (4,"Daytona International Speedway","Daytona Beach, FL","168000","1959");
INSERT INTO  "track" VALUES (5,"Homestead-Miami Speedway","Homestead, FL","65000","1995");
INSERT INTO  "track" VALUES (6,"Kansas Speedway","Kansas City, KS","81687","2001");
INSERT INTO  "track" VALUES (7,"Martinsville Speedway","Ridgeway, VA","65000","1947");
INSERT INTO  "track" VALUES (8,"Michigan International Speedway","Brooklyn, MI","137243","1968");
INSERT INTO  "track" VALUES (9,"Phoenix International Raceway","Avondale, AZ","76812","1964");

INSERT INTO  "race" VALUES (1,"Rolex 24 At Daytona","DP/GT","January 26 January 27",1);
INSERT INTO  "race" VALUES (2,"Gainsco Grand Prix of Miami","DP/GT","March 29",2);
INSERT INTO  "race" VALUES (3,"Mexico City 250","DP/GT","April 19",2);
INSERT INTO  "race" VALUES (4,"Bosch Engineering 250 at VIR","GT","April 27",4);
INSERT INTO  "race" VALUES (5,"RumBum.com 250","DP/GT","May 17",5);
INSERT INTO  "race" VALUES (6,"Lime Rock GT Classic 250","GT","May 26",6);
INSERT INTO  "race" VALUES (7,"Sahlen's Six Hours of the Glen","DP/GT","June 7",7);

