use sql_invoicing;
SELECT state, city,
SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients c 
USING (client_id)
GROUP BY state,city WITH ROLLUP;

-- exercise
SELECT 
	pm.name AS payment_method,
	SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY name WITH ROLLUP