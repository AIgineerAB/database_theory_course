-- Purpose: Basic SELECT queries

-- Select every column and row from the customers table.
SELECT * FROM customers;

-- Select only customer names and cities.
SELECT customer_name, city
FROM customers;

-- List all products from most expensive to least expensive.
SELECT *
FROM products
ORDER BY price DESC;

-- Select product names and prices for a compact product list.
SELECT product_name, price
FROM products;
