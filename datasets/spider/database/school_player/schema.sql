
PRAGMA foreign_keys = ON;

CREATE TABLE "school" (
"School_ID" int,
"School" text,
"Location" text,
"Enrollment" real,
"Founded" real,
"Denomination" text,
"Boys_or_Girls" text,
"Day_or_Boarding" text,
"Year_Entered_Competition" real,
"School_Colors" text,
PRIMARY KEY ("School_Id")
);

INSERT INTO  "school" VALUES (1,"St Aloysius' College","Milsons Point","1200","1879","Catholic","Boys","Day","1929","Royal Blue and Gold");
INSERT INTO  "school" VALUES (2,"Barker College","Hornsby","2300","1890","Anglican","Boys only to Yr 9 Co-ed Year 10 to 12","Day & Boarding","1929","Red & Blue");
INSERT INTO  "school" VALUES (3,"Cranbrook School","Bellevue Hill","1000","1918","Anglican","Boys","Day & Boarding","1929","Red, White & Blue");
INSERT INTO  "school" VALUES (4,"Knox Grammar School","Wahroonga","1850","1924","Uniting Church","Boys","Day & Boarding","1929","Black & Blue");
INSERT INTO  "school" VALUES (5,"Trinity Grammar School","Summer Hill","2200","1913","Anglican","Boys","Day & Boarding","1929","Green and White");
INSERT INTO  "school" VALUES (6,"Waverley College","Waverley","1430","1903","Catholic","Boys","Day","1944","Royal Blue and Gold");



CREATE TABLE "school_details" (
"School_ID" int,
"Nickname" text,
"Colors" text,
"League" text,
"Class" text,
"Division" text,
PRIMARY KEY ("School_Id"),
FOREIGN KEY (`School_ID`) REFERENCES `school`(`School_ID`)
);

INSERT INTO  "school_details" VALUES (1,"Tigers","Blue and Yellow","DSHA","Flight A","Division 1");
INSERT INTO  "school_details" VALUES (2,"Auks","Dark Green and White","DSHA","Flight B","Division 3");
INSERT INTO  "school_details" VALUES (3,"Buccaneers","Garnet and White","DSHA","Fight A","Division 1");
INSERT INTO  "school_details" VALUES (4,"Raiders","Maroon and White","DSHA","Flight B","Division 3");
INSERT INTO  "school_details" VALUES (5,"Seahawks","Blue and Gold","DSHA","Flight B","Division 2");
INSERT INTO  "school_details" VALUES (6,"Silver Eagles","Silver and Maroon","DSHA","Flight B","Division 3");



CREATE TABLE "school_performance" (
"School_Id" int,
"School_Year" text,
"Class_A" text,
"Class_AA" text,
PRIMARY KEY ("School_Id","School_Year"),
FOREIGN KEY (`School_ID`) REFERENCES `school`(`School_ID`)
);

INSERT INTO  "school_performance" VALUES (1,"1987-88","Yantis","Blanco");
INSERT INTO  "school_performance" VALUES (1,"1988-89","Happy","Blanco");
INSERT INTO  "school_performance" VALUES (1,"1989-90","Skidmore-Tynan", "Bishop");
INSERT INTO  "school_performance" VALUES (2,"1990-91","Louise","Lytle");
INSERT INTO  "school_performance" VALUES (2,"1991-92","Anton","Clarendon");
INSERT INTO  "school_performance" VALUES (3,"1992-93","Anton","Wheeler");
INSERT INTO  "school_performance" VALUES (4,"1993-94","Utopia","Lytle");
INSERT INTO  "school_performance" VALUES (3,"1994-95","Martin's Mill","Wallis Brazos");
INSERT INTO  "school_performance" VALUES (5,"1995-96","Lindsay","Henrietta");
INSERT INTO  "school_performance" VALUES (6,"1996-97","Martin's Mill","Canadian");
INSERT INTO  "school_performance" VALUES (1,"1997-98","Martin's Mill","Buffalo");
INSERT INTO  "school_performance" VALUES (2,"1998-99","Wheeler","Van Alstyne");
INSERT INTO  "school_performance" VALUES (3,"1999-2000","Valley View","Lindsay");
INSERT INTO  "school_performance" VALUES (5,"2000-01","Menard","Weimar");
INSERT INTO  "school_performance" VALUES (6,"2001-02","Santa Anna","Hale Center");
INSERT INTO  "school_performance" VALUES (2,"2002-03","Martin's Mill","Hale Center");
INSERT INTO  "school_performance" VALUES (1,"2003-04","Martin's Mill","S&S Consolidated");
INSERT INTO  "school_performance" VALUES (2,"2004-05","Lindsay","Salado");
INSERT INTO  "school_performance" VALUES (3,"2005-06","Quanah","Salado");
INSERT INTO  "school_performance" VALUES (1,"2006-07","Martin's Mill","Weimar");
INSERT INTO  "school_performance" VALUES (6,"2007-08","Frost","Weimar");
INSERT INTO  "school_performance" VALUES (4,"2008-09","Winters","Dimmitt");


