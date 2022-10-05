PRAGMA foreign_keys = ON;
CREATE TABLE `Breeds` (
`breed_code` VARCHAR(10) PRIMARY KEY ,
`breed_name` VARCHAR(80)
);
CREATE TABLE `Charges` (
`charge_id` INTEGER PRIMARY KEY ,
`charge_type` VARCHAR(10),
`charge_amount` DECIMAL(19,4)
);
INSERT INTO Breeds (`breed_code`, `breed_name`) VALUES ('ESK', 'Eskimo');
INSERT INTO Breeds (`breed_code`, `breed_name`) VALUES ('HUS', 'Husky');
INSERT INTO Breeds (`breed_code`, `breed_name`) VALUES ('BUL', 'Bulldog');
INSERT INTO Charges (`charge_id`, `charge_type`, `charge_amount`) VALUES (1, 'Daily Accommodation', '98.0000');
INSERT INTO Charges (`charge_id`, `charge_type`, `charge_amount`) VALUES (2, 'Drugs', '322.0000');
INSERT INTO Charges (`charge_id`, `charge_type`, `charge_amount`) VALUES (3, 'Health Check', '640.0000');

CREATE TABLE `Sizes` (
`size_code` VARCHAR(10) PRIMARY KEY ,
`size_description` VARCHAR(80)
);

INSERT INTO Sizes (`size_code`, `size_description`) VALUES ('SML', 'Small');
INSERT INTO Sizes (`size_code`, `size_description`) VALUES ('MED', 'Medium');
INSERT INTO Sizes (`size_code`, `size_description`) VALUES ('LGE', 'Large');


CREATE TABLE `Treatment_Types` (
`treatment_type_code` VARCHAR(10) PRIMARY KEY ,
`treatment_type_description` VARCHAR(80)
);
INSERT INTO Treatment_Types (`treatment_type_code`, `treatment_type_description`) VALUES ('EXAM', 'Physical examination');
INSERT INTO Treatment_Types (`treatment_type_code`, `treatment_type_description`) VALUES ('VAC', 'Vaccination');
INSERT INTO Treatment_Types (`treatment_type_code`, `treatment_type_description`) VALUES ('WALK', 'Take for a Walk');

CREATE TABLE `Owners` (
`owner_id` INTEGER PRIMARY KEY ,
`first_name` VARCHAR(50),
`last_name` VARCHAR(50),
`street` VARCHAR(50),
`city` VARCHAR(50),
`state` VARCHAR(20),
`zip_code` VARCHAR(20),
`email_address` VARCHAR(50),
`home_phone` VARCHAR(20),
`cell_number` VARCHAR(20)
);
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (1, 'Nora', 'Haley', '0647 Hintz Village Apt. 024', 'Lake Tia', 'Wisconsin', '93165', 'lynn81@example.org', '1-682-845-0116x63235', '478.978.0729');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (2, 'Melisa', 'DuBuque', '1204 Mae Highway Apt. 107', 'Port Reannamouth', 'Virginia', '45244', 'ykris@example.com', '(799)563-0260x454', '(722)768-5439x484');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (3, 'Jaclyn', 'Stoltenberg', '2635 Caitlyn Plains', 'Barrettburgh', 'Vermont', '02647', 'hudson.favian@example.com', '916.976.9480x13851', '481-483-9083x37986');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (4, 'Tre', 'Hamill', '692 Jaskolski Forges', 'Brakusfurt', 'Florida', '87304', 'marks.gail@example.org', '1-332-849-1908', '739-136-7202');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (5, 'Johann', 'Fisher', '68118 Daniel Row', 'Lake Valentin', 'NorthDakota', '61019', 'zboncak.madonna@example.net', '(544)034-1670', '1-626-264-7659x1697');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (6, 'Kade', 'Rippin', '51934 Treutel Harbor', 'Lake Carleyborough', 'Arizona', '25609', 'margaretta.runte@example.net', '318-052-6573', '+70(4)9217952551');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (7, 'Emelie', 'Mertz', '2417 Keara Stravenue Apt. 146', 'Lake Jennyferfort', 'NewYork', '00589', 'angeline99@example.com', '(058)997-7627', '121.381.3316x6535');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (8, 'Rolando', 'Prohaska', '57382 Yost Ridges', 'South Afton', 'Arkansas', '86010', 'kturner@example.net', '01802479758', '(783)271-6744x4507');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (9, 'Adelle', 'Ondricka', '9212 Rosenbaum Lights', 'East Hillardberg', 'Washington', '92406', 'fschoen@example.net', '066.264.7885', '+00(2)4323592985');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (10, 'Lorenz', 'Nicolas', '59509 Mellie Mountain', 'New Margaretteborough', 'SouthDakota', '78297', 'ymaggio@example.com', '085.557.0379x84348', '559.874.3011x989');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (11, 'Gay', 'Feil', '60352 Kayleigh Crossing Suite 700', 'Port Zackery', 'Indiana', '35747', 'pearlie18@example.com', '130-796-4589x05454', '762.589.6117x1328');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (12, 'Orlando', 'Price', '89011 Kertzmann Spring Suite 642', 'East Maribelbury', 'Mississippi', '11990', 'christy49@example.org', '363.948.1090', '1-739-421-2225x38148');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (13, 'Cindy', 'Schmitt', '6950 Katherine Forges Apt. 630', 'Beerton', 'NorthDakota', '36871', 'wpfeffer@example.net', '(094)747-5094x8134', '633.455.3045x85484');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (14, 'Rachelle', 'Funk', '15828 Spencer Extensions', 'West Leonard', 'Maryland', '22731', 'edythe62@example.org', '1-346-655-5842x768', '(257)399-3116');
INSERT INTO Owners (`owner_id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip_code`, `email_address`, `home_phone`, `cell_number`) VALUES (15, 'Heather', 'Hauck', '1858 Jan Park', 'South Daisyfurt', 'Pennsylvania', '22693', 'ybergstrom@example.com', '893-862-5295x61709', '341.667.8085');


