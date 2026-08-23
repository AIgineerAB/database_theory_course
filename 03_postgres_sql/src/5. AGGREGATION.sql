-- Purpose: Aggregation functions with GROUP BY
SELECT 
    category, 
    ROUND(AVG(price)) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products
GROUP BY category;