
SELECT *
FROM tb_transacoes_Func_Json

--- EXERCÍCIO DUAS FUNÇÕES

--- CRIANDO A PRIMEIRA FUNÇÃO 
CREATE FUNCTION dbo.fn_conced_desc_ (@valor DECIMAL(10,2))

RETURNS DECIMAL (10,2)

AS

BEGIN 
	RETURN 
	CASE WHEN @valor > 3000 THEN @valor * 0.95
	ELSE @valor
	END 
END 

--============================================================================================================================================
--- CRIANDO A SEGUNDA FUNÇÃO 
CREATE FUNCTION dbo.fn_mensagem_desc_ (@valor DECIMAL(10,2))
RETURNS NVARCHAR(50)

AS

	BEGIN 
		RETURN
		CASE WHEN @valor > 3000 THEN 'Conceder Desconto'
		ELSE 'Não Conceder Desconto'
		END
END 

--==========================================================================================================================================

-- CHAMANDO O SELECT COM AS DUAS FUNÇÕES CRIADAS Á CIMA
SELECT 
	Cliente,
	 dbo.fn_conced_desc_(Valor_Transacoes)			AS 'Valor com Desconto',  -- Função 1
	 dbo.fn_mensagem_desc_(Valor_Transacoes)	AS 'Mensagem'				  -- Função 2					
FROM tb_transacoes_Func_Json

--- AS FUNCTIONS/ FUNÇÕES A GENTE PODE CHAMAR AS FUNÇÕES JUNTO COM O SELECT DIFERENTE DAS PROCEDURES QUE NÃO