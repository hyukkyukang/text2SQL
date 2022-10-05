-- LINK: https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store

CREATE TABLE Manufacturers (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL,
  Headquarter VARCHAR(255) NOT NULL,
  Founder VARCHAR(255) NOT NULL,
  Revenue REAL,
  PRIMARY KEY (Code)   
);

CREATE TABLE Products (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL ,
  Price DECIMAL NOT NULL ,
  Manufacturer INTEGER NOT NULL,
  PRIMARY KEY (Code), 
  FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
);

INSERT INTO Manufacturers VALUES(1,'Sony', 'Tokyo', 'Andy', 120);
INSERT INTO Manufacturers VALUES(2,'Creative Labs', 'Austin', 'Owen', 100);
INSERT INTO Manufacturers VALUES(3,'Hewlett-Packard', 'Los Angeles', 'James', 50);
INSERT INTO Manufacturers VALUES(4,'Iomega', 'Beijing', 'Mary', 200);
INSERT INTO Manufacturers VALUES(5,'Fujitsu', 'Taiwan', 'John', 130);
INSERT INTO Manufacturers VALUES(6,'Winchester', 'Paris', 'Robert', 30);

INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(1,'Hard drive',240,5);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(2,'Memory',120,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(3,'ZIP drive',150,4);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(4,'Floppy disk',5,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(5,'Monitor',240,1);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(6,'DVD drive',180,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(7,'CD drive',90,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(8,'Printer',270,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(9,'Toner cartridge',66,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(10,'DVD burner',180,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(11,'DVD drive',150,3);
