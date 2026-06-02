-- FUNÇÕES MATEMÁTICAS

-- Soma +
SELECT Unitprice + Linetotal
FROM Sales.SalesOrderDetail

-- Subtração -
SELECT Unitprice - Linetotal
FROM Sales.SalesOrderDetail

-- Multiplicação *
SELECT Unitprice * Linetotal
FROM Sales.SalesOrderDetail

-- Divisão /
SELECT Unitprice / Linetotal
FROM Sales.SalesOrderDetail

-- Variável
SELECT AVG(Linetotal)
FROM Sales.SalesOrderDetail

-- Soma
SELECT SUM(Linetotal)
FROM Sales.SalesOrderDetail

--Mínimo
SELECT MIN(Linetotal)
FROM Sales.SalesOrderDetail

SELECT Round(LineTotal,2), LineTotal
FROM Sales.SalesOrderDetail


