
PRAGMA foreign_keys = ON;


CREATE TABLE `pilot` (
  `Pilot_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  PRIMARY KEY (`Pilot_Id`)
);

INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (1, 'Prof. Zackery Collins', 23);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (2, 'Katheryn Gorczany IV', 20);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (3, 'Mr. Cristian Halvorson II', 23);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (4, 'Ayana Spencer', 25);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (5, 'Ellen Ledner III', 31);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (6, 'Elisha Hickle V', 37);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (7, 'Dr. Jade Bradtke V', 26);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (8, 'Winnifred Boyle', 30);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (9, 'Della Lindgren', 29);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (10, 'Maxwell Graham', 26);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (11, 'Blaise Muller', 33);
INSERT INTO `pilot` (`Pilot_Id`, `Name`, `age`) VALUES (12, 'Baylee Steuber', 30);


CREATE TABLE `aircraft` (
  "Aircraft_ID" int(11) NOT NULL,
  "Aircraft" varchar(50) NOT NULL,
  "Description" varchar(50) NOT NULL,
  "Max_Gross_Weight" varchar(50) NOT NULL,
  "Total_disk_area" varchar(50) NOT NULL,
  "Max_disk_Loading" varchar(50) NOT NULL,
  PRIMARY KEY (`Aircraft_ID`)
);


CREATE TABLE `match` (
"Round" real,
"Location" text,
"Country" text,
"Date" text,
"Fastest_Qualifying" text,
"Winning_Pilot" text,
"Winning_Aircraft" text,
PRIMARY KEY ("Round"),
FOREIGN KEY (`Winning_Aircraft`) REFERENCES `aircraft`(`Aircraft_ID`),
FOREIGN KEY (`Winning_Pilot`) REFERENCES `pilot`(`Pilot_Id`)
);

CREATE TABLE `airport` (
"Airport_ID" int,
"Airport_Name" text,
"Total_Passengers" real,
"%_Change_2007" text,
"International_Passengers" real,
"Domestic_Passengers" real,
"Transit_Passengers" real,
"Aircraft_Movements" real,
"Freight_Metric_Tonnes" real,
PRIMARY KEY ("Airport_ID")
);

CREATE TABLE `airport_aircraft` (
"ID" int,
"Airport_ID" int,
"Aircraft_ID" int,
PRIMARY KEY ("Airport_ID","Aircraft_ID"),
FOREIGN KEY ("Airport_ID") REFERENCES `airport`(`Airport_ID`),
FOREIGN KEY ("Aircraft_ID") REFERENCES `aircraft`(`Aircraft_ID`)
);



INSERT INTO  "aircraft" VALUES (1,"Robinson R-22","Light utility helicopter","1,370 lb (635 kg)","497 ft² (46.2 m²)","2.6 lb/ft² (14 kg/m²)");
INSERT INTO  "aircraft" VALUES (2,"Bell 206B3 JetRanger","Turboshaft utility helicopter","3,200 lb (1,451 kg)","872 ft² (81.1 m²)","3.7 lb/ft² (18 kg/m²)");
INSERT INTO  "aircraft" VALUES (3,"CH-47D Chinook","Tandem rotor helicopter","50,000 lb (22,680 kg)","5,655 ft² (526 m²)","8.8 lb/ft² (43 kg/m²)");
INSERT INTO  "aircraft" VALUES (4,"Mil Mi-26","Heavy-lift helicopter","123,500 lb (56,000 kg)","8,495 ft² (789 m²)","14.5 lb/ft² (71 kg/m²)");
INSERT INTO  "aircraft" VALUES (5,"CH-53E Super Stallion","Heavy-lift helicopter","73,500 lb (33,300 kg)","4,900 ft² (460 m²)","15 lb/ft² (72 kg/m²)");


INSERT INTO  "match" VALUES ("1","Mina' Zayid , Abu Dhabi","United Arab Emirates","March 26–27","Hannes Arch",1,1);
INSERT INTO  "match" VALUES ("2","Swan River , Perth","Australia","April 17–18","Paul Bonhomme",4,1);
INSERT INTO  "match" VALUES ("3","Flamengo Beach , Rio de Janeiro","Brazil","May 8–9","Hannes Arch",6,2);
INSERT INTO  "match" VALUES ("4","Windsor , Ontario","Canada","June 5–6","Nigel Lamb",4,4);
INSERT INTO  "match" VALUES ("5","New York City","United States","June 19–20","Hannes Arch",9,3);
INSERT INTO  "match" VALUES ("6","EuroSpeedway Lausitz","Germany","August 7–8","Paul Bonhomme",2,4);
INSERT INTO  "match" VALUES ("7","River Danube , Budapest","Hungary","Cancelled","Cancelled",6,5);



INSERT INTO  "airport" VALUES (1,"London Heathrow","67054745","1.5%","61344438","5562516","147791","478693","1397054");
INSERT INTO  "airport" VALUES (2,"London Gatwick","34205887","2.9%","30431051","3730963","43873","263653","107702");
INSERT INTO  "airport" VALUES (3,"London Stansted","22360364","6.0%","19996947","2343428","19989","193282","197738");
INSERT INTO  "airport" VALUES (4,"Manchester","21219195","4.0%","18119230","2943719","156246","204610","141781");
INSERT INTO  "airport" VALUES (5,"London Luton","10180734","2.6%","8853224","1320678","6832","117859","40518");
INSERT INTO  "airport" VALUES (6,"Birmingham Airport","9627589","4.3%","8105162","1471538","50889","112227","12192");
INSERT INTO  "airport" VALUES (7,"Edinburgh","9006702","0.5%","3711140","5281038","14524","125550","12418");
INSERT INTO  "airport" VALUES (8,"Glasgow International","8178891","7.0%","3943139","4192121","43631","100087","3546");
INSERT INTO  "airport" VALUES (9,"Bristol","6267114","5.7%","5057051","1171605","38458","76517","3");
INSERT INTO  "airport" VALUES (10,"East Midlands","5620673","3.8%","4870184","746094","4395","93038","261507");



INSERT INTO  "airport_aircraft" VALUES (1,6,5);
INSERT INTO  "airport_aircraft" VALUES (2,2,1);
INSERT INTO  "airport_aircraft" VALUES (3,1,2);
INSERT INTO  "airport_aircraft" VALUES (4,9,3);

