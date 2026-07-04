--116. Define CHECK Constraint for Existing Tables

-- 1. Creating table 
CREATE TABLE prices(
	price_id SERIAL PRIMARY KEY,
	product_id INT NOT NULL,
	price NUMERIC NOT NULL,
	discount NUMERIC NOT NULL,
	valid_from DATE NOT NULL
);

-- 2. Add the check constraint
ALTER  TABLE prices
ADD CONSTRAINT price_check
CHECK (
  price >0
  AND discount>=0
  AND price > discount
);

-- 3. Lets insert some data into the table
INSERT INTO prices (product_id, price, discount, valid_from) VALUES (2, 200,30,NOW());


-- 4. Lets insert data that goes against the 
-- 4. Lets view the data in the table
SELECT * FROM prices

-- 5. Rename constraint on new table
ALTER TABLE prices
RENAME CONSTRAINT price_check TO price_discount_check;

-- 6. How to drop a constraint
ALTER TABLE prices 
DROP CONSTRAINT price_discount_check



















