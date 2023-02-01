use newdb;
CREATE TABLE IF NOT EXISTS customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50),
birth_date DATE,
phone VARCHAR(50),
email VARCHAR(255) UNIQUE,
address VARCHAR(50),
city VARCHAR(50),
state CHAR(2),
points INT DEFAULT 0
);

DROP TABLE IF EXISTS customers;