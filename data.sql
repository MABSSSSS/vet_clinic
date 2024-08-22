-- INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
-- VALUES
-- ('Charmander', '2020-02-08', -11, FALSE, 0, 'unspecified'),
-- ('Plantmon', '2021-11-15', -5.7, TRUE, 2, 'unspecified'),
-- ('Squirtle', '1993-04-02', -12.13, FALSE, 3, 'unspecified'),
-- ('Angemon', '2005-06-12', -45, TRUE, 1, 'unspecified'),
-- ('Boarmon', '2005-06-07', 20.4, TRUE, 7, 'unspecified'),
-- ('Blossom', '1998-10-13', 17, TRUE, 3, 'unspecified'),
-- ('Ditto', '2022-05-14', 22, TRUE, 4, 'unspecified');
-- Assuming you have existing data and IDs from the species and owners
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon';
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon') WHERE species_id IS NULL;

-- Set owner_id values
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name IN ('Angemon', 'Boarmon');
