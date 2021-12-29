SELECT COUNT(student_name) AS "Кількість студентів"
FROM student;

SELECT discipline_name, COUNT(discipline_name) AS "Кількість студентів"
FROM student_discipline
INNER JOIN discipline
ON student_discipline.discipline_id = discipline.discipline_id
GROUP BY discipline_name
ORDER BY discipline_name;

SELECT surname, student_name, father_name, SUM(credits) AS "Кількість кредитів"
FROM student_discipline
INNER JOIN student
ON student_discipline.student_id = student.student_id
INNER JOIN discipline
ON student_discipline.discipline_id = discipline.discipline_id
GROUP BY student.student_id
ORDER BY surname, student_name, father_name;

SELECT UPPER(surname), LOWER (student_name), father_name
FROM student
ORDER BY surname;

SELECT student_name, DATE_TRUNC('minute', NOW())
FROM student;

SELECT surname, student_name, father_name, SUM(credits) AS "Кількість кредитів"
FROM student_discipline
INNER JOIN student
ON student_discipline.student_id = student.student_id
INNER JOIN discipline
ON student_discipline.discipline_id = discipline.discipline_id
GROUP BY student.student_id
ORDER BY surname, student_name, father_name;

SELECT surname, student_name, father_name, SUM(credits) AS "Кількість кредитів"
FROM student_discipline
INNER JOIN student
ON student_discipline.student_id = student.student_id
INNER JOIN discipline
ON student_discipline.discipline_id = discipline.discipline_id
GROUP BY surname, student_name, father_name
ORDER BY surname, student_name, father_name;

SELECT surname, student_name, father_name, SUM(credits) AS "Кількість кредитів"
FROM student_discipline
INNER JOIN student
ON student_discipline.student_id = student.student_id
INNER JOIN discipline
ON student_discipline.discipline_id = discipline.discipline_id
GROUP BY student.student_id
HAVING SUM(credits) > 6
ORDER BY surname, student_name, father_name;

SELECT TRUNC(AVG(credits), 3) AS "average_credits"
FROM discipline
HAVING AVG(credits) > 3;

SELECT surname, student_name, father_name
FROM student
ORDER BY surname;
