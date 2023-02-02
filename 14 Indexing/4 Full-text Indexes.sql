use sql_blog;
CREATE FULLTEXT INDEX idx_title_body ON posts (title,body);

-- default mode
SELECT *
FROM posts 
WHERE MATCH(title,body) AGAINST ('react redux' );

-- boolean mode (can exclude / include / exact phrase search)
SELECT *
FROM posts 
WHERE MATCH(title,body) AGAINST ('react -redux' IN BOOLEAN MODE );

SELECT *
FROM posts 
WHERE MATCH(title,body) AGAINST ('react -redux +form' IN BOOLEAN MODE );

-- exact phrase search
SELECT *
FROM posts 
WHERE MATCH(title,body) AGAINST ('"handling a form"' IN BOOLEAN MODE );