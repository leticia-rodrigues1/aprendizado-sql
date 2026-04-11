SELECT *
FROM person.Person

SELECT FirstName, LastName
FROM person.Person
ORDER BY FirstName asc, LastName desc

SELECT *
FROM person.Person
ORDER BY FirstName asc


SELECT FirstName, LastName, MiddleName
FROM person.Person
ORDER BY MiddleName asc


-- Desafio Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato

SELECT TOP 10 productID
FROM production.Product
ORDER BY listprice desc 
