--pl/SQL
--1.PROCEDURAL LANGUAGE EXTENSION IS DEVELOPED BY ORACLE

--INTRODUCTION TO PL/SQL
--PL/SQL ALLOWS TO WRITE STANDARD PROCEDURAL CODE AND OFFERS A WAY TO SEAMLESSLY INTREACT WITH SQL ALSO
--BASIC COMPONENTS IN PL/SQL

--DECLARE section(optional)
--BEGIN section(Mandatory)
--EXCEPT section(optional)
--END section (Mandatory)
--DECLARE SECTION WE TRY TO DECLARE, INITIALIXE VARIABLE
--bEGIN SEction is going to caontain the excetuable code

--EXCEPT section is used to raise
--printf(),print(),System.out.println(), DBMS_OUTPUT.PUT_LINE()

--Used to print entire data in ouput   (SET SERVEROUTPUT ON;)
SET SERVEROUTPUT ON;
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Helloo_World');
END;
/


--Using DECLARE section to declare variables
--Variable declaratino syntax  (variable_name datatype)

DECLARE 
  num INT;
BEGIN
     -- Assign a value to variable
     --Assignment operator :=
      num:=10;
      DBMS_OUTPUT.PUT_LINE(num);
END;
/


--Initializing variable during declaration
DECLARE 
   num INT := 20;
   name VARCHAR(50):='SRINIVAS';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Number is: '||num);
  dbms_output.put_line('Im '||name);
END;
/

--Doing computations in PL/SQL
--to find out the square of a given number in PL/SQL

DECLARE 
   num INT:=5;
   SQUARE INT;
BEGIN
   SQUARE := num*num;
   DBMS_OUTPUT.PUT_LINE(SQUARE);
END;
/

DECLARE 
   num INT;
   square INT;
BEGIN
   num:=&num;   --used to read the data from the user
   square := num*num;
   dbms_output.put_line(square);
END;
/

-- find out the area and perimeter of square and recantangle
DECLARE 
  SIDE INT;
  LENGTH INT;
  BREADTH INT;
  AREA INT;
  PERI INT;
BEGIN
  SIDE := &SIDE;    --used to read the data fr4om the user
  LENGTH:=&LENGTH;
  BREADTH:=&BREADTH;
  AREA:=SIDE*SIDE;
  PERI := (LENGTH+BREADTH)*2;
  dbms_output.put_line('AREA OF THE SQUARE: '||AREA);
  dbms_output.put_line('PERIMETER OF THE RECTANGLE: '||peri);
END;
/

BEGIN
    DBMS_OUTPUT.PUT('HELLO ');
    DBMS_OUTPUT.PUT('WORLD ');
    DBMS_OUTPUT.PUT('I am Srinivas');
    DBMS_OUTPUT.NEW_LINE();
    dbms_output.put('Iam a trainee ');
    dbms_output.put('at Technical Hub');
    dbms_output.New_line();
END;
/

--conditionals statements in PL/SQL
--1.IF-THEN
--2.IF-THEN-ELSE
--3.IF-THEN-ELSIF-THEN-ELSE
--4.CASE(IN TWO DIFFERENT WAYS)

--1.IF-THEN SYNTAX
--IF CONDITON THEN CODE   IF THE CONDITON PROVIDED IS TRUE, THEN CODE GETS EXECUTED
--EVERY IF STATEMENT MUST END UP WITH END IF

DECLARE 
  age INT;
BEGIN 
    age:=&age;
   IF age > 18 THEN 
   DBMS_OUTPUT.PUT_LINE('YOU CAN VOTE');
   END IF;
END;
/


--2. IF-THEN-ELSE
--SYNTAX   IF CONDITON ->THEN-> CODE, ELSE CODE END IF;

DECLARE 
   num INT;
BEGIN
   num:=&num;
   IF MOD(num,2)=1 THEN 
   DBMS_OUTPUT.PUT_LINE('ODD');
   ELSE
   DBMS_OUTPUT.PUT_LINE('EVEN');
   END IF;
END;
/


--FOR LOOP (for loop in c)
--Works in a range of values
--SYNTAX
--FOR loop_variable IN star...stop LOOP
     --code
--END LOOP
SET SERVEROUTPUT ON;
BEGIN 
   FOR i IN 1..10 LOOP
       DBMS_OUTPUT.PUT(i);
   END LOOP;
       DBMS_OUTPUT.NEW_LINE();
END;
/


