-- 119. Create a Sequence with START WITH, INCREMENT, MINVALUE and MAXVALUE
/*
CREATE SEQUENCE name
START WITH value
INCREMENT value
MINVALUE value
MAXVALUE value
*/

-- 1. Lets create a sequence 
CREATE SEQUENCE IF NOT EXISTS test_seq4
INCREMENT 50
MINVALUE 400
MAXVALUE 6000
START WITH 450

-- 2. Lets test the sequence
SELECT nextval('test_seq4')









