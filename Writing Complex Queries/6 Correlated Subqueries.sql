-- select employees whose salary is above the average in their office

use sql_hr;

SELECT * 
FROM employees e
WHERE salary >
(
	SELECT AVG(salary) AS avg
    FROM employees
    WHERE office_id = e.office_id
);

-- exercise 
-- get invoices that are larger than the client's average amount
use sql_invoicing;

SELECT *
FROM invoices i 
WHERE invoice_total >(
SELECT AVG(invoice_total)
FROM invoices
WHERE client_id = i.client_id
)