PRAGMA foreign_keys = ON;

CREATE TABLE `Roles` (
`role_code` VARCHAR(15) PRIMARY KEY,
`role_description` VARCHAR(80)
);

CREATE TABLE `Users` (
`user_id` INTEGER PRIMARY KEY,
`role_code` VARCHAR(15) NOT NULL,
`user_name` VARCHAR(40),
`user_login` VARCHAR(40),
`password` VARCHAR(40),
FOREIGN KEY (`role_code` ) REFERENCES `Roles`(`role_code` )
);
INSERT INTO Roles (`role_code`, `role_description`) VALUES ('DBA', 'Database Administrator');
INSERT INTO Roles (`role_code`, `role_description`) VALUES ('PROJ-MGR', 'Project Manager');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (1, 'PROJ-MGR', 'dickens.elta', '0', 'e72b5a2d50b39a8760764a5f7a9d68ca2f076877');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (2, 'DBA', 'tremblay.raheem', '1', '9bc25a040d5647ced5ec32e1a455e90fafc10bcb');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (3, 'DBA', 'lynn.haley', '0', '90db8f51449e6c39e2a01f0b649d5a92fe76bbbb');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (4, 'PROJ-MGR', 'ycremin', '0', 'f6977378f409f5d2d230016a6678a582e14f43b0');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (5, 'PROJ-MGR', 'larson.vesta', '1', 'da383455a05a824606c54e99f671c4d6a2ddae26');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (6, 'DBA', 'amelie53', '0', '6aa66440864ff8143fe7dee5940a6af3460bad07');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (7, 'DBA', 'jacklyn.schmitt', '1', '3f6affa583bfdf7fac6faeb2ca418431909d4b39');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (8, 'PROJ-MGR', 'joanne.deckow', '0', '20241478f890508ac47870cfba472e1db04a71ca');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (9, 'PROJ-MGR', 'dickinson.lenora', '0', 'a0fe5434a5f4c218e37b0082f2408b357feb0fa6');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (10, 'DBA', 'heller.harley', '1', '11af7569a5c1e8b455add5755e18131be2ac8636');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (11, 'DBA', 'roger.o''conner', '0', '3d478d7056d6417966f6b1676f6ec81b3094f44f');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (12, 'DBA', 'gussie00', '1', '75f7b5ed8e70e86467155e003ccda6fce1011c29');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (13, 'PROJ-MGR', 'johanna.fisher', '1', '1fb26eea854962d41512827bf90a5b7ce4b359d8');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (14, 'DBA', 'faye30', '0', '27cca8f94136f0e8971b5ca555a21ff756871b27');
INSERT INTO Users (`user_id`, `role_code`, `user_name`, `user_login`, `password`) VALUES (15, 'PROJ-MGR', 'glenna.simonis', '1', '95f489fc0921bbb3e7d661a550ae208b88d9b11a');

CREATE TABLE `Document_Structures` (
`document_structure_code` VARCHAR(15) PRIMARY KEY,
`parent_document_structure_code` VARCHAR(15),
`document_structure_description` VARCHAR(80)
);
INSERT INTO Document_Structures (`document_structure_code`, `parent_document_structure_code`, `document_structure_description`) VALUES ('1', '1', 'Header');
INSERT INTO Document_Structures (`document_structure_code`, `parent_document_structure_code`, `document_structure_description`) VALUES ('6', '1', 'Main section');
INSERT INTO Document_Structures (`document_structure_code`, `parent_document_structure_code`, `document_structure_description`) VALUES ('8', '1', 'Bib');
INSERT INTO Document_Structures (`document_structure_code`, `parent_document_structure_code`, `document_structure_description`) VALUES ('5', '6', 'Image section');
INSERT INTO Document_Structures (`document_structure_code`, `parent_document_structure_code`, `document_structure_description`) VALUES ('9', '8', 'Author section');


CREATE TABLE `Functional_Areas` (
`functional_area_code` VARCHAR(15) PRIMARY KEY,
`parent_functional_area_code` VARCHAR(15),
`functional_area_description` VARCHAR(80) NOT NULL
);

INSERT INTO Functional_Areas (`functional_area_code`, `parent_functional_area_code`, `functional_area_description`) VALUES ('8', '8', 'Signature');
INSERT INTO Functional_Areas (`functional_area_code`, `parent_functional_area_code`, `functional_area_description`) VALUES ('1', '8', 'Acknowledgement');
INSERT INTO Functional_Areas (`functional_area_code`, `parent_functional_area_code`, `functional_area_description`) VALUES ('9', '8', 'Keep blank');


