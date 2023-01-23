SELECT * 
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT order_id,first_name,last_name
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT order_id, customers.customer_id,first_name,last_name
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT order_id, c.customer_id,first_name,last_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- exercise

SELECT order_id,o.product_id, quantity, o.unit_price, name
FROM order_items o
JOIN products p
ON o.product_id = p.product_id