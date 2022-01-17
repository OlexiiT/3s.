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
