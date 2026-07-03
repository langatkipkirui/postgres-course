-- LEC 41. USING ORDER BY TO SORT ROWS BY EXPRESSIONS
-- 1. lets get all the records of the actors table
SELECT * FROM actors

-- 2. let calculate the length of the actor first_name with LENGTH function
SELECT
	first_name AS "First Name"
	LENGTH(first_name) AS "Len"
FROM actors

-- 2.1 Adding the alias of first_name and last_name as Full Name and getting the LENGTH
SELECT
	first_name || last_name AS "Full Name",
	LENGTH(first_name || last_name) AS "Len"
FROM actors

-- 3. lets sort the rows by length of the actor name in the descending order
SELECT
	first_name,
	LENGTH(first_name) AS len
FROM actors
ORDER BY
	len DESC;

-- 4. sort all the records by first_name, date_of_birth descending
SELECT * FROM actors
ORDER BY 
	first_name ASC,
	date_of_birth DESC;

-- DELETE FROM actors
-- WHERE actor_id > 147

























