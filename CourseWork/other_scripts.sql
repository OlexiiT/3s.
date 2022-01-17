CREATE PROCEDURE create_temp_table () AS
$$
BEGIN
	CREATE TEMP TABLE IF NOT EXISTS employee_city AS
	SELECT employee_id, last_name, first_name, father_name, employee.address, city_name
	FROM employee INNER JOIN office ON employee.office_id = office.office_id
	INNER JOIN city ON office.city_id = city.city_id;
END;
$$ LANGUAGE plpgsql;*/

CALL create_temp_table();


CREATE TABLE logs (
	employee_id INTEGER NOT NULL,
	added timestamp without time zone
);


CREATE OR REPLACE VIEW employees_from_big_cities AS
SELECT employee_id, last_name, first_name, father_name, employee.address, city_name
	FROM employee INNER JOIN office ON employee.office_id = office.office_id
	INNER JOIN city ON office.city_id = city.city_id
WHERE city_name LIKE 'Київ' OR city_name LIKE 'Одеса'
ORDER BY city_name, employee_id;


CREATE OR REPLACE FUNCTION add_to_log() 
RETURNS TRIGGER AS 
$$
BEGIN
	INSERT INTO logs(employee_id, added)
	VALUES (NEW.employee_id, NOW());
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER add_trigger
AFTER INSERT
ON employee
FOR EACH ROW
EXECUTE PROCEDURE add_to_log();

INSERT INTO employee (office_id, last_name, first_name, father_name, address, phone, passport_number, birthday, email, department_id, salary)
VALUES (1, 'Тимошенко', 'Олексій', 'Олександрович', 'бул. Т. Шевченка 35', '(030) 234-23-44', '48126233', '2000-12-12', 'abc@gmail.com', 1, '19000');

