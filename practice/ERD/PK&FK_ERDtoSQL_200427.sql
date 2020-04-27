-- SQLite

-- CREATE TABLE FROM ERD SQL CODE
-- NEED TO COPY AND PASTE 'ALTER TABLE' PHRASE IN THE "CREATE TABLE" PHRASE
CREATE TABLE DEPARTMENT
(
  DEPARTMENT_ID TEXT NOT NULL,
  NAME          TEXT NULL    ,
  PRIMARY KEY (DEPARTMENT_ID)
);

CREATE TABLE HOBBY
(
  HOBBY_ID TEXT NOT NULL,
  NAME     TEXT NULL    ,
  PRIMARY KEY (HOBBY_ID)
);

CREATE TABLE MEMBER
(
  MEMBER_ID     TEXT NOT NULL,
  NAME          TEXT NOT NULL,
  AGE           INT  NULL    ,
  ADDRESS       TEXT NULL    ,
  SALARY        INT  NULL    ,
  DEPARTMENT_ID TEXT NOT NULL,
  PRIMARY KEY (MEMBER_ID),
 CONSTRAINT FK_DEPARTMENT_TO_MEMBER
    FOREIGN KEY (DEPARTMENT_ID)
    REFERENCES DEPARTMENT (DEPARTMENT_ID) 
);

CREATE TABLE MEMBER_HOBBY
(
  MEMBER_ID TEXT NOT NULL,
  HOBBY_ID  TEXT NOT NULL,
CONSTRAINT FK_MEMBER_TO_MEMBER_HOBBY
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID),
CONSTRAINT FK_HOBBY_TO_MEMBER_HOBBY
    FOREIGN KEY (HOBBY_ID)
    REFERENCES HOBBY (HOBBY_ID)
);


-- INSERTING VALUES IN THE TABLES

INSERT INTO DEPARTMENT VALUES ('IT','IT BILLING');
INSERT INTO DEPARTMENT VALUES ('ENGN','ENGINEERING');

INSERT INTO HOBBY VALUES ('WALK', 'WALK');
INSERT INTO HOBBY VALUES ('CLMB', 'CLIMBING');
INSERT INTO HOBBY VALUES ('READ', 'READ');

INSERT INTO MEMBER VALUES ('P3CI', 'PAULA',32,'CALIFORNIA',20000, 'IT');
INSERT INTO MEMBER VALUES ('A2TE', 'ALLEN',25,'TEXAS',15000, 'ENGN');
INSERT INTO MEMBER VALUES ('T2NI', 'TESSY',23,'NORWAY',20000, 'IT');
INSERT INTO MEMBER VALUES ('J4NI', 'PAULA',44,'CALIFORNIA',50000, 'IT');

INSERT INTO MEMBER_HOBBY VALUES ('P3CI', 'WALK');
INSERT INTO MEMBER_HOBBY VALUES ('P3CI', 'CLNB');
INSERT INTO MEMBER_HOBBY VALUES ('P3CI', 'READ');
INSERT INTO MEMBER_HOBBY VALUES ('A2TE', 'WALK');
INSERT INTO MEMBER_HOBBY VALUES ('A2TE', 'READ');
INSERT INTO MEMBER_HOBBY VALUES ('T2NI', 'CLMB');
INSERT INTO MEMBER_HOBBY VALUES ('T2NI', 'READ');
INSERT INTO MEMBER_HOBBY VALUES ('J4NI', 'WALK');