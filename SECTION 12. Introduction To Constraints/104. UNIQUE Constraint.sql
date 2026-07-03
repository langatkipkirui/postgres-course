-- 104. Unique Constraint
/*
	1. Make sure that values stored in a column or a group of columns are 
	unique

	2. INSERT 
		When a UNIQUE constraints is in place, every time you insert a new 
		row it checks if the value alread exists in the table

	3. UPDATE
		The same process carried out for updating existing data.

	4. You create UNIQUE constraint on  a single column, we use the 
	following syntax:

	CREATE TABLE table_name(
		column_name data_type UNIQUE,
		...
	);


*/

-- 1. Lets create a sample table
CREATE TABLE table_un(
	id SERIAL PRIMARY KEY,
	email text UNIQUE
);

-- 2. Lets view the data
SELECT * FROM table_un

-- 3. Lets insert some data
INSERT INTO table_un(email)
VALUES ('kevin@gmail.com')

-- 4. Lets create a table with multiple columns with unique constraint
CREATE TABLE table_products2(
	id SERIAL PRIMARY KEY,
	product_code VARCHAR(10),
	product_name TEXT 

	-- There are methods you can add the unique to a table e.g:
	-- UNIQUE(product_code, product_name)
);


-- 5. Now lets add unique constraints
ALTER TABLE table_products
ADD CONSTRAINT unique_product_code UNIQUE (product_code, product_name)

-- 6. Lets add some data
INSERT INTO table_products (product_code, product_name)
VALUES ('1A3', 'Dell XPS')

INSERT INTO table_products (product_code, product_name)
VALUES ('Dell XPS', '1A3')


-- 7. Lets view the data
SELECT * FROM table_products

-- 8. Lets create another table with multiple columns with unique constraint added directly
CREATE TABLE table_products_2(
	id SERIAL PRIMARY KEY,
	product_code VARCHAR(10) UNIQUE,
	product_name TEXT UNIQUE
);


-- 9. Lets add some data
INSERT INTO table_products_2 (product_code, product_name)
VALUES ('1A4', 'Dell XPS 16')
INSERT INTO table_products_2 (product_code, product_name)
VALUES ('1A6', 'Dell XPS 16')


-- 10. Lets view the data
SELECT * FROM table_products_2

-- There are two difference between table_products and table_products_2: In table_products
-- one constraint is added while in table_product_2 two UNIQUE constraints is added that 
-- means in table_products only both values concatenated must be unique to be inserted 
-- are like one value while in table_products_2 each value is independent















