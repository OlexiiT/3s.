CREATE TABLE logs (
	employee_id INTEGER NOT NULL,
	added timestamp without time zone
);

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

--SELECT * FROM logs;