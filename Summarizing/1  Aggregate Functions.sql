use sql_invoicing;
SELECT 
MAX(invoice_total) AS Maximum,
MIN(invoice_total) AS Minimum,
SUM(invoice_total) AS Summary,
AVG(invoice_total) AS Average,
COUNT(invoice_total) AS number_of_invoices,
SUM(invoice_total * 1.1) AS total2,
COUNT(payment_date) AS number_of_payments,
COUNT( distinct client_id) AS number_of_records
FROM invoices
WHERE invoice_date > '2019-07-01';

-- all of above is valid only not null values.
-- exercise
SELECT 
'First hlf of 2019' AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 
'Second hlf of 2019' AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
SUM(invoice_total-payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT
'Total' AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
SUM(invoice_total-payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31'