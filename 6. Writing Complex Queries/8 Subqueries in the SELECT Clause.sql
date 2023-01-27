use sql_invoicing;

-- way 1
SELECT 
invoice_id, invoice_total , (
SELECT AVG(invoice_total) 
FROM invoices
) AS average ,
invoice_total -  (
SELECT AVG(invoice_total) 
FROM invoices
) AS difference
FROM invoices;

-- way 2
SELECT 
invoice_id, invoice_total , (
SELECT AVG(invoice_total) 
FROM invoices
) AS average ,
invoice_total -  (
SELECT average
) AS difference
FROM invoices;

-- exercise

SELECT client_id, name, 
(
SELECT SUM(invoice_total) 
FROM invoices
WHERE client_id = c.client_id
) AS total_sales ,( 
SELECT AVG(invoice_total)
FROM invoices) AS average,
((SELECT total_sales) - (SELECT average))
AS difference
FROM clients c
