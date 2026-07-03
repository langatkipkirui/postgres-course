-- 95. CREATE TYPE - Create a Composite inventory_item Data Type 
CREATE TYPE inventory_item AS(
	product_name VARCHAR (200),
	supplier_id INT,
	price NUMERIC
);

-- 1. Lets create a table
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	item inventory_item
)

-- 2. Lets view the data from the table
SELECT * FROM inventory

-- 3. Lets insert some data
INSERT INTO inventory (item)
VALUES (ROW('Dell Alienware', 2, '5500'))

-- 4. Lets view the name of the products from the composite col
SELECT (item).product_name FROM inventory

-- 5. Lets filter to remain with products whose price is less that 4000
SELECT (item).product_name FROM inventory
WHERE (item).price < 4000




























