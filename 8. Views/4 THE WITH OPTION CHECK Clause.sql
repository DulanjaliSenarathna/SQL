UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3; 

UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3; -- get error, because of WITH CHECK OPTION
