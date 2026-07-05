-- 121. Creating a Descending Sequence, and CYCLE Sequence
/*
CREATE SEQUENCE seq_des
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE;
*/

-- 1. Lets create the sequence
CREATE SEQUENCE seq_asc

-- 2. Lets view the sequence
SELECT nextval('seq_asc')

-- 3. Lets alter the existing sequence to descending sequence
ALTER SEQUENCE seq_asc
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE;

-- 4. Lets create a sequence with no cycle
CREATE SEQUENCE seq_desc
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
NO CYCLE;

-- 5. Lets check the sequence
SELECT nextval('seq_desc')