CREATE TABLE "player" (
"Player_ID" int,
"Player" text,
"Team" text,
"Age" int,
"Position" text,
"School_ID" int,
PRIMARY KEY ("Player_ID"),
FOREIGN KEY (`School_ID`) REFERENCES `school`(`School_ID`)
);

INSERT INTO  "player" VALUES ("1","Timothy Beckham","Tampa Bay Devil Rays",15,"Shortstop",1);
INSERT INTO  "player" VALUES ("2","Pedro Álvarez","Pittsburgh Pirates",14,"Third baseman",2);
INSERT INTO  "player" VALUES ("3","Eric Hosmer","Kansas City Royals",16,"First Baseman",1);
INSERT INTO  "player" VALUES ("4","Brian Matusz","Baltimore Orioles",17,"Left-handed pitcher",1);
INSERT INTO  "player" VALUES ("5","Buster Posey","San Francisco Giants",15,"Catcher",2);
INSERT INTO  "player" VALUES ("6","Kyle Skipworth","Florida Marlins",14,"Catcher",2);
INSERT INTO  "player" VALUES ("7","Yonder Alonso","Cincinnati Reds",15,"First baseman",1);
INSERT INTO  "player" VALUES ("8","Gordon Beckham","Chicago White Sox",16,"Shortstop",1);
INSERT INTO  "player" VALUES ("9","Aaron Crow *","Washington Nationals",16,"Right-handed pitcher",1);
INSERT INTO  "player" VALUES ("10","Jason Castro","Houston Astros",15,"Catcher",1);
INSERT INTO  "player" VALUES ("11","Justin Smoak","Texas Rangers",15,"First baseman",1);
INSERT INTO  "player" VALUES ("12","Jemile Weeks","Oakland Athletics",15,"Second baseman",2);
INSERT INTO  "player" VALUES ("13","Brett Wallace","St. Louis Cardinals",17,"Third baseman",5);
INSERT INTO  "player" VALUES ("14","Aaron Hicks","Minnesota Twins",14,"Outfielder",6);
INSERT INTO  "player" VALUES ("15","Ethan Martin","Los Angeles Dodgers",15,"Right-handed pitcher",1);
INSERT INTO  "player" VALUES ("16","Brett Lawrie","Milwaukee Brewers",15,"Catcher",1);
INSERT INTO  "player" VALUES ("17","David Cooper","Toronto Blue Jays",17,"First baseman",1);
INSERT INTO  "player" VALUES ("18","Ike Davis","New York Mets",15,"First baseman",4);
INSERT INTO  "player" VALUES ("19","Andrew Cashner","Chicago Cubs",16,"Right-handed pitcher",4);
INSERT INTO  "player" VALUES ("20","Josh Fields","Seattle Mariners",15,"Right-handed pitcher",4);
INSERT INTO  "player" VALUES ("21","Ryan Perry","Detroit Tigers",17,"Right-handed pitcher",3);
INSERT INTO  "player" VALUES ("22","Reese Havens","New York Mets",18,"Shortstop",5);
INSERT INTO  "player" VALUES ("23","Allan Dykstra","San Diego Padres",15,"First baseman",5);
