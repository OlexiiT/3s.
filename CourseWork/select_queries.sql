--1 
SELECT city_name
FROM city;

--2
SELECT CONCAT(last_name, ' ', first_name, ' ', father_name) AS "ПІБ", birthday, email, phone
FROM client;

--3
SELECT CONCAT(last_name, ' ', first_name, ' ', father_name) AS "ПІБ", birthday, email, phone
FROM employee;

--4		Виведемо контакти усіх працівників, в яких день народження у липні
SELECT CONCAT(last_name, ' ', first_name, ' ', father_name) AS "ПІБ", birthday, email, phone, address
FROM employee
WHERE EXTRACT(MONTH FROM birthday) = 7
ORDER BY last_name, first_name, father_name;

--5		Виведемо кількість працівників, в яких день народження у липні
SELECT COUNT(employee_id)
FROM employee
GROUP BY EXTRACT(MONTH FROM birthday)
HAVING EXTRACT(MONTH FROM birthday) = 7;

--6
SELECT client_id, last_name, first_name, city_name
FROM client INNER JOIN city ON city.city_id = client.city_id;

--7
SELECT client_id, last_name, first_name, city_name
FROM client INNER JOIN city ON city.city_id = client.city_id
WHERE city_name LIKE 'Рівне';

--8
SELECT COUNT(client_id)
FROM client INNER JOIN city ON city.city_id = client.city_id
GROUP BY city_name
HAVING city_name LIKE 'Рівне';

--9
SELECT description, client.client_id, last_name, first_name, city_name
FROM client INNER JOIN city ON city.city_id = client.city_id
INNER JOIN orders ON orders.client_id = client.client_id
WHERE city_name LIKE 'Харків';

--10 
SELECT * FROM employee
INNER JOIN department ON department.department_id = employee.department_id
INNER JOIN task ON task.department_id = department.department_id
WHERE task_description LIKE 'Домовитися про показ реклами';

--11
SELECT last_name, first_name, father_name, email, phone
FROM employee
INNER JOIN department ON department.department_id = employee.department_id
INNER JOIN task ON task.department_id = department.department_id
WHERE task_description LIKE 'Створити ілюстрацію'
OR task_description LIKE 'Придумати лозунг';

--12 
SELECT * FROM billboard
WHERE age(date_end) > '00';

--12 
SELECT * FROM billboard
INNER JOIN city ON city.city_id = billboard.city_id
WHERE age(date_end) > '00'
AND city_name LIKE 'Рівне';

--13
SELECT channel_name, phone, city_name
FROM tv_channel INNER JOIN city ON city.city_id = tv_channel.city_id;

--14
SELECT printery_name, phone 
FROM printery INNER JOIN city ON printery.city_id = city.city_id
WHERE city_name LIKE 'Одеса';

--15
SELECT last_name, first_name, father_name, email, phone, salary
FROM employee
WHERE salary < '40000'
ORDER BY salary DESC;

--16 
SELECT * FROM client
WHERE first_name LIKE 'Тетяна';

--17
SELECT last_name, first_name, father_name, city_name
FROM client INNER JOIN city ON city.city_id = client.city_id
WHERE first_name LIKE 'Т%';

--18
SELECT last_name, first_name, father_name, city_name
FROM client INNER JOIN city ON city.city_id = client.city_id
WHERE father_name LIKE 'Євген%' OR city_name LIKE 'К%';

--19
SELECT * FROM employee
WHERE email LIKE '%@_____.com';

--20
SELECT COUNT(last_name) FROM employee
WHERE email LIKE '%@_____.com'

--21
SELECT SUM(salary) FROM employee
WHERE email LIKE '%@_____.com'

--22
SELECT SUM(salary) FROM employee 
INNER JOIN office ON employee.office_id = office.office_id 
INNER JOIN city ON city.city_id = office.city_id
WHERE city_name LIKE 'Київ';
