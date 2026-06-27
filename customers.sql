CREATE TABLE customers(
         id INT PRIMARY KEY,
         name VARCHAR(50) NOT NULL,
         email VARCHAR(100) UNIQUE
         );
         
INSERT INTO customers VALUES(1,'bob','bob@gmail.com');
INSERT INTO customers VALUES(2,'bob','alice@gmail.com');
INSERT INTO customers VALUES(3,'alice','alice@gmail.com');

SELECT * FROM CUSTOMERS;
DROP TABLE CUSTOMERS;