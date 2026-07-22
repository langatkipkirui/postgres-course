-- 131. LPAD and RPAD functions
/*
LPAD function pads a string on the left to a specified length with a sequence of
characters

RPAD function pads a string on the right to a specified length with a sequence
*/

-- The fill argument is optional. if you omit the fill argument, its default 
-- value is a space
SELECT LPAD('Database', 15, '*');
SELECT RPAD('Database', 15, '*');

SELECT LPAD('1111',6,'A');