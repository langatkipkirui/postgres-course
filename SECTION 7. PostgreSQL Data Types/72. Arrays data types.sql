-- 72. Array data types

/*
1. Every data type has its own companion array type e.g.,
		- integer has an integer[] array type,
		- character has character[] array type

2. An array type is named by appending square brackets([]) to the data type name of the array
elements.
		variable []
*/

-- 1. Lets create a sample table

CREATE TABLE table_array(
id SERIAL,
name VARCHAR(100),
phones TEXT []  -- the array
)

-- 2. View the table_array
SELECT * FROM table_array

-- 3. Lets insert some data into the table_array
INSERT INTO table_array(name, phones)
VALUES
('Lucio', ARRAY ['254-720-478-543', '254-714-642-769']),
('Alice', ARRAY ['254-765-543-423', '254-722-705-213']);

-- 4. Picking the first index in the array of field phones
SELECT name, phones [1] FROM table_array

-- 5. Finding a value inside arrays
SELECT name, phones[2] FROM table_array
WHERE phones [2] = '254-722-705-213';




















