PRAGMA foreign_keys = ON;

CREATE TABLE "building" (
"building_id" text,
"Name" text,
"Street_address" text,
"Years_as_tallest" text,
"Height_feet" int,
"Floors" int,
PRIMARY KEY("building_id")
);

CREATE TABLE "Institution" (
"Institution_id"  text,
"Institution" text,
"Location" text,
"Founded" real,
"Type" text,
"Enrollment" int,
"Team" text,
"Primary_Conference" text,
"building_id" text,
PRIMARY KEY("Institution_id"),
FOREIGN  KEY ("building_id") REFERENCES "building"("building_id")
);

CREATE TABLE "protein" (
"common_name" text,
"protein_name" text,
"divergence_from_human_lineage" real,
"accession_number" text,
"sequence_length" real,
"sequence_identity_to_human_protein" text,
"Institution_id" text,
PRIMARY KEY("common_name"),
FOREIGN KEY("Institution_id") REFERENCES "Institution"("Institution_id")
);


INSERT INTO  "building" VALUES (0,"Citizens Bank Building","701 North Franklin Street","1913–1915","145","12");
INSERT INTO  "building" VALUES (1,"Tampa City Hall","315 John F. Kennedy Boulevard","1915–1926","160","10");
INSERT INTO  "building" VALUES (2,"Floridan Hotel","905 Franklin Street","1926–1966","204","17");
INSERT INTO  "building" VALUES (3,"Franklin Exchange Building","655 North Franklin Street","1966–1972","280","22");
INSERT INTO  "building" VALUES (4,"Park Tower","400 North Tampa Street","1972–1981","458","36");
INSERT INTO  "building" VALUES (5,"One Tampa City Center","201 North Franklin Street","1981–1986","537","39");
INSERT INTO  "building" VALUES (6,"Bank of America Tower","101 East Kennedy Boulevard","1986–1992","577","42");
INSERT INTO  "building" VALUES (7,"100 North Tampa","100 North Tampa Street","1992–present","579","42");

INSERT INTO  "Institution" VALUES (0,"Ave Maria University","Ave Maria, Florida","1998","Private","1200","Gyrenes","The Sun",1);
INSERT INTO  "Institution" VALUES (1,"Dakota State University","Madison, South Dakota","1881","Public","3102","Trojans","none",1);
INSERT INTO  "Institution" VALUES (2,"Edward Waters College","Jacksonville, Florida","1866","Private","800","Tigers","Gulf Coast (GCAC)",3);
INSERT INTO  "Institution" VALUES (3,"Haskell Indian Nations University","Lawrence, Kansas","1884","Tribal","1000","Fighting Indians","MCAC",5);
INSERT INTO  "Institution" VALUES (4,"Jamestown College","Jamestown, North Dakota","1883","Private","967","Jimmies","none",2);
INSERT INTO  "Institution" VALUES (5,"Lindenwood University–Belleville","Belleville, Illinois","2003","Private","2600","Lynx","none",0);
INSERT INTO  "Institution" VALUES (6,"Mayville State University","Mayville, North Dakota","1889","Public","825","Comets","none",0);
INSERT INTO  "Institution" VALUES (7,"Menlo College","Atherton, California","1927","Private","650","Oaks","CalPac",4);
INSERT INTO  "Institution" VALUES (8,"Point University","West Point, Georgia","1937","Private","1035","Skyhawks","AAC",7);
INSERT INTO  "Institution" VALUES (9,"Valley City State University","Valley City, North Dakota","1890","Public","1340","Vikings","none",3);
INSERT INTO  "Institution" VALUES (10,"Webber International University","Babson Park, Florida","1927","Private","616","Warriors","The Sun",5);

INSERT INTO  "protein" VALUES ("Tropical Clawed Frog","uncharacterized protein C20orf117-like","371.2","XP_002942331.1","1584","39%",1);
INSERT INTO  "protein" VALUES ("purple sea urchin","uncharacterized protein LOC578090","742.9","XP_783370.2","1587","47%",3);
INSERT INTO  "protein" VALUES ("body louse","Centromeric protein E, putative","782.7","XP_002429877.1","2086","30%",5);
INSERT INTO  "protein" VALUES ("southern house mosquito","conserved hypothetical protein","782.7","XP_001843754.1","1878","32%",5);
INSERT INTO  "protein" VALUES ("porkworm","surface antigen repeat family protein","937.5","XP_003380263.1","2030","36%",9);

