-- Desafios 

SELECT count (listprice)
FROM Production.Product
WHERE ListPrice >1500
-- 39 produtos que custam mais que 1500 

SELECT count (lastname)
FROM Person.Person
WHERE LastName LIKE 'P%'
-- 1.187  sobrenomes que se iniciam com a letra P 

-- De outro jeito mas econtrando a mesma resposta de 1.187 sobrenomes que iniciam com a letra P
SELECT *
FROM Person.Person
WHERE LastName LIKE 'P%'


-- Quantas cidades unicas estão cadastrados nossos clientes
SELECT DISTINCT (city)
FROM person.address
-- 575 cidades únicas 

-- mesma resposta de 575 cidades únicas de uma outra forma
SELECT count (distinct(city))
FROM Person.Address

-- Quais são as cidade únicas que temos cadastradas em nosso sistema 

SELECT DISTINCT (city) 
FROM person.Address
-- Apareceu além dos números os nomes das cidades nesse comando


-- Quantos produtos vermelhos tem o preço entre 500 a 1000 dólares
SELECT COUNT (*)
FROM Production.Product
WHERE color  = 'red'
AND ListPrice BETWEEN 500 AND 1000
-- 11 produtos

-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?
SELECT *
FROM Production.Product
WHERE name LIKE '%road%'
-- 103 resposta

-- De outra maneira mas com a mesma resposta
SELECT count (*)
FROM Production.Product
WHERE name LIKE '%road%'
-- 103 é a resposta







