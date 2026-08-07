-- 148. System Month Date Settings

-- To view current setting for date style

SHOW DateStyle;

-- To change date style you can use say:

-- SET DateStyle = 'type, format';

-- type   : ISO, Postgres, SQL, or German
-- format : MDY		Month Day Year
		-- 	DMY		Day Month Year
		--  YMD     Year Month Date

SET DateStyle = 'ISO, DMY';

-- To reset it back to default value i.e Month Day Year
SET DateStyle = 'ISO, MDY';






