-- 120. Create a Sequence Using a Specific Data Type
/*
(SMALLINT|INT|BIGINT)
Default is BIGINT
CREATE SEQUENCE IF NOT EXISTS name AS data_type
CREATE SEQUENCE name AS data_type
*/
CREATE SEQUENCE IF NOT EXISTS test_seq_smallint AS SMALLINT;
CREATE SEQUENCE test_seq_smallint AS INT;
CREATE SEQUENCE test_seq_default; --BIGINT

-- lets see the nextvale for test_seq_smallint
SELECT nextval('test_seq_smallint')























