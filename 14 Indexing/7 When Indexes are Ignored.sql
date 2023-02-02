EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' OR points > 1000; -- should scan 1010 records

CREATE INDEX idx_points ON customers (points);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' 
UNION
SELECT customer_id FROM customers
WHERE points > 1000; 

EXPLAIN SELECT customer_id
FROM customers WHERE points + 10 > 2010;  -- should scan 1010 records


EXPLAIN SELECT customer_id
FROM customers WHERE points  > 2000; -- same as above query, but only scan 3 rows