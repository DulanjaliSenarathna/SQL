UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = due_date
WHERE invoice_id = 
				(SELECT client_id 
				FROM clients
				WHERE name = 'Myworks'); -- single column
                
UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = due_date
WHERE invoice_id IN
				(SELECT client_id 
				FROM clients
				WHERE state IN ('CA','NA')); -- multiple columns

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN
(SELECT customer_id
FROM customers 
WHERE points>3000);