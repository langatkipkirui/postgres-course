-- 127. UPPER, LOWER and INITCAP
-- To convert a string into uppercase, you will use postgres UPPER unction.
-- UPPER(string)

-- To convert a string into lower case, you use PostgreSQL function
-- lower (string)

-- The INITCAP function converts a string expression into proper case or title
-- case, which is the first letter of each word is in uppercase and the remain-
-- ing in lowercase

-- 1. Lets make a string and uppercase
SELECT UPPER('postgresql is amazing');

-- 2. Making specified fields from a table to Upper case
SELECT 
	UPPER(first_name) AS first_name,
	UPPER(last_name) AS last_name
FROM customers;

-- 3. Lower Case
SELECT LOWER('Aragchi') AS name

-- 4. InitCap
SELECT INITCAP('the world is changing at a lightning speed');

SELECT 
	INITCAP(
		CONCAT(first_name, ' ', last_name)
	) AS full_name
FROM customers
ORDER BY
	first_name;

select pg_sleep(10);g
show data_directory;
show log_directory;
SEELECT md5(random()::text) as stress_test;













