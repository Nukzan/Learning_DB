-- SQLite
CREATE TABLE COMPANY (
    ID REAL NOT NULL,
    NAME TEXT NOT NULL,
    AGE REAL NOT NULL,
    ADDRESS TEXT,
    SALARY REAL
);

-- INSERT SYNTAX
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) VALUES (1, 'PAUL', 32, 'CALIFORNIA', 20000.00);
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) VALUES (2, 'DANA', 25, 'TEXAS', 65000.00);
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) VALUES (3, 'REEL', 23, 'NORWAY', 15000.00);
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) VALUES (4, 'YUN', 25, 'RICH-MOND', 20000.00);
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) VALUES (5, 'DAISEY', 27, 'TEXAS', 85000.00);
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) VALUES (6, 'ILLAN', 22, 'SOUTH-HILL', 45000.00);
INSERT INTO COMPANY VALUES (6, 'WOOSE', 24, 'HOUSTON', 10000.00);
INSERT INTO COMPANY VALUES (7, 'DALY', 24, 'HOUSTON', 30000.00);

-- SELECT SYNTAX
SELECT * FROM COMPANY;
SELECT * FROM OLD_COMPANY;
SELECT ID, NAME, SALARY FROM COMPANY;

-- INSERT & SELECT COLLABORATION
INSERT INTO OLD_COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
SELECT ID, NAME, AGE, ADDRESS, SALARY
    FROM COMPANY;

-- DELETE
DELETE FROM OLD_COMPANY WHERE ID = 7;
DELETE FROM OLD_COMPANY;

-- UPDATE
UPDATE OLD_COMPANY SET ADDRESS = 'TEXAS' WHERE ID = 6;