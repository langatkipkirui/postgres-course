-- 140. COUNT(), COUNT(*) and COUNT(1)

COUNT(), COUNT(*) and COUNT(1)
Use either COUNT(field) or COUNT(*), and stick with it consistently



Use count(*) for counting

=====================

For counting rows we could have this:



SELECT COUNT(emp) FROM emp



Counting with null

================

It is not a good practice to make a field nullable if its name matches the table name. Say you have values 'Banana', 'Apple', NULL, 'Pears' on fruit field. This will not count all rows, it will only yield 3, not 4



SELECT count(fruit) FROM fruit



count(1): The one-trick pony

=======================

In particular to COUNT(1), it is a one-trick pony, it works well only on one table query:



SELECT COUNT(1) FROM tbl

But when you use joins, that trick won't work on multi-table queries without its semantics being confused, and in particular you cannot write:



-- count the subordinates that belongs to boss

SELECT boss.boss_id, COUNT(subordinate.1)

FROM boss

LEFT JOIN subordinate on subordinate.boss_id = boss.boss_id

GROUP BY boss.id



Summary

========

COUNT(*) counts the number of rows

COUNT(1) also counts the number of rows