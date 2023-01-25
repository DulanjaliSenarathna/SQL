-- parent table
INSERT INTO orders (customer_id, order_date, status)
VALUES (1,'2019-01-02',1);

-- child table (1 order have 2 order items)
INSERT INTO order_items
VALUES (LAST_INSERT_ID(),3,2,5.2),(LAST_INSERT_ID(),4,2,5.2);