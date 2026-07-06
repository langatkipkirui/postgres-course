-- 125. Sharing one Sequence Between Two Tables

CREATE SEQUENCE common_fruits_seq START WITH 100

CREATE TABLE apples(
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR (50)
);



CREATE TABLE mangoes(
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR (50)
);

INSERT INTO apples(fruit_name) VALUES ('big apple')
INSERT INTO mangoes(fruit_name) VALUES ('big mango')

SELECT * FROM mangoes;
SELECT * FROM apples;









