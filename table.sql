
# Main table store bulk data 
# Create table to store main dataframe based on ETLperthfuelprices. 
CREATE TABLE "historical_fuel_prices" (
    "year" INT,
    "month" INT,
    "day" INT,
    "trading_name" VARCHAR NOT NULL PRIMARY KEY,
    "brand_description" VARCHAR,
    "product_description" VARCHAR,
    "product_price" FLOAT,
    "address" VARCHAR,
    "location" VARCHAR,
    "postcode" FLOAT,
    "area_description" VARCHAR,
    "region_description" VARCHAR
);

# create drop function for use in future. 
DROP TABLE IF EXISTS "historical_fuel_prices";

# test run of code to see if table has been created. 
SELECT * FROM   historical_fuel_prices 

# Table to store yearly averages by Region. 
CREATE TABLE "yearly_avg_region" (
    "index" INT NOT NULL PRIMARY KEY, 
    "year" INT,
    "region_description" VARCHAR,
	"area_description" VARCHAR,
	"brand_description" VARCHAR,
    "product_description" VARCHAR,
    "product_price" FLOAT
);

# create drop function for use in future. 
DROP TABLE IF EXISTS "yearly_avg_region";

# test run of code to see if table has been created. 
SELECT * FROM "yearly_avg_region";

# This is copy form a diffrent copy of the fiel. 
CREATE TABLE public.daily_average_price
(
    index integer NOT NULL,
    year integer,
    month integer,
    day integer,
    region_description character varying,
    area_description character varying,
    brand_description character varying,
    product_description character varying,
    product_price double precision,
    PRIMARY KEY (index)
);

CREATE TABLE public.historical_fuel_prices
(
    index integer NOT NULL,
    year integer,
    month integer,
    day integer,
    trading_name character varying,
    brand_description character varying,
    product_description character varying,
    product_price double precision,
    address character varying,
    location character varying,
    postcode integer,
    area_description character varying,
    region_description character varying,
    PRIMARY KEY (index)
);

CREATE TABLE public.ml_predict
(
    index integer NOT NULL,
    "Actual" double precision,
    "LineearReg" double precision,
    "LGBMRegressor" double precision,
    "LinearSVR" double precision,
    "RandomForestRegressor" double precision,
    PRIMARY KEY (index)
);

CREATE TABLE public.month_avg_region
(
    index integer NOT NULL,
    year integer,
    month integer,
    region_description character varying,
    area_description character varying,
    brand_description character varying,
    product_description character varying,
    product_price double precision,
    PRIMARY KEY (index)
);

CREATE TABLE public.yearly_avg_region
(
    index integer NOT NULL,
    year integer,
    region_description character varying,
    area_description character varying,
    brand_description character varying,
    product_description character varying,
    product_price double precision,
    PRIMARY KEY (index)
);
END;