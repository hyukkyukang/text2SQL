PRAGMA foreign_keys = ON;


CREATE TABLE "stadium" (
"id" int,
"name" text,
"Home_Games" int,
"Average_Attendance" real,
"Total_Attendance" real,
"Capacity_Percentage" real,
primary key ("id")
);

CREATE TABLE "game" (
"stadium_id" int,
"id" int,
"Season" int,
"Date" text,
"Home_team" text,
"Away_team" text,
"Score" text,
"Competition" text,
primary key ("id"),
foreign key ("stadium_id") references `stadium`("id")
);

CREATE TABLE "injury_accident" (
"game_id" int,
"id" int,
"Player" text,
"Injury" text,
"Number_of_matches" text,
"Source" text,
primary key ("id"),
foreign key ("game_id") references `game`("id")
);


INSERT INTO  "stadium" VALUES (1,"Cowboys Stadium","8","87047","696377","108.8");
INSERT INTO  "stadium" VALUES (2,"FedExField","8","83172","665380","90.7");
INSERT INTO  "stadium" VALUES (3,"New Meadowlands Stadium","8","79019","632156","95.8");
INSERT INTO  "stadium" VALUES (4,"New Meadowlands Stadium","8","78596","628768","95.3");
INSERT INTO  "stadium" VALUES (5,"Invesco Field at Mile High","8","74908","599264","98.4");
INSERT INTO  "stadium" VALUES (6,"Bank of America Stadium","8","72620","580965","98.4");
INSERT INTO  "stadium" VALUES (7,"M&T Bank Stadium","8","71227","569817","100.3");
INSERT INTO  "stadium" VALUES (8,"Reliant Stadium","8","71080","568643","100.0");
INSERT INTO  "stadium" VALUES (9,"Lambeau Field","8","70795","566362","97.1");
INSERT INTO  "stadium" VALUES (10,"Louisiana Superdome","8","70038","560304","96.0");
INSERT INTO  "stadium" VALUES (11,"Lincoln Financial Field","8","69144","553152","102.3");
INSERT INTO  "stadium" VALUES (12,"LP Field","8","69143","553144","100.0");
INSERT INTO  "stadium" VALUES (13,"Gillette Stadium","8","68756","550048","100.0");



INSERT INTO  "game" VALUES (1,1,"2007","18 May 2007","Quruvchi","Pakhtakor","1–1","League");
INSERT INTO  "game" VALUES (2,2,"2007","22 September 2007","Pakhtakor","Quruvchi","0–0","League");
INSERT INTO  "game" VALUES (3,3,"2007","9 December 2007","Pakhtakor","Quruvchi","0–0 (7:6)","Cup");
INSERT INTO  "game" VALUES (4,4,"2008","10 July 2008","Pakhtakor","Quruvchi","1–1","League");
INSERT INTO  "game" VALUES (5,5,"2008","16 August 2008","Bunyodkor","Pakhtakor","1–1","League");
INSERT INTO  "game" VALUES (6,6,"2008","31 October 2008","Bunyodkor","Pakhtakor","3–1","Cup");
INSERT INTO  "game" VALUES (7,7,"2009","12 July 2009","Bunyodkor","Pakhtakor","2–1","League");
INSERT INTO  "game" VALUES (8,8,"2009","14 October 2009","Pakhtakor","Bunyodkor","0–0","League");
INSERT INTO  "game" VALUES (9,9,"2009","8 August 2009","Pakhtakor","Bunyodkor","1–0","Cup");
INSERT INTO  "game" VALUES (10,10,"2010","14 March 2010","Bunyodkor","Pakhtakor","2–1","League");
INSERT INTO  "game" VALUES (10,11,"2010","31 October 2010","Pakhtakor","Bunyodkor","0–0","League");
INSERT INTO  "game" VALUES (10,12,"2011","7 July 2011","Pakhtakor","Bunyodkor","0–0","League");
INSERT INTO  "game" VALUES (1,13,"2011","21 August 2011","Bunyodkor","Pakhtakor","2–1","League");
INSERT INTO  "game" VALUES (2,14,"2012","11 March 2012","Bunyodkor","Pakhtakor","–","Supercup");
INSERT INTO  "game" VALUES (3,15,"2012","26 June 2012","Bunyodkor","Pakhtakor","2–0","League");
INSERT INTO  "game" VALUES (4,16,"2012","9 August 2012","Pakhtakor","Bunyodkor","1–1","League");
INSERT INTO  "game" VALUES (5,17,"2012","22 August 2012","Bunyodkor","Pakhtakor","1–1","Cup");
INSERT INTO  "game" VALUES (11,18,"2012","25 November 2012","Pakhtakor","Bunyodkor","1–3","Cup");
INSERT INTO  "game" VALUES (12,19,"2013","30 June 2013","Pakhtakor","Bunyodkor","0–2","League");
INSERT INTO  "game" VALUES (7,20,"2013","8 August 2013","Bunyodkor","Pakhtakor","1–2","League");

INSERT INTO  "injury_accident" VALUES (1,1,"Davide Santon","Clean-up surgery on his right knee","12","inter.it");
INSERT INTO  "injury_accident" VALUES (2,2,"Maicon","Knee problem","2","inter.it");
INSERT INTO  "injury_accident" VALUES (3,3,"Dejan Stanković","Hamstring muscle strain in his left thigh","2","inter.it");
INSERT INTO  "injury_accident" VALUES (4,4,"Wesley Sneijder","Foot injury","1","inter.it");
INSERT INTO  "injury_accident" VALUES (5,5,"Diego Milito","Slight thigh strain in right leg","1","inter.it");
INSERT INTO  "injury_accident" VALUES (5,6,"Javier Zanetti","Post-traumatic pneumothrorax","4","inter.it");
INSERT INTO  "injury_accident" VALUES (6,7,"Walter Samuel","Right thigh muscle strain","3","inter.it");
INSERT INTO  "injury_accident" VALUES (6,8,"Thiago Motta","Surgery on his right knee","10","inter.it");
INSERT INTO  "injury_accident" VALUES (6,9,"Goran Pandev","Ankle problem","3","inter.it");
INSERT INTO  "injury_accident" VALUES (8,10,"Iván Córdoba","Sustained a biceps femoris strain in his left leg","1","inter.it");
INSERT INTO  "injury_accident" VALUES (9,11,"Esteban Cambiasso","First-degree strain left hamstring muscles","2","inter.it");
INSERT INTO  "injury_accident" VALUES (10,12,"Dejan Stanković (2)","Right calf strain","4 (6)","inter.it");
INSERT INTO  "injury_accident" VALUES (10,13,"Wesley Sneijder (2)","Fainted during half time","1 (2)","inter.it");
INSERT INTO  "injury_accident" VALUES (11,14,"Esteban Cambiasso (2)","Sustained posterior thigh strains in his left leg","4 (6)","inter.it");
INSERT INTO  "injury_accident" VALUES (12,15,"Thiago Motta (2)","Knee problem","7 (17)","inter.it");

