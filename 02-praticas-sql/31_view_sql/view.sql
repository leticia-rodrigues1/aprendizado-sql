-- VIEW 
CREATE VIEW [Pessoas Simplificadas] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

SELECT *
FROM [Pessoas Simplificadas]
