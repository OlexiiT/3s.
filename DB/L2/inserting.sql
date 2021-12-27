INSERT INTO faculty (faculty_name)
VALUES 	('Факультет інформатики та обчилювальної техніки'),
		('Інститут прикладного системного аналізу'),
		('Факультет біомедичної інженерії');
		
INSERT INTO department (department_name, faculty_id) 
VALUES	('Кафедра інформатики та програмної інженерії', 1),
		('Кафедра обчислювальної техніки', 1),
		('Кафедра інформаційних систем та технологій', 1),
		('Кафедра математичних методів системного аналізу', 2),
		('Кафедра системного проектування', 2),
		('Кафедра біомедичної кібернетики', 3),
		('Кафедра біомедичної інженерії', 3),
		('Кафедра біобезпеки і здоров''я людини', 3),
		('Кафедра трансляційної біомедичної інженерії', 3);

INSERT INTO discipline (discipline_name, lection_hours, practic_hours, lab_hours, credits, attestation_type)
VALUES	('Іноземна мова', 10, 20, 10, 4, 'test'),
		('Теорія ймовірностей', 10, 20, 10, 3, 'test'),
		('Групова динаміка та комунікації', 10, 20, 10, 3, 'test'),
		('Бази даних', 10, 20, 10, 3, 'exam'),
		('Компоненти програмної інженерії', 10, 20, 10, 4, 'test'),
		('Проектування алгоритмів', 10, 20, 10, 3, 'test'),
		('Системне програмне забезпечення', 10, 20, 10, 3, 'exam'),
		('Програмування веб-застосувань', 10, 20, 10, 3, 'exam'),
		('Ймовірнісні моделі та статистичне оцінювання в інформаційно-управляючих системах', 
		 10, 20, 10, 3, 'test'),
		('Аналіз даних в інформаційних системах', 10, 20, 10, 3, 'test'),
		('Мультипарадигменне програмування', 10, 20, 10, 3, 'test'),
		('Розумні міста', 10, 20, 10, 3, 'test'),
		('Евристика', 10, 20, 10, 3, 'test'),
		('Політична наука', 10, 20, 10, 3, 'test'),
		('Ігрові види спорту', 10, 20, 10, 3, 'test'),
		('Силові види спорту', 10, 20, 10, 3, 'test');
		
INSERT INTO credit_module (credit_module_name, lection_hours, practic_hours, lab_hours, 
						   credits, attestation_type)
VALUES	('Іноземна мова - 1', 5, 10, 5, 2, 'test'),
		('Іноземна мова - 2', 5, 10, 5, 2, 'test'),
		('Компоненти програмної інженерії - 1', 5, 10, 5, 2, 'test'),
		('Компоненти програмної інженерії - 2', 5, 10, 5, 2, 'test');
		
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
		('Потьомін', 'Ігор', 'Олексійович'),
		('Дьякон', 'Григорій', 'Юрійович'),
		('Швачко', 'Олег', 'Русланович'),
		('Мазуренко', 'Катерина', 'Володимирівна'),
		('Новікова', 'Іванна', 'Денисівна'),
		('Ель-Мансур', 'Абі', 'Бакр'),
		('Гончарова', 'Наталія', 'Євгенівна'),
		('Маєвський', 'Дмирто', 'Володимирович'),
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
