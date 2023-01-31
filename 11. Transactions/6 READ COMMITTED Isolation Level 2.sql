START TRANSACTION;
UPDATE customers
SET points = 40
WHERE customer_id = 1;
UPDATE customers
SET points = 30
WHERE customer_id = 1;
COMMIT;