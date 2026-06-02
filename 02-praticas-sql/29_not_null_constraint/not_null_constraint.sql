-- NOT NULL CONSTRAINT
CREATE TABLE CarteiraMotorista2(
Id int NOT NULL,
Nome VARCHAR(255) NOT NULL ,
Idade int CHECK (Idade >=18)
);

SELECT *
FROM CarteiraMotorista2

INSERT INTO CarteiraMotorista2 (id, nome, idade) VALUES(1,'Leticia',30)

SELECT *
FROM CarteiraMotorista2
