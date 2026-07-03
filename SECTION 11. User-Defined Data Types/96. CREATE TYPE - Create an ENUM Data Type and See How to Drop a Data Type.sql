-- 96. CREATE TYPE - Create an ENUM Data Type and See How to Drop a Data Type

-- 1. Lets create the data type
CREATE TYPE currency AS ENUM ('USD', 'EUR', 'KES');

SELECT 'USD'::currency

-- 2. Lets alter the data and add CHF
ALTER TYPE currency ADD VALUE 'CHF' AFTER 'EUR'

-- 3. Lets create a sample table
CREATE TABLE stocks(
	stock_id SERIAL PRIMARY KEY,
	stock_currency currency
)

-- 4. Lets view the data from the table
SELECT * FROM stocks

-- 5. Lets insert some data
INSERT INTO stocks (stock_currency)
VALUES ('CHF')


-- 6. DROP TYPE name
CREATE TYPE payment_status AS ENUM ('Completed','Pennding', 'Canceled')

-- 7. Lets drop the type
DROP TYPE payment_status








	





