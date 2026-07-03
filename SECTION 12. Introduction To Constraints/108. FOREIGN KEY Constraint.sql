-- 108. FOREIGN KEY Constraint
/*
	1. Foreign Key play a vital most important role in PostgreSQL

	2. A Foreign Key is a column or a group of columns in a table that refernce 
	the primary key of another table. It is used to link two tables together and
	establish a relationship between them.

	3. Parent table 
		child/foreign table

	4. Also in general words, foreign key in PostgreSQL is defined as the first 
	table that has reference to the primary key of the second table.

	5. Syntax
		CREATE TABLE table_name(
			column_name data_type PRIMARY KEY,
			...,
			...,
			FOREIGN KEY (column_name) REFERENCES child_table_name (column_name)
		)

	We will create an example where we will show how to setup  a relationship between table 
	storing  products information the product 'suppliers'

*/






















