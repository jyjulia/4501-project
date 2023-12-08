
CREATE TABLE IF NOT EXISTS zipcodes (
    id SERIAL PRIMARY KEY,
    zipcode VARCHAR(10),
    geometry GEOMETRY(POLYGON, 4326)
);

CREATE TABLE IF NOT EXISTS complaints (
    id SERIAL PRIMARY KEY,
    date DATE,
    complaint_type VARCHAR(255),
    geometry GEOMETRY(POINT, 4326),
    zipcode VARCHAR
);

CREATE TABLE IF NOT EXISTS trees (
    id SERIAL PRIMARY KEY,
    health VARCHAR,
    zipcodes VARCHAR,
    tree_id INTEGER,
    status VARCHAR,
    geometry GEOMETRY(POINT, 4326)
);

CREATE TABLE IF NOT EXISTS rents (
    id SERIAL PRIMARY KEY,
    zipcode VARCHAR(10),
    rent_avg NUMERIC
);

CREATE TABLE IF NOT EXISTS bedbug (
    id SERIAL PRIMARY KEY,
    reporting_id VARCHAR(10),
    zipcode VARCHAR(10),
    date DATE
);
