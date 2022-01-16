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

CREATE TABLE department(
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(50),
	manager_id INTEGER UNIQUE
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

ALTER TABLE department 
ADD FOREIGN KEY (manager_id) REFERENCES TO employee (emloyee_id);

CREATE TABLE task(
	task_id SERIAL PRIMARY KEY,
	task_description VARCHAR(200),
	task_cost MONEY,
	department_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO department(department_id)
);

CREATE TABLE client(
	client_id SERIAL PRIMARY KEY,
	city_id INTEGER FOREIGN KEY REFERENCES TO city(city_id),
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	father_name VARCHAR(50),
	addres VARCHAR(100),
	phone VARCHAR(19) NOT NULL,
	birthday DATE,
	email VARCHAR(50) NOT NULL UNIQUE, 
	CHECK(phone LIKE "+38 (___) ___-__-__" OR phone LIKE "(___) ___-__-__")
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	client_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO client(client_id),
	employee_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO employee(employee_id),
	description VARCHAR(200),
	date_start DATE,
	date_end DATE
);

CREATE TABLE billboard(
	billboard_id SERIAL PRIMARY KEY,
	adress VARCHAR(100),
	date_end DATE,
	phone VARCHAR(19) NOT NULL,
	city_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO city(city_id),
	CHECK(phone LIKE "+38 (___) ___-__-__" OR phone LIKE "(___) ___-__-__")
);

CREATE TABLE tv_channel(
	tv_channel_id SERIAL PRIMARY KEY,
	channel_name VARCHAR(100),
	adress  VARCHAR(100),
	phone VARCHAR(19) NOT NULL,
	city_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO city(city_id),
	CHECK(phone LIKE "+38 (___) ___-__-__" OR phone LIKE "(___) ___-__-__")
);

CREATE TABLE printery(
	printery_id SERIAL PRIMARY KEY,
	printery_name VARCHAR(50),
	adress VARCHAR(100),
	phone VARCHAR(19),
	city_id INTEGER NOT NULL FOREIGN KEY REFERENCES TO city (city_id),
	CHECK(phone LIKE "+38 (___) ___-__-__" OR phone LIKE "(___) ___-__-__")
);
