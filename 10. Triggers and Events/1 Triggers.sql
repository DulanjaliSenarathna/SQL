DELIMITER $$
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
    UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    END $$
    DELIMITER ;

INSERT INTO payments 
VALUES (DEFAULT,5,3,'2019-01-31',10000,1);

-- exercise - create a trigger that fired when we delete a payment

DELIMITER $$
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
    BEGIN
    UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    END $$
    DELIMITER ;

DELETE from payments
WHERE payment_id = 15;
