CREATE TABLE "continents" ( 
	"ContId" INTEGER PRIMARY KEY, 
	"Continent" TEXT 
);

CREATE TABLE "countries" (
	"CountryId" INTEGER PRIMARY KEY, 
	"CountryName" TEXT, 
	"Continent" INTEGER,
	FOREIGN KEY (Continent) REFERENCES continents(ContId)
);


CREATE TABLE "car_makers" ( 
	"Id" INTEGER PRIMARY KEY, 
	"Maker" TEXT, 
	"FullName" TEXT, 
	"Country" TEXT,
	FOREIGN KEY (Country) REFERENCES countries(CountryId)
);


CREATE TABLE "model_list" ( 
	"ModelId" INTEGER PRIMARY KEY, 
	"Maker" INTEGER, 
	"Model" TEXT UNIQUE,
	FOREIGN KEY (Maker) REFERENCES car_makers (Id)

);



CREATE TABLE "car_names" ( 
	"MakeId" INTEGER PRIMARY KEY, 
	"Model" TEXT, 
	"Make" TEXT,
	FOREIGN KEY (Model) REFERENCES model_list (Model)
);

CREATE TABLE "cars_data" (
	"Id" INTEGER PRIMARY KEY, 
	"MPG" TEXT, 
	"Cylinders" INTEGER, 
	"Edispl" REAL, 
	"Horsepower" TEXT, 
	"Weight" INTEGER, 
	"Accelerate" REAL, 
	"Year" INTEGER,
	FOREIGN KEY (Id) REFERENCES car_names (MakeId)
);


