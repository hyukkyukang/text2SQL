
PRAGMA foreign_keys = ON;


CREATE TABLE "program" (
"Program_ID" int,
"Name" text,
"Origin" text,
"Launch" real,
"Owner" text,
PRIMARY KEY ("Program_ID")
);


CREATE TABLE "channel" (
"Channel_ID" int,
"Name" text,
"Owner" text,
"Share_in_percent" real,
"Rating_in_percent" real,
PRIMARY KEY ("Channel_ID")
);



INSERT INTO  "program" VALUES (1,"Aniworld","Hunan","2005","Hunan Broadcasting System (HBS)");
INSERT INTO  "program" VALUES (2,"Kaku","Beijing","2004","Beijing Television (BTV)");
INSERT INTO  "program" VALUES (3,"Toonmax","Shanghai","2005","Shanghai Media Group (SMG)");
INSERT INTO  "program" VALUES (4,"Jiajia","Guangdong","2007","Southern Media Corporation (SMC)");
INSERT INTO  "program" VALUES (5,"Youman","Jiangsu","2010","Jiangsu Broadcasting Corporation (JSBC)");

INSERT INTO  "channel" VALUES ("1","CCTV-1","CCTV","4.9","0.54");
INSERT INTO  "channel" VALUES ("2","Hunan Satellite TV","HBS","4.81","0.53");
INSERT INTO  "channel" VALUES ("3","CCTV-8","CCTV","3.76","0.41");
INSERT INTO  "channel" VALUES ("4","CCTV-13","CCTV","2.91","0.32");
INSERT INTO  "channel" VALUES ("5","CCTV-3","CCTV","2.86","0.31");
INSERT INTO  "channel" VALUES ("6","CCTV-6","CCTV","2.73","0.3");
INSERT INTO  "channel" VALUES ("7","CCTV-14","CCTV","2.6","0.29");
INSERT INTO  "channel" VALUES ("8","CCTV-4","CCTV","2.33","0.26");
INSERT INTO  "channel" VALUES ("9","Anhui Satellite TV","Anhui Television","1.78","0.2");
INSERT INTO  "channel" VALUES ("10","Shandong Satellite TV","Shandong Television","1.74","0.19");



CREATE TABLE "broadcast" (
"Channel_ID" int,
"Program_ID" int,
"Time_of_day" text,
PRIMARY KEY ("Channel_ID","Program_ID"),
FOREIGN KEY (`Channel_ID`) REFERENCES `channel`(`Channel_ID`),
FOREIGN KEY (`Program_ID`) REFERENCES `program`(`Program_ID`)
);


INSERT INTO  "broadcast" VALUES (1,1,"Morning");
INSERT INTO  "broadcast" VALUES (2,1,"Night");
INSERT INTO  "broadcast" VALUES (3,2,"Morning");
INSERT INTO  "broadcast" VALUES (4,1,"Night");
INSERT INTO  "broadcast" VALUES (5,4,"Morning");
INSERT INTO  "broadcast" VALUES (6,3,"Morning");
INSERT INTO  "broadcast" VALUES (7,3,"Noon");
INSERT INTO  "broadcast" VALUES (8,2,"Night");
INSERT INTO  "broadcast" VALUES (9,3,"Noon");
INSERT INTO  "broadcast" VALUES (10,4,"Night");
INSERT INTO  "broadcast" VALUES (1,2,"Night");



CREATE TABLE "broadcast_share" (
"Channel_ID" int,
"Program_ID" int,
"Date" text,
"Share_in_percent" real,
PRIMARY KEY ("Channel_ID","Program_ID"),
FOREIGN KEY (`Channel_ID`) REFERENCES `channel`(`Channel_ID`),
FOREIGN KEY (`Program_ID`) REFERENCES `program`(`Program_ID`)
);

INSERT INTO  "broadcast_share" VALUES (1,1,"01,May",3.1);
INSERT INTO  "broadcast_share" VALUES (2,1,"02,May",1.8);
INSERT INTO  "broadcast_share" VALUES (3,2,"03,May",2.8);
INSERT INTO  "broadcast_share" VALUES (4,1,"04,April",3.2);
INSERT INTO  "broadcast_share" VALUES (5,4,"01,May",1.1);
INSERT INTO  "broadcast_share" VALUES (6,3,"03,May",2.1);
INSERT INTO  "broadcast_share" VALUES (7,3,"10,Jun",1.9);
INSERT INTO  "broadcast_share" VALUES (8,2,"11,May",4.2);
INSERT INTO  "broadcast_share" VALUES (9,3,"13,May",3.0);
