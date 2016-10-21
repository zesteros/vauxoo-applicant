-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id 	NUMERIC not null,
	first_name CHAR(50) not null,
	last_name 	CHAR(50) not null
);

CREATE TABLE employee_department (
	id 	 NUMERIC not null,
	name 	 CHAR(50) not null,
	description CHAR(500) 
);


ALTER TABLE employee 
ADD CONSTRAINT pk_employee 
PRIMARY KEY(id);

ALTER TABLE employee_department
ADD CONSTRAINT pk_department
PRIMARY KEY(id);

ALTER TABLE employee ADD COLUMN id_department NUMERIC not null;

ALTER TABLE employee
ADD CONSTRAINT fk_department
FOREIGN KEY(id_department)
REFERENCES employee_department(id);

INSERT INTO employee_department VALUES(9261, 'Accounting', 'Is the deparment in charge of managing money that comes in and out');
INSERT INTO employee_department VALUES(3812, 'Marketing', 'The marketing department has overall responsibility for growing revenue, increasing market share and contributing to company growth and profitability.');
INSERT INTO employee_department VALUES(3901, 'Maintenance', 'Is responsible for making sure that all machines are running properly, such that workers are safe and that the plant can perform its function efficiently. ');
INSERT INTO employee_department VALUES(9301, 'Management', 'May be described as the the people who design an organizations structure and determine how different aspects of the organization will interact.');
INSERT INTO employee_department VALUES(7381, 'Engineering', 'Is responsible for planning, analyzing and implementing system extension projects; planning, design, and construction of major facility replacements.');
INSERT INTO employee_department VALUES(6371, 'Production', ' is the functional area responsible for turning inputs into finished outputs through a series of production processes.');

INSERT INTO employee VALUES(6271, 'Alfredo', 'González', 7381);
INSERT INTO employee VALUES(8281, 'Juan', 'Lopez', 3812);
INSERT INTO employee VALUES(8351, 'John', 'Schneider', 3901);
INSERT INTO employee VALUES(8401, 'Patrick', 'McGill', 6371);

CREATE TABLE employee_hobby (
	id NUMERIC not null,
	name char(50) not null, 
	description char(500)
);

ALTER TABLE employee_hobby
ADD CONSTRAINT pk_hobby
PRIMARY KEY(id);

CREATE TABLE hobby_by_employee (
	id_employee NUMERIC not null,
	id_hobby NUMERIC not null
);
ALTER TABLE hobby_by_employee
ADD CONSTRAINT fk_employee
FOREIGN KEY(id_employee)
REFERENCES employee(id);

ALTER TABLE hobby_by_employee
ADD CONSTRAINT fk_hobby
FOREIGN KEY(id_hobby)
REFERENCES employee_hobby(id);

INSERT INTO employee_hobby VALUES(3819, 'Football','The employee plays sometimes football soccer');
INSERT INTO employee_hobby VALUES(7371, 'Reading', 'The employee regularly reads a book');
INSERT INTO employee_hobby VALUES(1001, 'Watch Movies', 'The employee likes to watch movies of all kinds.');

INSERT INTO hobby_by_employee VALUES(6271, 3819);
INSERT INTO hobby_by_employee VALUES(6271, 1001);
INSERT INTO hobby_by_employee VALUES(6271, 7371);
INSERT INTO hobby_by_employee VALUES(8351, 7371);
INSERT INTO hobby_by_employee VALUES(8281, 3819);
INSERT INTO hobby_by_employee VALUES(8351, 3819);
INSERT INTO hobby_by_employee VALUES(8281, 1001);
INSERT INTO hobby_by_employee VALUES(8401, 7371);
INSERT INTO hobby_by_employee VALUES(8351, 1001);

ALTER TABLE employee ADD COLUMN id_boss NUMERIC;

ALTER TABLE employee 
ADD FOREIGN KEY (id_boss)
REFERENCES employee(id);

UPDATE employee SET id_boss = 1001 WHERE id = 6271;
UPDATE employee SET id_boss = 2001 WHERE id = 8281;
UPDATE employee SET id_boss = 3001 WHERE id = 8351;
UPDATE employee SET id_boss = 4001 WHERE id = 8401;
-- ...
