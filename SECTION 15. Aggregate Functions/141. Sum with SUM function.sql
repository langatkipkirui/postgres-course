-- 141. Sum with SUM function

-- SELECT SUM(columnname) FROM table_name

-- 1. Lets look at al movies revenues records
SELECT * FROM movies_revenues;

-- 2. Get total domestic revenues for all movies
SELECT
	 sum(revenues_domestic)
FROM movies_revenues;

-- 3. Get the total domestic revenues for all movies where domestic is greater
-- than 200
SELECT
	 sum(revenues_domestic)
FROM movies_revenues
WHERE revenues_domestic>200;

-- 4. Find the total movie length of all english language movies
SELECT
	 sum(movie_length)
FROM movies
WHERE movie_lang='English'


-- 5. Can I use all movies names?
SELECT 
	SUM(movie_name)
FROM movies

-- only numbers are allowed

-- 8. Using SUM with DISTINCT
-- SUM(DISTINCT expression)

-- Without DISTINCT
-- Get total domestic revenues for all movies

SELECT 
	SUM(revenues_domestic)
FROM movies_revenues;

-- 9 With DISTINCT
-- Get total  domestic revenues
SELECT 
	SUM(DISTINCT(revenues_domestic))
FROM movies_revenues;



/*ALTER TABLE movies
ALTER COLUMN movie_length TYPE INT
USING movie_length::integer;*/











