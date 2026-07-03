-- 94. CREATE TYPE - Create a Composite Address Object

/*
Composite data types
1. List of field names with corresponding  data types
2. Used in a table as a column
3. Used in functions or procedures
4. Ca return multiple values, its a composite data types

 syntax
 CREATE TYPE name AS (fields column_properties)
*/

-- 1. Create a address composite data type
CREATE TYPE address AS (
	city VARCHAR(50),
	country VARCHAR(20)
)
-- 2. Lets use it in a table

CREATE TABLE companies (
	compo_id SERIAL PRIMARY KEY,
	address address
)

-- 3. Lets insert into that table
INSERT INTO companies (address) 
VALUES (ROW('Kampala', 'Uganda'))


-- 4. Lets view the data
SELECT * FROM companies

-- 5. We can a a single value from the composite column
-- (composite_column).field_name
SELECT (address).country FROM companies

SELECT (address).city FROM companies

-- 6. When you are dealing with multiple table use
-- (tablename.composite_column).field 
SELECT (companies.address).city FROM companies




