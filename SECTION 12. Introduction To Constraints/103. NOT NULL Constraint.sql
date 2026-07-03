-- 103. NOT NULL constraints

/*
	1. NULL represents uknown or information missing

	2. NULL is not the same as an empty string or the number zero

	3. To check if the value is NULL or not, you use the IS NULL boolean 
	operator

	4. You create NOT NULL constraint on the table column as follows;

		CREATE TABLE table_name (
			column_name data_type NOT NULL,
			...
		);

*/


-- 1. Lets create a table table_not_null
CREATE TABLE table_not_null(
	id SERIAL PRIMARY KEY,
	tag TEXT NOT NULL
);

-- 2. Lets view the table data
SELECT * FROM table_not_null

-- 3. Lets try to insert some data into the table
-- If we insert NULL it postgres will reject the insertion
INSERT INTO table_not_null(tag)
VALUES (NULL)

-- insert a value
INSERT INTO table_not_null(tag)
VALUES ('Vitamins')

-- 4. The following are still considered as a data
	-- '' ===  value
	-- 0 === value

INSERT INTO table_not_null(tag)
VALUES ('')

INSERT INTO table_not_null(tag)
VALUES (0)

-- 5. Adding NOT NULL constraint to an existing table
-- 5.1 Lets create a sample table
CREATE TABLE table_nn(
	id SERIAL PRIMARY KEY,
	tag TEXT
)

-- 5.2 Lets view the data
SELECT * FROM table_nn

-- 5.3 How can we add NOT NULL constraint to tag in the table
ALTER TABLE table_nn
ALTER COLUMN tag SET NOT NULL


-- 5.4 Lets check if the constraint is applied
INSERT INTO table_nn (tag)
VALUES (NULL)

INSERT INTO table_nn (tag)
VALUES ('Nursing care')




