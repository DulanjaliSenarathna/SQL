SHOW EVENTS LIKE 'yearly%';
DROP EVENT IF EXISTS yearly_delete;

DELIMITER $$
ALTER EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
	-- AT '2023-02-01' - execute only once
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
    DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
    END$$
    DELIMITER ;
    
ALTER EVENT yearly_delete_stale_audit_rows DISABLE; -- can be ENABLE