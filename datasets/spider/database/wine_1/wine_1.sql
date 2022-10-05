CREATE TABLE "grapes" ( 
	"ID" INTEGER PRIMARY KEY, 
	"Grape" TEXT UNIQUE, 
	"Color" TEXT 
);

CREATE TABLE "appellations" ( 
	"No" INTEGER PRIMARY KEY, 
	"Appelation" TEXT UNIQUE, 
	"County" TEXT, 
	"State" TEXT, 
	"Area" TEXT, 
	"isAVA" TEXT
);

CREATE TABLE "wine" ( 
	"No" INTEGER, 
	"Grape" TEXT, 
	"Winery" TEXT, 
	"Appelation" TEXT, 
	"State" TEXT, 
	"Name" TEXT, 
	"Year" INTEGER, 
	"Price" INTEGER, 
	"Score" INTEGER, 
	"Cases" INTEGER, 
	"Drink" TEXT,
	FOREIGN KEY (Grape) REFERENCES grapes(Grape),
	FOREIGN KEY (Appelation) REFERENCES appellations(Appelation)
);
