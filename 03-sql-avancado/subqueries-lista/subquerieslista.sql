-- SUBQUERIES LISTA 
-- Retorna uma LISTA 

-- Quais pedidos estão assosciados a clientes do segmento Premium?
SELECT *
FROM dbo.pedidos2
WHERE id_clientes IN 
	(SELECT id_clientes
	 FROM dbo.clientes
	 WHERE segmentos = 'Premium'
);

