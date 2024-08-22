-- Number of animals
SELECT COUNT(*) FROM animals;

-- Animals that have never tried to escape
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

-- Average weight of animals
SELECT AVG(weight_kg) FROM animals;

-- Neutered vs. Not Neutered Escape Attempts
SELECT 
    CASE 
        WHEN neutered THEN 'Neutered' 
        ELSE 'Not Neutered' 
    END AS neutered_status,
    AVG(escape_attempts) AS avg_escape_attempts
FROM animals
GROUP BY neutered_status;

-- Minimum and Maximum Weight by Species
SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
FROM animals
GROUP BY species;

-- Average Escape Attempts per Animal Type Born Between 1990 and 2000
SELECT species, AVG(escape_attempts) AS avg_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;
