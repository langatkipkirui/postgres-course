-- LEC 40. USING ORDER BY WITH ALIAS COLUMN NAME
-- 1. lets first select the first_name and last_name from the actors table
SELECT 
	first_name,
	last_name 
FROM 
actors;

-- 2. Lets make and alias of the lastname as surname
SELECT
	first_name,
	last_name AS surname
FROM actors;
-- 2.1. AS keyword is not a must to create aliases so this can be writted as
SELECT
	first_name,
	last_name surname
FROM actors;

-- 3. lets sort the rows by last_name
SELECT 
	first_name AS "First Name",
	last_name AS "Last Name"
FROM actors
ORDER BY 
	last_name ASC;
-- 3.1 we can also leave the ASC keyword as it is default
SELECT 
	first_name AS "First Name",
	last_name AS "Last Name"
FROM actors
ORDER BY 
	last_name;
-- 3.2 Lets sort by DESC order
SELECT 
	first_name AS "First Name",
	last_name AS "Last Name"
FROM actors
ORDER BY 
	last_name DESC;

-- 4 Now use the alias name in ORDER BY clause
SELECT 
	first_name AS "First Name",
	last_name AS "Surname"
FROM actors
ORDER BY 
	"Surname";

-- 4.1 In descending order
SELECT 
	first_name AS "First Name",
	last_name AS "Surname"
FROM actors
ORDER BY 
	"Surname"  DESC;















