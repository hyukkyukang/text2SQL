PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "mountain" (
"id" int,
"name" text,
"Height" real,
"Prominence" real,
"Range" text,
"Country" text,
primary key("id")
);
INSERT INTO mountain VALUES(1,'Abune Yosef / Guliba Amba',4260.0000000000000002,1908.9999999999999999,'Lasta Massif','Ethiopia');
INSERT INTO mountain VALUES(2,'Ioll / Yoll',4219.9999999999999998,350.0,'Kollo Massif','Ethiopia');
INSERT INTO mountain VALUES(3,'Bada',4195.0000000000000001,1605.0,'Arsi Mountains','Ethiopia');
INSERT INTO mountain VALUES(4,'Kaka / Kecha / Chiqe',4193.0000000000000001,1215.0,'Arsi Mountains','Ethiopia');
INSERT INTO mountain VALUES(5,'Jbel Toubkal',4167.0,3755.0000000000000001,'Toubkal Atlas','Morocco');
INSERT INTO mountain VALUES(6,'Muhavura',4127.0,1529.9999999999999999,'Virunga Mountains','Rwanda Uganda');
INSERT INTO mountain VALUES(7,'Hey / Hay',4125.0,659.99999999999999999,'Semien Mountains','Ethiopia');
INSERT INTO mountain VALUES(8,'Guna',4119.9999999999999998,1509.9999999999999999,'Guna Massif','Ethiopia');
INSERT INTO mountain VALUES(9,'Choqa / Choke / Birhan',4099.9999999999999999,2224.9999999999999999,'Choqa Mountains','Ethiopia');
INSERT INTO mountain VALUES(10,'Ouanoukrim',4088.0,419.99999999999999998,'Toubkal Atlas','Morocco');
INSERT INTO mountain VALUES(11,'Chilalo',4071.0000000000000001,609.99999999999999999,'Arsi Mountains','Ethiopia');
INSERT INTO mountain VALUES(12,'Mount Cameroon',4070.0000000000000001,3931.0000000000000001,'Cameroon line','Cameroon');
INSERT INTO mountain VALUES(13,'Inatye',4070.0000000000000001,500.0,'Semien Mountains','Ethiopia');
INSERT INTO mountain VALUES(14,'Ighil Mgoun',4068.0000000000000001,1903.9999999999999999,'Central High Atlas','Morocco');
INSERT INTO mountain VALUES(15,'Weshema / Wasema?',4030.0000000000000001,419.99999999999999998,'Bale Mountains','Ethiopia');
INSERT INTO mountain VALUES(16,'Oldoinyo Lesatima',4001.0,2080.9999999999999999,'Aberdare Range','Kenya');
INSERT INTO mountain VALUES(17,'Jebel n''Tarourt / Tifnout / Iferouane',3995.9999999999999999,910.00000000000000003,'Toubkal Atlas','Morocco');
INSERT INTO mountain VALUES(18,'Muggia',3950.0,500.0,'Lasta Massif','Ethiopia');
INSERT INTO mountain VALUES(19,'Dubbai',3941.0,1539.9999999999999999,'Tigray Mountains','Ethiopia');
INSERT INTO mountain VALUES(20,'Taska n’Zat',3911.9999999999999999,459.99999999999999999,'Toubkal Atlas','Morocco');
INSERT INTO mountain VALUES(21,'Aksouâl',3902.9999999999999998,450.0,'Toubkal Atlas','Morocco');
INSERT INTO mountain VALUES(22,'Mount Kinangop',3901.9999999999999998,530.00000000000000001,'Aberdare Range','Kenya');
INSERT INTO mountain VALUES(23,'Cimbia',3900.0,590.0,'Kollo Massif','Ethiopia');
CREATE TABLE IF NOT EXISTS "camera_lens" (
"id" int,
"brand" text,
"name" text,
"focal_length_mm" real,
"max_aperture" real,
primary key("id")
);
INSERT INTO camera_lens VALUES(1,'Olympus','Olympus 15mm f/8.0 Body Cap',15.0,8.0);
INSERT INTO camera_lens VALUES(2,'Olympus','Olympus M.Zuiko Digital ED 45mm f/1.8',45.0,1.8000000000000000444);
INSERT INTO camera_lens VALUES(3,'Olympus','Olympus M.Zuiko Digital ED 75mm f/1.8',75.0,1.8000000000000000444);
INSERT INTO camera_lens VALUES(4,'Panasonic','Panasonic Leica DG Summilux 25mm f /1.4 Asph.',25.0,1.3999999999999999111);
INSERT INTO camera_lens VALUES(5,'Panasonic','Panasonic Leica DG Nocticron 42.5mm f /1.2',42.5,1.1999999999999999555);
INSERT INTO camera_lens VALUES(6,'Panasonic','Panasonic Lumix G 150mm f /2.8',150.0,2.7999999999999998223);
INSERT INTO camera_lens VALUES(7,'Schneider Kreuznach','Schneider Kreuznach Super Angulon 14mm f /2.0',13.999999999999999999,2.0);
INSERT INTO camera_lens VALUES(8,'Schneider Kreuznach','Schneider Kreuznach Xenon 30mm f /1.4',30.0,1.3999999999999999111);
INSERT INTO camera_lens VALUES(9,'Sigma','Sigma 19mm f2.8 DN',19.0,2.7999999999999998223);
INSERT INTO camera_lens VALUES(10,'Sigma','Sigma 19mm f2.8 EX DN',19.0,2.7999999999999998223);
INSERT INTO camera_lens VALUES(11,'Sigma','Sigma 30mm f2.8 DN',30.0,2.7999999999999998223);
CREATE TABLE IF NOT EXISTS "photos" (
"id" int, 
"camera_lens_id" int,
"mountain_id" int,
"color" text, 
"name" text,
primary key("id"),
foreign key("camera_lens_id") references `camera_lens`("id"),
foreign key("mountain_id") references `mountain`("id")
);
INSERT INTO photos VALUES(1,1,20,'RBG','monkey');
INSERT INTO photos VALUES(2,10,2,'RBG','rabbits');
INSERT INTO photos VALUES(3,10,1,'Black/White','deers');
INSERT INTO photos VALUES(4,1,10,'RBG','grass');
INSERT INTO photos VALUES(5,5,14,'RBG','cloud');
INSERT INTO photos VALUES(6,6,12,'RBG','sunset');
INSERT INTO photos VALUES(7,7,12,'RBG','river');
INSERT INTO photos VALUES(8,7,12,'Black/White','wolfs');
INSERT INTO photos VALUES(9,10,14,'RBG','the mountain');
INSERT INTO photos VALUES(10,10,20,'RBG','life');
COMMIT;

