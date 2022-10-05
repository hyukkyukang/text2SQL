PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Web_client_accelerator" (
"id" int,
"name" text,
"Operating_system" text,
"Client" text,
"Connection" text,
primary key("id")
);
INSERT INTO Web_client_accelerator VALUES(1,'CACHEbox','Appliance (Linux)','End user, ISP','Broadband, Satellite, Wireless, Fiber, DSL');
INSERT INTO Web_client_accelerator VALUES(2,'CProxy','Windows','user','up to 756kbit/s');
INSERT INTO Web_client_accelerator VALUES(3,'Fasterfox','Windows, Mac, Linux and Mobile devices','user','Dialup, Wireless, Broadband, DSL');
INSERT INTO Web_client_accelerator VALUES(4,'fasTun','Any','All','Any');
INSERT INTO Web_client_accelerator VALUES(5,'Freewire','Windows, except NT and 95','ISP','Dial-up');
INSERT INTO Web_client_accelerator VALUES(6,'Google Web Accelerator (discontinued)','Windows','user/Google server','Broadband');
INSERT INTO Web_client_accelerator VALUES(7,'Heigh Speed','Windows','All','Any');
INSERT INTO Web_client_accelerator VALUES(8,'Netfury','Windows, Mac','End User, ISP','Dial-up, Broadband, DSL, ISDN, Satellite, Wireless');
INSERT INTO Web_client_accelerator VALUES(9,'Nitro','Windows, Mac','End User, ISP','Dial-up, Broadband, DSL, ISDN, Satellite, Wireless');
INSERT INTO Web_client_accelerator VALUES(10,'ONSPEED','Windows, Mac and Mobile devices','user','Dialup, Wireless, Broadband, DSL');
INSERT INTO Web_client_accelerator VALUES(11,'Opera Turbo','Android, Linux, Mac and Windows devices','user/Opera server','Any');
INSERT INTO Web_client_accelerator VALUES(12,'Polipo','Unix (Linux, *BSD, Mac OS X, others), Windows','user/ISP','Any');
INSERT INTO Web_client_accelerator VALUES(13,'Propel','Windows, Mac','End User, ISP','Dial, DSL, ISDN, Satellite, wireless');
INSERT INTO Web_client_accelerator VALUES(14,'Proxyconn Web Accelerator','Windows, Mac, Mobile devices','user','Dialup, Wireless, Broadband, DSL');
INSERT INTO Web_client_accelerator VALUES(15,'RabbIT','Any system with Java 1.6 VM available','ISP','Any');
INSERT INTO Web_client_accelerator VALUES(16,'Squid','Unix (Linux, *BSD, Mac OS X, others), Windows','user/ISP','Any');
INSERT INTO Web_client_accelerator VALUES(17,'Toonel','Windows, Linux, Mac OS, Symbian, WindowsMobile','user/ISP','Any');
INSERT INTO Web_client_accelerator VALUES(18,'WinGate','Windows (2000 onwards)','All','Any');
INSERT INTO Web_client_accelerator VALUES(19,'Ziproxy','Unix (Linux, *BSD, Mac OS X, others)','ISP','Any');
CREATE TABLE IF NOT EXISTS "browser" (
"id" int,
"name" text,
"market_share" real,
primary key("id")
);
INSERT INTO browser VALUES(1,'Internet Explorer',28.960000000000000852);
INSERT INTO browser VALUES(2,'Firefox',18.109999999999999431);
INSERT INTO browser VALUES(3,'Safari',8.5399999999999991473);
INSERT INTO browser VALUES(4,'Opera',1.1999999999999999555);
CREATE TABLE IF NOT EXISTS "accelerator_compatible_browser" (
"accelerator_id" int,
"browser_id" int,
"compatible_since_year" int,
primary key("accelerator_id", "browser_id"),
foreign key ("accelerator_id") references `Web_client_accelerator`("id"),
foreign key ("browser_id") references `browser`("id")
);
INSERT INTO accelerator_compatible_browser VALUES(1,1,1995);
INSERT INTO accelerator_compatible_browser VALUES(1,2,1996);
INSERT INTO accelerator_compatible_browser VALUES(2,3,1996);
INSERT INTO accelerator_compatible_browser VALUES(2,4,2000);
INSERT INTO accelerator_compatible_browser VALUES(3,1,2005);
INSERT INTO accelerator_compatible_browser VALUES(3,2,2007);
INSERT INTO accelerator_compatible_browser VALUES(3,3,2008);
INSERT INTO accelerator_compatible_browser VALUES(4,4,2009);
INSERT INTO accelerator_compatible_browser VALUES(9,1,2010);
COMMIT;

