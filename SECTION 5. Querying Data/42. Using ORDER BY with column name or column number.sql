-- LEC 42. USING ORDER BY WITH COLUMN NAME OR COLUMN NUMBER
-- 1. let view all the records in the actor table
SELECT * FROM actors

-- 2. sort all the records by first_name, date_of_birth descending
SELECT * FROM actors
ORDER BY 
	first_name ASC,
	date_of_birth DESC;

-- 3.  Now use column number instead of column name for sorting
SELECT last_name, first_name, date_of_birth FROM actors
ORDER BY 
	1 DESC,
	3 ASC;
















	