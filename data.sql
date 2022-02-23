/* Populate database with sample data. */

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Agumon', '02/03/2020', 0, TRUE, 10.23);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Gabumon', '11/15/2018', 2, TRUE, 8);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Pikachu', '01/07/2011', 1, FALSE, 15.04);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Devimon', '05/12/2017', 5, TRUE, -11);

-- Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Charmander', '08/02/2020', 0, FALSE, -11);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Plantmon', '15/11/2022', 2, TRUE, -5.7);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Squirtle', '02/04/1993', 3, FALSE, -12.13);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Angemon', '12/06/2005', 1, TRUE, -45);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Boarmon', '07/06/2005', 7, TRUE, 20.4);

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Blossom', '10/13/1998', 3, TRUE, 17);

-- for owmers table

INSERT INTO owners (
  full_name,
  age
)
VALUES ('Sam Smith ', 34)

INSERT INTO owners (
  full_name,
  age
)
VALUES ('Jennifer Orwell', 19)

INSERT INTO owners (
  full_name,
  age
)
VALUES ('Melody Pond', 77)

INSERT INTO owners (
  full_name,
  age
)
VALUES ('Dean Winchester', 14)

INSERT INTO owners (
  full_name,
  age
)
VALUES ('Jodie Whittaker', 38)

-- species

INSERT INTO species (
  name
)
VALUE ('Pokemon')

INSERT INTO species (
  name
)
VALUE ('Digimon')

-- Bob owns Devimon and Plantmon.

UPDATE animals 
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') 
WHERE name = 'Devimon';

UPDATE animals 
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') 
WHERE name = 'Plantmon';

-- Modify your inserted animals to include owner information (owner_id): 

UPDATE animals 
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') 
WHERE name = 'Agumon';

UPDATE animals 
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') 
WHERE name = 'Pikachu';

UPDATE animals 
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') 
WHERE name = 'Gabumon';
