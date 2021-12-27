--1.
ALTER TABLE student
ADD email VARCHAR(20);
--2.
ALTER TABLE student
ALTER COLUMN email TYPE VARCHAR(100);
--3.
ALTER TABLE student
ALTER COLUMN email SET NOT NULL;
--4.
ALTER TABLE student
ALTER COLUMN email DROP NOT NULL;
--5.
ALTER TABLE student
DROP COLUMN email;


ALTER TABLE student
ADD age INT;


--6.
ALTER TABLE student
ADD CHECK (age > 0);
--7.
ALTER TABLE student
ADD UNIQUE (email);
--8.
ALTER TABLE student
RENAME COLUMN phone_number TO phone;
--9.
ALTER TABLE student
RENAME TO person;
--10.
ALTER TABLE faculty
ADD university VARCHAR(100);
--11.
ALTER TABLE department
ADD age INT;
--12.
ALTER TABLE discipline
ADD teacher VARCHAR(100);
--13.
ALTER TABLE credit_module
ADD teacher VARCHAR(100);
