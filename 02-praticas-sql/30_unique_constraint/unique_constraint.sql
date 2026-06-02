-- UNIQUE CONSTRAINT 
CREATE TABLE Carteira (
ID int NOT NULL,
Nome VARCHAR (255) NOT NULL,
Idade INT CHECK (Idade >=28),
CodigoCNH INT NOT NULL UNIQUE
);

INSERT INTO Carteira ( id, nome,idade,CodigoCNH)VALUES (1,'Mariana', 32, 1234)

SELECT*
FROM Carteira
