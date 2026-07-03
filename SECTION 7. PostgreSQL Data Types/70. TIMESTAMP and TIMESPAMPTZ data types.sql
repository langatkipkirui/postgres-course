-- 70. TIMESTAMP and TIMESTAMPTZ data types

/*
1. Allows to store both date and time together

2. TIMESTAMP			timestampe without timezone

3. TIMESTAMPTZ			timestamoe with a timezone

4. TIMESTAMPTZ			timezone handling
		
		- Internally stored value is always in UTC (Universal Coordinated Time),
		traditionally known as Greenwich Mean Time, GMT

		Adding a timestamptz

		- An INPUT value that has an explicit timezone specified is converted to
		UTC using the appropiate offset for that timezone

		- If no time zone is stated in the input string, then it is assumed to be
		in the timezone indicated by the system's TimeZone parameter, and is 
		converted to UTC using the offset for the timezone.

		Output timestamptz

		- When a timestamptz value is output, it is always coverted from UTC to the
		current timezone and displayed as local time in that zone.

		
		
*/


-- Lets create a table
CREATE TABLE timestamp_times(
ts TIMESTAMP,
tstz TIMESTAMPTZ
)

-- Lets view the table
SELECT * FROM timestamp_times

-- Lets insert some values
INSERT INTO timestamp_times(ts, tstz)
VALUES
('2024-03-26 03:14:10-07', '2024-03-26 03:14:10+04')

-- Show the current TimeZone
SHOW TIMEZONE

-- Lets change the timezone
SET TIMEZONE = 'Asia/Singapore'

-- Current time
SELECT CURRENT_TIME

-- Current Time of the day
SELECT TIMEOFDAY()

-- Get the timestamp
SELECT CURRENT_TIMESTAMP

-- Using timezone() function to convert time based on a timezone
SELECT 
TIMEZONE('Asia/Singapore', '2026-03-13 00:00:00') AS "Singapore",
TIMEZONE('Africa/Nairobi', '2026-03-13 00:00:00') AS "Nairobi"












