--Create and call a PL/SQL function that takes an integer and returns it’s square

CREATE OR REPLACE FUNCTION squar(n INT)
RETURN INT IS
out INT;
BEGIN 
    out := n*n;
    RETURN OUT;
END;
/
SELECT SQuaR(10) FROM DUAL;

--Create and call a PL/SQL function that takes two integers and returns a boolean value
--TRUE if first integer is a factor of second else FALSE

CREATE OR REPLACE FUNCTION FACTOR(A INT, B INT)
RETURN INT IS
out INT;
BEGIN 
    IF MOD(A,B)=0 THEN
    RETURN 1;
    ELSE 
    RETURN 0;
    END IF;
END;
/

BEGIN
    IF FACTOR(10,3)=1 THEN
    DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
    DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;
END;
/

--Create and call a PL/SQL function that takes 3 integers and returns the maximum of them

CREATE OR REPLACE FUNCTION max_of_three(a INT, B INT, C INT)
RETURN INT IS
OUT INT;
BEGIN 
     IF A>B THEN
         IF A>C THEN
         RETURN A;
         ELSE
         OUT := C;
         END IF;
     ELSIF B>C THEN
         IF B>A THEN
         RETURN B;
         ELSE
         OUT := A;
         END IF;
     ELSE 
       OUT:=C;
     END IF;
     RETURN OUT;
END;
/

DECLARE 
   A INT:=10;
   B INT:=56;
   C INT:=55;
   MAXI INT;
BEGIN
     MAXI:= MAX_OF_THREE(A,B,C);
     DBMS_OUTPUT.PUT_LINE(MAXI);
END;
/

--• Create and call a PL/SQL function that takes two strings name and gender and returns a
--new name that is made of name and first letter of gender in the following format
--• name (g)
--• Example:
--– If Alice and Female passed as name and gender, the function should return Alice (F)

CREATE OR REPLACE FUNCTION Aqwe(name VARCHAR, gender VARCHAR)
RETURN VARCHAR IS
OUT VARCHAR(50);
BEGIN
     OUT := NAME ||'('||SUBSTR(GENDER,1,1)||')';
     RETURN OUT;
END;
/

SELECT Aqwe('CHARAN','MALE') FROM DUAL;



SELECT DEPARTMENT,id FROM EMPLOYEE GROUP BY DEPARTMENT,id;

CREATE OR REPLACE FUNCION 


















