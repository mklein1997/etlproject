CREATE TABLE "election_data" (
    "county" VARCHAR(30)   NOT NULL,
    "trump" INT   NOT NULL,
    "biden" INT   NOT NULL,
    "jorgensen" INT   NOT NULL,
    "total_county_votes" INT   NOT NULL,
    CONSTRAINT "pk_election_data" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "georgia_income" (
    "county" VARCHAR(30)   NOT NULL,
    "2018_avg_income" INT   NOT NULL,
    CONSTRAINT "pk_georgia_income" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "georgia_covid_data" (
    "county" VARCHAR(30)   NOT NULL,
    "confirmed_covid_cases" INT   NOT NULL,
    "confirmed_per100k" FLOAT   NOT NULL,
    "antigen_positive" INT   NOT NULL,
    "confirmed_deaths" INT   NOT NULL,
    "probable_deaths" INT   NOT NULL,
    "hospitalizations" INT   NOT NULL,
    CONSTRAINT "pk_georgia_covid_data" PRIMARY KEY (
        "county"
     )
);

ALTER TABLE "georgia_income" ADD CONSTRAINT "fk_georgia_income_county" FOREIGN KEY("county")
REFERENCES "election_data" ("county");

ALTER TABLE "georgia_covid_data" ADD CONSTRAINT "fk_georgia_covid_data_county" FOREIGN KEY("county")
REFERENCES "election_data" ("county");

