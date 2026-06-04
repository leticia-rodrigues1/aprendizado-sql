-- STORED PROCEDURE OU PROCEDURE 

CREATE PROCEDURE sp_InserirCliente
		@Nome VARCHAR (50)
AS
		BEGIN 
		INSERT INTO CLIENTES (Nome)
		VALUES (@Nome)
END 

EXEC sp_InserirCliente 'Leticia';

-- Consultando o nome Leticia na tabela de CLIENTES 
SELECT *
FROM dbo.CLIENTES

-- Crie uma PROCEDURE que permita INSERIR dados na tabela CLIENTES
-- Consultando a tabela 
SELECT *
FROM dbo.CLIENTES

-- Criei a PROCEDURE 
CREATE PROCEDURE insere_cidades
				@nome VARCHAR (50),
				@endereco VARCHAR (50),
				@sexo VARCHAR (50),
				@cidade VARCHAR (50)
AS
BEGIN
	INSERT INTO CLIENTES(nome,endereco, sexo, cidade)
	VALUES (@nome, @endereco, @sexo, @cidade);

	
END 

-- EXECUTANDO A PROCEDURE CRIADA
EXEC insere_cidades
		@nome = 'MARIANA',
		@endereco = 'RUA OITO DE MARÇO',
		@sexo = 'FEMININO',
		@cidade = 'JUIZ DE FORA';

SELECT *
FROM dbo.CLIENTES

-- EXCLUINDO UMA PROCEDURE 
DROP PROCEDURE insere_cidades

-- EXCLUINDO OS DADOS QUE EU COLOQUEI 
DELETE FROM dbo.CLIENTES
WHERE nome = 'Mariana'