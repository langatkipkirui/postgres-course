-- 123. Attach a SEQUENCE to a Table Column
/*
To attach a sequence to an existing table :
Step 1. Create a sequence and attach to a table
*/

CREATE TABLE users_2(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50)
);

-- 2. Lets insert to the table
INSERT INTO users_2(username) VALUES('Vlad')

-- 3. Lets view from the table
SELECT * FROM users_2

-- 4. The field user_id has its own sequence so we can alter it as a
-- normal sequence
ALTER SEQUENCE users_2_user_id_seq RESTART WITH 100

-- 5. Lets insert another user
INSERT INTO users_2(username) VALUES('Benjamin')

-- 6. Lets view from the table
SELECT * FROM users_2

-- 7. Tying a table to a seq
-- 7.1 Lets create a table
CREATE TABLE user_3(
	user_id INT PRIMARY KEY,
	username VARCHAR(50)
);


-- 7.2 Lets tie a table to a seq
CREATE SEQUENCE user_3_user_id_seq
START WITH 140 OWNED BY user_3.user_id

-- 7.3 ALTER TABLE column and set sequence
ALTER TABLE user_3
ALTER COLUMN user_id SET DEFAULT nextval('user_3_user_id_seq')

-- 7.4 Lets insert some data into it
INSERT INTO user_3(username) VALUES('Elisha')

SELECT * FROM user_3










