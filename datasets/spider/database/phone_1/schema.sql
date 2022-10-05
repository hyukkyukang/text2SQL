PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "chip_model" (
"Model_name" text,
"Launch_year" real,
"RAM_MiB" real,
"ROM_MiB" real,
"Slots" text,
"WiFi" text,
"Bluetooth" text,
PRIMARY KEY ("Model_name")
);
INSERT INTO chip_model VALUES('X5',2002.0,32.0,32.0,'1CFII,1SD','No','No');
INSERT INTO chip_model VALUES('X5 high end',2002.0,64.0,48.000000000000000001,'1CFII,1SD','No','No');
INSERT INTO chip_model VALUES('X3 Basic',2003.0,32.0,32.0,'1SD','No','No');
INSERT INTO chip_model VALUES('X3 Advanced',2003.0,64.0,64.0,'1SD','No','No');
INSERT INTO chip_model VALUES('X3i',2003.0,64.0,64.0,'1SD','802.11b','No');
INSERT INTO chip_model VALUES('X30 low-end',2004.0,32.0,32.0,'1SD','No','No');
INSERT INTO chip_model VALUES('X30 mid-range',2004.0,64.0,64.0,'1SD','802.11b','1.1');
INSERT INTO chip_model VALUES('X30 high-end',2004.0,64.0,64.0,'1SD','802.11b','1.1');
INSERT INTO chip_model VALUES('X50 Standard',2004.0,64.0,64.0,'1CFII,1SD','No','Yes');
INSERT INTO chip_model VALUES('X50 Advanced',2004.0,64.0,127.99999999999999999,'1CFII,1SD','802.11b','Yes');
INSERT INTO chip_model VALUES('X50v',2004.0,64.0,127.99999999999999999,'1CFII,1SD','802.11b','1.2');
INSERT INTO chip_model VALUES('X51 low-end',2005.0000000000000001,64.0,127.99999999999999999,'1CFII,1SD','No','1.2');
INSERT INTO chip_model VALUES('X51 mid-range',2005.0000000000000001,64.0,127.99999999999999999,'1CFII,1SD','802.11b','1.2');
INSERT INTO chip_model VALUES('X51v',2005.0000000000000001,64.0,255.99999999999999999,'1CFII,1SD','802.11b','1.2');
CREATE TABLE IF NOT EXISTS "screen_mode" (
"Graphics_mode" real,
"Char_cells" text,
"Pixels" text,
"Hardware_colours" real,
"used_kb" real,
"map" text,
"Type" text,
PRIMARY KEY ("Graphics_mode")
);
INSERT INTO "screen_mode" VALUES(0.0,'80 × 32','640 × 256',2.0,20.0,'3000–7FFF','Graphics');
INSERT INTO "screen_mode" VALUES(1.0,'40 × 32','320 × 256',4.0,20.0,'3000–7FFF','Graphics');
INSERT INTO "screen_mode" VALUES(2.0,'20 × 32','160 × 256',8.0,20.0,'3000–7FFF','Graphics');
INSERT INTO "screen_mode" VALUES(3.0,'80 × 25','640 × 200',2.0,16.0,'4000–7FFF','Text');
INSERT INTO "screen_mode" VALUES(4.0,'40 × 32','320 × 256',2.0,10.0,'5800–7FFF','Graphics');
INSERT INTO "screen_mode" VALUES(5.0,'20 × 32','160 × 256',4.0,10.0,'5800–7FFF','Graphics');
INSERT INTO "screen_mode" VALUES(6.0,'40 × 25','320 × 200',2.0,8.0,'6000–7FFF','Text');

CREATE TABLE IF NOT EXISTS "phone" (
"Company_name" text,
"Hardware_Model_name" text,
"Accreditation_type" text,
"Accreditation_level" text,
"Date" text,
"chip_model" text,
"screen_mode" text,
PRIMARY KEY("Hardware_Model_name"),
FOREIGN KEY (`screen_mode`) REFERENCES `screen_mode`(`Graphics_mode`),
FOREIGN KEY (`chip_model`) REFERENCES `chip_model`(`Model_name`)
);
INSERT INTO phone VALUES('Sony Mobile Communications','XPERIA T, XPERIA J','Full','joyn Hot Fixes','Approved (awarded 15.11.12)','X5','1');
INSERT INTO phone VALUES('LG Electronics','LG-P760','Full','joyn Hot Fixes','Approved (awarded 19.11.12)','X51v','3');
INSERT INTO phone VALUES('Nokia Corporation','Lumia 920, Lumia 820, Lumia 620','Full','joyn Hot Fixes','Approved (awarded 05.12.12)','X5','4');
INSERT INTO phone VALUES('Samsung Electronics Co Ltd','GT-I9300','Full','joyn','Approved (awarded 23.10.12)','X30 low-end','5');
INSERT INTO phone VALUES('HTC Corporation','Z520e','Provisional','joyn','Approved (valid until 14.09.13)','X3i','6');
INSERT INTO phone VALUES('Samsung Electronics Co Ltd','GT-I9100','Provisional','joyn','Approved (valid until 06.04.13)','X50 Advanced','1');
INSERT INTO phone VALUES('Nokia Corporation','Nokia 700','Provisional','joyn','Approved (valid until 03.05.13)','X5','2');
INSERT INTO phone VALUES('Huawei Technologies Co.Ltd.','U8815 Asura','Provisional','joyn','Approved (valid until 03.05.13)','X50 Standard','3');
COMMIT;
