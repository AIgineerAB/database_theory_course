-- Category: DQL (Data Query Language)
-- Purpose: Combining tables with JOIN

-- Two-table JOIN: show each order with the name of the customer who placed it.
SELECT
    o.order_id,
    o.order_date,
    o.quantity,
    c.customer_name
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id;

-- Three-table JOIN: show order details with customer and product names.
SELECT
    o.order_id,
    o.order_date,
    c.customer_name,
    p.product_name,
    o.quantity,
    p.price,
    o.quantity * p.price AS order_total
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
JOIN products AS p
    ON o.product_id = p.product_id;
