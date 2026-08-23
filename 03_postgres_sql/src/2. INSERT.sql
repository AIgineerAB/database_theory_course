-- Purpose: Insert sample data

INSERT INTO customers (customer_name, city, signup_date) VALUES
('Alice Johnson', 'New York', '2024-01-15'),
('Bob Smith', 'Los Angeles', '2024-02-20'),
('Carol Davis', 'Chicago', '2024-03-10'),
('David Lee', 'New York', '2024-04-05'),
('Emma Wilson', 'Houston', '2024-05-12');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 999.99),
('Mouse', 'Electronics', 25.50),
('Desk Chair', 'Furniture', 150.00),
('Notebook', 'Office Supplies', 3.75),
('Monitor', 'Electronics', 220.00);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2024-06-01'),
(1, 2, 2, '2024-06-01'),
(2, 3, 1, '2024-06-03'),
(3, 1, 1, '2024-06-05'),
(3, 4, 5, '2024-06-05'),
(4, 5, 2, '2024-06-10'),
(5, 2, 3, '2024-06-12'),
(2, 4, 10, '2024-06-15');
