USE data_quality_db;

-- 1. Check NULL values
SELECT *
FROM customers
WHERE customer_name IS NULL
   OR email IS NULL
   OR city IS NULL;

-- 2. Check duplicate email
SELECT email, COUNT(*) AS duplicate_count
FROM customers
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;

-- 3. Check total customer records
SELECT COUNT(*) AS total_customers
FROM customers;

-- 4. Check unique customer IDs
SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;
