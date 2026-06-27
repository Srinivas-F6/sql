--Keys in sql
--keys are used for uniquely identify the tuples
--super key
--primary key
--candidate key
--Alternate key
--composite key 
--Unique key
--Foreign Key

--Super key
--like superset -- uniquely identify the tuples
--there can be null values in the attributes. super key is a set of attributes or collections of attributes(columns)
--superset is all possible ways of attributes in the table


--Candidate Key
--Minimal super key is called as candidate key
--In candidate keys the attributes which are choosen from super keys will not include as candidate key.
--The list candidate keys which we are taken from super key haven't repitition

--EX:  id, name, age, gender, email,{gender,email},{age,email};

--Primary key
--Primary key should having unique values and shouldn't be null values
--candidate key with having null values can't be primary key
--primary key = unique + NOT null

--id, selected as primary key  and remaining are alternate keys

--Alternate key 
--THe candidate key other than primary key is called ALterante key
--the remaining attributes after primary key choosen from candidate key are called Alternate keys


--Unique key
--It is also similar to primary key but it supports null values
--Unique key = unique values + null

--composite keys
--The sets which are having more then one attribute is called composite key
--(gender,email),  (name,gender) these are composite keys

--Foriegn key
--It deals eith two tables
--The integreity constraint b/w two tables are called referential integreity













