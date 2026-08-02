-- 147. Datetimes data types

-- DATE/TIME/TIMESTAMPS Data Types

/*
1. Date			Date only 		YYYY-MM-DD
	- stores year, month and day values of a date, in that order.
	-year value is 4 digits long, and month and day is 3 digits long.
	- date can represent any date from 0001 to year 9999.
	- the length of the date is ten positions.

2. TIME			Time only		HH:MM:SS
	
	Time with time zone

	-stores hour, month and seconds values from time.
	-hours and minutes occupy 2 digits
	the second value can be of 2 digits and may also expand to include optional
	fractional part e.g 10:30:10 or 10:30:10.429 represents a 10.429 secs, a 6 
	decimal precision here


	Time without time zone

	-A TIME WITHOUT TIME ZONE value take up eight positions (including colons)
	-HH:MM:SS.p Where p is the number of digits positions to the right of the 
	decimal. 10:30:10.429 where 10.429 reprsents 10.429 seconds, a 6 decimal 
	precision here


	Timestamp		Date and time only		YYYY-MM-DD HH:MM:SS
	
	-stores both the date and time info
	-the length and restrictions on the values of the components of TIMESTAMPS
	WITHOUT TIME ZONE date are the same as they are for DATE and TIME WITHOUT 
	TIMEZONE, except for one difference i.e The default length of the fractional
	part of the time component is six digits rather than zero.

*/
























