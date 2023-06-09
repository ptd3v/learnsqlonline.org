#Joining Tables
CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_name TEXT
);

INSERT INTO customers (first_name, last_name) VALUES
    ("John", "Doe");

INSERT INTO orders (customer_id, product_name) VALUES
    (last_insert_rowid(), "Coke"),
    (last_insert_rowid(), "Sprite");

.mode column
.headers on
SELECT product_name, first_name, last_name
FROM orders
JOIN customers ON orders.customer_id = customers.id;

#Exercise
CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_name TEXT
);

INSERT INTO customers (first_name, last_name) VALUES
    ("John", "Doe");

INSERT INTO orders (customer_id, product_name) VALUES
    (last_insert_rowid(), "Coke"),
    (last_insert_rowid(), "Sprite");

INSERT INTO customers (first_name, last_name) VALUES
    ("Eric", "Smith");

INSERT INTO orders (customer_id, product_name) VALUES
    (last_insert_rowid(), "Doritos"),
    (last_insert_rowid(), "Water");

-- enter code here
SELECT product_name, first_name
FROM orders
JOIN customers ON orders.customer_id = customers.id
WHERE first_name = 'John';