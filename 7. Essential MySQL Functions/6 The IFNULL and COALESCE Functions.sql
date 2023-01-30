use sql_store;

SELECT 
order_id,
IFNULL(shipper_id,'Not Assigned') AS shipper
FROM orders;

SELECT 
order_id,
COALESCE(shipper_id, comments,'Not Assigned') AS shipper -- if shipper id is null, return comment, if comment is also null, return the 'Not Assigned'
FROM orders;

-- exercise
SELECT 
CONCAT(first_name , ' ', last_name) AS customer,
IFNULL(phone,'Unknown') AS phone
FROM 
customers;

