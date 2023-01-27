use sql_invoicing;

-- without all keyword - for subquery returns single value
SELECT * FROM invoices
WHERE invoice_total > (
SELECT MAX(invoice_total) FROM 
invoices
WHERE client_id = 3);

-- with all keyword -for subquery returns multi values

SELECT * FROM invoices
WHERE invoice_total > ALL (
SELECT invoice_total  FROM 
invoices
WHERE client_id = 3);

