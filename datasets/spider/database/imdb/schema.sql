PRAGMA foreign_keys = ON;
CREATE TABLE "actor" (
"aid" int,
"gender" text,
"name" text,
"nationality" text,
"birth_city" text,
"birth_year" int,
primary key("aid")
);


CREATE TABLE "copyright" (
"id" int,
"msid" int,
"cid" int,
primary key("id")
);
CREATE TABLE "cast" (
"id" int,
"msid" int,
"aid" int,
"role" int,
primary key("id"),
foreign key("aid") references `actor`("aid"),
foreign key("msid") references `copyright`("msid")
);

CREATE TABLE "genre" (
"gid" int,
"genre" text,
primary key("gid")
);

CREATE TABLE "classification" (
"id" int,
"msid" int,
"gid" int,
primary key("id"),
foreign key("gid") references `genre`("gid"),
foreign key("msid") references `copyright`("msid")
);

CREATE TABLE "company" (
"id" int,
"name" text,
"country_code" text,
primary key("id")
);


CREATE TABLE "director" (
"did" int,
"gender" text,
"name" text,
"nationality" text,
"birth_city" text,
"birth_year" int,
primary key("did")
);

CREATE TABLE "producer" (
"pid" int,
"gender" text,
"name" text,
"nationality" text,
"birth_city" text,
"birth_year" int,
primary key("pid")
);

CREATE TABLE "directed_by" (
"id" int,
"msid" int,
"did" int,
primary key("id"),
foreign key("msid") references `copyright`("msid"),
foreign key("did") references `director`("did")
);

CREATE TABLE "keyword" (
"id" int,
"keyword" text,
primary key("id")
);

CREATE TABLE "made_by" (
"id" int,
"msid" int,
"pid" int,
primary key("id"),
foreign key("msid") references `copyright`("msid"),
foreign key("pid") references `producer`("pid")
);

CREATE TABLE "movie" (
"mid" int,
"title" text,
"release_year" int,
"title_aka" text,
"budget" text,
primary key("mid")
);
CREATE TABLE "tags" (
"id" int,
"msid" int,
"kid" int,
primary key("id"),
foreign key("msid") references `copyright`("msid"),
foreign key("kid") references `keyword`("kid")
);
CREATE TABLE "tv_series" (
"sid" int,
"title" text,
"release_year" int,
"num_of_seasons" int,
"num_of_episodes" int,
"title_aka" text,
"budget" text,
primary key("sid")
);
CREATE TABLE "writer" (
"wid" int,
"gender" text,
"name" int,
"nationality" int,
"num_of_episodes" int,
"birth_city" text,
"birth_year" int,
primary key("wid")
);
CREATE TABLE "written_by" (
"id" int,
"msid" int,
"wid" int,
foreign key("msid") references `copyright`("msid"),
foreign key("wid") references `writer`("wid")
);
