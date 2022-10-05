
PRAGMA foreign_keys = ON;

CREATE TABLE "course" (
"Course_ID" int,
"Staring_Date" text,
"Course" text,
PRIMARY KEY ("Course_ID")
);

CREATE TABLE "teacher" (
"Teacher_ID" int,
"Name" text,
"Age" text,
"Hometown" text,
PRIMARY KEY ("Teacher_ID")
);

INSERT INTO  "course" VALUES ("1","5 May","Language Arts");
INSERT INTO  "course" VALUES ("2","6 May","Math");
INSERT INTO  "course" VALUES ("3","7 May","Science");
INSERT INTO  "course" VALUES ("4","9 May","History");
INSERT INTO  "course" VALUES ("5","10 May","Bible");
INSERT INTO  "course" VALUES ("6","11 May","Geography");
INSERT INTO  "course" VALUES ("7","13 May","Sports");
INSERT INTO  "course" VALUES ("8","14 May","French");
INSERT INTO  "course" VALUES ("9","15 May","Health");
INSERT INTO  "course" VALUES ("10","17 May","Music");

INSERT INTO  "teacher" VALUES (1,"Joseph Huts",32,"Blackrod Urban District");
INSERT INTO  "teacher" VALUES (2,"Gustaaf Deloor",29,"Bolton County Borough");
INSERT INTO  "teacher" VALUES (3,"Vicente Carretero",26,"Farnworth Municipal Borough");
INSERT INTO  "teacher" VALUES (4,"John Deloor",33,"Horwich Urban District");
INSERT INTO  "teacher" VALUES (5,"Kearsley Brown",45,"Kearsley Urban District");
INSERT INTO  "teacher" VALUES (6,"Anne Walker",41,"Little Lever Urban District");
INSERT INTO  "teacher" VALUES (7,"Lucy Wong",39,"Turton Urban District");

CREATE TABLE "course_arrange" (
"Course_ID" int,
"Teacher_ID" int,
"Grade" int,
PRIMARY KEY ("Course_ID","Teacher_ID","Grade"),
FOREIGN KEY ("Course_ID") REFERENCES `course`("Course_ID"),
FOREIGN KEY ("Teacher_ID") REFERENCES `teacher`("Teacher_ID")
);
INSERT INTO  "course_arrange" VALUES (2,5,1);
INSERT INTO  "course_arrange" VALUES (2,3,3);
INSERT INTO  "course_arrange" VALUES (3,2,5);
INSERT INTO  "course_arrange" VALUES (4,6,7);
INSERT INTO  "course_arrange" VALUES (5,6,1);
INSERT INTO  "course_arrange" VALUES (10,7,4);

