

-- LEFT JOIN 
SELECT Nome_Produto, SUM (compras.quantidade)
FROM produtos	
LEFT JOIN compras ON compras.id_produto = produtos.id 
GROUP BY Nome_Produto

--============================================
-- LEFT JOIN sem o GROUP BY para que todos os produtos apareçam 
SELECT Nome_Produto, compras.quantidade
FROM Produtos
LEFT JOIN compras ON compras.id_produto = produtos.id 


