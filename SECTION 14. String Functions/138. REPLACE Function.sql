-- 138. REPLACE String
-- replace function replaces all occurences of a specified string
/*

replace(string, from_substring, to_substring)

*/

SELECT replace('ABC XYW','W','Z');

SELECT replace('What a wonderful world', 'a wonderful', 'an amazing')

SELECT replace('I like cats', 'cats', 'dogs')

--  the function is case sensitive
SELECT replace('ABC XYW','w','z');

-- it also replaces all the occurences
SELECT replace('111222333', '2','4')

SELECT replace('111222333', '2','45')

-- you can also use it on the fly
UPDATE
SET col1 = replace(col1, '1', '2');





















