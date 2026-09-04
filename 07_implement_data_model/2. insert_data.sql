
INSERT INTO Customer (customer_id, first_name, last_name, address, email) VALUES
(1, 'Erik', 'Andersson', 'Storgatan 12, Stockholm', 'erik.andersson@email.se'),
(2, 'Anna', 'Johansson', 'Kungsgatan 5, Göteborg', 'anna.johansson@email.se'),
(3, 'Lars', 'Karlsson', 'Drottninggatan 8, Malmö', 'lars.karlsson@email.se'),
(4, 'Karin', 'Nilsson', 'Vasagatan 22, Uppsala', 'karin.nilsson@email.se');


INSERT INTO Product (product_id, product_name, current_price) VALUES
(1, 'Wireless Mouse', 19.99),
(2, 'Mechanical Keyboard', 79.99),
(3, 'USB-C Hub', 34.50),
(4, 'Laptop Stand', 45.00),
(5, 'Webcam HD 1080p', 59.99);


INSERT INTO "Order" (order_id, customer_id, order_date) VALUES
(1, 1, '2026-08-15 10:30:00'),
(2, 2, '2026-08-20 14:15:00'),
(3, 1, '2026-08-25 09:00:00'),
(4, 3, '2026-09-01 16:45:00'),
(5, 4, '2026-09-03 11:20:00');


INSERT INTO OrderLine (order_line_id, order_id, line_number, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 2, 19.99),
(2, 1, 2, 2, 1, 79.99),
(3, 2, 1, 3, 1, 34.50),
(4, 2, 2, 4, 2, 45.00),
(5, 3, 1, 5, 1, 59.99),
(6, 4, 1, 1, 3, 19.99),
(7, 4, 2, 5, 1, 59.99),
(8, 5, 1, 2, 1, 79.99),
(9, 5, 2, 3, 2, 34.50);