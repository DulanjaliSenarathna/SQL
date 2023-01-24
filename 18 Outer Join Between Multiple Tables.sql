USE sql_store;
SELECT c.customer_id, c.first_name,o.order_id , s.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
LEFT JOIN shippers s
ON s.shipper_id = o.shipper_id
ORDER BY customer_id;

-- exercise
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name AS status
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN shippers s
ON s.shipper_id = o.shipper_id
JOIN order_statuses os
ON o.status = os.order_status_id
