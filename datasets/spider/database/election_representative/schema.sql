PRAGMA foreign_keys = ON;

CREATE TABLE "election" (
"Election_ID" int,
"Representative_ID" int,
"Date" text,
"Votes" real,
"Vote_Percent" real,
"Seats" real,
"Place" real,
PRIMARY KEY ("Election_ID"),
FOREIGN KEY ("Representative_ID") REFERENCES `representative`("Representative_ID")
);

CREATE TABLE "representative" (
"Representative_ID" int,
"Name" text,
"State" text,
"Party" text,
"Lifespan" text,
PRIMARY KEY ("Representative_ID")
);

INSERT INTO  "representative" VALUES (1,"Dan Quayle","Indiana","Republican","1947–");
INSERT INTO  "representative" VALUES (2,"John Quayle","New York","Democratic","1868–1930");
INSERT INTO  "representative" VALUES (3,"Al Quie","Minnesota","Republican","1923–");
INSERT INTO  "representative" VALUES (4,"James M. Quigley","Pennsylvania","Democratic","1918–");
INSERT INTO  "representative" VALUES (5,"Jimmy Quillen","Tennessee","Republican","1916–2003");
INSERT INTO  "representative" VALUES (6,"Jack Quinn","New York","Republican","1951–");
INSERT INTO  "representative" VALUES (7,"James L. Quinn","Pennsylvania","Democratic","1875–1960");

INSERT INTO  "election" VALUES (1,1,"July 1942","9423","16.2","6","3");
INSERT INTO  "election" VALUES (2,2,"October 1942","11059","18.5","10","1");
INSERT INTO  "election" VALUES (3,4,"1946","13049","19.5","10","2");
INSERT INTO  "election" VALUES (4,5,"1949","14077","19.5","9","2");
INSERT INTO  "election" VALUES (5,7,"1953","12422","16.0","7","3");

