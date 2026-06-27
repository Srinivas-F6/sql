CREATE TABLE studeent(
    stu_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
    );
CREATE TABLE parent(
 p_id INT,
 name VARCHAR(50),
 stu_id INT,
 FOREIGN KEY(stu_id) REFERENCES studeent(stu_id),
 PRIMARY KEY(stu_id,p_id),
 relation VARCHAR(50)
);

INSERT INTO studeent VALUES(1,'srinvas','srinivas@gmail.com');
INSERT INTO studeent VALUES(2,'adi','adi@gmail.com');
INSERT INTO studeent VALUES(3,'rahul','rahul@gmail.com');

INSERT INTO parent(p_id,stu_id,name,relation) VALUES(1,1,'srinvas','father');

SELECT * FROM PARENT;