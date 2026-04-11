SELECT TOP 10 sum(linetotal) AS "Soma"
FROM Sales.SalesOrderDetail


SELECT TOP 10 min(linetotal) AS "Mínimo"
FROM Sales.SalesOrderDetail


SELECT TOP 10 max(linetotal) 
FROM Sales.SalesOrderDetail


SELECT TOP 10 avg(linetotal) 
FROM Sales.SalesOrderDetail
