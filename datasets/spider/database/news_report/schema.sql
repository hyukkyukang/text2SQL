PRAGMA foreign_keys = ON;


CREATE TABLE "event" (
    "Event_ID" int,
    "Date" text,
    "Venue" text,
    "Name" text,
    "Event_Attendance" int,
    PRIMARY KEY ("Event_ID")
);

CREATE TABLE "journalist" (
    "journalist_ID" int,
    "Name" text,
    "Nationality" text,
    "Age" text,
    "Years_working" int,
    PRIMARY KEY ("journalist_ID")
);

INSERT INTO  "event" VALUES (1,"13 October 2008","Marathon","Olympia Games Openning","6650");
INSERT INTO  "event" VALUES (2,"11 October 2007","Victoria","Government Hearing","369");
INSERT INTO  "event" VALUES (3,"7 October 2010","Motagua","Public Debating","1675");
INSERT INTO  "event" VALUES (4,"20 June 2018","Platense","Global Awarding","2356");
INSERT INTO  "event" VALUES (5,"9 April 2014","Hispano","Special Exhibition","225");


INSERT INTO  "journalist" VALUES (1,"Herbert Swindells","England",37,10);
INSERT INTO  "journalist" VALUES (2,"Fred Keenor","Wales",27,5);
INSERT INTO  "journalist" VALUES (3,"George Gilchrist","England",28,6);
INSERT INTO  "journalist" VALUES (4,"Jackie Waring","England",43,21);
INSERT INTO  "journalist" VALUES (5,"Fred Chandler","England",34,6);
INSERT INTO  "journalist" VALUES (6,"Ray Ferris","Northern Ireland",29,3);
INSERT INTO  "journalist" VALUES (7,"John Meaney","England",28,7);
INSERT INTO  "journalist" VALUES (8,"Tony Waddington","England",43,12);
INSERT INTO  "journalist" VALUES (9,"Jack Meaney","England",37,8);
INSERT INTO  "journalist" VALUES (10,"Frank Mitcheson","England",33,9);
INSERT INTO  "journalist" VALUES (11,"Tom Briggs","England",25,1);



CREATE TABLE "news_report" (
    "journalist_ID" int,
    "Event_ID" int,
    "Work_Type" text,
    PRIMARY KEY ("journalist_ID","Event_ID"),
    FOREIGN KEY ("journalist_ID") REFERENCES `journalist`("journalist_ID"),
    FOREIGN KEY ("Event_ID") REFERENCES `event`("Event_ID")
);

INSERT INTO  "news_report" VALUES (1,3,"Screening");
INSERT INTO  "news_report" VALUES (11,5,"Screening");
INSERT INTO  "news_report" VALUES (6,1,"Screening");
INSERT INTO  "news_report" VALUES (4,2,"Music");
INSERT INTO  "news_report" VALUES (7,5,"Music");
INSERT INTO  "news_report" VALUES (4,1,"Host");
INSERT INTO  "news_report" VALUES (8,4,"Host");

