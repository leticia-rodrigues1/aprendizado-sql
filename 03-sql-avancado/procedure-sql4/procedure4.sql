
--======= PROCEDURE =========
	CREATE PROCEDURE ListarTransacoesClassificadas 

	AS

	BEGIN 
		SELECT 
			Cliente AS 'Nome do Cliente',
			Valor_Transacao AS 'Valor Transacao',
		CASE															-- CASE é usado para criar condições dentro de consultas, funcionando como um SE ..SENÃO 
		WHEN 	Valor_Transacao < 100 THEN 'Baixo'						 -- CASE "Se acontecer isso, mostre aquilo, senão, mostre outra coisa"
		WHEN    Valor_Transacao BETWEEN 100 AND 1000 THEN 'Médio' 
		ELSE 'Alto'
		END AS Classificacao

	FROM dbo.BaseFraude

	END
	GO 

EXEC ListarTransacoesClassificadas

--============================================================================================================================================================================

--====== DESAFIO PROCEDURE =======
/* Crie uma PROCEDURE onde gere uma tabela onde contenha, ocorrências fora do padrão
TipoTrasacao Fraude, Estorno
Valor_Transacao >=4000.00
Hora acima 23h
Bandeira 'Amex'
*/

CREATE PROCEDURE OcorrenciasForaPadrao

AS

BEGIN 
	Select
		Cliente,
		DataTransacao,
		TipoTransacao,
		Valor_Transacao,
		Bandeira,
		Aprovado,
		'Ocorrências fora do padrão' AS Observacao
	FROM dbo.BaseFraude
WHERE TipoTransacao IN ('Fraude', 'Estorno')
		AND Valor_Transacao >=4000
		AND DATEPART(HOUR, DataTransacao) >=23
		AND Bandeira = 'Amex'
	
END;
GO	

EXEC OcorrenciasForaPadrao