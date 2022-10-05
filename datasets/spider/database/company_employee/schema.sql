PRAGMA foreign_keys = ON;

CREATE TABLE "people" (
    "People_ID" int,
    "Age" int,
    "Name" text,
    "Nationality" text,
    "Graduation_College" text,
    PRIMARY KEY ("People_ID")
);


INSERT INTO  "people" VALUES ("1","27","Reggie Lewis","United States","Northeastern");
INSERT INTO  "people" VALUES ("2","25","Brad Lohaus","United States","Iowa");
INSERT INTO  "people" VALUES ("3","37","Tom Sheehey","United Kindom","Virginia");
INSERT INTO  "people" VALUES ("4","31","Darryl Kennedy","United States","Oklahoma");
INSERT INTO  "people" VALUES ("5","34","David Butler","United Kindom","California");
INSERT INTO  "people" VALUES ("6","37","Tim Naegeli","United States","Wisconsin–Stevens Point");
INSERT INTO  "people" VALUES ("7","30","Jerry Corcoran","United States","Northeastern");



CREATE TABLE "company" (
    "Company_ID" real,
    "Name" text,
    "Headquarters" text,
    "Industry" text,
    "Sales_in_Billion" real,
    "Profits_in_Billion" real,
    "Assets_in_Billion" real,
    "Market_Value_in_Billion" real,
    PRIMARY KEY ("Company_ID")
);


INSERT INTO  "company" VALUES ("1","ExxonMobil","USA","Oil and gas","433.5","41.1","331.1","407.4");
INSERT INTO  "company" VALUES ("2","JPMorgan Chase","USA","Banking","110.8","19","2265.8","170.1");
INSERT INTO  "company" VALUES ("3","General Electric","USA","Conglomerate","147.3","14.2","717.2","213.7");
INSERT INTO  "company" VALUES ("4","Royal Dutch Shell","Netherlands","Oil and gas","470.2","30.9","340.5","227.6");
INSERT INTO  "company" VALUES ("5","Industrial and Commercial Bank of China","China","Banking","82.6","25.1","2039.1","237.4");
INSERT INTO  "company" VALUES ("6","HSBC","UK","Banking","102","16.2","2550","164.3");
INSERT INTO  "company" VALUES ("7","PetroChina","China","Oil and gas","310.1","20.6","304.7","294.7");
INSERT INTO  "company" VALUES ("8","Berkshire Hathaway","USA","Conglomerate","143.7","10.3","392.6","202.2");
INSERT INTO  "company" VALUES ("9","Wells Fargo","USA","Banking","87.6","15.9","1313.9","178.7");
INSERT INTO  "company" VALUES ("10","Petrobras","Brazil","Oil and gas","145.9","20.1","319.4","180");
INSERT INTO  "company" VALUES ("11","BP","UK","Oil and gas","375.5","25.7","292.5","147.4");
INSERT INTO  "company" VALUES ("12","Chevron","USA","Oil and gas","236.3","26.9","209.5","218");
INSERT INTO  "company" VALUES ("13","China Construction Bank","China","Banking","68.7","20.5","1637.8","201.9");
INSERT INTO  "company" VALUES ("14","Citigroup","USA","Banking","102.6","11.1","1873.9","107.5");
INSERT INTO  "company" VALUES ("15","Gazprom","Russia","Oil and gas","117.6","31.7","302.6","159.8");
INSERT INTO  "company" VALUES ("16","Walmart","USA","Retailing","447","15.7","193.4","208.4");
INSERT INTO  "company" VALUES ("17","Volkswagen Group","Germany","Automotive","221.9","21.5","328.7","79.5");
INSERT INTO  "company" VALUES ("18","Total","France","Oil and gas","216.2","15.9","213","132.4");
INSERT INTO  "company" VALUES ("19","Agricultural Bank of China","China","Banking","62.4","14.4","1563.9","154.8");



CREATE TABLE "employment" (
    "Company_ID" int,
    "People_ID" int,
    "Year_working" int,
    PRIMARY KEY ("Company_ID","People_ID"),
    FOREIGN KEY ("Company_ID") REFERENCES `company`("Company_ID"),
    FOREIGN KEY ("People_ID") REFERENCES `people`("People_ID")
);

INSERT INTO  "employment" VALUES (11,3,2);
INSERT INTO  "employment" VALUES (13,2,3);
INSERT INTO  "employment" VALUES (17,7,4);
INSERT INTO  "employment" VALUES (15,1,1);
INSERT INTO  "employment" VALUES (7,4,1);

