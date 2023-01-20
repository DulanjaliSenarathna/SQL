SELECT * FROM customers
WHERE last_name REGEXP 'field';

SELECT * FROM customers
WHERE last_name REGEXP '^field';

SELECT * FROM customers
WHERE last_name REGEXP 'field$';

SELECT * FROM customers
WHERE last_name REGEXP 'field|mac|rose';

SELECT * FROM customers
WHERE last_name REGEXP '^field|mac|rose';

SELECT * FROM customers
WHERE last_name REGEXP 'field$|mac|rose';

SELECT * FROM customers
WHERE last_name REGEXP '[gim]e';

SELECT * FROM customers
WHERE last_name REGEXP 'e[fmq]';

SELECT * FROM customers
WHERE last_name REGEXP '[a-h]e';

-- exercise

SELECT * FROM customers
WHERE first_name REGEXP 'elka|ambur';

SELECT * FROM customers
WHERE last_name REGEXP 'ey$|on';

SELECT * FROM customers
WHERE last_name REGEXP '^my' OR last_name REGEXP 'se';

SELECT * FROM customers
WHERE last_name REGEXP 'b[r|u]';