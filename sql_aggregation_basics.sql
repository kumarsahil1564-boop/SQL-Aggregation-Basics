-- Task 23: SQL Aggregation Basics
-- Tool: MySQL

CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 2, 55000),
(2, 'Mouse', 'Accessories', 10, 800),
(3, 'Keyboard', 'Accessories', 5, 1500),
(4, 'Monitor', 'Electronics', 3, 12000),
(5, 'Headphones', 'Accessories', 7, 2500),
(6, 'Printer', 'Electronics', 2, 15000),
(7, 'Webcam', 'Accessories', 4, 3000),
(8, 'Tablet', 'Electronics', 3, 20000),
(9, 'USB Cable', 'Accessories', 15, 400),
(10, 'Smartphone', 'Electronics', 4, 30000);

-- 1. Count total number of sales records
SELECT COUNT(*) AS total_sales_records
FROM sales;

-- 2. Count total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

-- 3. Calculate total sales value
SELECT SUM(quantity * price) AS total_sales_value
FROM sales;

-- 4. Calculate average product price
SELECT AVG(price) AS average_price
FROM sales;

-- 5. Find minimum product price
SELECT MIN(price) AS minimum_price
FROM sales;

-- 6. Find maximum product price
SELECT MAX(price) AS maximum_price
FROM sales;

-- 7. Count products by category
SELECT category, COUNT(*) AS product_count
FROM sales
GROUP BY category;

-- 8. Find total quantity by category
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category;

-- 9. Find average price by category
SELECT category, AVG(price) AS average_price
FROM sales
GROUP BY category;

-- 10. Find maximum price by category
SELECT category, MAX(price) AS maximum_price
FROM sales
GROUP BY category;

-- NULL behavior:
-- Aggregate functions such as AVG, SUM, MIN and MAX
-- generally ignore NULL values.
