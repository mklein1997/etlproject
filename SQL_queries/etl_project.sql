-- DROP TABLE "georgia_covid"
-- DROP TABLE "election_covid"
CREATE TABLE "election_covid" (
    "county" VARCHAR(30)   NOT NULL,
    "trump" INT   NOT NULL,
    "biden" INT   NOT NULL,
    "jorgensen" INT   NOT NULL,
    "total_county_votes" INT   NOT NULL,
    "confirmed_covid_cases" INT   NOT NULL,
    "confirmed_per100k" FLOAT   NOT NULL,
    "antigen_positive" INT   NOT NULL,
    "confirmed_deaths" INT   NOT NULL,
    "probable_deaths" INT   NOT NULL,
    "hospitalizations" INT   NOT NULL,
    CONSTRAINT "pk_election_covid" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "georgia_covid" (
    "county" VARCHAR(30)   NOT NULL,
    "2018_avg_income" INT   NOT NULL,
    "confirmed_covid_cases" INT   NOT NULL,
    "confirmed_per100k" FLOAT   NOT NULL,
    "antigen_positive" INT   NOT NULL,
    "confirmed_deaths" INT   NOT NULL,
    "probable_deaths" INT   NOT NULL,
    "hospitalizations" INT   NOT NULL,
    CONSTRAINT "pk_georgia_covid" PRIMARY KEY (
        "county"
     )
);

ALTER TABLE "georgia_covid" ADD CONSTRAINT "fk_georgia_covid_county" FOREIGN KEY("county")
REFERENCES "election_covid" ("county");

