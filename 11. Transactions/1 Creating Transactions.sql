use sql_store;

START TRANSACTION;

INSERT INTO orders(customer_id,order_date,status)
VALUES (1,'2019-01-01',1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(),1,1,1);

COMMIT;

START TRANSACTION;

INSERT INTO orders(customer_id,order_date,status)
VALUES (1,'2019-01-01',1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(),1,1,1);

ROLLBACK; -- use for error checking , rollback our transaction and undo the all changes

SHOW VARIABLES LIKE 'autocommit'