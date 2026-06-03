-- SUBQUERY 
-- Exercício 1) Monte um relatório de todos os proudtos cadastrados que tem um preço de venda a cima da média 

-- Sem usar o SUBQUERY
SELECT AVG(ListPrice)
FROM Production.Product
-- Média da coluna ListPrice é 438.6662

SELECT *
FROM Production.Product
WHERE ListPrice > 438.6662

-- Usando o SUBQUERY
SELECT *
FROM Production.Product
WHERE ListPrice > 
	(SELECT AVG (ListPrice)
	FROM Production.Product
	);


--Exercício 2) Eu quero saber o nome dos meus funcionários que tem o cargo de 'Design Engineer'
-- Consultando as tabelas
SELECT *
FROM Person.Colaboradores
WHERE BusinessEntityID IN (5,6,15)

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'

-- Usando o SUBQUERY 
SELECT FirstName 
FROM Person.Colaboradores
WHERE BusinessEntityID IN 
	(SELECT BusinessEntityID 
	FROM HumanResources.Employee
	WHERE JobTitle = 'Design Engineer'
	);

--- Usando o JOIN
SELECT FirstName
FROM Person.Colaboradores
INNER JOIN HumanResources.Employee
ON Person.Colaboradores.BusinessEntityID = HumanResources.Employee.BusinessEntityID
AND JobTitle = 'Design Engineer'

--Exercício 3) Encontre todos os endereços que estão no estado de 'Alberta', pode trazer todas as informações.
-- Consultando a tabela de endereços
SELECT *
FROM Person.Address

SELECT *
FROM Person.StateProvince
WHERE Name = 'Alberta'

-- Usando o SUBQUERY 
SELECT *
FROM Person.Address
WHERE StateProvinceID IN
	(SELECT StateProvinceID
	FROM Person.StateProvince
	WHERE Name = 'Alberta'
	);