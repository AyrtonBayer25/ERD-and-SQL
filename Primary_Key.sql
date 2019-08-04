-- Database: Animals

-- DROP DATABASE "Animals";

CREATE DATABASE "Animals"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE animals_all(
id serial Primary key,
animal_species varchar(30) not null,
owner_name varchar(30) not null);
	
insert into animals_all (animal_species,
owner_name) VALUES
('Dog', 'Bob'),
('fish', 'Bob'),
('cat', 'Kelly'),
('Dolphin', 'Aquaman');

CREATE TABLE animals_location (
id SERIAL PRIMARY KEY,
location VARCHAR(30) NOT NULL,
animal_id INTEGER NOT NULL,
FOREIGN KEY (animal_id) REFERENCES animals_all(id));

---insert data
insert into animals_location(location, animal_id)
VALUES
('Dog Hosue', 1),
('fish tank', 2),
('bed', 3),
('Ocean', 4);

--correct insert
INSERT INTO animals_all (animal_species, owner_name)
VALUES ('Fish', 'dave');

INSERT INTO animals_location (location, animal_id)
VALUES ('River', 5);

SELECT * From animals_location;


	