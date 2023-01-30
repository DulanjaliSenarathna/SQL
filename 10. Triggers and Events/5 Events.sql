SHOW VARIABLES LIKE 'event%';
SET GLOBAL event_scheduler = OFF; -- or on

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
	-- AT '2023-02-01' - execute only once
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
    DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
    END$$
    DELIMITER ;