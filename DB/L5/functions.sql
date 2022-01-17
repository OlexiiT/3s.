-- 2.a) Створити функцію, котра повертає деяка скалярне значення
CREATE OR REPLACE FUNCTION getNumber() RETURNS INTEGER AS
$$
BEGIN
	RETURN 2;
END;
$$ LANGUAGE plpgsql;

SELECT getNumber();




-- 2.c) Створити функцію, котра повертає таблицю заданої структури
CREATE OR REPLACE FUNCTION get_3credit_disciplines() 
RETURNS TABLE (
	discipline_id INTEGER,
	discipline_name VARCHAR(100),
	credits INTEGER
)
LANGUAGE plpgsql
AS
$$ 
BEGIN
	RETURN QUERY
		SELECT discipline.discipline_id, discipline.discipline_name, discipline.credits
		FROM discipline AS discipline
		WHERE discipline.credits = 3;
END;
$$;
