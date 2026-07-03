-- 52. Order of execution of WHERE, SELECT and ORDER BY clauses
-- How SQL execute the WHERE in the SELECT postgreSQL evaluates the WHERE clause
-- after the FROM clause and before the SELECT and ORDER BY clause

-- FROM -> WHERE -> SELECT -> ORDER BY

SELECT * FROM movies
WHERE 
	movie_lang='English'
	OR movie_lang='Chinese'
ORDER BY
 	movie_lang;