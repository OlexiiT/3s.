INSERT INTO faculty (faculty_name)
VALUES 	('Факультет інформатики та обчиcлювальної техніки'),
		('Інститут прикладного системного аналізу'),
		('Факультет біомедичної інженерії'),
		('Other faculties');
		
INSERT INTO department (department_name, faculty_id) 
VALUES	('Кафедра інформатики та програмної інженерії', 1),
		('Кафедра обчислювальної техніки', 1),
		('Кафедра інформаційних систем та технологій', 1),
		('Кафедра математичних методів системного аналізу', 2),
		('Кафедра системного проектування', 2),
		('Кафедра біомедичної кібернетики', 3),
		('Кафедра біомедичної інженерії', 3),
		('Кафедра біобезпеки і здоров''я людини', 3),
		('Кафедра трансляційної біомедичної інженерії', 3),
		('Other departments', 4);

INSERT INTO discipline (discipline_name, lection_hours, practic_hours, lab_hours, credits,
						attestation_type, department_id)
VALUES	('Іноземна мова', 10, 20, 10, 4, 'test', 10),
		('Теорія ймовірностей', 10, 20, 10, 3, 'test', 10),
		('Групова динаміка та комунікації', 10, 20, 10, 3, 'test', 1),
		('Бази даних', 10, 20, 10, 3, 'exam', 2),
		('Компоненти програмної інженерії', 10, 20, 10, 4, 'test', 3),
		('Проектування алгоритмів', 10, 20, 10, 3, 'test', 1),
		('Системне програмне забезпечення', 10, 20, 10, 3, 'exam', 2),
		('Програмування веб-застосувань', 10, 20, 10, 3, 'exam', 3),
		('Ймовірнісні моделі та статистичне оцінювання в інформаційно-управляючих системах', 
		 10, 20, 10, 3, 'test', 4),
		('Аналіз даних в інформаційних системах', 10, 20, 10, 3, 'test', 5),
		('Мультипарадигменне програмування', 10, 20, 10, 3, 'test', 4),
		('Розумні міста', 10, 20, 10, 3, 'test', 10),
		('Евристика', 10, 20, 10, 3, 'test', 10),
		('Політична наука', 10, 20, 10, 3, 'test', 10),
		('Ігрові види спорту', 10, 20, 10, 3, 'test', 6),
		('Силові види спорту', 10, 20, 10, 3, 'test', 7);
		
INSERT INTO credit_module (credit_module_name, lection_hours, practic_hours, lab_hours, 
						   credits, attestation_type, discipline_id)
VALUES	('Іноземна мова - 1', 5, 10, 5, 2, 'test', 1),
		('Іноземна мова - 2', 5, 10, 5, 2, 'test', 1),
		('Компоненти програмної інженерії - 1', 5, 10, 5, 2, 'test', 5),
		('Компоненти програмної інженерії - 2', 5, 10, 5, 2, 'test', 5);
		
INSERT INTO student (student_name, surname, father_name)
VALUES	('Олексій', 'Олексієнко', 'Олексійович'),
		('Олексій', 'Олексієнко', 'Олександрович'),
		('Олексій', 'Олександренко', 'Олексійович'),
		('Олексій', 'Олександренко', 'Олександрович'),
		('Олександр', 'Олексієнко', 'Олексійович'),
		('Олександр', 'Олексієнко', 'Олександрович'),
		('Олександр', 'Олександренко', 'Олексійович'),
		('Олександр', 'Олександренко', 'Олександрович'),
		('Гурська', 'Катерина', 'Сергіївна'),
		('Самарін', 'Євген', 'Євгенович'),
		('Дзиговський', 'Владислав', 'Ігорович'),
		('Потьомкін', 'Ігор', 'Олексійович'),
		('Дьякон', 'Григорій', 'Юрійович'),
		('Швачко', 'Олег', 'Русланович'),
		('Мазуренко', 'Катерина', 'Володимирівна'),
		('Новікова', 'Іванна', 'Денисівна'),
		('Ель-Мансур', 'Абі', 'Бакр'),
		('Гончарова', 'Наталія', 'Євгенівна'),
		('Маєвський', 'Дмитро', 'Володимирович'),
		('Голік', 'Максим', 'Володимирович'),
		('Поліщук', 'Анна', 'Олександрівна'),
		('Сохацька', 'Софія', 'Максимівна'),
		('Молнар', 'Андрій', 'Сергійович'),
		('Малінко', 'Гліб', 'Євгенович'),
		('Случинський', 'Дмитро', 'Юрійович'),
		('Случинська', 'Катерина', 'Юріївна'),
		('Морозов', 'Павло', 'Віталійович'),
		('Дмитрук', 'Аліна', 'Сергіївна'),
		('Кобрін', 'Ілля', 'Павлович'),
		('Лобачевський', 'Ілля', 'Дмитрович'),
		('Лагойда', 'Станіслав', 'Ігорович'),
		('Дубіцька', 'Яна', 'Дмитрівна'),
		('Ігнатюк', 'Богдан', 'Володимирович'),
		('Остраков', 'Олексій', 'Андрійович'),
		('Подольський', 'Микита', 'Володимирович'),
		('Іванова', 'Євгенія', 'Сергіївна'),
		('Мисак', 'Олександр', 'Кирилович'),
		('Халупко', 'Євгеній', 'Сергійович'),
		('Коваленко', 'Олександр', 'Володимирович'),
		('Коваленко', 'Іван', 'Дмитрович'),
		('Лисенко', 'Іван', 'Анатолійович'),
		('Бурков', 'Нікіта', 'Дмитрович'),
		('Куртов', 'Єгор', 'Юрійович'),
		('Зіркатий', 'Дмитро', 'Олександрович'),
		('Кривоножко', 'Віктор', 'Миколайович'),
		('Азорський', 'Володимир', 'Олександрович'),
		('Нехаєнко', 'Ігор', 'Сергійович'),
		('Пастушок', 'Катерина', 'Вадимівна'),
		('Пастушенко', 'Сергій', 'Сергійович'),
		('Краковецький', 'Сергій', 'Сергійович'),
		('Биков', 'Єгор', 'Михайлович'),
		('Шульгін', 'Данил', 'Віталійович'),
		('Кобрін', 'Іван', 'Павлович'),
		('Фоков', 'Володимир', 'Петрович'),
		('Лапікура', 'Марія', 'Богданівна'),
		('Хропачов', 'Іван', 'Глібович'),
		('Коцюруба', 'Микита', 'Платонович'),
		('Стукаленко', 'Надія', 'Олександрівна'),
		('Гамоцький', 'Зіновій', 'Віталійович');

