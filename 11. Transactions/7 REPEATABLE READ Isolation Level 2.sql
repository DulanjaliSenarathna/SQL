START TRANSACTION;
UPDATE customers
SET points = 40
WHERE customer_id = 1;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 1;
COMMIT;