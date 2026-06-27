CREATE TABLE constriants(
         id INT,
         name VARCHAR(50),
         email VARCHAR(100),
         age INT,
         CONSTRAINT constraints_pk PRIMARY KEY(id),
         CONSTRAINT constraints_uq UNIQUE(email),
         CONSTRAINT constraints_age CHECK(age > 20 AND age <89)
         );
         
         
        
         