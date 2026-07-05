-- 118. Restart, Rename a Sequence and use PgAdmin to Alter a Sequence
/*
ALTER SEQUENCE name RESTART WITH value
ALTER SEQUENCE name RENAME TO new_name
*/


-- 1. Lets restart the sequence
ALTER SEQUENCE test_seq RESTART WITH 100

-- 2. Lets view the sequence
SELECT nextval('test_seq');

-- 3. Lets rename the sequence
ALTER SEQUENCE test_seq RENAME TO test_seq_ren

-- 4. Lets  ALTER the sequence such that it will increment by 20
CREATE SEQUENCE IF NOT EXISTS test_seq3

ALTER SEQUENCE test_seq3 INCREMENT 20

















