-- LEFT OUTER JOIN OU LEFT JOIN 
-- Quero descobrir quais pessoas tem um cartão de crédito registrado

SELECT*
FROM Person.Person PP 
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- INNER JOIN: 19.118 RESULTADOS

--LEFT JOIN 
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- LEFT JOIN 19.972 RESULTADOS



