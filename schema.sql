/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
    id INT GENERATED ALWAYS AS IDENTITY,
    name STRING,
    date_of_birth DATE,
    espace_attemps DATE,
    neutered BOOLEAN,
    weight_kg DECIMAL

);


