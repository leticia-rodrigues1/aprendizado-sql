
SELECT *
FROM VENDA

--- GROUP BY
SELECT 
	vendedor,
	COUNT (*) AS 'Qtd_Vendedores'
	FROM VENDA
	GROUP BY VENDEDOR;

--==================================
SELECT *
FROM ESTOQUE


SELECT 
		NOME_PROD,
		COUNT (*) AS 'Total_Prod'
		FROM ESTOQUE
		GROUP BY NOME_PROD;