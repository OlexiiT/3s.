CREATE TABLE city (
	city_id SERIAL PRIMARY KEY,
	city_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE office(
	office_id SERIAL PRIMARY KEY,
	city_id INTEGER REFERENCES city (city_id),
	address VARCHAR(100) NOT NULL UNIQUE,
	phone VARCHAR(19) NOT NULL UNIQUE,
	CHECK(phone LIKE '+38 (___) ___-__-__' OR phone LIKE '(___) ___-__-__')
);

CREATE TABLE department(
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(50)
);

CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	office_id INTEGER NOT NULL REFERENCES office(office_id),
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	father_name VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
	phone VARCHAR(19) NOT NULL UNIQUE,
	passport_number VARCHAR(30),
	birthday DATE,
	email VARCHAR(50),
	department_id INTEGER REFERENCES department(department_id) NOT NULL,
	salary MONEY NOT NULL,
	CHECK(phone LIKE '+38 (___) ___-__-__' OR phone LIKE '(___) ___-__-__')
);

CREATE TABLE task(
	task_id SERIAL PRIMARY KEY,
	task_description VARCHAR(200),
	task_cost MONEY,
	department_id INTEGER NOT NULL REFERENCES department(department_id)
);

CREATE TABLE client(
	client_id SERIAL PRIMARY KEY,
	city_id INTEGER REFERENCES city(city_id),
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	father_name VARCHAR(50),
	address VARCHAR(100),
	phone VARCHAR(19) NOT NULL,
	birthday DATE,
	email VARCHAR(50) NOT NULL UNIQUE, 
	CHECK(phone LIKE '+38 (___) ___-__-__' OR phone LIKE '(___) ___-__-__')
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	client_id INTEGER NOT NULL REFERENCES client(client_id),
	employee_id INTEGER NOT NULL REFERENCES employee(employee_id),
	description VARCHAR(200),
	date_start DATE,
	date_end DATE
);

CREATE TABLE billboard(
	billboard_id SERIAL PRIMARY KEY,
	address VARCHAR(100),
	date_end DATE,
	phone VARCHAR(19) NOT NULL,
	city_id INTEGER NOT NULL REFERENCES city(city_id),
	CHECK(phone LIKE '+38 (___) ___-__-__' OR phone LIKE '(___) ___-__-__')
);

CREATE TABLE tv_channel(
	tv_channel_id SERIAL PRIMARY KEY,
	channel_name VARCHAR(100),
	address  VARCHAR(100),
	phone VARCHAR(19) NOT NULL,
	city_id INTEGER NOT NULL REFERENCES city(city_id),
	CHECK(phone LIKE '+38 (___) ___-__-__' OR phone LIKE '(___) ___-__-__')
);

CREATE TABLE printery(
	printery_id SERIAL PRIMARY KEY,
	printery_name VARCHAR(50),
	address VARCHAR(100),
	phone VARCHAR(19),
	city_id INTEGER NOT NULL REFERENCES city (city_id),
	CHECK(phone LIKE '+38 (___) ___-__-__' OR phone LIKE '(___) ___-__-__')
);
