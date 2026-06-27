CREATE TABLE data(
          id INT PRIMARY KEY,
          age INT CHECK(age > 18 AND age < 80),
          email_id VARCHAR(100) UNIQUE,
          phn_no INT NOT NULL,
          college VARCHAR(100) DEFAULT 'Aditya'
    );

INSERT INTO data VALUES(1,20,'1@gmail.com',9505691379,'ADITYA');
INSERT INTO data VALUES(3,23,'1@gmail.com');
INSERT INTO data VALUES(2,30,'2@gmail.com',9505691379,'PRAGATHI');
INSERT INTO data VALUES(4,20,'3@gmail.com',9505691379);

INSERT INTO data (id,age,email_id,phn_no) VALUES (5,29,'5@gmail.com',9182274259);