CREATE TABLE `Dogs` (
`dog_id` INTEGER PRIMARY KEY ,
`owner_id` INTEGER NOT NULL,
`abandoned_yn` VARCHAR(1),
`breed_code` VARCHAR(10) NOT NULL,
`size_code` VARCHAR(10) NOT NULL,
`name` VARCHAR(50),
`age` VARCHAR(20),
`date_of_birth` DATETIME,
`gender` VARCHAR(1),
`weight` VARCHAR(20),
`date_arrived` DATETIME,
`date_adopted` DATETIME,
`date_departed` DATETIME,
FOREIGN KEY (`breed_code` ) REFERENCES `Breeds`(`breed_code` ),
FOREIGN KEY (`size_code` ) REFERENCES `Sizes`(`size_code` ),
FOREIGN KEY (`owner_id` ) REFERENCES `Owners`(`owner_id` ),
FOREIGN KEY (`owner_id` ) REFERENCES `Owners`(`owner_id` )
);

INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (1, 3, '1', 'ESK', 'LGE', 'Kacey', '6', '2012-01-27 05:11:53', '1', '7.57', '2017-09-08 20:10:13', '2018-03-06 16:32:11', '2018-03-25 06:58:44');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (2, 11, '0', 'BUL', 'LGE', 'Hipolito', '9', '2013-02-13 05:15:21', '0', '1.72', '2017-12-22 05:02:02', '2018-03-25 08:12:51', '2018-03-25 02:11:32');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (3, 1, '0', 'BUL', 'MED', 'Mavis', '8', '2008-05-19 15:54:49', '1', '8.04', '2017-06-25 10:14:05', '2018-03-07 21:45:43', '2018-03-25 10:25:46');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (4, 14, '0', 'ESK', 'LGE', 'Houston', '5', '2008-10-09 22:38:53', '0', '2.18', '2017-04-20 00:58:55', '2018-03-18 15:12:50', '2018-03-24 19:12:22');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (5, 7, '0', 'BUL', 'MED', 'Jeffrey', '4', '2018-03-17 04:05:12', '0', '1.39', '2017-10-25 00:55:34', '2018-02-27 11:54:35', '2018-03-25 04:50:22');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (6, 5, '0', 'HUS', 'MED', 'Merritt', '9', '2015-02-26 21:31:22', '1', '9.8', '2017-04-15 09:25:31', '2018-03-08 15:03:00', '2018-03-25 13:07:04');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (7, 3, '0', 'BUL', 'MED', 'Narciso', '2', '2017-09-19 05:39:09', '1', '9.48', '2017-05-06 08:03:52', '2018-02-27 00:27:57', '2018-03-25 06:29:10');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (8, 14, '0', 'ESK', 'SML', 'George', '2', '2013-02-20 14:50:56', '0', '8.95', '2017-10-16 20:06:21', '2018-03-23 16:02:04', '2018-03-25 02:47:40');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (9, 2, '0', 'BUL', 'MED', 'Bessie', '4', '2012-05-31 08:01:36', '1', '3.52', '2018-01-17 11:44:16', '2018-02-25 23:45:30', '2018-03-25 06:46:07');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (10, 6, '0', 'HUS', 'MED', 'Troy', '9', '2012-07-11 17:15:10', '0', '8.96', '2017-12-29 06:08:26', '2018-03-18 07:47:40', '2018-03-25 04:42:14');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (11, 13, '0', 'BUL', 'LGE', 'Betty', '3', '2012-10-14 14:44:37', '0', '8.16', '2017-07-25 15:19:07', '2018-03-14 08:05:18', '2018-03-25 15:05:16');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (12, 12, '0', 'HUS', 'MED', 'Holden', '8', '2009-04-12 06:02:48', '0', '6.92', '2017-10-24 04:45:13', '2018-03-05 06:05:23', '2018-03-25 14:15:41');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (13, 8, '0', 'HUS', 'SML', 'Jesus', '2', '2012-05-03 21:42:25', '0', '5.16', '2018-01-02 03:15:29', '2018-03-21 10:41:18', '2018-03-25 05:07:47');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (14, 14, '1', 'ESK', 'MED', 'Lyric', '4', '2010-11-11 07:11:53', '0', '4.36', '2017-06-18 19:45:38', '2018-03-13 12:47:15', '2018-03-24 23:48:59');
INSERT INTO Dogs (`dog_id`, `owner_id`, `abandoned_yn`, `breed_code`, `size_code`, `name`, `age`, `date_of_birth`, `gender`, `weight`, `date_arrived`, `date_adopted`, `date_departed`) VALUES (15, 10, '1', 'BUL', 'MED', 'Evangeline', '1', '2008-05-30 12:51:34', '1', '4.01', '2017-12-29 23:24:13', '2018-03-10 15:06:43', '2018-03-24 19:36:59');


