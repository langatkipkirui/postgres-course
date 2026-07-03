-- 53. Using Logical operators
-- Logical operators
-- 1. Comparison
-- Equal To  =
-- Greater Than >
-- Less Than <
-- Greater Than or Equal To >=
-- Less Than or Equal To <=
-- Not Equal To <>

-- They are all generally used with numeric data types, but we can use operators
-- with other types too

-- 1. Get all movies where movie length is greater than 100
SELECT * FROM movies
WHERE
	 movie_length>100
ORDER BY movie_lang;

-- 2. Get all movies where movie length is greater than and equal to 100
SELECT * FROM movies
WHERE 
	movie_length>=100
ORDER BY movie_length;


-- 3. Get all the movies where movie length is less than 99
SELECT * FROM movies
WHERE 
	movie_length<99
ORDER BY movie_length DESC;


-- 4. Get all the movies where movie length is less than or equal to 99
SELECT * FROM movies
WHERE 
	movie_length<=99
ORDER BY movie_length DESC;

-- 5. Can we work with dates data types
-- When querying for dates, it is important to first take a look at how the date is
-- stored in the table you are querying i.e. YYYY-MM-DD etc
-- 5.1. Get all movies where release date is greater than 2000
SELECT * FROM movies
	WHERE release_date > '2001-12-31'
ORDER BY release_date
-- 6. we cannot get results without using quotes for date

-- 7. How without using text data types (like VARCHAR etc)
-- get all movies which is greater than English
SELECT * FROM movies
WHERE movie_lang>'English'
ORDER BY movie_lang

-- so postgresql calculate the this in a alphabetical way rather than string order

-- 8. Get all movies that are not in English Language
SELECT * FROM movies
WHERE 
	movie_lang <> 'English'
ORDER BY movie_lang;
-- we can use != for the same:
SELECT * FROM movies
WHERE 
	movie_lang != 'English'
ORDER BY movie_lang;

-- 9. Can we omit quotes when using numerical values
SELECT * FROM movies
WHERE movie_length>'100'
-- this means we can use or omit the quotes when using numerical values












