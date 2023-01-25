SELECT 
order_id,
order_date,
'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
order_id,
order_date,
'Decline' AS decline
FROM orders
WHERE order_date < '2019-01-01';

SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers;

-- exercise
SELECT customer_id,first_name, points, 'Bronze' as type
FROM customers
WHERE points < 2000
UNION 
SELECT customer_id,first_name, points, 'Silver' as type
FROM customers
WHERE points < 3000 AND points > 2000
UNION 
SELECT customer_id,first_name, points, 'Gold' as type
FROM customers
WHERE points > 3000
ORDER BY first_name


