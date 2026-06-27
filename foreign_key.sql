CREATE TABLE trainer(
        id INT PRIMARY KEY,
        name VARCHAR(50),
        email VARCHAR(100),
        salary INT DEFAULT 1000
-- CONSTRIANT trainer_pk PRIMARY KEY(id);  another way assinging constraint    
);

DROP TABLE trainer;

INSERT INTO trainer(ID,name,email) VALUES(1111,'charan','charan@gmail.com');
INSERT INTO trainer VALUES(1112,'srinivas','srinivas@gmail.com',10001);

--Inline Foreign Key
--
--CREATE TABLE courses(
--            id INT UNIQUE,
--            name VARCHAR(50),
--            trainers_id INT REFERENCES trainer(id)
--);

--out - line Foreign-key

CREATE TABLE courses(
            id INT UNIQUE,
            name VARCHAR(50),
            trainers_id INT,
            FOREIGN KEY(trainers_id) REFERENCES trainer(id)
);

DROP TABLE courses;

INSERT INTO courses VALUES(1,'c',1111);
INSERT INTO courses VALUES(2,'java',1111);
INSERT INTO courses VALUES(3,'java',1112);
INSERT INTO courses VALUES(3,'python',1112);
INSERT INTO courses VALUES(4,'python',1113);
INSERT INTO courses VALUES(5,'python',1112);




