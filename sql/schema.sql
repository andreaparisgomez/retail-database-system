-- Create table
CREATE TABLE sales (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    age INT,
    product_category VARCHAR(100),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    total_amount NUMERIC(10,2)
);
