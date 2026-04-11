
-- USANDO O IN 
SELECT *
FROM person.Person
WHERE BusinessEntityID IN (2, 7,13)


-- SEM USAR O IN
SELECT *
FROM person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13


-- USANDO O NOT IN 
SELECT *
FROM person.Person
WHERE BusinessEntityID NOT IN (2, 7,13)
