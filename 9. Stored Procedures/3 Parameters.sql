DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
SELECT * FROM clients c
WHERE c.state = state;
END$$
DELIMITER ;

CALL get_clients_by_state('CA');

-- exercise
-- write a stored procedure to return invoices for a given client(wrote with mysql auto genarator)

