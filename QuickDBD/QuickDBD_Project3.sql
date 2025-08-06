-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Hftcv0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "movies" (
    "movie_id" int   NOT NULL,
    "title" varchar(100)   NOT NULL,
    "revenue" bigint   NOT NULL,
    "tagline" varchar(300)   NOT NULL,
    "average_vote" numeric(5,1)   NOT NULL,
    "popularity" decimal(9,6)   NOT NULL,
    "release_date" date   NOT NULL,
    CONSTRAINT "pk_movies" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "actor" (
    "actor_id" int   NOT NULL,
    "actor" varchar(50)   NOT NULL,
    CONSTRAINT "pk_actor" PRIMARY KEY (
        "actor_id"
     )
);

CREATE TABLE "credits_actor" (
    "movie_id" int   NOT NULL,
    "actor_id" int   NOT NULL
);

CREATE TABLE "directors" (
    "director_id" int   NOT NULL,
    "director" varchar(100)   NOT NULL,
    CONSTRAINT "pk_directors" PRIMARY KEY (
        "director_id"
     )
);

CREATE TABLE "movieid_director_id" (
    "movie_id" int   NOT NULL,
    "director_id" int   NOT NULL
);

CREATE TABLE "emoji_genre" (
    "genre_id" int   NOT NULL,
    "genre" varchar(100)   NOT NULL,
    "alias" varchar(100)   NOT NULL,
    "genre_emoji" varchar(100)   NOT NULL,
    CONSTRAINT "pk_emoji_genre" PRIMARY KEY (
        "genre_id"
     )
);

CREATE TABLE "movieid_genre_ids" (
    "movie_id" int   NOT NULL,
    "genre_id" int   NOT NULL
);

CREATE TABLE "keywords" (
    "keyword_id" int   NOT NULL,
    "keyword" varchar(50)   NOT NULL,
    CONSTRAINT "pk_keywords" PRIMARY KEY (
        "keyword_id"
     )
);

CREATE TABLE "movieids_kw" (
    "movie_id" int   NOT NULL,
    "keyword_id" int   NOT NULL
);

ALTER TABLE "credits_actor" ADD CONSTRAINT "fk_credits_actor_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movies" ("movie_id");

ALTER TABLE "credits_actor" ADD CONSTRAINT "fk_credits_actor_actor_id" FOREIGN KEY("actor_id")
REFERENCES "actor" ("actor_id");

ALTER TABLE "movieid_director_id" ADD CONSTRAINT "fk_movieid_director_id_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movies" ("movie_id");

ALTER TABLE "movieid_director_id" ADD CONSTRAINT "fk_movieid_director_id_director_id" FOREIGN KEY("director_id")
REFERENCES "directors" ("director_id");

ALTER TABLE "movieid_genre_ids" ADD CONSTRAINT "fk_movieid_genre_ids_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movies" ("movie_id");

ALTER TABLE "movieid_genre_ids" ADD CONSTRAINT "fk_movieid_genre_ids_genre_id" FOREIGN KEY("genre_id")
REFERENCES "emoji_genre" ("genre_id");

ALTER TABLE "movieids_kw" ADD CONSTRAINT "fk_movieids_kw_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movies" ("movie_id");

ALTER TABLE "movieids_kw" ADD CONSTRAINT "fk_movieids_kw_keyword_id" FOREIGN KEY("keyword_id")
REFERENCES "keywords" ("keyword_id");

