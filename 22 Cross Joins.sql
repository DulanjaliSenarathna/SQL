use sql_store;

-- explicit 
SELECT c.first_name, p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;

-- implicit
SELECT c.first_name, p.name AS product
FROM customers c ,products p
ORDER BY c.first_name;

-- exercise explicit
SELECT *
FROM shippers s
CROSS JOIN products p
ORDER BY shipper_id;
 -- implicit
SELECT *
FROM shippers s ,products p
ORDER BY shipper_id;


