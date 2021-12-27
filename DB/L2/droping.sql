--Видалення елементів
ALTER TABLE person
DROP COLUMN father_name;

ALTER TABLE credit_module
DROP COLUMN attestation_type;

--Видалення таблиць
DROP TABLE student_discipline;
DROP TABLE student_credit_module;
DROP TABLE person;
