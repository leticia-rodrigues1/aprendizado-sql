-- INSERT INTO 

--Criamos a tabela aula com a coluna id e nome usando o CREATE TABLE
CREATE	TABLE aula(
id INT PRIMARY KEY,
nome VARCHAR (200)
);

SELECT *
FROM aula

-- Vamos criar os dados da tabela usando o ISERT INTO 
INSERT INTO aula(id, nome)
VALUES (1, 'aula 1')

-- Para consultarmos que foi criado certinho o ISERT INTO A CIMA	
SELECT *
FROM aula

-- Criando novamente usando o ISERT INTO
INSERT INTO aula(id, nome)
VALUES
(2,'Aula 2'),
(3,'Aula 3'),
(4,'Aula 4');

