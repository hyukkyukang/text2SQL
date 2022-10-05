PRAGMA foreign_keys = ON;

CREATE TABLE "poker_player" (
"Poker_Player_ID" int,
"People_ID" int,
"Final_Table_Made" real,
"Best_Finish" real,
"Money_Rank" real,
"Earnings" real,
PRIMARY KEY ("Poker_Player_ID"),
FOREIGN KEY ("People_ID") REFERENCES `people`("People_ID")
);

CREATE TABLE "people" (
"People_ID" int,
"Nationality" text,
"Name" text,
"Birth_Date" text,
"Height" real,
PRIMARY KEY ("People_ID")
);

INSERT INTO  "people" VALUES ("1","Russia","Aleksey Ostapenko","May 26, 1986","207");
INSERT INTO  "people" VALUES ("2","Bulgaria","Teodor Salparov","August 16, 1982","182");
INSERT INTO  "people" VALUES ("3","Russia","Roman Bragin","April 17, 1987","187");
INSERT INTO  "people" VALUES ("4","Russia","Sergey Grankin","January 22, 1987","193");
INSERT INTO  "people" VALUES ("5","Russia","Yevgeni Sivozhelez","August 8, 1986","196");
INSERT INTO  "people" VALUES ("6","Russia","Maksim Botin","July 14, 1983","194");
INSERT INTO  "people" VALUES ("7","Russia","Semen Poltavskiy","February 8, 1981","205");

INSERT INTO  "poker_player" VALUES (1,1,"42","1","68","476090");
INSERT INTO  "poker_player" VALUES (2,2,"10","2","141","189233");
INSERT INTO  "poker_player" VALUES (3,5,"21","1","166","104871");
INSERT INTO  "poker_player" VALUES (4,6,"19","2","58","596462");
INSERT INTO  "poker_player" VALUES (5,7,"26","3","154","142800");
