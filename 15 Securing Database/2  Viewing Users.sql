SELECT * FROM mysql.user;

-- drop user
CREATE USER dula@dula.com IDENTIFIED BY '1234';
DROP USER dula@dula.com;

-- changing pw
SET PASSWORD FOR dula = '12345';