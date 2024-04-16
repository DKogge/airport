-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UtV7yt
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "airport_data" (
    "code" varchar(150)   NOT NULL,
    "airport_name" varchar(150)   NOT NULL,
    "city" varchar(150)   NOT NULL,
    "state" varchar(150)   NOT NULL,
    CONSTRAINT "pk_airport_data" PRIMARY KEY (
        "code"
     )
);

CREATE TABLE "air_carrier_data" (
    "code" int   NOT NULL,
    "company" varchar(100)   NOT NULL,
    "prefix" varchar(100)   NOT NULL,
    CONSTRAINT "pk_air_carrier_data" PRIMARY KEY (
        "code"
     )
);

CREATE TABLE "august_2018" (
    "id" int   NOT NULL,
    "fl_date" date   NOT NULL,
    "op_carrier_airline_id" int   NOT NULL,
    "op_carrier_fl_num" int   NOT NULL,
    "origin" varchar(150)   NOT NULL,
    "dest" varchar(150)   NOT NULL,
    "crs_dep_time" int   NOT NULL,
    "dep_time" int   NOT NULL,
    "dep_delay" int   NOT NULL,
    "arr_time" int   NOT NULL,
    "arr_delay" int   NOT NULL,
    "cancelled" float   NULL,
    "carrier_delay" float   NULL,
    "weather_delay" float   NULL,
    "nas_delay" float   NULL,
    "security_delay" float   NULL,
    "late_aircraft_delay" float   NULL,
    CONSTRAINT "pk_august_2018" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "august_2018" ADD CONSTRAINT "fk_august_2018_op_carrier_airline_id" FOREIGN KEY("op_carrier_airline_id")
REFERENCES "air_carrier_data" ("code");

ALTER TABLE "august_2018" ADD CONSTRAINT "fk_august_2018_origin" FOREIGN KEY("origin")
REFERENCES "airport_data" ("code");

ALTER TABLE "august_2018" ADD CONSTRAINT "fk_august_2018_dest" FOREIGN KEY("dest")
REFERENCES "airport_data" ("code");

