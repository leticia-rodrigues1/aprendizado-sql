
-- Consultando tabela que eu criei 
SELECT *
FROM LOJAS

--- FUNÇÕES JANELA 
-- Como poderíamos calcular o % vendido por cada loja?

-- Primeiro saber o total de vendas de todas as lojas
SELECT 
	SUM(QTD_VENDIDA) AS 'Total Vendido'
	FROM Lojas 
-- Total vendido R$22.090,00

/*Criando uma coluna com o Total Vendido 
 Simplesmente adicionamos o OVER() logo depois do SUM e o Total Vendido
 será calculado igual para todas as linhas, permitindo que a gente faça o cálculo do %
 Lembrando que a istrução OVER permite definir qual será a "janela"(conjunto de linhas) a ser
 considerado no cálculo.
 */

 /*
Se a gente informar a Região junto com o PARTITION BY, a janela vai considerar os agrupamentos de Região.
Como as regiões podem se repetir para diferentes lojas, o cálculo da soma vai levar isso em consideração, ou seja, 
na linha de uma loja do Sudeste, o Total Vendido será calculado de acordo com aquela  região.
*/ 

SELECT 
		ID_LOJA,
		NOME_LOJA,
		REGIÃO,
		QTD_VENDIDA,
	SUM(QTD_VENDIDA) OVER(PARTITION BY REGIÃO) AS 'TOTAL VENDIDO'
	FROM LOJAS
	ORDER BY ID_LOJA