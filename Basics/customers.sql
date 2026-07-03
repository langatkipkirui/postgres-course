-- 1. creating a table called customers
-- CREATE TABLE customers(
-- 	customer_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50), 
-- 	email VARCHAR(150),
-- 	age INT
-- )

-- 2. viewing the data in the table customers
-- SELECT * FROM customers

-- 3. Insert single rows into a table
-- INSERT INTO customers (first_name, last_name, email, age)
-- VALUES ('Kevin', 'Langat', 'langat@gmail.com', '21')

-- 3.1 Insert multiple rows into a table
-- INSERT INTO customers (first_name, last_name, email, age)
-- VALUES
-- ('Vannessa','Montoya','vee@gmail.com','23'),
-- ('Brian','MWendwa','brian@gmail.com','29'),
-- ('Yeimmy','cruz','yeimmy@gmail.com','34');

-- 4. Insert data with quotes
-- INSERT INTO customers (first_name)
-- VALUES
-- ('Kipng''etich');

-- 5. Use RETURNING to get info on return rows
-- INSERT INTO customers(first_name)
-- VALUES ('Adnan') RETURNING *;

-- 6. After the insert, lets return a single column value
-- INSERT INTO customers (first_name)
-- VALUES
-- ('Otieno') RETURNING customer_id;

-- 7. Update data in a table
-- UPDATE customers
-- SET email = 'brianmwendwa2@gmail.com'
-- WHERE customer_id = 11

-- 8. Updating multiple data in a table
-- UPDATE customers
-- SET 
-- last_name = 'Boniface',
-- email = 'kipngetich10@gmail.com',
-- age = 23
-- WHERE customer_id = 8
-- RETURNING *;

-- 9. Updating one of the records for is_enable column
-- UPDATE customers
-- SET is_enable = 'Y'
-- WHERE customer_id = 1

-- 10. Updating all the records for is_enable column
-- 11. Deleting data from a table ---> to delete data from a table
-- we use the:
-- DELETE FROM customers
-- WHERE customer_id = 6
-- RETURNING *;

-- 12. To delete all the data from the table we use
-- DELETE FROM customers
-- RETURNING *;

SELECT * FROM customers



















