
CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE products (
	item_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    stock_quantity INT(100),
    PRIMARY KEY (item_id)
);

DESCRIBE products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
  VALUES ('Mouse', 'Electronics', 99.99, 100), ('Keyboard', 'Electronics', 75.50, 75),
    ('Hershey\'s Chocolate', 'Food', 35.00, 35), ('Slim Jim', 'Food', 2.99, 500),
    ('Random Book', 'Books', 12.50, 250), ('Frozen featuring Olaf', 'Movies', 24.99, 9),
    ('Workout Bands', 'Fitness', 59.99, 75), ('KettleBell', 'Fitness', 19.99, 250),
    ('Simplex T-Shirt', 'Apparel', 9.95, 400), ('Massage Chair', 'Furniture', 2799.00 , 100)
    
SELECT * FROM products;
    
SELECT item_id, department_name FROM products
GROUP BY department_name, item_id;