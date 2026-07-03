-- LEC.37 ADDING ALIAS TO COLUMN NAME
/*Often technical language of the database will differ from the common language
of a business
*/
--1. Lets get all the records from actors table and review it from non-technical pov
SELECT * FROM actors

--2. Make and alias for the first_name as firstName of actors table
/*
SELECT column AS alias_name FROM table_name
*/
-- example 2.1
SELECT first_name AS firstName FROM actors
/*by default all the aliases will be in lowercase in postgre. so when you add a capital
without quotes the alias will be in lowercase*/

-- example 2.2 -> to make the alias exactly the same as you write use double quotes
SELECT first_name AS "firstName" FROM actors

-- 3. Column aliases that contain spaces, we will use quotes.
-- * we will make an alias of firs_name as First Name of the sctors table
-- * We are making a column with much better readability with atext vs column
-- * we are using quotes to when we have more than one word
-- * If mixed-case letters or special symbols of spaces are required quotes must be provided
--example 3.1
SELECT first_name AS "First Name" FROM actors

-- 4. Make alias for more columns e.g mmovie_name and movie_lang of the movie table
SELECT movie_name AS "Movie Name", movie_lang AS "Movie Language" FROM movies

-- if you have alot of columns select them in seperate lines for more readability
SELECT
	movie_name AS "Movie Name", 
	movie_lang AS "Movie Language"
FROM movies

-- 5. The AS keyword is optional.
SELECT
	movie_name  "Movie Name", 
	movie_lang  "Movie Language"
FROM movies
-- but prefer to use it

-- 6. Can i use '' , single quotes when making an alias
SELECT first_name AS 'FirstName' FROM actors
-- so no: you cannot use single quote when making an alias


-- columns aliases can be used for derived column
-- using aliases is always helpful if you want the query more presentable and readable











