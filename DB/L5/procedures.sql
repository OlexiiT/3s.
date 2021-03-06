-- 1.a) Створення процедури для створення тимчасової таблиці
CREATE OR REPLACE PROCEDURE create_temp_table () AS 
$$
BEGIN
	CREATE TEMP TABLE IF NOT EXISTS student_temp AS 
	SELECT CONCAT(surname, ' ', student_name, ' ', father_name) AS "ПІБ"
	FROM student AS person;
END;
$$ LANGUAGE plpgsql;

CALL create_temp_table();
SELECT * FROM student_temp;
DROP TABLE IF EXISTS student_temp;


-- 1.b) Запит з використанням умовної конструкції IF
CREATE OR REPLACE PROCEDURE create_student_temp_if_not_exists() AS
$$
BEGIN
    IF check_if_table_exists('public', 'student_temp') = FALSE THEN
        CALL create_temp_table();
    END if;
END;
$$ LANGUAGE plpgsql;

CALL create_student_temp_if_not_exists();
SELECT * FROM student_temp;
DROP TABLE IF EXISTS student_temp;


-- 1.c) Створити запит з використанням циклу WHILE
CREATE OR REPLACE PROCEDURE create_and_fill_table()
AS
$$
DECLARE
    i_inc INT := 1;
    i_current   INT := 0;
    i_max       INT := 9;
BEGIN
    DROP TABLE IF EXISTS test;

    CREATE TEMP TABLE test
    (
        num INTEGER
    );

    WHILE i_current <= i_max
        LOOP
            i_current := i_current + i_inc;
            INSERT INTO test (num)
            SELECT i_current;
        END LOOP;
END;
$$
    LANGUAGE plpgsql;

CALL create_and_fill_table();

SELECT * FROM test;
DROP TABLE IF EXISTS test;


-- 1.d) Створення процедури без параметрів
CREATE OR REPLACE PROCEDURE create_test_table () AS
$$
BEGIN
	CREATE TEMP TABLE test (
		test_id SERIAL, 
		test_name VARCHAR(100)
	);
END;
$$ LANGUAGE plpgsql;

CALL create_test_table();
INSERT INTO test (test_name)
VALUES ('my name');
SELECT * FROM test;
DROP TABLE test;


-- 1.e) Створення процедури з вхідним параметром
CREATE OR REPLACE PROCEDURE get_test_stat(
    out min_val int,
    out max_val int,
    out avg_val numeric) AS
$$
BEGIN
    SELECT min(num),
           max(num),
           avg(num)
    INTO min_val, max_val, avg_val
    FROM test;

END ;
$$ LANGUAGE plpgsql;

CALL create_and_fill_table();
CALL get_test_stat(0, 0, 0);


-- 1.f) Створення процедури з вхідним параметром та RETURN
CREATE OR REPLACE PROCEDURE create_new_table(
	i integer
) AS
$$ 
DECLARE 
	i_current INT := 0;
BEGIN 
	CREATE TABLE test (
		test_id SERIAL,
		test_int INT
	);
	WHILE i_current < i
	LOOP
		i_current := i_current + 1;
		INSERT INTO test(test_int)
		SELECT i_current;
	END LOOP;
	RETURN;
	INSERT INTO test (test_int) 
	VALUES (0);
END;
$$ LANGUAGE plpgsql;

CALL create_new_table(11);
SELECT * FROM test;


-- 1.g) Створення процедури оновлення даних в деякій таблиці БД
CREATE OR REPLACE PROCEDURE update_data () AS 
$$
BEGIN 
	UPDATE test
	SET test_int = test_int + 10;
END;
$$ LANGUAGE plpgsql;
CALL update_data();
SELECT * FROM test;


-- 1.h) Створення процедури, в котрій робиться вибірка даних
CREATE OR REPLACE PROCEDURE get_fict_discipline() AS
$$ 
BEGIN 
	CREATE VIEW fict_disciplines AS
	SELECT discipline_id, discipline_name
	FROM discipline INNER JOIN department ON discipline.department_id = department.department_id
	INNER JOIN faculty ON department.faculty_id = faculty.faculty_id
	WHERE faculty_name LIKE 'Факультет інформатики та інформаційних технологій';
END;
$$ LANGUAGE plpgsql;
CALL get_fict_discipline();

