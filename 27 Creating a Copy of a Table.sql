-- copy table
CREATE TABLE orders_archived AS
SELECT * FROM orders;

-- use select statement as a sub query in insert statement
INSERT INTO orders_archived
SELECT *
FROM orders 
WHERE order_date< '2019-01-01';

-- exercise
use sql_invoicing;

-- create table invoices_archived
CREATE TABLE invoices_archived
SELECT i.invoice_id, i.number, c.name AS client, i.invoice_total, i.payment_total, invoice_date, i.payment_date, i.due_date
 FROM
invoices i
JOIN clients c
ON i.client_id = c.client_id WHERE  payment_date IS NOT NULL ;
