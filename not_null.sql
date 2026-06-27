--Not null Constaint
--A column 
-- We must provide data for it
-- during the time of isnertion

CREATE TABLE notnull(
          roll_no INT,
          name VARCHAR(50) NOT NULL,
          e_mail VARCHAR(100)
    );
    
INSERT INTO not_null(roll_no,name) VALUES(1,'srinivas');
INSERT INTO not_null(roll_no,name) VALUES(2,'chaarn');
INSERT INTO not_null(roll_no,name) VALUES(6,'sumanth');
INSERT INTO not_null(roll_no,name) VALUES(3);


SELECT * FROM notnull;

