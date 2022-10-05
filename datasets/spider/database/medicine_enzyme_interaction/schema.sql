PRAGMA foreign_keys = ON;
CREATE TABLE "medicine" (
"id" int,
"name" text,
"Trade_Name" text,
"FDA_approved" text,
primary key ("id")
);

CREATE TABLE "enzyme" (
"id" int,
"name" text,
"Location" text,
"Product" text,
"Chromosome" text,
"OMIM" int,
"Porphyria" text,
primary key ("id")
);


CREATE TABLE "medicine_enzyme_interaction" (
"enzyme_id" int,
"medicine_id" int,
"interaction_type" text,
primary key ("enzyme_id", "medicine_id"),
foreign key ("enzyme_id") references `enzyme`("id"),
foreign key ("medicine_id") references `medicine`("id")
);




INSERT INTO  "medicine" VALUES (1,"Amisulpride","Solian","No");
INSERT INTO  "medicine" VALUES (2,"Aripiprazole","Abilify","Yes");
INSERT INTO  "medicine" VALUES (3,"Asenapine","Saphris","Yes");
INSERT INTO  "medicine" VALUES (4,"Blonanserin","Lonasen","No");
INSERT INTO  "medicine" VALUES (5,"Carpipramine","Prazinil","No");
INSERT INTO  "medicine" VALUES (6,"Clocapramine","Clofekton","No");
INSERT INTO  "medicine" VALUES (7,"Clozapine","Clozaril","Yes");
INSERT INTO  "medicine" VALUES (8,"Iloperidone","Fanapt","Yes");
INSERT INTO  "medicine" VALUES (9,"Lurasidone","Latuda","Yes");
INSERT INTO  "medicine" VALUES (10,"Melperone","Buronil","No");
INSERT INTO  "medicine" VALUES (11,"Mosapramine","Cremin","No");
INSERT INTO  "medicine" VALUES (12,"Olanzapine","Zyprexa","Yes");
INSERT INTO  "medicine" VALUES (13,"Paliperidone","Invega","Yes");
INSERT INTO  "medicine" VALUES (14,"Perospirone","Lullan","No");
INSERT INTO  "medicine" VALUES (15,"Quetiapine","Seroquel","Yes");
INSERT INTO  "medicine" VALUES (16,"Remoxipride","Roxiam","No");
INSERT INTO  "medicine" VALUES (17,"Risperidone","Risperdal","Yes");
INSERT INTO  "medicine" VALUES (18,"Sertindole","Serdolect","No");
INSERT INTO  "medicine" VALUES (19,"Sulpiride","Sulpirid","No");
INSERT INTO  "medicine" VALUES (20,"Ziprasidone","Geodon","Yes");
INSERT INTO  "medicine" VALUES (21,"Zotepine","Nipolept","No");

INSERT INTO  "enzyme" VALUES (1,"ALA synthase","Mitochondrion","δ-Aminolevulinic acid","3p21.1","125290","none");
INSERT INTO  "enzyme" VALUES (2,"ALA dehydratase","Cytosol","Porphobilinogen","9q34","125270","ALA-Dehydratase deficiency");
INSERT INTO  "enzyme" VALUES (3,"PBG deaminase","Cytosol","Hydroxymethyl bilane","11q23.3","176000","acute intermittent porphyria");
INSERT INTO  "enzyme" VALUES (4,"Uroporphyrinogen III synthase","Cytosol","Uroporphyrinogen III","10q25.2-q26.3","606938","congenital erythropoietic porphyria");
INSERT INTO  "enzyme" VALUES (5,"Uroporphyrinogen III decarboxylase","Cytosol","Coproporphyrinogen III","1p34","176100","porphyria cutanea tarda");
INSERT INTO  "enzyme" VALUES (6,"Coproporphyrinogen III oxidase","Mitochondrion","Protoporphyrinogen IX","3q12","121300","coproporphyria");
INSERT INTO  "enzyme" VALUES (7,"Protoporphyrinogen oxidase","Mitochondrion","Protoporphyrin IX","1q22","600923","variegate porphyria");
INSERT INTO  "enzyme" VALUES (8,"Ferrochelatase","Mitochondrion","Heme","18q21.3","177000","erythropoietic protoporphyria");



INSERT INTO "medicine_enzyme_interaction" VALUES(1,1, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(1,2, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(1,3, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(1,4, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(2,2, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(2,3, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(2,5, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(2,6, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(2,7, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(2,8, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(3,2, "inhibitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(4,13, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(4,3, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(3,8, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(3,9, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(4,10, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(5,20, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(5,19, "activitor");
INSERT INTO "medicine_enzyme_interaction" VALUES(6,20, "activitor");




