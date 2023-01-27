-- select clients with atleast 2 invoices

-- with IN keyword
SELECT * FROM
clients WHERE client_id IN(
SELECT client_id
FROM invoices
GROUP BY client_id
HAVING COUNT(*) >= 2); 

-- with ANY keyword
SELECT * FROM
clients WHERE client_id = ANY(
SELECT client_id
FROM invoices
GROUP BY client_id
HAVING COUNT(*) >= 2); 