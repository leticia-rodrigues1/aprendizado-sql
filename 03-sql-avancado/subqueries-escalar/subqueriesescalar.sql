
-- Subconsultas ( Subqueries)
SELECT ( SELECT  'Leticia') AS Subconsulta;


-- Tipo SUBQUERIES ESCALAR
-- É um SUBQUERIES ESCALAR porque me retornar um valor único 
-- É quando me traz um valor único = SUBQUERIES ESCALAR 

-- Quais produtos tem um preço á cima da média?
SELECT *
FROM dbo.VENDA
WHERE valor >= 
(SELECT AVG(valor) AS média_total
FROM dbo.VENDA);

-- Consultando a média dos valores 
SELECT AVG (valor)
FROM dbo.VENDA;
-- Minha média é 41

-- Consultando a tabela de vendas
SELECT *
FROM dbo.VENDA

