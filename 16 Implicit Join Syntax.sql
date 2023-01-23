-- explicit join 

SELECT * 
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- implicit join 
SELECT *
FROM customers c, orders o
WHERE c.customer_id = o.customer_id;