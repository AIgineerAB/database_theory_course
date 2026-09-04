SELECT * FROM product;
SELECT * FROM "Order";
SELECT * FROM customer;

SELECT 
    c.first_name, 
    c.last_name,
    p.product_name
FROM orderline ol
LEFT JOIN "Order" o 
    ON o.order_id = ol.order_id 
LEFT JOIN customer c 
    ON c.customer_id = o.customer_id
LEFT JOIN product p 
    ON p.product_id = ol.product_id
;