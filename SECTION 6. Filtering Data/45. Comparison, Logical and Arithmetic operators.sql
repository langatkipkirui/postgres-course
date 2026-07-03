-- LEC 45. COMPARISON, LOGICAL AND ARITHMETIC OPERATORS
-- Three types of operators
-- operators are special keywords that we use in the conjuction with SQL clauses
/*
	* compare values of fields,
	* select subset of field
	* perform arithmetic operations
*/
-- 1. COMPARISON 
-- equal to ---------> =
-- greater than -----> >
-- less than --------> <
-- greater than or equal to >=
-- less than or equal to <=
-- not equal to <>

-- 2. LOGICAL 
-- AND
-- OR
-- IN
-- BETWEEN

-- 3. ARITHMETIC
-- Addition -----> +
-- Subtraction --> -
-- Division ------> /
-- Multiply ------> *
-- Modulo -------->  %


-- 1. WHERE operator
/*
	WHERE clause allows us to add specific conditions to our queries
	Using WHERE, we can limit the results of the data that satisfies our 
	conditions
	Filter rows on data by running conditions 
	We use the WHERE clause in the conjuction with operators (Comparison, Logical and arithmetic)

-- example
SELECT 
	column_list
FROM table_name
WHERE 
	conditions
*/

-- With Operators (AND|OR)
-- using a single condtion
-- 1. Get all English language movies
-- We will filter based on text value
-- when using text as criteria in the WHERE clause, the text value(s) must be sorrounded 
-- by single quotes e.g. movie_lang='English'
SELECT * FROM movies
WHERE
	movie_lang = 'English'

-- 2. Get all Japanese language movies
SELECT * FROM movies
WHERE 
	movie_lang = 'Japanese'

-- 3. Use multiple conditions
-- Using the AND and OR operators with two seperate fields
SELECT * FROM movies
	WHERE movie_lang='English'
	AND age_certificate = '18'

-- 4. Let use the japanese language to do the same
SELECT * FROM movies
WHERE 
movie_lang='Japanese'
AND age_certificate='18'

-- 2. OR Operator
-- The Operator allows you to find the records that match ANY of the criteria you ask for.
-- Get all the the Englidh language or Chinese movies
SELECT * FROM movies
WHERE 
	movie_lang='English'
	OR
	movie_lang='Chinese'
ORDER BY movie_lang;  --we can also sort in ascending/desc order

-- Get all the English kanguage AND director id equal to 8
SELECT * FROM movies
	WHERE movie_lang='English'
	AND director_id='8';

-- 6. Combining the AND and OR Conditions
-- Get all English OR Chinese movies AND movies with age_certificate equall to 12
-- Without parenthesis
SELECT * FROM movies 
WHERE 
	movie_lang='English'
	OR movie_lang='Chinese'

ORDER BY movie_lang

-- Adding AND 
SELECT * FROM movies 
WHERE 
	(movie_lang='English'
	OR movie_lang='Chinese')
	AND age_certificate='12'
ORDER BY movie_lang




