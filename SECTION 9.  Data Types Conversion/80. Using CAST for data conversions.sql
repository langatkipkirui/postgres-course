-- 80. Using CAST for data conversions
-- PostgreSQL CAST operator is used to convert a value of one type to another data type

CAST (expression AS target_data_type)

/*
expression			Can be a constant, a table column, or an expression 

target_data_type	Boolean
					Character (char, varchar, text)
					Numeric (integer, floating point number)
					array
					UUID
					hstore (stores as key/value pairs)
					temporal type(date, time,timestamp, interval)

*/

-- 1. String to integer conversion
SELECT 
	CAST ('10' AS INTEGER);

-- when we use add letters to the string postgre will throw an error
SELECT 
	CAST ('10n' AS INTEGER);

-- 2. String to data conversion
SELECT 
	CAST('2021-03-27' AS DATE) AS "Date Style One",
	CAST('2021-JUNE-14' AS DATE) AS "Date Style Two";

-- 3. String to Booolean
SELECT 
	CAST('true' AS BOOLEAN),
	CAST('false' AS BOOLEAN),
	CAST('T' AS BOOLEAN),
	CAST('F' AS BOOLEAN);

-- 4. is equal to false and 1=true
SELECT
	CAST('0' AS BOOLEAN),
	CAST('1' AS BOOLEAN);

-- 5. String to double precision
SELECT 
	CAST('14.54637' AS DOUBLE PRECISION)

-- You cana also use the falling syntax for conversion directly too
expression::type

SELECT
	'10' :: INTEGER,
	'2023-01-23' :: DATE,
	'27-04-2020' :: DATE,
	'2023-March-23' :: DATE;

-- 6. String to timestamp
SELECT 
	'23-07-2021:10:30:10.45'::TIMESTAMP


-- 7. String to timestamp with timezone
SELECT 
	'2021-06-27:10:30:10.45'::TIMESTAMPTZ


-- 8. String to interval
SELECT
	'10 minute'::INTERVAL,
	'4 hour'::INTERVAL,
	'2 days'::INTERVAL,
	'3 week'::INTERVAL,
	'7 month'::INTERVAL;


-- You can also select a value from a table as a coverted data type e.g.
SELECT CAST(rating AS BOOLEAN) FROM ratings
WHERE rating_id=5








	