-- 130. SPLIT_PART function
--1. PostgreSQL SPLIT_PART() function splits a string on a specified delimeter and
-- returns the nth substring
SPLIT_PART(string, delimeter, position)

SELECT SPLIT_PART('1,2,3,4',',',2);
SELECT SPLIT_PART('ONE,TWO,THREE',',',1);
SELECT SPLIT_PART('A|B|C|D','|',2);

--2. Get the release year of all the movies
SELECT 
	movie_name,
	release_date,
	movie_lang,
	SPLIT_PART(release_date::text,'-',1) as release_year
FROM movies;