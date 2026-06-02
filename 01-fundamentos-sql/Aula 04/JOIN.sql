-- Criando DATABASE
CREATE DATABASE PRODUTOS

-- Consultando 
SELECT *
FROM Produtos

-- Consultando
SELECT *
FROM Clientes

/*JOIN faz a junção de duas ou mais tabelas 
 O comando JOIN fez a junção das tabelas clientes e produtos, 
 utilizando como critério de junção (ON), o produtos.id = clientes.id 
 */
SELECT *
FROM Produtos 
JOIN Clientes ON produtos.id = clientes.id

