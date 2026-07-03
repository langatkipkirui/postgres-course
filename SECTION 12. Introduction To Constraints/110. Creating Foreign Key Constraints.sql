-- 110. Creating Foreign Key Constraints
-- Lets add foreign key constraints to the previouse tables
/*
syntax:
CREATE TABLE table_name (
	column_name data_type PRIMARY KEY,
	...,
	...,
	FOREIGN KEY (column_name) REFERENCES child_table_name (column_name)
)
*/

-- 1. Lets create a table
CREATE TABLE t_products_3(
		product_id INT PRIMARY KEY,
		product_name VARCHAR (100) NOT NULL,
		supplier_id INT NOT NULL,
		FOREIGN KEY (supplier_id) REFERENCES t_suppliers_3 (supplier_id)
);

-- 2. Lets create another table called suppliers
CREATE TABLE t_suppliers_3(
		supplier_id INT PRIMARY KEY,
	    supplier_name VARCHAR (100) NOT NULL
);

-- The table name in PostgreSQL foreign key concept states that the table
-- contains the foreign key and another table which has a foreign key reference
-- is called parent table

-- PostgreSQL FOREIGN key concept is based on the first table combination of 
-- columns with primary key values from the second table

-- A foreign key kind of link the two tables










































