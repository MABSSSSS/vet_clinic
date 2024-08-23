CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(5, 2)
);
CREATE INDEX idx_visits_animal_id ON visits (animal_id);
CREATE INDEX idx_visits_vet_id ON visits (vet_id);
CREATE INDEX idx_owners_email ON owners (email);