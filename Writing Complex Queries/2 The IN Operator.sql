-- select * products that are not ordered
use sql_store;

SELECT * FROM products WHERE product_id NOT IN(
SELECT DISTINCT product_id 
FROM order_items);

-- exercise
use sql_invoicing;

SELECT * FROM clients
WHERE client_id NOT IN(
SELECT DISTINCT client_id
FROM invoices)


