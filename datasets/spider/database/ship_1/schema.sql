PRAGMA foreign_keys = ON;

CREATE TABLE "captain" (
"Captain_ID" int,
"Name" text,
"Ship_ID" int,
"age" text,
"Class" text,
"Rank" text,
PRIMARY KEY ("Captain_ID"),
FOREIGN KEY ("Ship_ID") REFERENCES "Ship"("Ship_ID")
);

CREATE TABLE "Ship" (
"Ship_ID" int,
"Name" text,
"Type" text,
"Built_Year" real,
"Class" text,
"Flag" text,
PRIMARY KEY ("Ship_ID")
);

INSERT INTO  "Ship" VALUES (1,"HMS Manxman","Panamax","1997","KR","Panama");
INSERT INTO  "Ship" VALUES (2,"HMS Gorgon","Panamax","1998","KR","Panama");
INSERT INTO  "Ship" VALUES (3,"HM Cutter Avenger","Panamax","1997","KR","Panama");
INSERT INTO  "Ship" VALUES (4,"HM Schooner Hotspur","Panamax","1998","KR","Panama");
INSERT INTO  "Ship" VALUES (5,"HMS Destiny","Panamax","1998","KR","Panama");
INSERT INTO  "Ship" VALUES (6,"HMS Trojan","Panamax","1997","KR","Panama");
INSERT INTO  "Ship" VALUES (7,"HM Sloop Sparrow","Panamax","1997","KR","Panama");
INSERT INTO  "Ship" VALUES (8,"HMS Phalarope","Panamax","1997","KR","Panama");
INSERT INTO  "Ship" VALUES (9,"HMS Undine","Panamax","1998","GL","Malta");

INSERT INTO  "captain" VALUES (1,"Captain Sir Henry Langford",1,"40","Third-rate ship of the line","Midshipman");
INSERT INTO  "captain" VALUES (2,"Captain Beves Conway",2,"54","Third-rate ship of the line","Midshipman");
INSERT INTO  "captain" VALUES (3,"Lieutenant Hugh Bolitho",3,"43","Cutter","Midshipman");
INSERT INTO  "captain" VALUES (4,"Lieutenant Montagu Verling",4,"45","Armed schooner","Midshipman");
INSERT INTO  "captain" VALUES (5,"Captain Henry Dumaresq",5,"38","Frigate","Lieutenant");
INSERT INTO  "captain" VALUES (6,"Captain Gilbert Pears",2,"60","Third-rate ship of the line","Lieutenant");
INSERT INTO  "captain" VALUES (7,"Commander Richard Bolitho",3,"38","Sloop-of-war","Commander, junior captain");

