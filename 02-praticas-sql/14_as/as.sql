-- AS

SELECT TOP 10 ListPrice AS "PREÇO DO PRODUTO"
FROM PRODUCTION.PRODUCT

SELECT TOP 10 AVG (ListPrice) AS "PREÇO MÉDIO"
FROM PRODUCTION.PRODUCT

-- 1) Encontrar o FirstName e o LastName person.person
SELECT TOP 10 FirstName AS "NOME", LastName AS "SOBRENOME"
FROM PERSON.PERSON

--2) ProductNumber da tabela production.product "Número do Produto"
SELECT TOP 10 ProductNumber  AS "Número do Produto"
FROM Production.Product

--3) sales.SalesOrderDetail unitPrice "Preço Unitário"
SELECT unitPrice AS "PREÇO UNITÁRIO"
FROM sales.SalesOrderDetail
