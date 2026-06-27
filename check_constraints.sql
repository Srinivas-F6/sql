--CHECK CONSTRAINTS
CREATE TABLE employee( 
       id INT,
       name VARCHAR(50),
       age INT CHECK (age>0)
       );
INSERT INTO employee VALUES(10,'charan',29);
INSERT INTO employee  VALUES(20,'SUMANTH',-3);
