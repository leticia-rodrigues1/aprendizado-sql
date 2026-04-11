-- CHECK CONSTRAINT 
CREATE TABLE CarteiraMotorista(
ID int NOT NULL,
Nome VARCHAR(255) NOT NULL,
Idade int CHECK (Idade >=18)
);

SELECT *
FROM CarteiraMotorista

INSERT INTO CarteiraMotorista (id,nome,idade) VALUES (1, 'Rafael', 18)
