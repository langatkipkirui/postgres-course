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


















