-- 111.Foreign Key Maintains Referentail Data Integrity

/*
	1. PostgreSQL foreign key maintains the referential integrity concepts with the two
	tables

	2. Foreigin key constraints in PostgreSQL states that values in the parent column
	must appear or present with values with a foreign column. If the value is not present
	in the foreign table it will show an error message: "Insert or update on table
	table_name violates foreign key constraint table_2 column_name fkey"

	3. Foreign Key is a type of constraint in postgreSQL. Foreign key states that values 
	in the column must match with values with some other row from another table

*/
-- 1. Insert, update and delete operations effects after foreign key constraints
INSERT INTO t_suppliers_3(supplier_id, supplier_name)
VALUES
(1,'Intel Cooperation'),
(2,'Advaced Micro Devices'),
(3,'Snapdragon');

-- 1.1
INSERT INTO t_products_3(product_id, product_name, supplier_id)
VALUES
(1, 'AMD Epyc',2),
(2, 'Intel Xeon 6', 1),
(3, 'Snapdragon 8 Elite', 3);

-- Lets view the data
SELECT * FROM t_products_3
SELECT * FROM t_suppliers_3

-- 2. Lets try to insert  a product with no matching supplier_id into product table
INSERT INTO t_products_3(product_id, product_name, supplier_id)
VALUES (4, 'Mediatek Helio', 4)

-- 3. Lets try and delete data from the child table
DELETE FROM t_suppliers_3
WHERE supplier_id = 2

-- 4. What if we delete the products referencing the supplier first?
DELETE FROM t_products_3
WHERE product_id = 1

-- 4.1 this will allow us to delete the supplier data bcs the primary table is not
-- referencing it












