--COUNT 
SELECT COUNT (*)
FROM tabela

SELECT COUNT (*)
FROM person.Person


SELECT COUNT (title)
FROM person.Person

SELECT COUNT (DISTINCT Title)
FROM person.Person

-- Desafio 1 Quantos produtos temos cadastrados em nossa tabela de produtos (production.product)
-- Desafio 2 Quantos tamanhos de produtos únicos temos cadastrado em nossa tabela (production.product)


SELECT COUNT (*)
FROM production.product
-- 504 produtos


SELECT COUNT(Size)
FROM production.product
--211 produtos 







