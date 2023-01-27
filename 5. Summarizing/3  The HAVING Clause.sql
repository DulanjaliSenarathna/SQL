
SELECT client_id,
SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
HAVING total_sales > 500;


SELECT client_id,
SUM(invoice_total) AS total_sales,
COUNT(*) AS number_of_invoices 
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices>5 ;

-- exercise
use sql_store;
SELECT c.customer_id,
c.first_name,
c.last_name,
SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
JOIN orders o
USING (customer_id)
JOIN order_items oi
USING (order_id)
WHERE state = 'VA'
GROUP BY c.customer_id,c.first_name,c.last_name
HAVING total_sales > 100;


