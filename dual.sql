--dual - single row, single colomn  table
-- SQL is a declarative languages
-- dual is a dummy table

SELECT 10+29 AS SUM FROM dual;

SELECT * FROM dual;

--String functions:

--UPPER(string): 
--INITCAP(string) converts the first letter of each word into uppercase
--LENGTH(String): number of characters in that string
--SUBSTR(string,start,no_of_pos from start): used to bring sub_string from a original string
--Concatenation operator in SQL(||)   'i' || 'love' || '

SELECT SUBSTR('Technical Hub',1,1) || SUBSTR('Technical Hub',-1,1) AS concatination_str FROM dual;

CREATE TABLE dual(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);
DROP TABLE dual;
INSERT INTO dual VALUES(1,'CHARAN');INSERT INTO dual VALUES(1,'CHARAN');

I


--REPLACE(string,substring,new_string) : Replaces every occurence of sub_string with new_string
SELECT REPLACE('10-21-44' , '-' , ':') AS time FROM dual;

--INSTR( string,sub_string,start_pos,occurence_no) 
--Used to find the nth occurence of sub_string in a given string

SELECT INSTR('ORACLE SQL','SQL',1,1)  FROM dual;

SELECT INSTR('TECHNICAL HUB HUB','CAL',2,1) FROM dual;

--TRIM(character FROM string): TRIM the trailing character appearences from the string

SELECT TRIM('*' FROM '***SQL***') FROM dual;

--LPAD(string,no_of_chars,pad_char)
--Used to left pad the string into specified number of characters
--with given pad character

SELECT LPAD('sql',10,'**') FROM dual;

SELECT RPAD('her',10,'che') FROM dual;

SELECT ABS(993.3),ABS(-22),ABS(-883.22) FROM dual;

SELECT CEIL(993.3),CEIL(-22.5),CEIL(-883.22) FROM dual;
SELECT FLOOR(993.3),CEIL(-22.5),FLOOR(-883.22) FROM dual;


-- SYSDATE -> Used to give current date and time

SELECT SYSDATE FROM DUAL;

--1. change NLS_DATE_FORMAT such that it will show time also Use a function called TO_CHAR

SELECT TO_CHAR(SYSDATE,'DD-MM-YYYY HH:MI:SS AM') AS CURRENT_TIME_AND_DATE FROM DUAL;  --to find the present time and date;

--FIND DAY

SELECT TO_CHAR(DATE '2029-12-7','DAY') FROM dual;  --TO find the date.

SELECT TO_CHAR(SYSDATE, 'HH') FROM dual; --to find the present hour
SELECT TO_CHAR(SYSDATE, 'MM') FROM dual;
SELECT TO_CHAR(SYSDATE, 'YYYY') FROM dual;

-- Creating the student table
CREATE TABLE student(
    id INT
);

-- Inserting data into the student table
INSERT INTO student VALUES(1);
INSERT INTO student VALUES(4);
INSERT INTO student VALUES(3);

-- Creating the course table
CREATE TABLE course(
    id INT
);

-- Inserting data into the course table
INSERT INTO course VALUES(1);
INSERT INTO course VALUES(102);
INSERT INTO course VALUES(101);

-- Creating the enrollments table
CREATE TABLE enrollments(
    id INT PRIMARY KEY,
    stu_id INT REFERENCES student(id),
    course_id INT REFERENCES course(id),
    enrollment_date DATE
);
DROP TABLE ENROLLMENTS;

INSERT INTO enrollments VALUES(1, 2, 102, SYSDATE);
INSERT INTO enrollments VALUES(2, 4, 101, SYSDATE);
INSERT INTO enrollments VALUES(3, 1, 102, SYSDATE);


SELECT id, stu_id, course_id, TO_CHAR(enrollment_date,'DD-MM-YYYY  HH-MI-SS AM') FROM enrollments;


SELECT s.id AS student_id, e.id AS enrollment_id, e.enrollment_date 
FROM enrollments e 
JOIN student s ON e.stu_id = s.id;

SELECT TO_CHAR(DATE '2029-5-2','DAY') FROM DUAL;

--ADD MONTHS

SELECT ADD_MONTHS(SYSDATE,11) FROM dual;

--MONTHS_BETWEEN() GIVES HOW MANY MONTHS ARE THERE IN BETWEEN TWO DATES

SELECT ROUND(ABS(MONTHS_BETWEEN(DATE '2025-02-05',DATE '2028-06-11')/12)) FROM dual;


--NEXT DAY()
--NEXT_DAY(date,'day_name')

SELECT NEXT_DAY(DATE '2025-07-02','SATURDAY') FROM DUAL;  --OUTPUT

--LAST_DAY() GIVES THE LAST DATA OF THE MONTH


SELECT LAST_DAY(SYSDATE) FROM DUAL;

SELECT LAST_DAY(DATE '2030-2-3') FROM DUAL;     --OUTPUT:28-02-30


--SYSTIMESTAMP

SELECT SYSTIMESTAMP FROM DUAL;

SELECT SYSTIMESTAMP AT TIME ZONE '+5:30' AS PRESENTTIME FROM DUAL;

SELECT TO_CHAR(SYSTIMESTAMP AT TIME ZONE '+5:30','MM') AS PRESENTTIME FROM DUAL;

SELECT TO_CHAR(SYSTIMESTAMP AT TIME ZONE '+5:30','HH') AS PRESENTTIME FROM DUAL;

SELECT TO_CHAR(SYSTIMESTAMP AT TIME ZONE '-5:00') AS PRESENTTIME_AT_USA FROM DUAL;














