--Normalization

It is a process in DBMS used to organize in a way that reduces redundacy

j

drop table enrollments;


create table student(
    s_id int primary key,
    s_name varchar(10),
    s_age int
);


insert into student values(1,'Alice',17);
insert into student values(2,'bob',18);
INSERT INTO student VALUES (3,'charlie',21);


create table course(
    c_id int primary key,
    c_name varchar(15)
);


insert into course values(101,'c language');
insert into course values(102,'JAVA');
insert into course values(103,'Python');



create table enrollments(
    s_id int references student(s_id),
    c_id int references course(c_id),
    enrol_date DATE default sysdate,
    grade char(1),
    price int, 
    Primary key (s_id,c_id)
);

insert into enrollments(s_id,c_id,grade,price)
values(1,101,'A',5000);

insert into enrollments(s_id,c_id,grade,price)
values(2,102,'B',6000);

insert into enrollments(s_id,c_id,grade,price)
values(3,101,'C',5000);

insert into enrollments(s_id,c_id,grade,price)
values(1,102,'D',7000);

SELECT * FROM COURSE;

ALTER TABLE COURS







select * from enrollments;