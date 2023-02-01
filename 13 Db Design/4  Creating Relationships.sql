CREATE TABLE IF NOT EXISTS orders(
order_id INT PRIMARY KEY,
customer_id INT NOT NULL,
FOREIGN KEY fk_orders_customers (customer_id) REFERENCES customers(customer_id) ON UPDATE NO ACTION ON DELETE NO ACTION
);