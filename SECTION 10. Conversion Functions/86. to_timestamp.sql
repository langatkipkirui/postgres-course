-- 86. to_timestamp

/*
	1. PostgreSQL TO_TIMESTAMP() is a function that helps you to convert a string to a 
	timestamp based on a specified format.

	2. TO_TIMESTAMP(timestamp, format)

	3. Valid format options for are;

	Pattern							 Description
	----------						--------------
	Y,YYY							year in 4 digits with comma
	YYYY							year in 4 digits
	YYY								last 3 digits of year
	YY								last 2 digits of year
	Y								last digit of a year
	IYYY							ISO 8601  week-numbering year (4 or more digits)
	IYY								Last 3 digits of ISO 8601 week-numbering year
	IY								Last 2 digits of ISO 8601 week-numbering year
	I								Last digit of ISO 8601 week-numbering year
	BC, bc, AD or ad				Era indicator without periods
	B.C., b.c., A.D. or a.d.		Era indicator with periods 
	MONTH							English month name in uppercase
	Month							Full capitalized English month name
	month 							Full lowercase English month name
	MON								Abbreviated upercase month name e.g. JAN, FEB, etc
	Mon								Abbreviated capitalized month name e.g. Jan,Feb, etc
	mon								Abbreviated lowecase month name e.g. Jan,Feb, etc
	MM								Month number from 01 to 12
	DAY								Full uppercase day name
	Day								Full capitalized day name
	day								Full lowercase day name
	DY								Abbreviated uppercase day name e.g THUR
	Dy								Abbreviated Capitalized day name e.g Thur
	dy								Abbreviated lowercase day name e.g thur
	DDD								Day of the year	(001-366)
	IDDD							Day of ISO 8601 week-numbering year (001-371:
									day 1 of the yearis monday of the first ISO week)
	DD								Day of month (01-31)
	D								Day of the week, sunday (1) to saturday (7)
	ID								ISO 8601 day of the week, Monday (1) to Sunday (7)
	W								Week of the month (1-5) (the first week starts on the
									first of day of the month)
	WW 								Week number of year (1-53) (the first week starts on the
									first day of the year)
	IW 								Week number os ISO 8601 week-numbering year (01-53: the 
									first thursday of the year is in week 1)
	CC 								Century e.g. 21 22 etc.
	J								Julian Day (integer days since november 24 4714 BC at
									midnight UTC)
	RM								Month in uppercase Roman numerals (i-xii)
	rm								Month in lowercase Roman numerals (i-xii)
	HH								Hour of the day (0-12)
	HH12							Hour of the day (0-12)
	HH24							Hour of the day (0-23)
	MI								Minute (0-59)
	SS								Second (0-59)
	MS								Millisecond (000-999)
	US								Microsecond (000000-999999)
	SSSS							Seconds past midnight (0-86399)			
	AM, am, PM or pm				Meridiem indicator (without periods)

*/

SELECT TO_TIMESTAMP(
	'2020-10-28 10:30:15',
	'YYYY-MM-DD HH:MI:SS'
);

-- it skip spaces
SELECT TO_TIMESTAMP(
	'2020      May',
	'YYYY, Mon'
);



-- minimal error checking is done so be careful
SELECT TO_TIMESTAMP(
	'2024-01-01 32:8:00',
	'YYYY-MM-DD HH24:MI:SS'
);

SELECT TO_TIMESTAMP(
	'2024-01-01 23:8:00',
	'YYYY-MM-DD HH24:MI:SS'
);










