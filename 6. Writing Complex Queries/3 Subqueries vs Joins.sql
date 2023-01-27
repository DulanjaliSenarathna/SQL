SELECT * FROM clients
WHERE client_id NOT IN(
SELECT DISTINCT client_id
FROM invoices);

-- re write above with join

SELECT * FROM clients c
LEFT JOIN invoices i
USING (client_id)
WHERE invoice_id IS NULL;

-- exercise
use sql_store;

-- using sub query
SELECT customer_id, first_name , last_name FROM customers WHERE customer_id IN (
SELECT customer_id FROM orders o
JOIN order_items oi USING(order_id)
WHERE product_id = 3);

-- using join
SELECT distinct o.customer_id, c.first_name, c.last_name
FROM orders o
JOIN order_items oi
USING (order_id)
JOIN customers c
USING (customer_id)
WHERE product_id = 3;






 

