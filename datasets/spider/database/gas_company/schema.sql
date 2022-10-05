
PRAGMA foreign_keys = ON;


CREATE TABLE "company" (
"Company_ID" int,
"Rank" int,
"Company" text,
"Headquarters" text,
"Main_Industry" text,
"Sales_billion" real,
"Profits_billion" real,
"Assets_billion" real,
"Market_Value" real,
PRIMARY KEY ("Company_ID")
);

CREATE TABLE "gas_station" (
"Station_ID" int,
"Open_Year" int,
"Location" text,
"Manager_Name" text,
"Vice_Manager_Name" text,
"Representative_Name" text,
PRIMARY KEY ("Station_ID")
);

INSERT INTO  "company" VALUES (1,"1","ExxonMobil","USA","Oil and gas","433.5","41.1","331.1","407.4");
INSERT INTO  "company" VALUES (2,"3","General Electric","USA","Conglomerate","147.3","14.2","717.2","213.7");
INSERT INTO  "company" VALUES (3,"4","Royal Dutch Shell","Netherlands","Oil and gas","470.2","30.9","340.5","227.6");
INSERT INTO  "company" VALUES (4,"5","Industrial and Commercial Bank of China","China","Banking","82.6","25.1","2039.1","237.4");
INSERT INTO  "company" VALUES (5,"6","HSBC","UK","Banking","102","16.2","2550","164.3");
INSERT INTO  "company" VALUES (6,"7","PetroChina","China","Oil and gas","310.1","20.6","304.7","294.7");
INSERT INTO  "company" VALUES (7,"8","Berkshire Hathaway","USA","Conglomerate","143.7","10.3","392.6","202.2");
INSERT INTO  "company" VALUES (8,"9","Wells Fargo","USA","Banking","87.6","15.9","1313.9","178.7");
INSERT INTO  "company" VALUES (9,"10","Petrobras","Brazil","Oil and gas","145.9","20.1","319.4","180");
INSERT INTO  "company" VALUES (10,"11","BP","UK","Oil and gas","375.5","25.7","292.5","147.4");


INSERT INTO  "gas_station" VALUES (1,"1998","Herne Hill","BrianWingrave","Russell Denman","Clive Burr");
INSERT INTO  "gas_station" VALUES (2,"1999","Channel Hill","SimonMarloe","Russell Brown","Rob Jefferies ");
INSERT INTO  "gas_station" VALUES (3,"2000","Reading North","Simon Cope Derek Marloe","James Colin ","Dave Edwards Roger ");
INSERT INTO  "gas_station" VALUES (4,"2002","Herne St","Colin Denman","Martin Garnham","Ray Hughes");
INSERT INTO  "gas_station" VALUES (5,"2003","Reading","Colin Denman","Martin Freeman","Andrew Russell");
INSERT INTO  "gas_station" VALUES (6,"2004","Herne Ave","Tom Whit","Simon Gaywood","Tony Gibb");
INSERT INTO  "gas_station" VALUES (7,"2005","Hennry Hill","Bryan Taylor","James Holland-Leader","Simon Gaywood");
INSERT INTO  "gas_station" VALUES (8,"2006","Jane Ave","BryanDenman","James Holland-Leader","Simon Gaywood");
INSERT INTO  "gas_station" VALUES (9,"2007","Maindy Hill","Tony Bristow","JameMarloe","Courtney Rowe");
INSERT INTO  "gas_station" VALUES (10,"2008","Maindy Ave","Luke Rowe","TonyBristow","Chris Pyatt");
INSERT INTO  "gas_station" VALUES (11,"2009","Newport Rd","Jon Rowe","Steve Parsons","Tim Read");

CREATE TABLE "station_company" (
"Station_ID" int,
"Company_ID" int,
"Rank_of_the_Year" int,
PRIMARY KEY ("Station_ID","Company_ID"),
FOREIGN KEY (`Station_ID`) REFERENCES `gas_station`(`Station_ID`),
FOREIGN KEY (`Company_ID`) REFERENCES `company`(`Company_ID`)
);

INSERT INTO  "station_company" VALUES (11,1,1);
INSERT INTO  "station_company" VALUES (1,3,2);
INSERT INTO  "station_company" VALUES (6,6,3);
INSERT INTO  "station_company" VALUES (7,9,4);
INSERT INTO  "station_company" VALUES (10,10,9);
INSERT INTO  "station_company" VALUES (4,1,13);

