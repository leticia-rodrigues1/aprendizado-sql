/*     FUNCTIONS OU FUNÇÕES 

Functions ou Funções, costumam ser mais limitadas, geralmente retornam um único 
valor e podem ser usadas dentro de consultas como se fossem colunas. Assim, cada
uma tem a sua utilidade dependendo do que você precisa fazer.

*/

/* PROCEDURES 

As procedures, ou procedimentos armazenados, são mais versáteis, 
porque podem executar vários comandos de uma vez e podem retornar múltiplos conjuntos de resultados.

*/

/* Introdução: O que é uma Function?
Uma Funciton ( ou UDF - User Defined Function )
é um bloco de código que pode receber parâmetros, executar operações e retornar um valor.

São muito úteis para reutilizar lógica de negócios, limpar código e encapsular regras de cálculo.

*/
--==================================================================================================================================================

------- CRIANDO UMA TABELA 
	if OBJECT_ID ('dbo.tb_transacoes_Func_Json') is null
	BEGIN 
		DROP TABLE dbo.tb_transacoes_Func_Json
		END 

	CREATE TABLE dbo.tb_transacoes_Func_Json
	(
			DataTransacao		NVARCHAR(30),
			Cliente				NVARCHAR(100),
			TipoTransacao       NVARCHAR(50),
			Valor_Transacoes    DECIMAL (10,2),
			Bandeira		    NVARCHAR(50),
			Aprovado            NVARCHAR (10),
	);

------- Declarando uma variável que armazenara o JSON 
DECLARE @json NVARCHAR(MAX);

SELECT @json = BulkColumn
FROM OPENROWSET(
    BULK 'C:\Users\User\Desktop\tabela_json\exemplo_tabela.json',
    SINGLE_CLOB
) AS JsonData;


---- Inserindo os dados do Json na nova tabela 
INSERT INTO dbo.tb_transacoes_Func_Json
	(
	DataTransacao,
	Cliente,
	TipoTransacao,
	Valor_Transacoes,
	Bandeira,
	Aprovado
	)

	SELECT 
	DataTransacao,
	Cliente,
	TipoTransacao,
	Valor_Transacoes,
	Bandeira,
	Aprovado
	FROM OPENJSON(@json)
	WITH 
	(
	DataTransacao		NVARCHAR(30),
	Cliente				NVARCHAR(100),
	TipoTransacao		NVARCHAR (50),
	Valor_Transacoes	DECIMAL (10,2),
	Bandeira			NVARCHAR (50),
	Aprovado			NVARCHAR (10)
	);


SELECT *
FROM tb_transacoes_Func_Json


--=== 1) CRIANDO FUNCTION 
CREATE FUNCTION fn_Saudacao	(@nome NVARCHAR(100))				-- usamos o fn para referenciar a function é uma boa prática 
RETURN NVARCHAR(100)

AS 

	BEGIN 
	RETURN 'Olá,' + @nome + '!'
	END 

---- Mesclamos a função que criei com o SELCT 
SELECT 
	Valor_Transacoes,
	dbo.fn_Saudacao(Cliente) AS  Saudacao,
	DataTransacao
FROM tb_transacoes_Func_Json


--===========================================================================================================================================

-- 2) CRIANDO FUNCTION
CREATE FUNCTION fn_Transacao_Fraude()
RETURNS TABLE 

AS 
	RETURN (
	SELECT *
	FROM tb_transacoes_Func_Json
	WHERE TipoTransacao = 'Fraude'

	);

SELECT *
FROM fn_Transacao_Fraude()

--============================================================================================================================================

-- 3) CRIANDO FUNCTION
CREATE FUNCTION fn_Status_Aprovado (@status NVARCHAR (30))    -- @status é uma variável que estamos criando para a coluna 
RETURNS NVARCHAR(30)

AS

		BEGIN
		RETURN 
		CASE 
		WHEN @status = 'Sim' THEN 'Aprovado com Sucesso'
		WHEN @status = 'Não'  THEN 'Reprovada pelo Sistema'
		ELSE 'Status Desconhecido'
END
END



		
SELECT 
		Cliente,											-- trouxe a coluna cliente 
		Aprovado,											-- trouxe a coluna aprovado
		dbo.fn_Status_Aprovado(Aprovado) AS StatusDetalhado 			-- trouxe a minha função/function que eu criei
															-- estamos mesclando os SELECT com a FUNÇÃO criada
FROM tb_transacoes_Func_Json


--=======================================================================================================================================
-- CORREÇÃO DOS CARACTERES 
SELECT 
		Cliente,
		REPLACE (Aprovado, 'NÃ£o', 'Não')  AS Corrigido
FROM tb_transacoes_Func_Json