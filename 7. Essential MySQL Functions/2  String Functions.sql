SELECT LENGTH('sky');
SELECT UPPER('sky');
SELECT LOWER('SKY');
SELECT LTRIM('   SKY'); -- left trim
SELECT RTRIM('SKY    '); -- right trim
SELECT TRIM('  SKY    ');
SELECT LEFT('Dulanjali',3);
SELECT RIGHT('Dulanjali',3);
SELECT SUBSTRING('Kingergarten',3,5); -- 3 - start position, 5- length , 5 is optional
SELECT LOCATE('n','Dulanjali'); -- case insencitive
SELECT LOCATE('q','Dulanjali'); -- search a letter that is not in word, return 0
SELECT LOCATE('jali','Dulanjali'); --  also can search a word
SELECT REPLACE('Dulanjali','Dul','Bul');
SELECT CONCAT('first','last');

use sql_store;

SELECT CONCAT(first_name, '',last_name)  AS full_name
FROM customers;