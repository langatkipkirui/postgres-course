-- 107. PRIMARY KEY Constraint on Multiple Columns = Composite PRIMARY KEY
-- 1. Lets create a sample table
CREATE TABLE t_grades(
	course_id VARCHAR(100) NOT NULL,
	student_id VARCHAR(100) NOT NULL,
	grade INT NOT NULL,
)
ALTER TABLE t_grades
DROP CONSTRAINT  t_grades_pkey

ALTER TABLE t_grades
ADD CONSTRAINT t_grades_pkey 
PRIMARY KEY (course_id, student_id)

-- 2. Lets view the data
SELECT * FROM t_grades

-- 3. Lets insert some data
INSERT INTO t_grades (course_id, student_id, grade) VALUES
('Math', 'S1', 72),
('English', 'S2', 62),
('Chemistry', 'S1', 33),
('Physics', 'S2', 68),
('Biology', 'S1', 54);
-- * Here a course_id can have multiple different students and a student can have multiple
-- subjects too.
INSERT INTO t_grades (course_id, student_id, grade) VALUES
('Math', 'S2', 72);

-- ** This is where composite Key comes in

-- 4. Creating a composite key
-- course_id+student_id = composite key
CREATE TABLE t_grades_2(
	course_id VARCHAR(100) NOT NULL,
	student_id VARCHAR(100) NOT NULL,
	grade INT NOT NULL,
	PRIMARY KEY (course_id, student_id)
);

-- 5. Lets insert some data into the table
INSERT INTO t_grades_2(course_id, student_id, grade) VALUES
('Math', 'S1', 72),
('English', 'S2', 62),
('Chemistry', 'S1', 33),
('Physics', 'S2', 68),
('Math', 'S2', 54);

-- 6. Lets view the data in the table
SELECT * FROM t_grades_2

-- We can then insert unique course_id+student_id values
INSERT INTO t_grades_2(course_id, student_id, grade) VALUES
('Math', 'S3', 72),
('Physics', 'S3', 62),
('English', 'S1', 33);

-- 7. How can we drop a constraint
/*
ALTER TABLE table_name
DROP CONSTRAINT cname
*/
ALTER TABLE t_grades_2
DROP CONSTRAINT t_grades_2_pkey

-- 8. To create a primary key to an existing tabel we use:
/*
ALTER TABLE tablename
ADD CONSTRAINT cname
PRIMARY KEY (col1, col2)
*/

ALTER TABLE t_grades_2
ADD CONSTRAINT t_grades_2_pkey
PRIMARY KEY (course_id, student_id)






