-- Retail business queries

-- 1. View all transactions in the Beauty category
SELECT *
FROM sales
WHERE product_category = 'Beauty';

-- 2. View transactions with total amount greater than 500
SELECT *
FROM sales
WHERE total_amount > 500;

-- 3. View purchase history for a specific customer
SELECT *
FROM sales
WHERE customer_id = 'CUST010'
ORDER BY transaction_date;

-- 4. Total revenue by product category
SELECT product_category, SUM(total_amount) AS total_revenue
FROM sales
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 5. Number of transactions by gender
SELECT gender, COUNT(transaction_id) AS number_transactions
FROM sales
GROUP BY gender;

-- 6. Top 5 highest-value transactions
SELECT *
FROM sales
ORDER BY total_amount DESC
LIMIT 5;

-- 7. Daily total revenue
SELECT transaction_date, SUM(total_amount) AS daily_revenue
FROM sales
GROUP BY transaction_date
ORDER BY transaction_date;

-- 8. Total units sold by product category
SELECT product_category, SUM(quantity) AS total_units_sold
FROM sales
GROUP BY product_category
ORDER BY total_units_sold DESC;
