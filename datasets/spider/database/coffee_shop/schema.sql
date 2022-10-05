
PRAGMA foreign_keys = ON;
CREATE TABLE "shop" (
"Shop_ID" int,
"Address" text,
"Num_of_staff" text,
"Score" real,
"Open_Year" text,
PRIMARY KEY ("Shop_ID")
);


INSERT INTO  "shop" VALUES ("1","1200 Main Street","13","42","2010");
INSERT INTO  "shop" VALUES ("2","1111 Main Street","19","38","2008");
INSERT INTO  "shop" VALUES ("3","1330 Baltimore Street","42","36","2010");
INSERT INTO  "shop" VALUES ("4","909 Walnut Street","27","32","2010");
INSERT INTO  "shop" VALUES ("5","414 E. 12th Street","24","30","2011");
INSERT INTO  "shop" VALUES ("6","1201 Walnut Street","34","30","2010");
INSERT INTO  "shop" VALUES ("7","2345 McGee Street","425","40","2008");
INSERT INTO  "shop" VALUES ("8","909 Main Street","28","30","2011");
INSERT INTO  "shop" VALUES ("9","1100 Main Street","23","30","2006");
INSERT INTO  "shop" VALUES ("10","324 E. 11th Street","16","28","2008");



CREATE TABLE "member" (
"Member_ID" int,
"Name" text,
"Membership_card" text,
"Age" int,
"Time_of_purchase" int,
"Level_of_membership" int,
"Address" text,
PRIMARY KEY ("Member_ID")
);


INSERT INTO  "member" VALUES (1,"Ashby, Lazale","Black","29","18","5","Hartford");
INSERT INTO  "member" VALUES (2,"Breton, Robert","White","67","41","4","Waterbury");
INSERT INTO  "member" VALUES (3,"Campbell, Jessie","Black","34","20","6","Hartford");
INSERT INTO  "member" VALUES (4,"Cobb, Sedrick","Black","51","27","2","Waterbury");
INSERT INTO  "member" VALUES (5,"Hayes, Steven","White","50","44","3","Cheshire");
INSERT INTO  "member" VALUES (6,"Komisarjevsky, Joshua","White","33","26","2","Cheshire");
INSERT INTO  "member" VALUES (7,"Peeler, Russell","Black","42","26","6","Bridgeport");
INSERT INTO  "member" VALUES (8,"Reynolds, Richard","Black","45","24","1","Waterbury");
INSERT INTO  "member" VALUES (9,"Rizzo, Todd","White","35","18","4","Waterbury");
INSERT INTO  "member" VALUES (10,"Webb, Daniel","Black","51","27","22","Hartford");

CREATE TABLE "happy_hour" (
"HH_ID" int,
"Shop_ID" int,
"Month" text,
"Num_of_shaff_in_charge" int,
PRIMARY KEY ("HH_ID","Shop_ID","Month"),
FOREIGN KEY ("Shop_ID") REFERENCES `shop`("Shop_ID")
);

INSERT INTO  "happy_hour" VALUES (1,1,"May",10);
INSERT INTO  "happy_hour" VALUES (2,1,"April",12);
INSERT INTO  "happy_hour" VALUES (3,10,"June",15);
INSERT INTO  "happy_hour" VALUES (4,5,"July",5);
INSERT INTO  "happy_hour" VALUES (5,1,"May",10);
INSERT INTO  "happy_hour" VALUES (6,1,"April",12);
INSERT INTO  "happy_hour" VALUES (7,2,"June",5);
INSERT INTO  "happy_hour" VALUES (8,3,"July",15);
INSERT INTO  "happy_hour" VALUES (9,3,"May",3);
INSERT INTO  "happy_hour" VALUES (10,3,"April",4);


CREATE TABLE "happy_hour_member" (
"HH_ID" int,
"Member_ID" int,
"Total_amount" real,
PRIMARY KEY ("HH_ID","Member_ID"),
FOREIGN KEY ("Member_ID") REFERENCES `member`("Member_ID")
);

INSERT INTO  "happy_hour_member" VALUES (1,3,20.90);
INSERT INTO  "happy_hour_member" VALUES (4,3,20.92);
INSERT INTO  "happy_hour_member" VALUES (7,9,4.90);
INSERT INTO  "happy_hour_member" VALUES (2,5,16.90);
INSERT INTO  "happy_hour_member" VALUES (5,5,16.92);
INSERT INTO  "happy_hour_member" VALUES (8,9,4.20);


