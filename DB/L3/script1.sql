--1
SELECT student_name, father_name, surname
FROM student;
--2
SELECT discipline_name, lection_hours, practic_hours, lab_hours, credits, attestation_type
FROM discipline;
--3
SELECT discipline_name, lection_hours, practic_hours, lab_hours, credits, attestation_type
FROM discipline
WHERE credits > 3;
--4
SELECT discipline_name, lection_hours, practic_hours, lab_hours, credits, attestation_type
FROM discipline
WHERE credits > 3 AND department_id > 5;
--5
SELECT discipline_name, lection_hours, practic_hours, lab_hours, credits, attestation_type
FROM discipline
WHERE credits > 3 AND NOT department_id = 3;
--6
SELECT discipline_name, lection_hours + practic_hours + lab_hours AS "Total hours"
FROM discipline
WHERE practic_hours + lab_hours > lection_hours;
--7
SELECT student_name, father_name, surname
FROM student
WHERE student_name IN ('Олексій', 'Дмитро', 'Дар''я');
--8
SELECT discipline_name, lection_hours + practic_hours + lab_hours AS "Total hours"
FROM discipline
WHERE lection_hours BETWEEN 50 AND 500;
--9
SELECT student_name, father_name, surname
FROM student
WHERE student_name LIKE '%Оле%';
--10
SELECT student_name, father_name, surname
FROM student
WHERE student_name SIMILAR TO '%(О|Д)%';
--11
SELECT student_name, father_name, surname
FROM student
WHERE adress IS NULL;
--12
SELECT faculty_name
FROM faculty
WHERE faculty_name LIKE '%Інститут%';
--13
SELECT discipline_name, credits
FROM discipline
WHERE discipline_name IN ('Іноземна мова', 'Основи програмування');
--14
SELECT * FROM department;
--15
SELECT student_name, father_name, surname
FROM student
WHERE student_name LIKE '%Микита%'
