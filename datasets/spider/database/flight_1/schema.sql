-- drop table flight cascade constraints;
-- drop table aircraft cascade constraints;
-- drop table employee cascade constraints;
-- drop table certificate cascade constraints;

create table flight(
	flno number(4,0) primary key,
	origin varchar2(20),
	destination varchar2(20),
	distance number(6,0),
	departure_date date,
	arrival_date date,
	price number(7,2),
    aid number(9,0),
    foreign key("aid") references `aircraft`("aid"));

create table aircraft(
	aid number(9,0) primary key,
	name varchar2(30),
	distance number(6,0));

create table employee(
	eid number(9,0) primary key,
	name varchar2(30),
	salary number(10,2));

create table certificate(
	eid number(9,0),
	aid number(9,0),
	primary key(eid,aid),
	foreign key("eid") references `employee`("eid"),
	foreign key("aid") references `aircraft`("aid")); 

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (99.0,'Los Angeles','Washington D.C.',2308.0,'04/12/2005 09:30','04/12/2005 09:40',235.98, 1);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (13.0,'Los Angeles','Chicago',1749.0,'04/12/2005 08:45', '04/12/2005 08:45',220.98, 3);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (346.0,'Los Angeles','Dallas',1251.0,'04/12/2005 11:50','04/12/2005 07:05',225-43, 2);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (387.0,'Los Angeles','Boston',2606.0,'04/12/2005 07:03', '04/12/2005 05:03',261.56, 6);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (7.0,'Los Angeles','Sydney',7487.0,'04/12/2005 05:30', '04/12/2005 11:10',278.56, 3);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (2.0,'Los Angeles','Tokyo',5478.0,'04/12/2005 06:30','04/12/2005 03:55',780.99, 9);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (33.0,'Los Angeles','Honolulu',2551.0,'04/12/2005 09:15', '04/12/2005 11:15',375.23, 7);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (34.0,'Los Angeles','Honolulu',2551.0,'04/12/2005 12:45', '04/12/2005 03:18',425.98, 5);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (76.0,'Chicago','Los Angeles',1749.0,'04/12/2005 08:32', '04/12/2005 10:03',220.98, 9);

INSERT INTO flight (FLNO, origin, destination, distance, departure_date, arrival_date, price,aid) VALUES (68.0,'Chicago','New York',802.0,'04/12/2005 09:00','04/12/2005 12:02',202.45, 10);


Insert into aircraft (AID,name,distance) values ('1','Boeing 747-400','8430');
Insert into aircraft (AID,name,distance) values ('2','Boeing 737-800','3383');
Insert into aircraft (AID,name,distance) values ('3','Airbus A340-300','7120');
Insert into aircraft (AID,name,distance) values ('4','British Aerospace Jetstream 41','1502');
Insert into aircraft (AID,name,distance) values ('5','Embraer ERJ-145','1530');
Insert into aircraft (AID,name,distance) values ('6','SAAB 340','2128');
Insert into aircraft (AID,name,distance) values ('7','Piper Archer III','520');
Insert into aircraft (AID,name,distance) values ('8','Tupolev 154','4103');
Insert into aircraft (AID,name,distance) values ('16','Schwitzer 2-33','30');
Insert into aircraft (AID,name,distance) values ('9','Lockheed L1011','6900');
Insert into aircraft (AID,name,distance) values ('10','Boeing 757-300','4010');
Insert into aircraft (AID,name,distance) values ('11','Boeing 777-300','6441');
Insert into aircraft (AID,name,distance) values ('12','Boeing 767-400ER','6475');
Insert into aircraft (AID,name,distance) values ('13','Airbus A320','2605');
Insert into aircraft (AID,name,distance) values ('14','Airbus A319','1805');
Insert into aircraft (AID,name,distance) values ('15','Boeing 727','1504');


Insert into employee (EID,name,salary) values ('242518965','James Smith','120433');
Insert into employee (EID,name,salary) values ('141582651','Mary Johnson','178345');
Insert into employee (EID,name,salary) values ('11564812','John Williams','153972');
Insert into employee (EID,name,salary) values ('567354612','Lisa Walker','256481');
Insert into employee (EID,name,salary) values ('552455318','Larry West','101745');
Insert into employee (EID,name,salary) values ('550156548','Karen Scott','205187');
Insert into employee (EID,name,salary) values ('390487451','Lawrence Sperry','212156');
Insert into employee (EID,name,salary) values ('274878974','Michael Miller','99890');
Insert into employee (EID,name,salary) values ('254099823','Patricia Jones','24450');
Insert into employee (EID,name,salary) values ('356187925','Robert Brown','44740');
Insert into employee (EID,name,salary) values ('355548984','Angela Martinez','212156');
Insert into employee (EID,name,salary) values ('310454876','Joseph Thompson','212156');
Insert into employee (EID,name,salary) values ('489456522','Linda Davis','27984');
Insert into employee (EID,name,salary) values ('489221823','Richard Jackson','23980');
Insert into employee (EID,name,salary) values ('548977562','William Ward','84476');
Insert into employee (EID,name,salary) values ('310454877','Chad Stewart','33546');
Insert into employee (EID,name,salary) values ('142519864','Betty Adams','227489');
Insert into employee (EID,name,salary) values ('269734834','George Wright','289950');
Insert into employee (EID,name,salary) values ('287321212','Michael Miller','48090');
Insert into employee (EID,name,salary) values ('552455348','Dorthy Lewis','152013');
Insert into employee (EID,name,salary) values ('248965255','Barbara Wilson','43723');
Insert into employee (EID,name,salary) values ('159542516','William Moore','48250');
Insert into employee (EID,name,salary) values ('348121549','Haywood Kelly','32899');
Insert into employee (EID,name,salary) values ('90873519','Elizabeth Taylor','32021');
Insert into employee (EID,name,salary) values ('486512566','David Anderson','43001');
Insert into employee (EID,name,salary) values ('619023588','Jennifer Thomas','54921');
Insert into employee (EID,name,salary) values ('15645489','Donald King','18050');
Insert into employee (EID,name,salary) values ('556784565','Mark Young','205187');
Insert into employee (EID,name,salary) values ('573284895','Eric Cooper','114323');
Insert into employee (EID,name,salary) values ('574489456','William Jones','105743');
Insert into employee (EID,name,salary) values ('574489457','Milo Brooks','20');


