----JOIN
SELECT produtos.nome_produto, compras.quantidade
FROM compras 
JOIN Produtos ON compras.id_produto =	produtos.id
JOIN Clientes ON compras.id_cliente = clientes.id
WHERE clientes.Nome = 'Gustavo';

--======================================================

----Consultando as tabelas 
SELECT *
FROM Produtos

SELECT *
FROM Compras

SELECT *
FROM Clientes 

--=================================================
SELECT *
FROM Compras
JOIN produtos ON compras.id_produto = produtos.id

