------------------------------------------------------Subqueries--------------
select * from employee where salary = (SELECT max(salary) from employee);

select * from employee where salary < (select max(salary) from employee) order by salary desc fetch first 1 rows only;

-- <> it is not equal
select * from employee where department <> (select department from employee where salary = (select max(salary) from employee));


--------------------------------------MULTIPLE VALUES( IN , ANY, EXISTS, NOT EXISTS,NOT IN, ALL)---------------------------------------
select * from employee where gender in ('Male','Female',NULL);
select * from employee where salary > any(select salary from employee where department = 'SW');
select * from employee where salary > ALL(select salary from employee where department = 'SW' AND salary is not null);


--IN compares a value with a list of values returned by the subquery.
--EXISTS does not compare values. It only checks whether the subquery returns one or more rows.
select * from employee where exists (select * from employee where department = 'hr');
select * from employee where exists (select * from employee where department = 'HR');


--1.Find all employees who earn more than the average salary of their own department.
SELECT salary,department,(
        SELECT AVG(s.SALARY)
        FROM EMPLOYEE s
        WHERE s.DEPARTMENT = e.DEPARTMENT
    ) AS AVG_DEPT_SALARY FROM EMPLOYEE e where salary > (select avg(s.salary)from employee s where department = e.department) ;

--3.Find all employees whose salary is greater than every employee in the SW department.
SELECT * FROM EMPLOYEE WHERE SALARY > ALL(SELECT SALARY FROM EMPLOYEE WHERE DEPARTMENT = 'SW' AND SALARY IS NOT NULL);

--4.Find all departments that have at least one employee earning more than ₹1,00,000.
SELECT DISTINCT E1.DEPARTMENT FROM EMPLOYEE E1 WHERE EXISTS(SELECT * FROM EMPLOYEE E2 WHERE E1.DEPARTMENT = E2.DEPARTMENT AND E2.SALARY > 80000);

--5.Find employees who belong to departments where no employee has a NULL salary.
SELECT * FROM EMPLOYEE E1 WHERE NOT EXISTS(SELECT * FROM EMPLOYEE E2 WHERE E1.DEPARTMENT = E2.DEPARTMENT AND E2.SALARY IS NULL);

--6.Find employees whose salary is the highest in their own department.
select * from employee e1 where exists (select * from employee e2 where department = e1.department having e1.salary = max(salary));



-------------------------------------------------------------------------SET OPERATIONS -------------------------------------------------------
--Set Operators are SQL operators used to combine the results of two or more SELECT statements into a single result set. 
--The SELECT statements must return the same number of columns with compatible data types.

--1.UNION combines the results of two or more SELECT statements into a single result set and automatically removes duplicate rows.
SELECT NAME FROM EMPLOYEE UNION SELECT NAME FROM EMPLOYEE;
--2.UNION ALL combines the results of two or more SELECT statements into a single result set and retains all rows, including duplicates.
SELECT NAME FROM EMPLOYEE UNION ALL SELECT NAME FROM EMPLOYEE;
--3.INTERSECT returns only the rows that are common to the result sets of both SELECT statements.
--4.MINUS (Oracle) or EXCEPT (SQL Server, PostgreSQL, MySQL 8.0.31+) returns the rows that are present in the first SELECT statement but not in the second.


----------------------------------------------------------------------------------------------------------------------------------------------