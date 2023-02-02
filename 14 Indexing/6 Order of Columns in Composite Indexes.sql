EXPLAIN SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

CREATE INDEX idx_state_lastname ON customers (state, last_name); 
CREATE INDEX idx_lastname_state ON customers (last_name,state); 

EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_lastname_state)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_state_lastname)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';

