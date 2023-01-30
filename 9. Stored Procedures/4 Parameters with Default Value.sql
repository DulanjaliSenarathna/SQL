DROP PROCEDURE IF EXISTS get_clients_by_state1(state CHAR(2))
DELIMITER $$
CREATE PROCEDURE get_clients_by_state1(state CHAR(2))
BEGIN
IF state IS NULL THEN
	SET state = 'CA';
END IF;
SELECT * FROM clients c
WHERE c.state = state;
END$$
DELIMITER ;

CALL get_clients_by_state1(NULL);

DELIMITER $$
CREATE PROCEDURE get_clients_by_state2(state CHAR(2))
BEGIN
IF state IS NULL THEN
	SELECT * FROM clients;
ELSE
	SELECT * FROM clients c
	WHERE c.state = state;
END IF;
END$$
DELIMITER ;

CALL get_clients_by_state2(NULL);

-- rewrite above2nd example
DELIMITER $$
CREATE PROCEDURE get_clients_by_state3(state CHAR(2))
BEGIN
	SELECT * FROM clients c
	WHERE c.state = IFNULL(state ,c.state);
END$$
DELIMITER ;

CALL get_clients_by_state3(NULL);

-- exercise
-- create stored procedure called get_payments with 2 params => client_id - INT , payment_method_id = TINYINT
CALL get_payments_exercise(1,NULL);
CALL get_payments_exercise(NULL,2);


