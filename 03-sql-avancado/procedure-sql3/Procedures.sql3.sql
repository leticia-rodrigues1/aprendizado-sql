-- PROCEDURE

-- Consultando a tabela Fraude 
SELECT *
FROM dbo.BaseFraude

-- PROJETO MONITORAMENTO DE TRANSAÇÃO
-- Aprovação = Sim
-- Valor >= 4.000
-- DataTransacao >= 21h

-- CRIANDO A PROCEDURE 
CREATE PROCEDURE VerificarTransacaoClienteAprovados	

-- CRIANDO OS PARÂMETROS DA PROCEDURE 
@Cliente NVARCHAR (100)          -- Parâmetro de Entrada com o Cliente 
 
AS 
BEGIN 
	-- Verificar se o cliente possui pelo menos uma transação Aprovada 
	IF EXISTS(             -- IF significa "se"
	SELECT 1
	FROM dbo.BaseFraude
	WHERE Cliente = @Cliente
	AND  Aprovado = 'Sim'                   -- AND que significa o "e"
	)

	BEGIN 
	-- Verificar se o cliente possui transações suspeitas (Aprovadas , Valo alto a noite)
	IF EXISTS(
	SELECT 1
	FROM dbo.BaseFraude
	WHERE Cliente = @Cliente
	AND Aprovado = 'Sim'
	AND Valor_Transacao >=4000
	AND DATEPART(HOUR,DataTransacao) >=21
	)

	BEGIN
	-- Retornar as transações suspeitas 
	SELECT 
	DataTransacao,
	TipoTransacao,
	Valor_Transacao,
	Bandeira,
	Aprovado,
	'Transação Suspeita' AS Verificar   -- Criando uma coluna nova, você abre as ' ' e escreve o nome da colua dentro 
	FROM dbo.BaseFraude
	WHERE Cliente = @Cliente
	AND Aprovado = 'Sim'
	AND Valor_Transacao >= 4000
	AND DATEPART(HOUR,DataTransacao) >=21
	END

			
		ELSE 
		BEGIN 
		-- Caso tenha aprovações, mas nenhuma suspeita( valor alto + horário) retorna essa mensagem
		SELECT 
		'Cliente não possui Transações Suspeitas' AS Mensagem
		END
	END 

		ELSE 
		BEGIN 
		-- Caso não tenha nenhuma transação suspeita, retornar essa mensagem
		SELECT 
		DataTransacao,
		TipoTransacao,
		Valor_Transacao,
		Bandeira,
		Aprovado,
		'Sem Aprovação' AS Verificar 
		FROM dbo.BaseFraude
		WHERE Cliente = @Cliente
		AND Aprovado = 'Não'
END 
END 

EXEC VerificarTransacaoClienteAprovados	@Cliente = 'Cliente 7'




