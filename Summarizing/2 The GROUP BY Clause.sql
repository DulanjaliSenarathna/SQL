-- single column 
SELECT client_id,
SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_sales DESC;

-- multiple columns
SELECT state,city,
SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c
USING (client_id)
GROUP BY state,city;

-- exercise
SELECT date,
pm.name AS payment_method,
SUM(amount)
FROM payments p
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id
GROUP BY date, payment_method
ORDER BY date;