INSERT INTO student_discipline (student_id, discipline_id)
VALUES	(1, 17),	(1, 16),
		(2, 3),		(2, 10),
		(3, 7),		(3, 15),
		(4, 15),	(4, 6),
		(5, 5),		(5, 13),
		(6, 9),		(6, 13),
		(7, 5),		(7, 2),
		(8, 12),	(8, 5),
		(9, 8),		(9, 5),	
		(10, 5),	(10, 11),
		(11, 7),	(11, 11),
		(12, 11),	(12, 6),
		(13, 17),	(13, 4),
		(14, 15),	(14, 10),
		(15, 5),	(15, 17),
		(16, 17),	(16, 2),
		(17, 12),	(17, 14),
		(18, 16),	(18, 14),
		(19, 17),	(19, 2),
		(20, 15),	(20, 13),
		(21, 9),	(21, 12),
		(22, 4),	(22, 11),
		(23, 13),	(23, 1),
		(24, 6),	(24, 17),
		(25, 3),	(25, 11),
		(26, 8),	(26, 16),
		(27, 13),	(27, 12),
		(28, 5),	(28, 3),
		(29, 15),	(29, 1),
		(30, 17),	(30, 7),
		(31, 2),	(31, 5),
		(32, 9),	(32, 15),	
		(33, 7),	(33, 15),
		(34, 15),	(34, 14),
		(35, 15),	(35, 12),
		(36, 9),	(36, 13),
		(37, 13),	(37, 8),
		(38, 14),	(38, 11),
		(39, 3),	(39, 17),
		(40, 2),	(40, 6),		
		(41, 9),	(41, 3),
		(42, 9),	(42, 17),
		(43, 10),	(43, 14),
		(44, 5),	(44, 4),
		(45, 7),	(45, 11),
		(46, 4),	(46, 2),
		(47, 1),	(47, 14),
		(48, 8),	(48, 10),
		(49, 3),	(49, 10),
		(50, 1),	(50, 8),
		(51, 12),	(51, 13),
		(52, 15),	(52, 11),
		(53, 10),	(53, 11),
		(54, 15),	(54, 3),
		(55, 8),	(55, 1),
		(56, 17),	(56, 13),
		(57, 2),	(57, 1),
		(58, 2),	(58, 6),
		(59, 17),	(59, 10);


INSERT INTO student_credit_module (student_id, credit_module_id)
VALUES	(1, 1),
		(2, 1),
		(3, 1),
		(4, 2),
		(5, 2),
		(6, 4),
		(7, 1),
		(8, 3),
		(9, 4),
		(10, 3),
		(11, 1),
		(12, 1),
		(13, 3),
		(14, 4),
		(15, 1),
		(16, 3),
		(17, 4),
		(18, 4),
		(19, 4),
		(20, 2),
		(21, 4),
		(22, 1),
		(23, 3),
		(24, 2),
		(25, 4),
		(26, 4),
		(27, 3),
		(28, 4),
		(29, 1),
		(30, 2),
		(31, 3),
		(32, 3),
		(33, 3),
		(34, 4),
		(35, 2),
		(36, 2),	
		(37, 2),
		(38, 1),
		(39, 1),
		(40, 4),
		(41, 4),
		(42, 4),
		(43, 2),
		(44, 2),
		(45, 3),
		(46, 1),
		(47, 4),
		(48, 2),
		(49, 1),
		(50, 1),
		(51, 3),
		(52, 1),		
		(53, 3),
		(54, 3),
		(55, 3),
		(56, 1),
		(57, 1),
		(58, 2),
		(59, 4);
