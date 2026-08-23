-- Two-table JOIN: show each order with the name of the customer who placed it.
SELECT
    o.order_id,
    o.order_date,
    o.quantity,
    c.customer_name
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id;

-- Three-table JOIN: show customer_name and product and price it bought
SELECT 
    c.customer_name, p.product_name, p.price
FROM orders o
LEFT JOIN customers c 
    ON c.customer_id = o.customer_id
LEFT JOIN products p
    ON p.product_id = o.product_id;
;