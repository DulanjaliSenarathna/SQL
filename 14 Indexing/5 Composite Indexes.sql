use sql_store;
CREATE INDEX idx_state_points ON customers (state,points);
SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;

SHOW INDEXES IN customers;
DROP INDEX idx_state ON customers;
DROP INDEX idx_points ON customers;