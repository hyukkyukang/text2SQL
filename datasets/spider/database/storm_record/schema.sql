
PRAGMA foreign_keys = ON;

CREATE TABLE "storm" (
"Storm_ID" int,
"Name" text,
"Dates_active" text,
"Max_speed" int,
"Damage_millions_USD" real,
"Number_Deaths" int,
PRIMARY KEY ("Storm_ID")
);

INSERT INTO  "storm" VALUES (1,"One","May19–May25","995","13",0);
INSERT INTO  "storm" VALUES (2,"Two","August3–August10","972","10.75",7);
INSERT INTO  "storm" VALUES (3,"Three","August5–August14","972","13",52);
INSERT INTO  "storm" VALUES (4,"Four","August26–September2","961","4.05",7);
INSERT INTO  "storm" VALUES (5,"Five","September7–September17","988","1.49",3);
INSERT INTO  "storm" VALUES (6,"Six","September18–September25","1002","0.039",2);
INSERT INTO  "storm" VALUES (7,"Seven","September22–September28","977","13",0);
INSERT INTO  "storm" VALUES (8,"Eight","October20–October24","983","13",0);
INSERT INTO  "storm" VALUES (9,"Nine","October24–October26","1007","13",0);
INSERT INTO  "storm" VALUES (10,"9 cyclones","May19 –October26","961","29.3",71);

CREATE TABLE "region" (
`Region_id` int,
`Region_code` text,
`Region_name` text,
PRIMARY KEY ("Region_id")
);

INSERT INTO "region" VALUES (1, "AF", "Afghanistan");
INSERT INTO "region" VALUES (2, "AL", "Albania");
INSERT INTO "region" VALUES (3, "DZ", "Algeria");
INSERT INTO "region" VALUES (4, "DS", "American Samoa");
INSERT INTO "region" VALUES (5, "AD", "Andorra");
INSERT INTO "region" VALUES (6, "AO", "Angola");
INSERT INTO "region" VALUES (7, "AI", "Anguilla");
INSERT INTO "region" VALUES (8, "AQ", "Antarctica");
INSERT INTO "region" VALUES (9, "AG", "Antigua and Barbuda");
INSERT INTO "region" VALUES (10, "CY", "Cyprus");
INSERT INTO "region" VALUES (11, "CZ", "Czech Republic");
INSERT INTO "region" VALUES (12, "DK", "Denmark");
INSERT INTO "region" VALUES (13, "DJ", "Djibouti");


CREATE TABLE `affected_region` (
`Region_id` int,
`Storm_ID` int,
`Number_city_affected` real,
PRIMARY KEY (`Region_id`,`Storm_ID`),
FOREIGN KEY (`Region_id`) REFERENCES `region`(`Region_id`),
FOREIGN KEY (`Storm_ID`) REFERENCES `storm`(`Storm_ID`)
);

INSERT INTO `affected_region` VALUES (1,1,10);
INSERT INTO `affected_region` VALUES (2,1,15);
INSERT INTO `affected_region` VALUES (3,3,30);
INSERT INTO `affected_region` VALUES (1,4,22);
INSERT INTO `affected_region` VALUES (12,5,37);
INSERT INTO `affected_region` VALUES (2,5,12);

