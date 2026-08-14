-- 151. Using TO_TIMESTAMP function

/*
1. PostgresQL TO_TIMESTAMP() function to convert a string to a timestamp based on
specified format

TO_TIMESTAMP(timestamp, format)

2. You can use the following table for format

Pattern					Description
Y, YYY					year in 4 digits with comma
YYYY					year in 4 digits 
YYY						last 3 digits of the year
YY						lat 2 digits of the year
Y						the last digit of year
IYYY					ISO 8601 week-numdering year (4 or more digits)
IYY						last 3 digits of ISO 8601 week-numbering year
IY						last 2 digits of ISO 8601 week-numbering year
I						last digit of ISO 8601 week-numbering year
BC,bc, AD or ad			era indicator without periods
B.C., b.c., A.D., or a.d. era indicator with periods
MONTH					english month name in uppercase
Month					fully capitalized english month name
MON 					abbreviated uppercase month name e.g. JAN, FEB etc
Mon						abbreviated lowercase month name e.g, jan, feb etc
mon						abbreviated lowercase month name e.g., jan, feb etc
MM						month number from 01-12
DAY						full uppercase day name
Day						full capitalized day name 
day						full lowercase day name
DY						abbreviated uppercase day name
Dy						abbreviated capitalized day name
dy						abbreviated lowercase day name
DDDD					day of the year
IDDD					day of ISO 8601 week-numbering year (0001-371; day 1 of
						the year is Monday of the first ISO week)
DD						day of the month (01-31)
D						day of the week, sunday (1) to saturday (7)
ID						ISO 8601 day of the week , Monday (1) to Sunday (7)
W						Week of the month (1-5) (the first week starts on the
						first day of the month)
*/

SELECT TO_TIMESTAMP('2020-01-01 10:15:12', 'YYYY-MM-DD HH:MI:SS');

SELECT TO_TIMESTAMP('2020-01-01 10:30:35', 'YYYY-MM-DD HH:MI');

SELECT TO_TIMESTAMP('2020-01-01 10:30:35', 'YYYY-MM-DD HH');

-- TO_TIMESTAMP function validates the input string with minimal error checking.
SELECT TO_TIMESTAMP('2020-01-31 23:8:00', 'YYYY-MM-DD HH24:MI:SS');

-- When converting a string to a timestamp, the TO_TIMESTAMP() function treats 
-- millisecond or microsecond as the seconds after the decimal point.
SELECT TO_TIMESTAMP('01-01-2020 10:4', 'DD-MM-YYYY SS:MS')

-- 4 is not 4 milisecond but 400 i.e.
SELECT 
	TO_TIMESTAMP('01-01-2020 10:4', 'DD-MM-YYYY SS:MS'),
	TO_TIMESTAMP('01-01-2020 10:004', 'DD-MM-YYYY SS:MS')

-- so to get 4 milliseconds, you must use 01-01-2020 10:004. in this case 0.004 is
-- interpreted as 0.004 seconds, which is equivalent to 4 milliseconds
















