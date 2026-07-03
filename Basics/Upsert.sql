-- lec.34 USING UPSERT
-- The idea is that when you insert a new row into the table, postgreSQL will
-- update the row if it already exists 

-- syntax
-- INSERT INTO table_name (column_list)
-- VALUES (value_list)
-- ON CONFLICT target action 

-- for 'action'
-- ON CONFLICT
-- DO NOTHING --means do nothing if the row already exists in the table.
-- DO UPDATE SET column_1 = value_1  --update some fields in the table
-- WHERE condition

-- create a table called user_table
-- CREATE TABLE users_table(
-- 	id SERIAL UNIQUE PRIMARY KEY,
-- 	user_name TEXT,
-- 	email TEXT UNIQUE,
-- 	last_login TIMESTAMP
-- );

-- 1. Insert some sample data and doing nothing if the email already exists
-- INSERT INTO users_table (email, user_name, last_login)
-- VALUES ('madelline@gmail.com', 'Monnet M', NOW())
-- ON CONFLICT (email)
-- DO NOTHING;

-- 2. Update the user_name and last_login if the email already exists
-- INSERT INTO users_table (email, user_name, last_login)
-- VALUES ('madelline@gmail.com', 'Monnet Madelline', NOW())
-- ON CONFLICT (email)
-- DO UPDATE SET 
-- 	user_name = EXCLUDED.user_name,
-- 	last_login = EXCLUDED.last_login;


-- lec.35 Select data from a table

-- 1. select all data from a table
-- syntax:
-- SELECT * FROM table_name 

-- Getting all the record in the movies table
-- SELECT * FROM movies
-- Getting all the record in the actors table
-- SELECT * FROM actors
/* NOTES 
	1.1 the table_name is not case sensitive but it is highly recommended
	to use the actual name

	1.2 SQL keywords are case insensitive. This means that you can write SELECT as select
	--> we will use the upper case to make it more readable
	-- example:
	-- select * from actors

	1.3 PostgreSQL evaluates the FROM clause before the SLECT clause in the SELECT statement

	1.4 It is not good to use the *  in SELECT - * means all the data
	---> this is because using * in a table with alot of columns affect db performance
	---> is also affect the applications perfomance - retrieving unnecessary data from db increase
	traffic between the database server and app's server which will slow the app's perfomance
	---> so use it * wisely

	1.5 use explicit columns names in SELECT statements
	*/


-- lec.36 Selecting specific columns from table
-- syntax
-- SELECT column_1, column_2 FROM table_name
-- example 1.1 select one column from the movies table
-- SELECT movie_name FROM movies
-- example 1.2 select multiple columns from the movies table
-- SELECT movie_name, movie_length FROM movies

-- example 2.1 select one column from the actors table
-- SELECT first_name FROM actors

-- example 2.2 select multiple columns from the actors table
-- SELECT date_of_birth, add_date FROM actors

-- > Note using explicit columns is a good practise and produce less load on the server end





