CREATE TABLE `Professionals` (
`professional_id` INTEGER PRIMARY KEY ,
`role_code` VARCHAR(10) NOT NULL,
`first_name` VARCHAR(50),
`street` VARCHAR(50),
`city` VARCHAR(50),
`state` VARCHAR(20),
`zip_code` VARCHAR(20),
`last_name` VARCHAR(50),
`email_address` VARCHAR(50),
`home_phone` VARCHAR(20),
`cell_number` VARCHAR(20)
);

CREATE TABLE `Treatments` (
`treatment_id` INTEGER PRIMARY KEY ,
`dog_id` INTEGER NOT NULL,
`professional_id` INTEGER NOT NULL,
`treatment_type_code` VARCHAR(10) NOT NULL,
`date_of_treatment` DATETIME,
`cost_of_treatment` DECIMAL(19,4),
FOREIGN KEY (`treatment_type_code` ) REFERENCES `Treatment_Types`(`treatment_type_code` ),
FOREIGN KEY (`professional_id` ) REFERENCES `Professionals`(`professional_id` ),
FOREIGN KEY (`dog_id` ) REFERENCES `Dogs`(`dog_id` )
);

INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (1, 'Employee', 'Taryn', '6915 Oberbrunner Point Suite 491
Gleasonville, LA ', 'West Heidi', 'Indiana', '06646', 'Braun', 'deanna.schuster@example.com', '+71(6)2898266914', '(275)939-2435x80863');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (2, 'Employee', 'Jayson', '88665 Terence Lodge Apt. 904
Corneliusfort, NC 194', 'North Odellfurt', 'Connecticut', '43129', 'Ullrich', 'lucile.shanahan@example.org', '+02(1)0259033559', '889-940-2676');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (3, 'Employee', 'Olaf', '68589 Bradly Manor
New Audrey, IN 91497', 'Jaceton', 'Wisconsin', '77129', 'Watsica', 'uboehm@example.org', '325-155-0801x7005', '(369)908-7311x065');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (4, 'Veterenarian', 'Vernice', '72532 Hane Course
Lake Berylland, ND 95283', 'Domenickton', 'Mississippi', '02281', 'Tillman', 'lourdes.lowe@example.net', '312.216.3352', '00230569697');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (5, 'Veterenarian', 'Danny', '188 VonRueden Tunnel Suite 630
North Macibury, NV ', 'New Laurytown', 'Hawaii', '84515', 'Considine', 'mekhi.little@example.org', '1-609-566-2752x25197', '011.193.9081x3186');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (6, 'Veterenarian', 'Ruben', '17286 Waters Green
East Bernadinefort, CA 89573', 'Baileymouth', 'NewMexico', '52476', 'O''Reilly', 'jacynthe.mclaughlin@example.net', '+43(5)1132733868', '139-321-7313');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (7, 'Veterenarian', 'Velva', '44234 Marvin Shoals Suite 659
North Frances, AL 23', 'McLaughlinfort', 'NorthCarolina', '67980', 'Hayes', 'lambert62@example.org', '022.529.0550x1319', '499-434-0215x1628');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (8, 'Employee', 'Karley', '36895 Eli Ferry
Port Marcelle, FL 45712', 'Kirastad', 'Indiana', '33020', 'Hyatt', 'goyette.roosevelt@example.net', '891.475.2256', '328.842.3792');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (9, 'Veterenarian', 'Monte', '07073 Brenna Ways Suite 089
Lowehaven, KY 93275-96', 'South Rockyport', 'SouthCarolina', '80775', 'Kshlerin', 'schneider.kathryne@example.org', '320-508-6023', '962-983-8109x3509');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (10, 'Employee', 'Domenica', '7284 Torphy Flats Apt. 610
Diannaburgh, SC 78560', 'New Maryjane', 'California', '54312', 'Jacobs', 'jerrod.bahringer@example.org', '(230)338-3342x585', '461-801-2600');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (11, 'Employee', 'Brady', '09615 McKenzie Stravenue Apt. 128
West Elliottview', 'Raynorfort', 'Alabama', '07412', 'Pouros', 'west.eula@example.net', '(920)304-4499x59146', '609-405-2990');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (12, 'Veterenarian', 'Winfield', '92912 Langworth Valleys Apt. 743
Thompsonborough, ', 'Juddton', 'Utah', '34041', 'Christiansen', 'marquardt.furman@example.org', '246-951-0080x76716', '1-181-670-9466');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (13, 'Veterenarian', 'Ericka', '7783 Abraham Alley
Port Madelynhaven, KY 59172-273', 'Borisside', 'Wyoming', '17902', 'Murazik', 'delphine29@example.com', '346.594.3739', '880-659-7577x736');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (14, 'Employee', 'Sigurd', '390 Bryce Drive
North Dock, LA 65357-7228', 'East Ila', 'Connecticut', '41215', 'Frami', 'cole.margarita@example.org', '971.048.3763x9404', '1-185-137-1945x409');
INSERT INTO Professionals (`professional_id`, `role_code`, `first_name`, `street`, `city`, `state`, `zip_code`, `last_name`, `email_address`, `home_phone`, `cell_number`) VALUES (15, 'Employee', 'Lesly', '63949 Keeling Landing Apt. 502
Johnsview, SD 06780', 'North Adelberttown', 'Montana', '98844', 'Walter', 'jeichmann@example.com', '1-138-287-3775', '1-258-285-4707x8020');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (1, 14, 9, 'WALK', '2018-03-19 04:39:54', '567.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (2, 4, 10, 'VAC', '2018-03-15 20:25:34', '147.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (3, 14, 4, 'EXAM', '2018-03-08 05:26:23', '429.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (4, 2, 8, 'VAC', '2018-03-01 04:14:46', '266.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (5, 12, 14, 'VAC', '2018-03-23 13:52:10', '668.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (6, 10, 4, 'EXAM', '2018-03-11 04:23:15', '313.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (7, 15, 14, 'EXAM', '2018-03-10 11:45:58', '852.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (8, 2, 6, 'EXAM', '2018-03-24 22:25:58', '407.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (9, 14, 10, 'WALK', '2018-03-14 19:10:40', '139.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (10, 10, 7, 'WALK', '2018-02-28 17:09:43', '681.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (11, 15, 5, 'VAC', '2018-03-13 12:22:58', '514.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (12, 13, 9, 'EXAM', '2018-03-16 10:27:36', '428.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (13, 7, 8, 'VAC', '2018-02-26 09:08:53', '945.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (14, 10, 9, 'WALK', '2018-03-04 20:33:43', '349.0000');
INSERT INTO Treatments (`treatment_id`, `dog_id`, `professional_id`, `treatment_type_code`, `date_of_treatment`, `cost_of_treatment`) VALUES (15, 1, 6, 'WALK', '2018-03-15 19:10:02', '656.0000');
