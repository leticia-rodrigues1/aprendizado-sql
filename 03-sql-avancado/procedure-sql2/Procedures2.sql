
/* PROCEDURE ou STORED PROCEDURE ou PROCEDIMENTO ARMAZENADO

Um PROC é um conjunto de comandos do SQL armazenado no bando de dados,
que pode ser executado sob demanda, como uma função reutilizável.

VANTAGENS:
Reutilizável
Padronização
Melhora a Performance 
Segurança no Controle (select) / PROC	

*/
--===============================================================================================================================================

-- ESTRUTURA DE UMA PROCEDURE
CREATE PROCEDURE @NomedaProc

AS -- iniciar o bloco de comandos

	BEGIN 
-- Instrução SQL que usaremos os parâmetros

	END 

EXEC 
-- Nome que irá selecionar/chamar a PROCEDURE 

--==============================================================================================================================================

-- 1 PROCEDURE 
CREATE PROCEDURE Selecionar_TodasTransacoes

AS
	BEGIN 

	SELECT *
	FROM dbo.BaseFraude

	END;
	GO 


EXEC Selecionar_TodasTransacoes

--==============================================================================================================================================
-- ALTERANDO UMA PROCEDURE 
-- Alteramos a PROCEDURE que criamos, para filtrar apenas os clientes 8

ALTER PROCEDURE Selecionar_TodasTransacoes -- ALTER PROCEDURE: Para alterar a procedure Selecionar_TodasTransacoes

AS											-- AS: Para dar iniciar a operação/ os comandos

	BEGIN									-- BEGIN: Começo do bloco						

	SELECT *                                -- SELECT * Selecionando toda tabela 
	FROM dbo.BaseFraude				        -- FROM selecionado a tabela dbo.BaseFraude
	-- WHERE Cliente = 'Cliente 8'           -- WHERE filtrando a coluna cliente que for igual a cliente 8


	END;										-- END fim do bloco e o ponto e o ; ponto e vírgula sempre no último comando


--==============================================================================================================================================

-- 2 PROCEDURE 
CREATE PROCEDURE ListarTransacoesPorClientes 

@Cliente NVARCHAR(100)

AS

	BEGIN 
	SELECT TipoTransacao,
			Valor_Transacao,
			Cliente,
			Aprovado
	FROM dbo.BaseFraude
	WHERE Cliente = @Cliente

	END;
	GO 

EXEC ListarTransacoesPorClientes @Cliente = 'Cliente 8'  -- Criamos um parâmetro e é só ir alterando o número do cliente