
CREATE TABLE STUDENTS(
   ID INT PRIMARY KEY,
   NAME VARCHAR(50),
   DEPARTMENT_CODE VARCHAR(50)
--   FOREIGN KEY (DEPARTMENT_CODE) REFERENCES DEPARTMENTS(DEPT_CODE)
);

DROP TABLE STUDENTS;


CREATE TABLE DEPARTMENTS(  
   DEPT_CODE VARCHAR(10) PRIMARY KEY,
   DEPT_NAME VARCHAR(50)
);
INSERT INTO DEPARTMENTS VALUES('CSE','COMPUTER SCIENCE AND ENGINEERING');
INSERT INTO DEPARTMENTS VALUES('IT','INFORMATION TECHNOLOGY');
INSERT INTO DEPARTMENTS VALUES('AIML','ARTIFICIAL INTELLIGENCE AND MACHINCE LEARNING');
INSERT INTO DEPARTMENTS VALUES('MECH','MECHANICAL ENGINEERING');
INSERT INTO DEPARTMENTS VALUES('IOT','INTERNET ON THINGS');
INSERT INTO DEPARTMENTS(DEPT_CODE) VALUES('AGRI');

ALTER TABLE DEPARTMENTS MODIFY DEPT_CODE VARCHAR(50);


INSERT INTO STUDENTS VALUES(1,'AJAY','CSE');
INSERT INTO STUDENTS VALUES(2,'RAJU','AIML');
INSERT INTO STUDENTS VALUES(3,'VISHWAK','IT');
INSERT INTO STUDENTS VALUES(4,'PRANITHA','MECH');
INSERT INTO STUDENTS VALUES(5,'SWATIROJHA','AIML');
INSERT INTO STUDENTS(Id,Name) VALUES(6,'RUSHITHA');
INSERT INTO STUDENTS VALUES(7,'SIRISHA','CSE');
INSERT INTO STUDENTS VALUES(8,'PRANATHI','IT');


SELECT * FROM STUDENTS;

----------------------------------------------------------------JOINS---------------------------------------------------------------------

-------------- 1. Inner Join
-- An INNER JOIN combines rows from two or more tables by matching values in the ON condition and returns only the rows that satisfy that condition.
SELECT S.NAME,D.DEPT_NAME FROM STUDENTS S INNER JOIN  DEPARTMENTS D ON S.DEPARTMENT_CODE = D.DEPT_CODE;





---------------2.LEFT Join
--A LEFT JOIN retrieves all rows from the left table and the matching rows from the right table based on the ON condition. 
--If there is no matching row in the right table, the columns from the right table are returned as NULL.
SELECT S.NAME,D.DEPT_NAME FROM STUDENTS S LEFT JOIN DEPARTMENTS D ON S.DEPARTMENT_CODE = D.DEPT_CODE;




------------------3. RIGHT JOIN
-- A RIGHT JOIN retrieves all the rows from the right table and matching rows from the left based on the ON condition. 
--If there is no matching row in the left table, the columns of the left table are returned as NULL.
SELECT S.NAME,D.DEPT_NAME FROM STUDENTS S RIGHT JOIN DEPARTMENTS D ON S.DEPARTMENT_CODE = D.DEPT_CODE;



-------------------4. FULL OUTER JOIN (RIGHT JOIN + LEFT JOIN)
--A FULL OUTER JOIN retrieves all rows from both tables based on the ON condition. If there is no matching row in either table, the columns of the other table are returned as NULL.
SELECT S.NAME,D.DEPT_NAME FROM STUDENTS S FULL OUTER JOIN DEPARTMENTS D ON S.DEPARTMENT_CODE = D.DEPT_CODE;


------------------5.CROSS JOIN
--A CROSS JOIN returns the Cartesian product of two tables. Every row from the first table is combined with every row from the second table.THERE IS NO "ON" CONDTION
SELECT S.NAME,D.DEPT_NAME FROM STUDENTS S CROSS JOIN DEPARTMENTS D;

-----------------------6.SELF JOIN
--A SELF JOIN is a join in which a table is joined with itself using aliases. There is no special SELF JOIN keyword.You use INNER JOIN or LEFT JOIN on the same table.

create table selfemployee(
   EMP_ID INT PRIMARY KEY,
   EMP_NAME VARCHAR(50),
   MNG_ID INT
);

INSERT INTO SELFEMPLOYEE VALUES(1,'AMIT',2);
INSERT INTO SELFEMPLOYEE VALUES(2,'VISWAK',3);
INSERT INTO SELFEMPLOYEE VALUES(3,'AYUSH',1);
INSERT INTO SELFEMPLOYEE VALUES(4,'KYATI',5);

SELECT e.emp_name, m.emp_name FROM SELFEMPLOYEE e INNER JOIN SELFEMPLOYEE m ON E.EMP_ID = M.MNG_ID;


---------------------------------------------------------------------------------------------------------

--1.Display all departments that do not have any students.
SELECT D.DEPT_NAME FROM STUDENTS S RIGHT JOIN DEPARTMENTS D ON S.DEPARTMENT_CODE = D.DEPT_CODE WHERE S.NAME IS NULL AND D.DEPT_NAME IS NOT NULL;

--Write a query to display:
--Department Name      Number of Students

select d.dept_name,count(s.name) from students s right join departments d on s.department_code = d.dept_code group by d.dept_name;