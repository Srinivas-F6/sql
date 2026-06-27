CREATE TABLE studentss(
    id INT,
    name VARCHAR(20)
);

ALTER TABLE studentss ADD(age INT, branch VARCHAR(50),college VARCHAR(50));

ALTER TABLE studentss MODIFY(name NOT NULL);
ALTER TABLE studentss MODIFY(age CHECK(age > 18 AND  age <90));
ALTER TABLE studentss RENAME COLUMN branch TO department;

CREATE TABLE customerss(
    id INT,
    name VARCHAR(20),
    email VARCHAR(50)
);

ALTER TABLE customerss MODIFY(name VARCHAR(50));
ALTER TABLE customerss ADD(digi_wallet INT DEFAULT 0);
ALTER TABLE customerss ADD(uq_mail INT UNIQUE);

SELECT * FROM customerss;
CREATE TABLE items(
    id INT,
    name VARCHAR(50),
    price INT
);
