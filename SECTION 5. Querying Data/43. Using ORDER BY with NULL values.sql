-- LEC 43. USING ORDER BY WITH NULL VALUES
/*
NULL is a marker that indicates:
-> Either its missing data or
-> the data is uknown

--> when you srt rows that contain NULL, you can specify the order of the NULL with other non-null values 
by using NULLS FIRST or NULLS LAST option of the order by clause

syntax:
SELECT column_list FROM table_name
ORDER BY 
	sort_expressions [ASC | DESC] [NULLS FIRST | NULLS LAST]
*/

-- 1. create a tabel called demo_sorting
CREATE TABLE demo_sorting (
	num INTEGER
)

-- 2. Lets insert some data into the table
INSERT INTO demo_sorting (num)
VALUES
	('1'),
	('2'),
	('3'),
	('4'),
	(null);

-- 3. lets get all the records in the demo_sorting table
SELECT * FROM demo_sorting

-- 4. Get all the records and sort num on ascending values
SELECT num FROM demo_sorting
ORDER BY num ASC 
-- the null value is always the last by default on ascending order

-- 4.1 To place the null values at first in ascending (default) order we use NULLS FIRST
SELECT num FROM demo_sorting
ORDER BY num ASC NULLS FIRST

-- 5. ORDER BY clause with the DESC option uses the NULLS FIRST by default
SELECT num FROM demo_sorting
ORDER BY num DESC 
-- 5.1 to put the null values last with the desc option we use NULLS LAST
SELECT num FROM demo_sorting
ORDER BY num DESC NULLS LAST
















