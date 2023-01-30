SELECT DATE_ADD(NOW(),INTERVAL 1 DAY);
SELECT DATE_ADD(NOW(),INTERVAL 1 YEAR);
SELECT DATE_ADD(NOW(),INTERVAL -1 YEAR);
SELECT DATE_SUB(NOW(),INTERVAL 1 YEAR);
SELECT DATEDIFF('2022-01-05','2020-01-01'); -- return difference in dates only. 1st value should largest, otherwise return negative values
SELECT DATEDIFF('2022-01-05 09:00','2020-01-01 17:00');
SELECT TIME_TO_SEC('09:00') ;-- retun time in seconds since 
SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('08:00') -- get time diffenrence between 2 times