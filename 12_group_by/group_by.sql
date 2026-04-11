-- GROUP BY 

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna 1


SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP  BY SpecialOfferID


SELECT SpecialOfferID,UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- vamos dizer que eu quero saber quantos cada produto foi vendido até hoje 
SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- vamos dizer que eu quero saber quantos nomes de cada nome temos cadastrados em nosso banco de dados
SELECT *
FROM Person.person

SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName

-- na tabela production.product eu quero saber a média de preço para os produtos que são pratas(silver)

SELECT *
FROM Production.Product

SELECT Color, AVG(LISTPRICE) "PRECO"
FROM production.product
WHERE Color = 'Silver'
GROUP BY Color

-- Desafio 1 Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por o MiddleName.
SELECT *
FROM person.person

SELECT MiddleName, COUNT(FirstName) AS "QUANTIDADE"
FROM person.person
GROUP BY MiddleName

-- Desafio 2 Eu preciso saber em média qual é a quantidade(quantity) que cada produto é vendido na loja.
SELECT*
FROM Production.Product

SELECT ProductID, AVG(OrderQty)
FROM sales.SalesOrderDetail
GROUP BY ProductID








