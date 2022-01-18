DROP TABLE IF EXISTS test;
CREATE TABLE test
(
    column1 text
);
INSERT INTO test
VALUES ('text1'),
	('text2');

CREATE OR REPLACE FUNCTION reffunction(refcursor)
    RETURNS refcursor
AS
$$
BEGIN
    OPEN $1 FOR SELECT column1 FROM test;
    RETURN $1;
END;
$$
    LANGUAGE plpgsql;

BEGIN;
SELECT reffunction('funccursor');
FETCH ALL IN funccursor;
COMMIT;
