PRAGMA foreign_keys = ON;

CREATE TABLE "member" (
"Member_ID" int,
"Card_Number" text,
"Name" text,
"Hometown" text,
"Level" int,
PRIMARY KEY ("Member_ID")
);


INSERT INTO  "member" VALUES (1,"LE99","Jeremy Jarmon","Collierville, Tennessee","6");
INSERT INTO  "member" VALUES (2,"LT98","Myron Pryor","Louisville, Kentucky","6");
INSERT INTO  "member" VALUES (3,"RT91","Corey Peters","Louisville, Kentucky","6");
INSERT INTO  "member" VALUES (4,"RE95","Ventrell Jenkins","Columbia, South Carolina","6");
INSERT INTO  "member" VALUES (5,"OLB56","Braxton Kelley","LaGrange, Georgia","6");
INSERT INTO  "member" VALUES (6,"MLB4","Micah Johnson","Fort Campbell, Kentucky","4");
INSERT INTO  "member" VALUES (7,"SLB51","Johnny Williams","Jacksonville, Florida","6");
INSERT INTO  "member" VALUES (8,"RCB32","Trevard Lindley","Hiram, Georgia","6");
INSERT INTO  "member" VALUES (9,"LCB7","David Jones","Red Jacket, West Virginia","6");
INSERT INTO  "member" VALUES (10,"FS10","Matt Lentz","Simpsonville, South Carolina","2");


CREATE TABLE "branch" (
"Branch_ID" int,
"Name" text,
"Open_year" text,
"Address_road" text,
"City" text,
"membership_amount" text,
PRIMARY KEY ("Branch_ID")
);


INSERT INTO  "branch" VALUES (1,"Alexandre","2001","Valleys Place","London","112");
INSERT INTO  "branch" VALUES (2,"Popert","2009","Oaks Crescent","London","11");
INSERT INTO  "branch" VALUES (3,"Stanley","2013","Abbott Street","London","6");
INSERT INTO  "branch" VALUES (4,"Zytogorski","2009","Abbey Rise","Oxford","7");
INSERT INTO  "branch" VALUES (5,"Cochrane","2012","Brampton Road","London","1418");
INSERT INTO  "branch" VALUES (6,"Taverner","2014","Cecilia Avenue","Oxford","56");
INSERT INTO  "branch" VALUES (7,"Saint Amant","2015","Concord Road","London","91");
INSERT INTO  "branch" VALUES (8,"Brooke Greville","2009","Glebe Street","Oxford","31");


CREATE TABLE "membership_register_branch" (
"Member_ID" int,
"Branch_ID" text,
"Register_Year" text,
PRIMARY KEY ("Member_ID"),
FOREIGN KEY ("Member_ID") REFERENCES "member"("Member_ID"),
FOREIGN KEY ("Branch_ID") REFERENCES "branch"("Branch_ID")
);

INSERT INTO  "membership_register_branch" VALUES (1,1,"2016");
INSERT INTO  "membership_register_branch" VALUES (2,4,"2016");
INSERT INTO  "membership_register_branch" VALUES (3,1,"2017");
INSERT INTO  "membership_register_branch" VALUES (4,1,"2016");
INSERT INTO  "membership_register_branch" VALUES (5,5,"2016");
INSERT INTO  "membership_register_branch" VALUES (6,6,"2017");
INSERT INTO  "membership_register_branch" VALUES (7,2,"2016");
INSERT INTO  "membership_register_branch" VALUES (8,8,"2016");



CREATE TABLE "purchase" (
"Member_ID" int,
"Branch_ID" text,
"Year" text,
"Total_pounds" real,
PRIMARY KEY ("Member_ID","Branch_ID","Year"),
FOREIGN KEY ("Member_ID") REFERENCES "member"("Member_ID"),
FOREIGN KEY ("Branch_ID") REFERENCES "branch"("Branch_ID")
);

INSERT INTO  "purchase" VALUES (1,3,"2018",2013.32);
INSERT INTO  "purchase" VALUES (2,5,"2018",321.13);
INSERT INTO  "purchase" VALUES (3,1,"2017",988.09);
INSERT INTO  "purchase" VALUES (4,1,"2018",20.99);
INSERT INTO  "purchase" VALUES (3,5,"2018",343.76);
INSERT INTO  "purchase" VALUES (6,6,"2018",232.09);
INSERT INTO  "purchase" VALUES (2,2,"2018",402.10);
INSERT INTO  "purchase" VALUES (2,3,"2018",430.29);

