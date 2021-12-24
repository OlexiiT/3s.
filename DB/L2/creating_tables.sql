CREATE TABLE faculty (
	faculty_id SERIAL PRIMARY KEY,
	faculty_name VARCHAR(100)
);

CREATE TABLE department(
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR (100),
	faculty_id INT REFERENCES faculty
);

CREATE TABLE discipline(
	discipline_id SERIAL PRIMARY KEY,
	discipline_name VARCHAR (100),
	lection_hours INT,
	practic_hours INT,
	lab_hours INT,
	credits INT,
	attestation_type VARCHAR (100),
	department_id INT REFERENCES department
);

CREATE TABLE credit_module (
	credit_module_id SERIAL PRIMARY KEY,
	lection_hours INT CHECK (lection_hours >= 0),
	practic_hours INT CHECK (practic_hours >= 0),
	lab_hours INT CHECK (lab_hours >= 0),
	credits INT CHECK (credits >= 0),
	attestation_type VARCHAR(100),
	discipline_id INT REFERENCES discipline
);

CREATE TABLE curriculum (
	curriculum_id SERIAL PRIMARY KEY,
	discipline_id INT REFERENCES discipline,
	credit_module_id INT REFERENCES credit_module
);

CREATE TABLE student (
	student_id SERIAL PRIMARY KEY,
	student_name VARCHAR(100),
	surname VARCHAR(100),
	father_name VARCHAR(100),
	adress VARCHAR(100),
	phone_number VARCHAR(30),
	curriculum_id INT UNIQUE REFERENCES curriculum
);
