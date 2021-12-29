CREATE VIEW foreign_lang_list
	AS SELECT student.student_id, surname, student_name, father_name,  department_id
	FROM student
	INNER JOIN student_discipline ON student_discipline.student_id = student.student_id
	INNER JOIN discipline ON student_discipline.discipline_id = discipline.discipline_id
	WHERE discipline_name = 'Іноземна мова'
	ORDER BY surname, student_name, father_name;
	
SELECT * FROM foreign_lang_list;

CREATE VIEW ttt
	AS SELECT student_id, surname, student_name, father_name, department_name
	FROM foreign_lang_list
	INNER JOIN department ON foreign_lang_list.department_id = department.department_id	

SELECT * FROM ttt;

ALTER VIEW ttt RENAME TO new_foreign_lang_list;
SELECT * FROM new_foreign_lang_list;
