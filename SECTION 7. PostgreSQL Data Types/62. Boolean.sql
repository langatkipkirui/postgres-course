-- 62. Boolean 
/*
	1. PostgreSQL supports a single Boolean data type: BOOLEAN that can have three values
		TRUE
		FALSE
		NULL

	Following are some valid literals for boolean values in PostgreSQL
	--must be enclosed in single quotes except for true and false
	TRUE         FALSE
   --------    --------- 
   'true'       'false'
    't'          'f'
   'yes'         'no'
    'y'          'n'
    '1'          '0'
*/

-- 1. Lets create a sample table called 'table_boolean'
CREATE TABLE table_boolean(
	product_id SERIAL PRIMARY KEY,
	is_available BOOLEAN NOT NULL
);

-- 2. Lets insert some data
INSERT INTO table_boolean (is_available) 
VALUES (true)
INSERT INTO table_boolean (is_available) 
VALUES (false)
INSERT INTO table_boolean (is_available) 
VALUES ('t')
INSERT INTO table_boolean (is_available) 
VALUES ('f')
INSERT INTO table_boolean (is_available) 
VALUES ('yes')
INSERT INTO table_boolean (is_available) 
VALUES ('no')
INSERT INTO table_boolean (is_available) 
VALUES ('y')
INSERT INTO table_boolean (is_available) 
VALUES ('n')
INSERT INTO table_boolean (is_available) 
VALUES ('1')
INSERT INTO table_boolean (is_available) 
VALUES ('0')

-- So this all are turned into boolean values
SELECT * FROM table_boolean

-- 3. Lets do some condition search 
SELECT * FROM table_boolean
WHERE is_available=TRUE

SELECT * FROM table_boolean
WHERE is_available='1'
 -- if you use =1 which is integer: it will throw an err 
 -- because and boolean is not  equal to integer

-- 4. Using NOT for conditions
-- when we do not specify the condition all the true values are returned 
SELECT * FROM table_boolean
WHERE is_available
-- when we use NOT we get the opposite of truthy values which is falsy values
SELECT * FROM table_boolean
WHERE NOT is_available

-- 6. Set default values for boolean columns
ALTER TABLE table_boolean
ALTER COLUMN is_available
SET DEFaULT 'true'

-- So if we do insert a a product_id into the table without is_available the default value
-- will be used
INSERT INTO table_boolean (product_id) VALUES(13)











