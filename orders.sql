CREATE  TABLE orders(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   quantity INT,
   date_of_order DATE
);

INSERT INTO orders VALUES(1,'Laptop',1,TO_DATE('1-2-2025','DD-MM-YYYY'));
INSERT INTO orders VALUES(2,'Keyboard',2,TO_DATE('5-2-2025','DD-MM-YYYY'));
INSERT INTO orders VALUES(3,'Bullets',1000,TO_DATE('6-2-2025','DD-MM-YYYY'));
INSERT INTO orders VALUES(4,'Guns',3,TO_DATE('18-2-2025','DD-MM-YYYY'));

