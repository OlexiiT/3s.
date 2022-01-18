
CREATE TABLE inserting_logs
(
  student_id text,
  inserted timestamp without time zone
);


CREATE TABLE updating_logs
(
  student_id text,
  updated timestamp without time zone
);


CREATE TABLE deleting_logs
(
  student_id text,
  deleted timestamp without time zone
);


CREATE OR REPLACE FUNCTION add_to_logs() RETURNS TRIGGER AS 
$$
DECLARE
    astr varchar(100);
BEGIN
    IF    TG_OP = 'INSERT' THEN
        astr = NEW.student_id;
        INSERT INTO inserting_logs(student_id, inserted) 
		VALUES (astr, NOW());
        RETURN NEW;
		
    ELSIF TG_OP = 'UPDATE' THEN
        astr = NEW.student_id;
        INSERT INTO updating_logs(student_id, updated) 
		VALUES (astr, NOW());
        RETURN NEW;
		
    ELSIF TG_OP = 'DELETE' THEN
        astr = OLD.student_id;
        INSERT INTO deleting_logs(student_id, deleted) 
		VALUES (astr, NOW());
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER t_student
AFTER INSERT OR UPDATE OR DELETE ON student FOR EACH ROW EXECUTE PROCEDURE add_to_logs ();

INSERT INTO student (surname, student_name, father_name) 
VALUES ('Іванов', 'Іван', 'Іванович');

UPDATE student
SET surname = 'Дмитренко'
WHERE surname = 'Іванов';


DELETE FROM student
WHERE surname = 'Дмитренко';

--SELECT * FROM student;
--SELECT * FROM inserting_logs;
--SELECT * FROM updating_logs;
--SELECT * FROM deleting_logs;



