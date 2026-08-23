-- Purpose: Filtering rows with WHERE

-- Find customers who live in New York.
SELECT *
FROM customers
WHERE city = 'New York';

-- Find products priced above 100.
SELECT *
FROM products
WHERE price > 100;

-- Find orders containing at least five items.
SELECT *
FROM orders
WHERE quantity >= 5;

-- Find customers who signed up during or after March 2024.
SELECT *
FROM customers
WHERE signup_date >= '2024-03-01';
