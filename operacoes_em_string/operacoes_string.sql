-- OPERAÇÕES EM STRING 

SELECT CONCAT(FirstName, ' ' ,LastName)
FROM Person.person

SELECT UPPER (FirstName)  AS 'NOMES COM LETRAS MAIÚSCULAS',
LOWER (FirstName) AS 'NOMES COM LETRAS MINÚSCULAS'
FROM person.person

SELECT FirstName, LEN(FirstName)
FROM person.person

SELECT FirstName, SUBSTRING(FirstName,1,3)
FROM person.person

SELECT productNumber, REPLACE (ProductNumber, '-', '#')
FROM production.product



