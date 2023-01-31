START TRANSACTION;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 3;
COMMIT;