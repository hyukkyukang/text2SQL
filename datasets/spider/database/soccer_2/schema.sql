/* 
 * SQL scripts for CS61 Intro to SQL lectures
 * FILENAME SOCCER2.SQL
 */

DROP TABLE  IF EXISTS Player;
DROP TABLE  IF EXISTS Tryout;
DROP TABLE  IF EXISTS College;

CREATE TABLE 	College 
  ( cName   	varchar(20) NOT NULL,
    state   	varchar(2),
    enr     	numeric(5,0),
    PRIMARY KEY (cName)
  );

CREATE TABLE 	Player
  ( pID			numeric(5,0) NOT NULL,
  	pName   	varchar(20),
    yCard   	varchar(3),
    HS      	numeric(5,0),
    PRIMARY KEY (pID)
  );

CREATE TABLE 	Tryout
  ( pID			numeric(5,0),
  	cName   	varchar(20),
    pPos    	varchar(8),
    decision    varchar(3),
    PRIMARY KEY (pID, cName),
    FOREIGN KEY (pID) REFERENCES Player(pID),
    FOREIGN KEY (cName) REFERENCES College(cName)
  );

/* note that "left" and "right" are reserved words in SQL */

INSERT INTO College VALUES ('LSU', 'LA', 18000);
INSERT INTO College VALUES ('ASU', 'AZ', 12000);
INSERT INTO College VALUES ('OU', 'OK', 22000);
INSERT INTO College VALUES ('FSU', 'FL', 19000);

INSERT INTO Player VALUES (10001, 'Andrew', 'no', 1200);
INSERT INTO Player VALUES (20002, 'Blake', 'no', 1600);
INSERT INTO Player VALUES (30003, 'Charles', 'no', 300);
INSERT INTO Player VALUES (40004, 'David', 'yes', 1600);
INSERT INTO Player VALUES (40002, 'Drago', 'yes', 1600);
INSERT INTO Player VALUES (50005, 'Eddie', 'yes', 600);

INSERT INTO Tryout VALUES (10001, 'LSU', 'goalie', 'no');
INSERT INTO Tryout VALUES (10001, 'ASU', 'goalie', 'yes');
INSERT INTO Tryout VALUES (20002, 'FSU', 'striker', 'yes');
INSERT INTO Tryout VALUES (30003, 'OU', 'mid', 'no');
INSERT INTO Tryout VALUES (40004, 'ASU', 'goalie', 'no');
INSERT INTO Tryout VALUES (50005, 'LSU', 'mid', 'no');
