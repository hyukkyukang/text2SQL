PRAGMA foreign_keys = ON;


CREATE TABLE "city" (
"City_ID" int,
"City" text,
"Hanzi" text,
"Hanyu_Pinyin" text,
"Regional_Population" int,
"GDP" real,
PRIMARY KEY ("City_ID")
);

CREATE TABLE "match" (
"Match_ID" int,
"Date" text,
"Venue" text,
"Score" text,
"Result" text,
"Competition" text,
PRIMARY KEY ("Match_ID")
);



CREATE TABLE "temperature" (
"City_ID" int,
"Jan" real,
"Feb" real,
"Mar" real,
"Apr" real,
"Jun" real,
"Jul" real,
"Aug" real,
"Sep" real,
"Oct" real,
"Nov" real,
"Dec" real,
PRIMARY KEY ("City_ID"),
FOREIGN KEY (`City_ID`) REFERENCES `city`(`City_ID`)
);

INSERT INTO  "city" VALUES (1,"Shanghai","上海","Shànghǎi","23019148","1919.57");
INSERT INTO  "city" VALUES (2,"Nanjing ( Jiangsu )","南京","Nánjīng","8004680","614.55");
INSERT INTO  "city" VALUES (3,"Hangzhou ( Zhejiang )","杭州","Hángzhōu","8700400","701.18");
INSERT INTO  "city" VALUES (4,"Suzhou ( Jiangsu )","苏州/ 蘇州","Sūzhōu","10465994","1071.70");
INSERT INTO  "city" VALUES (5,"Ningbo ( Zhejiang )","宁波/ 寧波","Níngbō","7605689","601.05");
INSERT INTO  "city" VALUES (6,"Wuxi ( Jiangsu )","无锡/ 無錫","Wúxī","6372624","688.02");
INSERT INTO  "city" VALUES (7,"Nantong ( Jiangsu )","南通","Nántōng","7282835","408.02");
INSERT INTO  "city" VALUES (8,"Shaoxing ( Zhejiang )","绍兴/ 紹興","Shàoxīng","4912200","329.12");
INSERT INTO  "city" VALUES (9,"Changzhou ( Jiangsu )","常州","Chángzhōu","4591972","358.04");
INSERT INTO  "city" VALUES (10,"Jinhua ( Zhejiang )","金华/ 金華","Jīnhuá","4614100","244.77");
INSERT INTO  "city" VALUES (11,"Jiaxing ( Zhejiang )","嘉兴/ 嘉興","Jiāxīng","4501700","266.81");
INSERT INTO  "city" VALUES (12,"Taizhou ( Zhejiang )","台州","Tāizhōu","5968800","279.49");
INSERT INTO  "city" VALUES (13,"Yangzhou ( Jiangsu )","扬州/ 揚州","Yángzhōu","4459760","263.03");

INSERT INTO  "temperature" VALUES (1,17.8,17.8,18.3,18.9,20.0,20.6,20.6,20.6,20.0,19.4,18.3);
INSERT INTO  "temperature" VALUES (2,26.1,26.1,26.1,26.1,27.8,27.8,28.3,28.3,28.3,27.2,26.7);
INSERT INTO  "temperature" VALUES (3,18.9,18.3,19.4,20.0,22.2,23.3,23.9,23.3,22.8,21.7,20.0);
INSERT INTO  "temperature" VALUES (4,26.7,27.2,27.8,28.3,30.6,31.1,31.7,31.7,30.6,28.9,27.8);
INSERT INTO  "temperature" VALUES (6,17.2,17.2,18.3,18.9,20.6,21.7,21.7,21.1,20.6,20.0,18.3);
INSERT INTO  "temperature" VALUES (10,26.7,27.2,27.8,27.8,30.0,30.6,31.1,31.1,30.6,28.9,27.8);
INSERT INTO  "temperature" VALUES (7,18.3,18.9,19.4,20.6,22.8,23.3,23.3,23.3,22.8,21.7,20.0);
INSERT INTO  "temperature" VALUES (11,25.6,26.6,26.6,26.1,28.3,28.9,29.4,29.4,28.9,27.2,26.1);

INSERT INTO  "match" VALUES (1,"18 February 1992","Estadio Cuscatlán , San Salvador , El Salvador","1-0","2-0","Friendly match");
INSERT INTO  "match" VALUES (2,"19 July 1992","Estadio Rigoberto López , Managua , Nicaragua","3-0","5-0","1994 FIFA World Cup qualification");
INSERT INTO  "match" VALUES (3,"23 July 1992","Estadio Cuscatlán , San Salvador , El Salvador","1-0","5-1","1994 FIFA World Cup qualification");
INSERT INTO  "match" VALUES (4,"23 July 1992","Estadio Cuscatlán , San Salvador , El Salvador","3-0","5-1","1994 FIFA World Cup qualification");
INSERT INTO  "match" VALUES (5,"4 April 1993","Estadio Cuscatlán , San Salvador , El Salvador","1–0","2–1","1994 FIFA World Cup qualification");
INSERT INTO  "match" VALUES (6,"23 July 2000","Estadio Cuscatlán , San Salvador , El Salvador","2–1","7–1","2002 FIFA World Cup qualification");


CREATE TABLE "hosting_city" (
  "Year" int,
  "Match_ID" int,
  "Host_City" text,
  PRIMARY KEY ("Year"),
  FOREIGN KEY (`Host_City`) REFERENCES `city`(`City_ID`),
  FOREIGN KEY (`Match_ID`) REFERENCES `match`(`Match_ID`)
);

INSERT INTO  "hosting_city" VALUES ("2008",1,1);
INSERT INTO  "hosting_city" VALUES ("2009",2,2);
INSERT INTO  "hosting_city" VALUES ("2010",3,2);
INSERT INTO  "hosting_city" VALUES ("2011",4,6);
INSERT INTO  "hosting_city" VALUES ("2012",5,12);
INSERT INTO  "hosting_city" VALUES ("2013",6,11);
