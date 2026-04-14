-- Table partitioning by transaction date
-- Partitioning enables improved performance and manageability for large, time-based datasets

-- Create partitioned table
CREATE TABLE sales_partitioned (
    transaction_id INT,
    transaction_date DATE,
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    age INT,
    product_category VARCHAR(100),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    total_amount NUMERIC(10,2)
)
PARTITION BY RANGE (transaction_date);

-- Create partition for 2023 data
CREATE TABLE sales_2023 PARTITION OF sales_partitioned
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- Create partition for 2024 data
CREATE TABLE sales_2024 PARTITION OF sales_partitioned
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Insert existing data into partitioned table
INSERT INTO sales_partitioned
SELECT * FROM sales;

-- Verify data load
SELECT COUNT(*) FROM sales_partitioned;
