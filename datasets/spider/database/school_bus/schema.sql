
PRAGMA foreign_keys = ON;

CREATE TABLE "driver" (
"Driver_ID" int,
"Name" text,
"Party" text,
"Home_city" text,
"Age" int,
PRIMARY KEY ("Driver_ID")
);

CREATE TABLE "school" (
"School_ID" int,
"Grade" text,
"School" text,
"Location" text,
"Type" text,
PRIMARY KEY ("School_ID")
);

INSERT INTO  "driver" VALUES ("1","Matthew Ritter","Dem","Hartford",40);
INSERT INTO  "driver" VALUES ("2","Dan Carter","Rep","Bethel",30);
INSERT INTO  "driver" VALUES ("3","Minnie Gonzalez","Dem","Hartford",46);
INSERT INTO  "driver" VALUES ("4","Angel Acre","Dem","Hartford",42);
INSERT INTO  "driver" VALUES ("5","Brandon McGee","Dem","Hartford",45);
INSERT INTO  "driver" VALUES ("6","Edwin Vargas","Dem","Hartford",52);
INSERT INTO  "driver" VALUES ("7","Douglas McCrory","Dem","Hartford",36);
INSERT INTO  "driver" VALUES ("8","Timothy Ackert","Rep","Coventry",35);
INSERT INTO  "driver" VALUES ("9","Jason Rojas","Dem","East Hartford",38);
INSERT INTO  "driver" VALUES ("10","Henry Genga","Dem","East Hartford",37);
INSERT INTO  "driver" VALUES ("11","Tim Larson","Dem","East Hartford",36);
INSERT INTO  "driver" VALUES ("12","Geoff Luxenberg","Dem","Manchester",52);

INSERT INTO  "school" VALUES (1,"Kindergarten","Noelani Elementary School","Honolulu, Hawaii","Public");
INSERT INTO  "school" VALUES (2,"1st-3rd grade","St. Francis Assisi","Jakarta, Indonesia","Private Catholic");
INSERT INTO  "school" VALUES (3,"4th grade","State Elementary School Menteng 01","Jakarta, Indonesia","Public");
INSERT INTO  "school" VALUES (4,"5th-12th grade","Punahou School","Honolulu, Hawaii","Private");
INSERT INTO  "school" VALUES (5,"Freshman–Sophomore year","Occidental College","Los Angeles, California","Private");
INSERT INTO  "school" VALUES (6,"Junior–Senior year","Columbia University","New York City","Private");
INSERT INTO  "school" VALUES (7,"College","Harvard Law School","Cambridge, Massachusetts","Private");



CREATE TABLE "school_bus" (
"School_ID" int,
"Driver_ID" int,
"Years_Working" int,
"If_full_time" bool,
PRIMARY KEY ("School_ID","Driver_ID"),
FOREIGN KEY ("School_ID") REFERENCES `school`("School_ID"),
FOREIGN KEY ("Driver_ID") REFERENCES `driver`("Driver_ID")
);


INSERT INTO  "school_bus" VALUES (1,10,10,"F");
INSERT INTO  "school_bus" VALUES (5,7,8,"T");
INSERT INTO  "school_bus" VALUES (3,4,6,"T");
INSERT INTO  "school_bus" VALUES (7,9,2,"T");
INSERT INTO  "school_bus" VALUES (4,3,3,"T");

