-- Query optimisation using EXPLAIN ANALYZE and indexing

-- Baseline query plan before indexing
EXPLAIN ANALYZE
SELECT *
FROM sales
WHERE customer_id = 'CUST010'
ORDER BY transaction_date;

-- Create index to improve customer lookup
CREATE INDEX idx_customer_id
ON sales(customer_id);

-- Query plan after indexing
EXPLAIN ANALYZE
SELECT *
FROM sales
WHERE customer_id = 'CUST010'
ORDER BY transaction_date;
