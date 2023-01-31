use sql_store;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT points 
FROM customers
WHERE customer_id = 1;

