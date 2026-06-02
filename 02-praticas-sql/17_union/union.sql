-- UNION 
SELECT coluna1, coluna2
FROM tabela1
UNION 
SELECT coluna1, coluna2
FROM tabela2

SELECT [ProductID], [Name], [ProductNumber] 
FROM Production.Product
WHERE Name like '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber] 
FROM Production.Product 
WHERE Name like '%Decal%'
order by Name desc


SELECT FirstName, Title 
FROM person.Person 
WHERE Title = 'Mr.'
UNION 
SELECT FirstName, Title, MiddleName
FROM person.Person
WHERE MiddleName = 'A'
