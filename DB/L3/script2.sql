--1
SELECT discipline_name,
(SELECT department_name FROM department WHERE discipline.department_id = department.department_id)
AS "department"
FROM discipline;
--2
SELECT discipline_name, credits
FROM discipline
WHERE department_id IN (SELECT department_id
					FROM department
					WHERE department_name LIKE '%біо%')
--3
SELECT credit_module_name
FROM credit_module
WHERE EXISTS (SELECT credit_module_name
			 FROM credit_module
			 WHERE credit_module_name LIKE '%мова%')
--4
SELECT department_name, faculty_name
FROM faculty, department;
--5
SELECT discipline_name, department_name, faculty_name
FROM faculty, department, discipline
WHERE faculty.faculty_id = department.faculty_id
AND discipline.department_id = department.department_id;
--6
SELECT discipline_name, department_name, faculty_name
FROM faculty, department, discipline
WHERE faculty.faculty_id = department.faculty_id
AND discipline.department_id = department.department_id
AND faculty_name = 'Other faculties';
--7
SELECT discipline_name, department_name, faculty_name
FROM discipline
INNER JOIN department
ON department.department_id = discipline.department_id
INNER JOIN faculty
ON faculty.faculty_id = department.faculty_id;
--8
SELECT department_name, faculty_name
FROM department
LEFT JOIN faculty
ON faculty.faculty_id = department.faculty_id;
--9
SELECT department_name, faculty_name
FROM department
RIGHT JOIN faculty
ON faculty.faculty_id = department.faculty_id;
--10
CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
	person_name VARCHAR(100),
	father_name VARCHAR(100),
	surname VARCHAR(100));

INSERT INTO person (father_name, person_name, surname)
VALUES	('Іванов', 'Іван', 'Іванович'),
		('Петров', 'Петро', 'Петрович'),
		('Олексієнко', 'Олексій', 'Олексійович')
		
SELECT student_name, father_name, surname
FROM student
UNION SELECT person_name, father_name, surname FROM person;
--11
SELECT student_name, father_name, surname, discipline_name
FROM student
INNER JOIN student_discipline
ON student.student_id = student_discipline.student_id
INNER JOIN discipline
ON student_discipline.discipline_id = discipline.discipline_id;
--12
SELECT student_name, father_name, surname, credit_module_name
FROM student
RIGHT JOIN student_credit_module
ON student.student_id = student_credit_module.student_id
LEFT JOIN credit_module
ON student_credit_module.credit_module_id = credit_module.credit_module_id;
--13
SELECT discipline_name, student_name, father_name, surname
FROM discipline
INNER JOIN student_discipline
ON discipline.discipline_id = student_discipline.discipline_id
INNER JOIN student
ON student_discipline.student_id = student.student_id
WHERE lection_hours > 30
ORDER BY discipline_name;
--14
SELECT discipline_name, student_name, father_name, surname
FROM discipline
INNER JOIN student_discipline
ON discipline.discipline_id = student_discipline.discipline_id
INNER JOIN student
ON student_discipline.student_id = student.student_id
WHERE lection_hours + practic_hours + lab_hours > 30
ORDER BY discipline_name;
--15
SELECT credit_module_name, discipline_name
FROM credit_module
LEFT JOIN discipline
ON credit_module.discipline_id = discipline.discipline_id;
