-- select clients that have an invoice

-- without EXISTS keyword
SELECT * FROM 
clients WHERE client_id IN (
SELECT DISTINCT client_id 
FROM invoices 
);

-- with EXISTS keyword
SELECT * FROM 
clients c 
WHERE EXISTS (
SELECT  client_id 
FROM invoices
WHERE client_id = c.client_id  
);

-- execise
-- find the products that have never been ordered
use sql_store;

-- without exists keyword
SELECT * FROM 
products 
WHERE product_id  NOT IN (
SELECT product_id
FROM order_items
);
-- with exists keyword
SELECT * FROM 
products p 
WHERE NOT EXISTS (
SELECT product_id
FROM order_items
WHERE product_id = p.product_id
)