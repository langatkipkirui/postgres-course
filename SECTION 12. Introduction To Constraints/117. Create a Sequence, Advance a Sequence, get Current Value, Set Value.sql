-- 117. Create a Sequence, Advance a Sequence, get Current Value, Set Value

-- 1. Create a sequence 
/*
syntax:
CREATE SEQUENCE IF NOT EXISTS name
CREATE SEQUENCE name
*/

CREATE SEQUENCE IF NOT EXISTS test_seq;


-- 2. Advance a sequence and return new value
SELECT nextval('test_seq');

-- 3. Return the most current value of the sequence
-- SELECT currval(name)
SELECT currval('test_seq')

-- 4. Set a sequence 
-- SELECT setval(name, value)
SELECT setval('test_seq', 100)

-- 5. Set a sequence and do not skip over
SELECT setval('test_seq', 200, false)

-- 6. Control the sequence START value
/*
CREATE SEQUENCE IF NOT EXISTS name START WITH value
CREATE SEQUENCE name START WITH value
*/
CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 50;

-- 7. Lets use the Sequence
SELECT nextval('test_seq2')
















