PRAGMA foreign_keys = ON;

CREATE TABLE "county" (
"County_Id" int,
"County_name" text,
"Population" real,
"Zip_code" text,
PRIMARY KEY ("County_Id")
);

INSERT INTO  "county" VALUES (1,"Howard",21000, "D21");
INSERT INTO  "county" VALUES (2,"Baltimore County", 90000,"D08");
INSERT INTO  "county" VALUES (3,"Colony",79000,"D02");
INSERT INTO  "county" VALUES (4,"Mansfield",87200,"D09");
INSERT INTO  "county" VALUES (5,"Manning",13300,"D11");


CREATE TABLE "party" (
"Party_ID" int,
"Year" real,
"Party" text,
"Governor" text,
"Lieutenant_Governor" text,
"Comptroller" text,
"Attorney_General" text,
"US_Senate" text,
PRIMARY KEY ("Party_ID")
);


INSERT INTO  "party" VALUES (1,"1998","Democratic","Peter Vallone","Sandra Frankel","Carl McCall","Eliot Spitzer","Charles Schumer");
INSERT INTO  "party" VALUES (2,"1998","Liberal","Betsy McCaughey Ross","Jonathan Reiter","Carl McCall","Eliot Spitzer","Charles Schumer");
INSERT INTO  "party" VALUES (3,"2002","Democratic","Carl McCall","Dennis Mehiel","Alan Hevesi","Eliot Spitzer","(no election)");
INSERT INTO  "party" VALUES (4,"2002","Independence","Tom Golisano","Mary Donohue","John Faso","Eliot Spitzer","(no election)");
INSERT INTO  "party" VALUES (5,"2006","Democratic","Eliot Spitzer","David Paterson","Alan Hevesi","Andrew Cuomo","Hillary Rodham Clinton");
INSERT INTO  "party" VALUES (6,"2006","Independence","Eliot Spitzer","David Paterson","Alan Hevesi","Jeanine Pirro","Hillary Rodham Clinton");
INSERT INTO  "party" VALUES (7,"2006","Working Families","Eliot Spitzer","David Paterson","Alan Hevesi","Andrew Cuomo","Hillary Rodham Clinton");



CREATE TABLE "election" (
"Election_ID" int,
"Counties_Represented" text,
"District" int,
"Delegate" text,
"Party" int,
"First_Elected" real,
"Committee" text,
PRIMARY KEY ("Election_ID"),
FOREIGN KEY (`Party`) REFERENCES `party`(`Party_ID`),
FOREIGN KEY (`District`) REFERENCES `county`(`County_Id`)
);

INSERT INTO  "election" VALUES (1,"09.1 9A",1,"Bates, Gail H. Gail H. Bates",1,"2002","Appropriations");
INSERT INTO  "election" VALUES (2,"09.1 9A",1,"Miller, Warren E. Warren E. Miller",1,"2003","Economic Matters");
INSERT INTO  "election" VALUES (3,"12.1 12A",2,"DeBoy, Steven J. Sr. Steven J. DeBoy, Sr.",2,"2002","Appropriations");
INSERT INTO  "election" VALUES (4,"12.1 12A",3,"Malone, James E. Jr. James E. Malone, Jr.",2,"1994","Environmental Matters (Vice-Chair)");
INSERT INTO  "election" VALUES (5,"12.2 12B",2,"Bobo, Elizabeth Elizabeth Bobo",3,"1994","Environmental Matters");
INSERT INTO  "election" VALUES (6,"13",1,"Pendergrass, Shane E. Shane Pendergrass",4,"1994","Health and Government Operations");
INSERT INTO  "election" VALUES (7,"13",4,"Guzzone, Guy Guy Guzzone",1,"2006","Appropriations");
INSERT INTO  "election" VALUES (8,"13",3,"Turner, Frank S. Frank S. Turner",7,"1994","Ways and Means");

