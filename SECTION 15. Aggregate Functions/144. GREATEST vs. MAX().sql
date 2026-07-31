-- 144. GREATEST vs. MAX()
At first glance, the MySQL MAX() and GREATEST() functions perform a similar operation. They both return the maximum value from a range of values. However, there’s a difference between these two functions.
The best way to see the difference between these two functions is to compare their syntax.



Syntax

The syntax for each function goes like this:



MAX([DISTINCT] expr) [over_clause]

GREATEST(value1,value2,...)


So already, they look completely different. The MAX() function accepts the DISTINCT keyword as well as an OVER clause (and the GREATEST() function doesn’t).



However, the key difference between these two functions is in the accepted argument/s. Specifically:



- MAX() accepts one argument

- GREATEST() accepts multiple arguments


So MAX() is typically used to return the maximum value in a column in a database. The table could contain many rows, but this function returns the one with the maximum value.



GREATEST() on the other hand, returns the maximum-valued argument from the list of arguments passed to it. So you could pass say, 3 arguments to this function and it will return the one with the largest value.


MAX() Function
=============

SELECT MAX(Population) AS 'Result'

FROM City;



+----------+

| Result   |

+----------+

| 10500000 |

+----------+



GREATEST() function

=====================

The GREATEST  function returns the “greatest” or “largest” value from the list of expressions.



GREATEST ( value_1, [value_n] )



SELECT GREATEST(1, 5, 9) AS 'Result';



+--------+

| Result |

+--------+

|      9 |

+--------+



If you try to pass a single argument to the GREATEST() function you’ll get an error.


