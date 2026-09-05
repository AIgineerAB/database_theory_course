SELECT * FROM product;
SELECT * FROM "Order";
SELECT * FROM customer;

-- which customers have bought what products and 
-- how many of those products and the unit costs?

SELECT 
    c.first_name,
    c.last_name,
    c.email,
    o.order_date,
    p.product_name,
    ol.quantity,
    ol.unit_price
FROM customer c
LEFT JOIN "Order" o
    ON o.customer_id = c.customer_id
LEFT JOIN orderline ol
    ON ol.order_id = o.order_id
LEFT JOIN product p
    ON p.product_id = ol.product_id; 