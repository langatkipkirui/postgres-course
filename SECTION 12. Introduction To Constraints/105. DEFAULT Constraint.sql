-- 105. DEFAULT constraint

-- 1. Set a default value of a column on a new table
-- <column>DEAFULT<value>

CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR (50),
	last_name VARCHAR (50),
	is_enable VARCHAR (2) DEFAULT 'Y'
);

-- 2. Lets views the data in the table
SELECT * FROM employees

-- 3. Lets insert some data into the table
INSERT INTO employees (first_name, last_name)
VALUES ('John', 'Doe')

-- 4. How can we set a default value to an existing table
-- ALTER TABLE tablename
-- ALTER COLUMN column SET DEFAULT value
ALTER TABLE employees
ALTER COLUMN  is_enable SET DEFAULT 'N'

-- 5. Lets insert some data
INSERT INTO employees (first_name, last_name)
VALUES ('Michael', 'Botero')


-- 3. Drop a default value
-- ALTER TABLE tablename
-- ALTER column DROP DEFAULT

ALTER TABLE employees
ALTER COLUMN is_enable DROP DEFAULT




























































