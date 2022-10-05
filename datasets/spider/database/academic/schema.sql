PRAGMA foreign_keys = ON;
CREATE TABLE "author" (
"aid" int,
"homepage" text,
"name" text,
"oid" int,
primary key("aid")
);
CREATE TABLE "conference" (
"cid" int,
"homepage" text,
"name" text,
primary key ("cid")
);
CREATE TABLE "domain" (
"did" int,
"name" text,
primary key ("did")
);
CREATE TABLE "domain_author" (
"aid" int, 
"did" int,
primary key ("did", "aid"),
foreign key("aid") references `author`("aid"),
foreign key("did") references `domain`("did")
);

CREATE TABLE "domain_conference" (
"cid" int,
"did" int,
primary key ("did", "cid"),
foreign key("cid") references `conference`("cid"),
foreign key("did") references `domain`("did")
);
CREATE TABLE "journal" (
"homepage" text,
"jid" int,
"name" text,
primary key("jid")
);
CREATE TABLE "domain_journal" (
"did" int,
"jid" int,
primary key ("did", "jid"),
foreign key("jid") references "journal"("jid"),
foreign key("did") references "domain"("did")
);
CREATE TABLE "keyword" (
"keyword" text,
"kid" int,
primary key("kid")
);
CREATE TABLE "domain_keyword" (
"did" int,
"kid" int,
primary key ("did", "kid"),
foreign key("kid") references "keyword"("kid"),
foreign key("did") references "domain"("did")
);
CREATE TABLE "publication" (
"abstract" text,
"cid" text,
"citation_num" int,
"jid" int,
"pid" int,
"reference_num" int,
"title" text,
"year" int,
primary key("pid"),
foreign key("jid") references "journal"("jid"),
foreign key("cid") references "conference"("cid")
);
CREATE TABLE "domain_publication" (
"did" int,
"pid" int,
primary key ("did", "pid"),
foreign key("pid") references "publication"("pid"),
foreign key("did") references "domain"("did")
);

CREATE TABLE "organization" (
"continent" text,
"homepage" text,
"name" text,
"oid" int,
primary key("oid")
);

CREATE TABLE "publication_keyword" (
"pid" int,
"kid" int,
primary key ("kid", "pid"),
foreign key("pid") references "publication"("pid"),
foreign key("kid") references "keyword"("kid")
);
CREATE TABLE "writes" (
"aid" int,
"pid" int,
primary key ("aid", "pid"),
foreign key("pid") references "publication"("pid"),
foreign key("aid") references "author"("aid")
);
CREATE TABLE "cite" (
"cited" int,
"citing"  int,
foreign key("cited") references "publication"("pid"),
foreign key("citing") references "publication"("pid")
);
