
PRAGMA foreign_keys = ON;

CREATE TABLE "railway" (
"Railway_ID" int,
"Railway" text,
"Builder" text,
"Built" text,
"Wheels" text,
"Location" text,
"ObjectNumber" text,
PRIMARY KEY ("Railway_ID")
);



INSERT INTO  "railway" VALUES (1,"SECR","SECR Ashford","1901","4-4-0","York","1975-7006");
INSERT INTO  "railway" VALUES (2,"MR","MR Derby","1902 Midland Railway 1000 was rebuilt in 1914.","4-4-0","Bo'ness","1975-7018");
INSERT INTO  "railway" VALUES (3,"GNRD","GNR Doncaster","1902","4-4-2","Barrow Hill","1975-7005");
INSERT INTO  "railway" VALUES (4,"GWRS","GWR Swindon","1903","4-4-0","Toddington","1978-7025");
INSERT INTO  "railway" VALUES (5,"GERSt","GER Stratford","1904","0-6-0T","Bressingham","1975-7003");
INSERT INTO  "railway" VALUES (6,"GERHt","GER Hartford","1905","0-6-0","Barrow Hill","1978-7026");
INSERT INTO  "railway" VALUES (7,"GWRSn","GWR Swindon","1905","2-8-0","Shildon","1976-7001");
INSERT INTO  "railway" VALUES (8,"GWRWk","Swindon Works","1907","4-6-0","Swindon","1978-7027");
INSERT INTO  "railway" VALUES (9,"LTSR","Stephenson","1909","4-4-2T","Bressingham","1978-7028");
INSERT INTO  "railway" VALUES (10,"Longmoor","Avonside","1910","0-6-0ST","Basingstoke","2008-7159");



CREATE TABLE "train" (
"Train_ID" int,
"Train_Num" text,
"Name" text,
"From" text,
"Arrival" text,
"Railway_ID" int,
PRIMARY KEY ("Train_ID"),
FOREIGN KEY ("Railway_ID") REFERENCES `railway`("Railway_ID")
);

INSERT INTO  "train" VALUES (1,"51195","Wardha-Ballarshah Pass","Wardha","08:54",1);
INSERT INTO  "train" VALUES (2,"12139","Sewagram Exp","Mumbai CST","09:08",1);
INSERT INTO  "train" VALUES (3,"12140","Ballarshah-Mumbai Pass","Ballarshah","09:48",2);
INSERT INTO  "train" VALUES (4,"57135","Nagpur-Kazipet Pass","Nagpur","23:44",3);
INSERT INTO  "train" VALUES (5,"57136","Kazipet-Nagpur Pass","Kazipet","05:09",5);
INSERT INTO  "train" VALUES (6,"16094","Lucknow-Chennai Exp","Lucknow","13:04",5);
INSERT INTO  "train" VALUES (7,"16032","Andaman Exp","Jammu Tawi","13:04",7);
INSERT INTO  "train" VALUES (8,"16031","Andaman Exp","Chennai","23:39",9);
INSERT INTO  "train" VALUES (9,"11401","Nandigram Exp","Mumbai CST","13:28",10);



CREATE TABLE "manager" (
"Manager_ID" int,
"Name" text,
"Country" text,
"Working_year_starts" text,
"Age" int,
"Level" int,
PRIMARY KEY ("Manager_ID")
);

INSERT INTO  "manager" VALUES (1,"Ben Curtis","United States","2003","45","5");
INSERT INTO  "manager" VALUES (2,"Todd Hamilton","United States","2004","55","5");
INSERT INTO  "manager" VALUES (3,"Tiger Woods","United States","2006","46","5");
INSERT INTO  "manager" VALUES (4,"David Duval","United States","2001","47","7");
INSERT INTO  "manager" VALUES (5,"Sandy Lyle","Scotland","1985","48","8");
INSERT INTO  "manager" VALUES (6,"Nick Faldo","England","1999","51","11");
INSERT INTO  "manager" VALUES (7,"Greg Norman","Australia","1993","52","12");



CREATE TABLE "railway_manage" (
"Railway_ID" int,
"Manager_ID" int,
"From_Year" text,
PRIMARY KEY ("Railway_ID","Manager_ID"),
FOREIGN KEY ("Manager_ID") REFERENCES "manager"("Manager_ID"),
FOREIGN KEY ("Railway_ID") REFERENCES "railway"("Railway_ID")
);

INSERT INTO  "railway_manage" VALUES (8,1,"2010");
INSERT INTO  "railway_manage" VALUES (9,2,"2011");
INSERT INTO  "railway_manage" VALUES (7,3,"2012");
INSERT INTO  "railway_manage" VALUES (2,4,"2013");

