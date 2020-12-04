-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "election_covid" (
    "county" VARCHAR(30)   NOT NULL,
    "trump" INT   NOT NULL,
    "biden" INT   NOT NULL,
    "jorgensen" INT   NOT NULL,
    "total_county_votes" INT   NOT NULL,
    "confirmed_per100k" FLOAT   NOT NULL,
    "antigen_positive" INT   NOT NULL,
    "confirmed_deaths" INT   NOT NULL,
    "probable_deaths" INT   NOT NULL,
    "hospitalizations" INT   NOT NULL,
    CONSTRAINT "pk_election_covid" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "georgia_income" (
    "2018" INT   NOT NULL,
    "county" VARCHAR(30)   NOT NULL,
    "confirmed_per100k" FLOAT   NOT NULL,
    "antigen_positive" INT   NOT NULL,
    "confirmed_deaths" INT   NOT NULL,
    "probable_deaths" INT   NOT NULL,
    "hospitalizations" INT   NOT NULL,
    CONSTRAINT "pk_georgia_income" PRIMARY KEY (
        "county"
     )
);

ALTER TABLE "georgia_income" ADD CONSTRAINT "fk_georgia_income_county" FOREIGN KEY("county")
REFERENCES "election_covid" ("county");

