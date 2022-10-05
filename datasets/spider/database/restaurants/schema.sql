PRAGMA foreign_keys = ON;
CREATE TABLE "GEOGRAPHIC" (
"CITY_NAME" text,
"COUNTY" text,
"REGION" text,
primary key("CITY_NAME")
);
CREATE TABLE "RESTAURANT" (
"ID" int,
"NAME" text,
"FOOD_TYPE" text,
"CITY_NAME" text,
"RATING" real,
primary key("ID"),
foreign key ("CITY_NAME") references `GEOGRAPHIC`("CITY_NAME")
);
CREATE TABLE "LOCATION" (
"RESTAURANT_ID" int,
"HOUSE_NUMBER" int,
"STREET_NAME" text,
"CITY_NAME" text,
primary key("RESTAURANT_ID"),
foreign key ("CITY_NAME") references `GEOGRAPHIC`("CITY_NAME")
foreign key ("RESTAURANT_ID") references `RESTAURANT`("RESTAURANT_ID")
);