Insert into certificate (EID,AID) values ('11564812','2');
Insert into certificate (EID,AID) values ('11564812','10');
Insert into certificate (EID,AID) values ('90873519','6');
Insert into certificate (EID,AID) values ('141582651','2');
Insert into certificate (EID,AID) values ('141582651','10');
Insert into certificate (EID,AID) values ('141582651','12');
Insert into certificate (EID,AID) values ('142519864','1');
Insert into certificate (EID,AID) values ('142519864','2');
Insert into certificate (EID,AID) values ('142519864','3');
Insert into certificate (EID,AID) values ('142519864','7');
Insert into certificate (EID,AID) values ('142519864','10');
Insert into certificate (EID,AID) values ('142519864','11');
Insert into certificate (EID,AID) values ('142519864','12');
Insert into certificate (EID,AID) values ('142519864','13');
Insert into certificate (EID,AID) values ('159542516','5');
Insert into certificate (EID,AID) values ('159542516','7');
Insert into certificate (EID,AID) values ('242518965','2');
Insert into certificate (EID,AID) values ('242518965','10');
Insert into certificate (EID,AID) values ('269734834','1');
Insert into certificate (EID,AID) values ('269734834','2');
Insert into certificate (EID,AID) values ('269734834','3');
Insert into certificate (EID,AID) values ('269734834','4');
Insert into certificate (EID,AID) values ('269734834','5');
Insert into certificate (EID,AID) values ('269734834','6');
Insert into certificate (EID,AID) values ('269734834','7');
Insert into certificate (EID,AID) values ('269734834','8');
Insert into certificate (EID,AID) values ('269734834','9');
Insert into certificate (EID,AID) values ('269734834','10');
Insert into certificate (EID,AID) values ('269734834','11');
Insert into certificate (EID,AID) values ('269734834','12');
Insert into certificate (EID,AID) values ('269734834','13');
Insert into certificate (EID,AID) values ('269734834','14');
Insert into certificate (EID,AID) values ('269734834','15');
Insert into certificate (EID,AID) values ('274878974','10');
Insert into certificate (EID,AID) values ('274878974','12');
Insert into certificate (EID,AID) values ('310454876','8');
Insert into certificate (EID,AID) values ('310454876','9');
Insert into certificate (EID,AID) values ('355548984','8');
Insert into certificate (EID,AID) values ('355548984','9');
Insert into certificate (EID,AID) values ('356187925','6');
Insert into certificate (EID,AID) values ('390487451','3');
Insert into certificate (EID,AID) values ('390487451','13');
Insert into certificate (EID,AID) values ('390487451','14');
Insert into certificate (EID,AID) values ('548977562','7');
Insert into certificate (EID,AID) values ('550156548','1');
Insert into certificate (EID,AID) values ('550156548','12');
Insert into certificate (EID,AID) values ('552455318','2');
Insert into certificate (EID,AID) values ('552455318','7');
Insert into certificate (EID,AID) values ('552455318','14');
Insert into certificate (EID,AID) values ('556784565','2');
Insert into certificate (EID,AID) values ('556784565','3');
Insert into certificate (EID,AID) values ('556784565','5');
Insert into certificate (EID,AID) values ('567354612','1');
Insert into certificate (EID,AID) values ('567354612','2');
Insert into certificate (EID,AID) values ('567354612','3');
Insert into certificate (EID,AID) values ('567354612','4');
Insert into certificate (EID,AID) values ('567354612','5');
Insert into certificate (EID,AID) values ('567354612','7');
Insert into certificate (EID,AID) values ('567354612','9');
Insert into certificate (EID,AID) values ('567354612','10');
Insert into certificate (EID,AID) values ('567354612','11');
Insert into certificate (EID,AID) values ('567354612','12');
Insert into certificate (EID,AID) values ('567354612','15');
Insert into certificate (EID,AID) values ('573284895','3');
Insert into certificate (EID,AID) values ('573284895','4');
Insert into certificate (EID,AID) values ('573284895','5');
Insert into certificate (EID,AID) values ('574489456','6');
Insert into certificate (EID,AID) values ('574489456','8');
Insert into certificate (EID,AID) values ('574489457','7');
