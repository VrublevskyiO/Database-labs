CREATE DATABASE Fourth_lab
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
-- Table: Population

DROP TABLE IF EXISTS Population;
DROP VIEW IF EXISTS Population;

CREATE TABLE IF NOT EXISTS Population
(
    region integer,
    year_date integer NOT NULL,
    gender char,
    age char(100),
    amount integer,
    CONSTRAINT "Population_pkey" PRIMARY KEY (year_date)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS Population
    OWNER to postgres;
	
	
-- Table: Region

DROP TABLE IF EXISTS region;

CREATE TABLE IF NOT EXISTS Region
(
    code integer,
    city_name char(100)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS Region
    OWNER to postgres;
	
	
-- Table: Time_series_info

DROP TABLE IF EXISTS Time_series_info;

CREATE TABLE IF NOT EXISTS Time_series_info
(
    year_date integer NOT NULL,
    martality_rate real,
    mid_salary_uah real,
    GDP real,
    fertility_rate real
    /*CONSTRAINT "Time_series_info_pkey" PRIMARY KEY (year)*/
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS Time_series_info
    OWNER to postgres;
	
	
ALTER TABLE Population ADD PRIMARY KEY (region, year, gender, age);
ALTER TABLE Region ADD PRIMARY KEY (code);
ALTER TABLE Time_series_info ADD PRIMARY KEY (year);

ALTER TABLE Time_series_info ADD CONSTRAINT FK_Time_series_info_year FOREIGN KEY (Time_series_info) REFERENCES Population (region, year, gender, age);
ALTER TABLE Region ADD CONSTRAINT FK_Region_Name FOREIGN KEY (name) REFERENCES Population (region);
