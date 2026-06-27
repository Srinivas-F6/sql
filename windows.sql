--Window functions :

--RANK()
--RANK() finction is used give ranks to your data (row-wise)  based on either one coloumn or sometimes multiple columns
--RANK() can be used to give ranks to a group of data also using the keyword *PARTION BY

--RANK() SKIPS values then there is a tie

--SELECT department,id,name,gender,salary, RANK() OVER(ORDER BY SALARY DESC) AS rank FROM employee WHERE SALARY IS NOT NULL;



--DENSE_RANK() doesn't skip the values while ranking when there is a tie


--ROW_NUMBER()
 SELECT id,name,age,salary ,department, ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS rn FROM EMPLOYEE WHERE SALARY IS NOT NULL;
 
 
-- Aggregate Functions can also be used as window functions
--AVG(), SUM(), MAX(), MIN(), COUNT()
--they can be paired with partition by to apply statistics on different groups

SELECT AVG(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT;