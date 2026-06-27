--views --creating different database users
--I created a user called users
--views are called as virtual tables in databases
--views are helpful when you repeatedly fetch the data from either one table or multiple tables
--In those cases instead of writing queries again and agian you cna create a view
--further you can 

--create VIEW view_name AS SELECT 
--Create a view called hr_employees

CREATE VIEW hr_employees AS
SELECT * FROM employee WHERE department = 'HR';

SELECT * FROM hr_employees;

--Creating more views to save some query writing time
--employee(hr,sw,testing,operations)

CREATE VIEW dept_emp_count AS
SELECT DEPARTMENT, COUNT(*) AS DEPT_COUNT FROM employee GROUP BY DEPARTMENT;

--FETCH THE DATE FROM VIEW
SELECT * FROM DEPT_EMP_COUNT;

DELETE FROM EMPLOYEE WHERE ID = 1 OR ID=2; 

--Deleting couple of employees from employee table
--to demonstrate views always fetch the data from source table

SELECT * FROM DEPT_EMP_COUNT;

--create a view eith all the highest slaried employees from each salary

CREATE VIEW max_dept_salary AS
SELECT department, MAX(SALARY) AS dept_max_salary FROM EMPLOYEE GROUP BY DEPARTMENT;

SELECT * FROM max_dept_salary;



--theta join
CREATE VIEW users_star_rating AS
SELECT * FROM USERS u
JOIN STAR_RATING s
ON U.CONTEST_RATING BETWEEN s.start_ AND S.STOP_;

--
SELECT s.star, COUNT(u.id) AS total_users
FROM star_rating s LEFT JOIN users u ON
u.contest_rating BETWEEN s.start_ AND s.stop_
GROUP BY s.star;


--two types of views
--1.updatable view
--a.It must be created on a single table
--b.The source query that constructs the view should not contain DISTINCT,UNION,UNION ALL,INSERTCT,EXCEPT / MINUS
--c.It should nor be created using a JOIN
--d.It shoould contain any single row or aggregate functions
--e.It should not contain GROUP BY
--Updaate views can be update using UPDATE query
--when a view is UPDATED the underlying source table data is updated.

--2.Non-Updatable Views


--Uses
--saving some time of query writing
--data hiding and restricted Access


--Having multiple database Users
--DBADMIN ->student Employees
--Differrent database users,provides each user with their own responsibilites
--Maintains the data of the department emplooyees 

--Creating different database users
--How can we check all the current database users

SELECT * FROM all_users;       --all_users is used to check the database users

SELECT * FROM user_tables;     --command to check all tables from current user

SELECT table_name FROM user_tables;  --Command to check all tables from current user

SELECT view_name FROM user_views;  --Command to check all the views from current user


--only system user has the power to create more users
--If you wnat to create more databases users you need to login as system


--Inspecting the privileges SYSTEM is having

SELECT * from session_privs;

--Creating a user for HR department 

CREATE USER c##hdo IDENTIFIED BY 2025;      --c## is used as prefix for the username

--check if the user is present in the  users list

SELECT * FROM all_users;
--GRANTING privileges to created users

GRANT CREATE SESSION TO c##hdo;

GRANT CREATE TABLE TO c##hdo;

GRANT SELECT ON system.hr_employees TO c##hdo;

SELECT * FROM C

















