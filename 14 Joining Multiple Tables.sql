USE sql_store;

SELECT o.order_id,
o.order_date, c.first_name,c.last_name,os.name AS status
FROM customers c
JOIN orders o 
ON o.customer_id = c.customer_id
JOIN order_statuses os
ON o.status = os.order_status_id;

-- exercise
USE sql_invoicing;

SELECT p.date , p.invoice_id , p.amount, c.name AS Client , pm.name AS Method
FROM clients c
JOIN payments p
ON c.client_id = p.client_id
JOIN payment_methods pm
ON pm.payment_method_id = p.payment_method;