-- web/desktop application
CREATE USER moon_app IDENTIFIED BY '1234';
GRANT SELECT,INSERT,UPDATE,DELETE,EXECUTE ON sql_store.*
TO moon_app;

-- admin
GRANT ALL
ON sql_blog.* -- all the tables in sql_blog db
TO dula;

GRANT ALL
ON *.* -- all the dbs and all the tables
TO dula;