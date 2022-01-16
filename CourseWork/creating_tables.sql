CREATE TABLE city (
	city_id SERIAL PRIMARY KEY,
	city_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE office(
	office_id SERIAL PRIMARY KEY,
	city_id INTEGER FOREIGN KEY REFERENCES TO city (city_id),
	adress VARCHAR(100) NOT NULL UNIQUE,
	phone VARCHAR(19) NOT NULL UNIQUE,
	CHECK(phone LIKE "+38 (___) ___-__-__" OR phone LIKE "(___) ___-__-__")
);

CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	office_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO office(office_id),
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	father_name VARCHAR(50) NOT NULL,
	adress VARCHAR(100) NOT NULL,
	phone VARCHAR(19) NOT NULL UNIQUE
	passport_number VARCHAR(30),
	birthday DATE
	email VARCHAR(50)
	department_id INTEGER FOREIGN KEY REFERENCES TO department(department_id) NOT NULL
	salary MONEY NOT NULL
	CHECK(phone LIKE "+38 (___) ___-__-__" OR phone LIKE "(___) ___-__-__")
);
