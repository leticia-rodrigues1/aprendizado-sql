-- BusinessEntityID, FirstName, LastName, EmailAddress - AQUI VOCÊ ESTÁ DEFININDO AS COLUNAS 
SELECT TOP 10*
FROM Person.Person

SELECT TOP 10*
FROM Person.EmailAddress

-- Quando abrimos as duas tabelas a cima a coluna em comum das duas é BusinessEntityID e vamos juntar as duas por ela, da seguite forma abaixo:
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS "P"
INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID

-- Vamos dizer que nós queremos os nomes dos produtos e as informações de suas subcategorias 
-- ListPrice, Nome do Produto, Nome da Subcategoria 
SELECT TOP 10 *
FROM Production.Product 

SELECT TOP 10*
FROM Production.ProductSubcategory

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product Pr
INNER JOIN Production.ProductSubcategory PC on PC.ProductCategoryID= pr.ProductSubcategoryID

-- PARA JUNTAR UMA TABELA COM A OUTRA COM TODOS OS DADOS SÓ JUNTAR TODAS AS INFORMAÇÕES SEM DEFINIR AS COLUNAS
SELECT TOP 10*
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID


-- DESAFIO BusinessEntityID,Name,PhoneNumberTypeID,PhoneNumber aqui nós estamos definindo as colunas  
SELECT TOP 10 *
FROM person.PhoneNumberType

SELECT TOP 10 *
FROM person.PersonPhone

SELECT pp.BusinessEntityID, pt.Name, pt.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PersonPhone PP	
INNER JOIN Person.PhoneNumberType PT ON PT.PhoneNumberTypeID = pp.PhoneNumberTypeID
 
 -- quero AddressID, City, StateProvinceID, Nome do Stado
 SELECT TOP 10*
 FROM person.stateprovince 

 SELECT TOP 10 *
 FROM person.address

 SELECT TOP 10 pa.AddressID, pa.City, ps.StateProvinceID, ps.Name
FROM Person.Address pa
INNER JOIN Person.StateProvince PS ON PS.StateProvinceID = PA.StateProvinceID