CREATE TABLE `Images` (
`image_id` INTEGER PRIMARY KEY,
`image_alt_text` VARCHAR(80),
`image_name` VARCHAR(40),
`image_url` VARCHAR(255)
);
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (1, 'Lea', 'top1', 'http://www.rempelnader.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (2, 'Arden', 'top2', 'http://connellykertzmann.org/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (3, 'Mohamed', 'top3', 'http://www.bernierconnelly.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (4, 'Chaya', 'top4', 'http://abernathyboehm.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (5, 'Percival', 'chapter1', 'http://gaylord.info/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (6, 'Lincoln', 'chapter2', 'http://www.hellerreinger.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (7, 'Camylle', 'chapter3', 'http://faycummerata.net/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (8, 'Ashtyn', 'chapter4', 'http://haleychamplin.net/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (9, 'Filomena', 'chapter5', 'http://www.fritsch.net/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (10, 'Jeanette', 'data1', 'http://sauer.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (11, 'Name', 'data2', 'http://www.heller.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (12, 'Marianna', 'data3', 'http://www.hermann.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (13, 'Stephen', 'data4', 'http://rowelakin.com/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (14, 'Miller', 'data5', 'http://andersonluettgen.net/1.jpg');
INSERT INTO Images (`image_id`, `image_alt_text`, `image_name`, `image_url`) VALUES (15, 'Trycia', 'data6', 'http://www.beahan.biz/1.jpg');


CREATE TABLE `Documents` (
`document_code` VARCHAR(15) PRIMARY KEY,
`document_structure_code` VARCHAR(15) NOT NULL,
`document_type_code` VARCHAR(15) NOT NULL,
`access_count` INTEGER,
`document_name` VARCHAR(80),
FOREIGN KEY (`document_structure_code` ) REFERENCES `Document_Structures`(`document_structure_code` )
);

INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('217', '8', 'Book', 1864, 'Learning English');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('621', '1', 'Paper', 8208, 'Research about Art history');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('958', '8', 'Book', 3769, 'Learning Database');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('961', '5', 'Advertisement', 6661, 'Summer Sails');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('989', '9', 'Book', 2910, 'Learning Japanese');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('930', '9', 'CV', 6345, 'David CV');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('928', '8', 'Book', 2045, 'How to cook pasta');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('510', '6', 'Paper', 3479, 'Humanity: a fact');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('706', '9', 'Advertisement', 8623, 'Winter Sails');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('465', '9', 'CV', 5924, 'John CV');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('713', '8', 'CV', 2294, 'Joe CV');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('566', '5', 'Advertisement', 3289, 'Spring Sails');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('349', '9', 'Book', 1219, 'Life about Claude Monet');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('675', '1', 'Advertisement', 7509, 'Fall Sails');
INSERT INTO Documents (`document_code`, `document_structure_code`, `document_type_code`, `access_count`, `document_name`) VALUES ('714', '6', 'Paper', 9948, 'Relationships between History and Arts');




CREATE TABLE `Document_Functional_Areas` (
`document_code` VARCHAR(15) NOT NULL,
`functional_area_code` VARCHAR(15) NOT NULL,
FOREIGN KEY (`document_code` ) REFERENCES `Documents`(`document_code` ),
FOREIGN KEY (`functional_area_code` ) REFERENCES `Functional_Areas`(`functional_area_code` )
);
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('675', '9');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('930', '1');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('217', '1');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('465', '1');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('958', '1');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('958', '9');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('217', '9');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('961', '9');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('928', '9');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('958', '9');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('349', '1');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('961', '8');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('989', '1');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('706', '8');
INSERT INTO Document_Functional_Areas (`document_code`, `functional_area_code`) VALUES ('713', '8');


CREATE TABLE `Document_Sections` (
`section_id` INTEGER PRIMARY KEY,
`document_code` VARCHAR(15) NOT NULL,
`section_sequence` INTEGER,
`section_code` VARCHAR(20),
`section_title` VARCHAR(80),
FOREIGN KEY (`document_code` ) REFERENCES `Documents`(`document_code` )
);
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (40, '465', 4964, '93', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (57, '989', 6349, '22', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (15, '217', 4510, '14', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (62, '621', 5552, '16', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (23, '465', 8548, '49', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (19, '675', 7236, '90', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (95, '621', 8805, '38', 'before');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (27, '566', 6016, '18', 'before');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (89, '566', 2354, '34', 'before');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (93, '713', 4433, '91', 'before');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (21, '675', 9847, '72', 'before');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (54, '961', 4794, '34', 'before');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (12, '714', 6072, '70', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (38, '930', 6521, '58', 'after');
INSERT INTO Document_Sections (`section_id`, `document_code`, `section_sequence`, `section_code`, `section_title`) VALUES (86, '706', 2170, '60', 'after');

CREATE TABLE `Document_Sections_Images` (
`section_id` INTEGER NOT NULL,
`image_id` INTEGER NOT NULL,
PRIMARY KEY (`section_id`,`image_id`),
FOREIGN KEY (`section_id` ) REFERENCES `Document_Sections`(`section_id` ),
FOREIGN KEY (`image_id` ) REFERENCES `Images`(`image_id` )
);

INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (93, 6);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (86, 2);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (27, 3);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (12, 12);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (19, 12);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (38, 12);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (89, 8);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (23, 8);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (40, 5);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (19, 2);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (62, 14);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (21, 2);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (86, 4);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (15, 14);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (54, 12);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (38, 7);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (15, 13);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (27, 10);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (40, 6);
INSERT INTO Document_Sections_Images (`section_id`, `image_id`) VALUES (19, 6);
