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


