SELECT *
FROM customers
WHERE points>3000 ;

SELECT *
FROM customers
WHERE state = 'VA' ;

SELECT *
FROM customers
WHERE state = 'va' ;

SELECT *
FROM customers
WHERE state != 'VA' ;

SELECT *
FROM customers
WHERE state <> 'VA' ;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' ;

SELECT * 
FROM orders
WHERE order_date >= '2023-01-01';