BEGIN 
  FOR i IN 1..10 LOOP
     FOR j IN 1..10 LOOP
        IF (i=1 OR i=10 OR J=10) THEN 
          DBMS_OUTPUT.PUT('* ');
        END IF;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
    END LOOP;   
END;
/



--Triggers
--Triggers in PL/SQL  are stopped procedures that are automatically fired upon some DML actions.
--Triggers are of two types
--1. Statement level Trigger(Executes once per statement)
--2. Row level Trigger(Executes Once per row)
----Using Triggers we can,
--1.Automatically calcualte some values based on others
--2.used to do logging 
--3. Used to validate the date before insertion
--Triggeres can ber fired in two ways
--Before the exceutin of DML Opereation
--After the execution of DML Operation

--Syntax of writing a trigger:
--CREATE OR REPLACE TRIGGER trigger_name
-- [BEFORE | AFTER][INSERT|DELETE|UPDATE]  ON table_name
--[FOR EACH ROW] -->Optional, only use for row level triggers
--
--DECLARE
--   --declare yout variable
--BEGIN
--   --write executable code
--END;


--Writing a trigger that prints 'Trigger is Fired'

SET SERVEROUTPUT ON;

SELECT * FROM EMPLOYEE;

CREATE OR REPLACE TRIGGER sample_trigger
BEFORE UPDATE ON EMPLOYEE
BEGIN
   DBMS_OUTPUT.PUT_LINE('Trigger is Fired');
END;
/

UPDATE EMPLOYEE SET AGE = 10 WHERE ID = 3;

UPDATE EMPLOYEE SET DEPARTMENT = 'HR' WHERE ID = 9;


SELECT MONTHS_BETWEEN(TO_DATE('06-12-2004','DD-MM-YYYY'),SYSDATE) FROM DUAL;


--USING A trigger compute age from date of birth

CREATE TABLE dummy_employe(
    id INT,
    name VARCHAR(50),
    salary INT,
    dob DATE,
    age INT
);


CREATE OR REPLACE TRIGGER calc_emp_age
BEFORE INSERT ON dummy_employe
FOR EACH ROW
BEGIN
       :NEW.age := FLOOR(MONTHS_BETWEEN(SYSDATE, :NEW.dob)/12);
END;
/

INSERT INTO dummy_employe(id,name,salary,dob) VALUES(1,'charan',84923,TO_DATE('12-04-1932','DD-MM-YYYY'));

SELECT * FROM dummy_employe;


CREATE TABLE college(
     id INT,
     name VARCHAR(50),
     branch VARCHAR(50),
     fee INT,
     softskills INT
);
DROP TABLE COLLEGE;
CREATE OR REPLACE TRIGGER cal_soft_skills
BEFORE INSERT ON college 
FOR EACH ROW

BEGIN
    :NEW.softskills := FLOOR(:NEW.fee*0.10);
END;
/
INSERT INTO COLLEGE(ID,NAME,BRANCH,FEE) VALUES(1,'VENKAT','AIML','80000');
INSERT INTO COLLEGE(ID,NAME,BRANCH,FEE) VALUES(2,'raina','CSE','80000');
INSERT INTO COLLEGE(ID,NAME,BRANCH,FEE) VALUES(3,'aditya','IT','80000');
INSERT INTO COLLEGE(ID,NAME,BRANCH,FEE) VALUES(4,'karthik','IOT','80000');
INSERT INTO COLLEGE(ID,NAME,BRANCH,FEE) VALUES(5,'rahul','AIML','80000');

SELECT * FROM COLLEGE;


--logging (Used to Data Analytics)
--Maintain employee salary log
--Keep the track of changes whenever  the employee salary is updated in employee table.

CREATE TABLE salary_log_table(
   id INT,
   old_sal INT,
   new_sal INT,
   update_on DATE DEFAULT SYSDATE
);

CREATE OR REPLACE TRIGGER emp_sal_change
AFTER UPDATE ON employee
FOR EACH ROW
BEGIN 
   INSERT INTO salary_log_table(id,old_sal,new_sal) VALUES(:NEW.id,:OLD.salary,:NEW.salary);
END;

UPDATE EMPLOYEE SET SALARY = 10000 WHERE ID=4;
UPDATE EMPLOYEE SET SALARY = 100000 WHERE ID=5;
UPDATE EMPLOYEE SET SALARY = 100000 WHERE ID=4;
SELECT * FROM salary_log_table;
























































