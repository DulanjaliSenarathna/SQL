SHOW VARIABLES LIKE 'transaction_isolation';
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- set transaction_isolation for current transaction
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- set transaction_isolation for transactions in current session
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- set transaction_isolation for all new transactions in all sessions