-- 106. PRIMARY KEY Constraint
/*
1. Uniquely identifies each record in a database table

2. There can be more UNIQUE columns, but only one PRIMARY KEY in a table

3. A primary key is a field in a table, which uniquely identifies each row
/record in a database table

4. Primary keys must contain unique values

5. A table can ahave only one primary key, which may consist of single or
multiple fields 

6. When multiple fields are used as a primary, they are called composite 
key

7. They are same as UNIQUE NOT NULL

8. Synatx for creatig PRIMARY KEY constraint on a single column
	CREATE TABLE table_name(
		column_name data_type PRIMARY KEY
		...
	)
*/

-- 1. Lets create a table
CREATE TABLE table_items(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(100) NOT NULL,
	item_price INT NOT NULL
)

-- 2. Lets view the data
SELECT * FROM table_items

-- 3. Lets insert some data
INSERT INTO table_items( item_name, item_price)
VALUES ('Dell XPS 14', '2900'),
('Intel Xeon 6', '9000')
-- * columns that act as primary key does not allow duplicate keys
INSERT INTO table_items( item_name, item_price)
VALUES (1,'AMD Threadripper 9965W', '12000')

-- 4. View constraint naming convention
TABLE_NAME_pkey

-- 5. How to add PRIMARY KEY to and existing table
-- DROP a constraint
/*
ALTER TABLE table_name
DROP CONSTRAINT cname
*/

ALTER TABLE table_items
DROP CONSTRAINT table_items_pkey

-- 6. To add a constraint to table:
ALTER TABLE tablename
ADD PRIMARY KEY (col1, col2...)

-- 6.1 Adding primary key from a single column 
ALTER TABLE table_items
ADD PRIMARY KEY (item_id)

-- 7. To add a primary key from multiple columns:
ALTER TABLE table_items
ADD PRIMARY KEY (item_id, item_name)

SELECT * FROM table_items
ORDER BY item_id ASC

-- 8. Lets insert some data into the table
INSERT INTO table_items(item_id, item_name, item_price)
VALUES (4, 'Dell XPS 14', '2900')



















