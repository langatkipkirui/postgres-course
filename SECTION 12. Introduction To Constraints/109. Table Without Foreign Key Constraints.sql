-- 109. Table Without Foreign Key Constraints

-- 1. Lets create a table
CREATE TABLE t_products_2(
		product_id INT PRIMARY KEY,
		product_name VARCHAR (100) NOT NULL,
		supplier_id INT NOT NULL
);

-- 2. Lets create another table called suppliers
CREATE TABLE t_suppliers_2(
		supplier_id INT PRIMARY KEY,
	    supplier_name VARCHAR (100) NOT NULL
);

-- * This two tables have no relationships together

-- 3. Lets insert some data into the tables
-- 3.1 t_products table
INSERT INTO t_products_2(product_id, product_name, supplier_id)
VALUES
(1, 'AMD Epyc 9965W', 1),
(2, 'AMD Threadripper 9965W', 1),
(3, 'Intel Xeon 698X', 2),
(4, 'Intel Xeon 696X', 2);

-- 3.2 t_suppliers table
INSERT INTO t_suppliers_2(supplier_id, supplier_name)
VALUES
(1,'Advanced Micro Devices'),
(2,'Intel Cooperation');

-- 4. Lets view the data in both tables
SELECT * FROM t_suppliers_2
SELECT * FROM t_products_2

-- 5. Lets insert a product with no related supplier 

INSERT INTO t_products_2(product_id, product_name, supplier_id)
VALUES
(5, 'Snapdragon 8 Elite', 4); 
--This is where the problems comes in
-- without relationships, because the supplier is not available



















