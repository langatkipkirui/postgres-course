-- 145. AVG Average function

-- Calculates average value on a set returns 1 value
-- AVG(column_name)
-- SELECT AVG(column_name) FROM table_name

-- 1. Get average movie_length for all movies
-- First, lets look at all movies data and structure of 
-- movie_length
SELECT * FROM movies;


SELECT movie_length FROM movies
ORDER BY movie_length;

SELECT AVG(movie_length) FROM movies

-- AVG will return the numeric type value as a result

-- 2. Get average movie_length for all english based movies
SELECT AVG(movie_length) FROM movies
WHERE movie_lang='English';

-- 3. Get average movie_length for all english baseed movies
-- Using AVG with DISTINCT
-- WITHOUT DISTINCT
SELECT 
	AVG(movie_length)
FROM movies
WHERE movie_lang='English'


-- WITH DISTINCT
-- Use only unique values
SELECT 
	AVG(DISTINCT movie_length)
FROM movies
WHERE movie_lang='English';


-- 4. Can I run an average on movie names?

SELECT 
	AVG(movie_name)
FROM movies;

-- 5. Using AVG and SUM functions together
-- Get average and sum for all english based movies

SELECT
	AVG(movie_length) AS "Average",
	SUM(movie_length) AS "Sum"
FROM movies
WHERE movie_lang='English'

-- 6. How AVG handle NULL values
-- Lets create a quick table called 

CREATE TABLE demo_avg(
	num INT
)

INSERT INTO demo_avg(num)
VALUES(1),(2),(3),(4),(NULL)


-- lets get all the records
SELECT * FROM demo_avg;

-- lets run the avg on num column
SELECT AVG(num) FROM demo_avg;


-- AVG will ignore all the null values


































