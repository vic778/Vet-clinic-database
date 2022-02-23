/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  date_of_birth DATE,
  escape_attempts INT,
  neutered boolean,
  weight_kg DECIMAL,
);

ALTER TABLE animals(
  ADD species VARCHAR(60);
)

-- create a new table the Db named owners
CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(60),
  age INT
);

-- create a new table in the Db named species 
CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name VARCHAR(60)
);

-- delete the comun in the aminl table
ALTER TABLE animals
DROP COLUMN species;

-- add column species_id which is a foreign key referencing species table
ALTER TABLE animals
  ADD species_id INT, 
  ADD CONSTRAINT species_id
  FOREIGN KEY(species_id)
  REFERENCES species(id);

-- Add column owner_id which is a foreign key referencing the owners table

ALTER TABLE animals 
  ADD owners_id INT, 
  ADD CONSTRAINT owners_id 
  FOREIGN KEY(owners_id) 
  REFERENCES owners(id);
