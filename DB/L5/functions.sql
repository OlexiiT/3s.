-- 2.a) Створити функцію, котра повертає деяка скалярне значення
CREATE OR REPLACE FUNCTION getNumber() RETURNS INTEGER AS
$$
BEGIN
	RETURN 2;
END;
$$ LANGUAGE plpgsql;

SELECT getNumber();
