-- ============================
-- Table 1: breeds
-- ============================
CREATE TABLE breeds (
    breed_id SERIAL PRIMARY KEY,
    breed_name VARCHAR(100) UNIQUE NOT NULL,
    origin_country VARCHAR(100),
    avg_lifespan_years NUMERIC(3,1),
    size_category VARCHAR(20) CHECK (size_category IN ('Small', 'Medium', 'Large', 'Giant'))
);

-- Insert breed data
INSERT INTO breeds (breed_name, origin_country, avg_lifespan_years, size_category) VALUES
('Holland Lop', 'Netherlands', 7.5, 'Small'),
('Netherland Dwarf', 'Netherlands', 10.0, 'Small'),
('Rex', 'France', 8.0, 'Medium'),
('Dutch', 'Netherlands', 7.0, 'Small'),
('Angora', 'Turkey', 7.5, 'Medium'),
('Mini Rex', 'USA', 6.5, 'Small'),
('Lionhead', 'Belgium', 8.0, 'Small'),
('Flemish Giant', 'Belgium', 5.5, 'Giant'),
('Himalayan', 'Egypt', 8.5, 'Small'),
('English Spot', 'England', 7.0, 'Medium'),
('Polish', 'England', 6.0, 'Small'),
('Harlequin', 'France', 7.5, 'Medium'),
('Silver Fox', 'USA', 8.0, 'Medium'),
('American', 'USA', 8.5, 'Large'),
('Belgian Hare', 'Belgium', 7.0, 'Medium'),
('Checkered Giant', 'Germany', 6.0, 'Giant'),
('Mini Lop', 'Germany', 8.0, 'Small'),
('Californian', 'USA', 7.5, 'Medium'),
('Jersey Wooly', 'USA', 8.5, 'Small'),
('New Zealand', 'New Zealand', 6.5, 'Large');

-- ============================
-- Table 2: rabbits
-- ============================
CREATE TABLE rabbits (
    rabbit_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    breed_id INT NOT NULL REFERENCES breeds(breed_id),
    color VARCHAR(50),
    age_months INT CHECK (age_months >= 0),
    weight_lbs NUMERIC(4,2) CHECK (weight_lbs > 0),
    is_neutered BOOLEAN DEFAULT FALSE,
    cuteness_rating NUMERIC(2,1) CHECK (cuteness_rating >= 0 AND cuteness_rating <= 5),
    adopted BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert rabbit data (referencing breed_id 1-20 matching insert order above)
INSERT INTO rabbits (name, breed_id, color, age_months, weight_lbs, is_neutered, cuteness_rating, adopted) VALUES
('Thumper', 1, 'Brown', 8, 3.50, TRUE, 4.8, TRUE),
('Clover', 2, 'White', 5, 2.10, FALSE, 4.5, FALSE),
('Bella', 3, 'Black', 14, 6.20, TRUE, 4.2, TRUE),
('Oreo', 4, 'Black and White', 10, 4.80, TRUE, 4.9, FALSE),
('Snowball', 5, 'White', 6, 3.90, FALSE, 4.7, FALSE),
('Peanut', 6, 'Grey', 3, 1.80, FALSE, 4.6, FALSE),
('Cinnamon', 7, 'Orange', 12, 3.30, TRUE, 4.4, TRUE),
('Mocha', 8, 'Brown', 20, 12.50, TRUE, 4.3, TRUE),
('Luna', 9, 'White', 9, 4.10, FALSE, 4.5, FALSE),
('Biscuit', 10, 'White and Brown', 7, 5.00, TRUE, 4.1, FALSE),
('Coco', 11, 'Black', 4, 2.30, FALSE, 4.6, FALSE),
('Daisy', 12, 'Orange and Black', 11, 4.60, TRUE, 4.7, TRUE),
('Pepper', 13, 'Grey', 15, 8.90, TRUE, 4.0, TRUE);
