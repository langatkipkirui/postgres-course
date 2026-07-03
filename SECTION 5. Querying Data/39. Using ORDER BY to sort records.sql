-- LEC 39. USING ORDER BY TO SORT RECORDS
-- When you query data from a table the select statement returns rows in an unspecified order.
-- To sort the rows of the result set we use the ORDER BY clause in the SELECT statement.
-- syntax
/*
SELECT 
	column_list
FROM table_name
ORDER BY
	sort_expressions1 [ASC | DESC]
	sort_expression [ASC | DESC]
*/
-- 1. lets order the movies by ascending order of the release_date column
SELECT 	* FROM movies
ORDER BY 
	release_date ASC;

-- 1.1. If you do not specify sort order the ascending order is used e.g.
SELECT * FROM movies
ORDER BY 
	release_date;

-- 2. lets sort the movies by descending order of the releas_date column
SELECT * FROM movies
ORDER BY
	release_date DESC;

-- 3. sort based on multiple columns
-- sort all movies records by  their release_date in descending order, and movie_name ascending order
SELECT * FROM movies
ORDER BY 
	movie_name ASC,
	release_date DESC;

-- postgre evaluates the clauses in the select statement in the following order:
-- FROM, SELECT, and ORDER BY













	
