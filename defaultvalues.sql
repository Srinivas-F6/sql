CREATE TABLE cities( 
           name VARCHAR(50),
           population INT,
           continent VARCHAR(50) DEFAULT 'Asia'
           );
           
INSERT INTO cities(name,population)VALUES('Mumbai',200000);
INSERT INTO cities VALUES('Mumbai',200000,'Australia');

SELECT 
constraint_name, constraint_type
FROM user_constraints
WHERE table_name = 'CUSTOMERS'