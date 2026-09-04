SELECT * FROM product;
SELECT * FROM "Order";
SELECT * FROM customer;

select 
    c.first_name, 
    c.last_name,
    p.product_name
from orderline ol
left join "Order" o 
    ON o.order_id = ol.order_id 
left join customer c 
    ON c.customer_id = o.customer_id
left join product p 
    ON p.product_id = ol.product_id
;