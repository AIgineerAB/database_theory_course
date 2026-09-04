CREATE TABLE IF NOT EXISTS Customer (
    customer_id INTEGER PRIMARY KEY,
    first_name  VARCHAR(100),
    last_name   VARCHAR(100),
    address     VARCHAR(255),
    email       VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS "Order" (
    order_id    INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date  TIMESTAMP,
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer (customer_id)
);

CREATE TABLE IF NOT EXISTS Product (
    product_id    INTEGER PRIMARY KEY,
    product_name  VARCHAR(150),
    current_price FLOAT
);

CREATE TABLE IF NOT EXISTS OrderLine (
    order_line_id INTEGER PRIMARY KEY,
    order_id      INTEGER,
    line_number   INTEGER,
    product_id    INTEGER,
    quantity      INTEGER,
    unit_price    FLOAT,
    CONSTRAINT fk_orderline_order
        FOREIGN KEY (order_id)
        REFERENCES "Order" (order_id),
    CONSTRAINT fk_orderline_product
        FOREIGN KEY (product_id)
        REFERENCES Product (product_id)
);