
-- these users can access any of these methods
CREATE USER dula@127.0.0.1 ;-- ip address
CREATE USER dula@localhost;
CREATE USER dula@domainname; -- ex : codewithmosh.com
CREATE USER dula@'%.domainname'; -- for sub-domains
-- no restrictions
CREATE USER dula IDENTIFIED BY '1234' ;