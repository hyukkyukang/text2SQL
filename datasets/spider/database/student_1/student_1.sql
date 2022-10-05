CREATE TABLE "list" ( 
	"LastName" TEXT, 
	"FirstName" TEXT, 
	"Grade" INTEGER, 
	"Classroom" INTEGER,
	PRIMARY KEY(LastName, FirstName)
);
CREATE TABLE "teachers" ( 
	"LastName" TEXT, 
	"FirstName" TEXT, 
	"Classroom" INTEGER,
	PRIMARY KEY(LastName, FirstName)
);
