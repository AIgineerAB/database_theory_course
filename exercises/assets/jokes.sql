-- Create the table
CREATE TABLE jokes (
    joke_id SERIAL PRIMARY KEY,
    setup VARCHAR(255) NOT NULL,
    punchline VARCHAR(255) NOT NULL,
    category VARCHAR(50) DEFAULT 'general',
    rating NUMERIC(2,1) CHECK (rating >= 0 AND rating <= 5),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 20 jokes with ratings
INSERT INTO jokes (setup, punchline, category, rating) VALUES
('Why do programmers prefer dark mode?', 'Because light attracts bugs!', 'programming', 4.5),
('Why did the SQL query break up with the NoSQL database?', 'It just couldn''t find any relationships.', 'database', 4.2),
('Why do Java developers wear glasses?', 'Because they don''t C#!', 'programming', 4.0),
('What did the SQL table say to the other table?', 'Stop joining me everywhere I go!', 'database', 3.8),
('Why was the JavaScript developer sad?', 'Because he didn''t Node how to Express himself.', 'programming', 4.3),
('How do you comfort a JavaScript bug?', 'You console it.', 'programming', 4.7),
('Why did the database administrator leave his wife?', 'She had one-to-many relationships.', 'database', 4.6),
('What is a SQL query''s favorite type of music?', 'Anything with a good ROW-CK beat.', 'database', 3.5),
('Why do programmers hate nature?', 'It has too many bugs and no debugging tool.', 'programming', 4.1),
('What did the database say when it got a compliment?', 'Stop, you''re making me BLUSH... or was that a TRUNCATE?', 'database', 3.9),
('Why did the two SQL tables never talk?', 'They had no common keys.', 'database', 4.0),
('Why do Python programmers prefer snakes as pets?', 'Because they already speak the language!', 'programming', 4.4),
('What''s a SQL developer''s favorite dance?', 'The Cha-Cha SELECT.', 'database', 3.6),
('Why did the foreign key feel lonely?', 'It didn''t have a primary relationship.', 'database', 4.2),
('Why don''t programmers like to go outside?', 'The sunlight causes too much glare on their screens... and bugs!', 'programming', 3.7),
('What do you call a SQL injection attack in a bakery?', 'A DROP TABLE of cookies.', 'security', 4.8),
('Why did the NULL value go to therapy?', 'It had an identity crisis — it didn''t know if it was something or nothing.', 'database', 4.5),
('Why did the developer go broke?', 'Because he used up all his cache.', 'programming', 4.3),
('What did one index say to the other?', 'You really speed things up around here!', 'database', 3.8),
('Why did the query optimizer break up with the table scan?', 'It wanted someone more efficient in the relationship.', 'database', 4.0);