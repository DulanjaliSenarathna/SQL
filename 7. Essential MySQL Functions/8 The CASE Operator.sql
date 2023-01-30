SELECT 
order_id,
CASE 
WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
WHEN YEAR(order_date) = YEAR(NOW())-1 THEN 'Last Year'
WHEN YEAR(order_date) < YEAR(NOW())-1 THEN 'Archived'
ELSE 'Future'
END AS category
FROM orders;

-- exercise
SELECT 
CONCAT(first_name, ' ',last_name) AS customer,
points,
CASE
WHEN points > 3000 THEN 'Gold'
WHEN points < 3000 AND points > 2000 THEN 'Silver'
WHEN points < 2000 THEN 'Bronze'
END AS category
FROM customers;
