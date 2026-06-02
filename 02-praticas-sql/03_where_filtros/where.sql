--WHERE
SELECT coluna1, coluna2, coluna_n
FROM tabela
WHERE condicao

/*
OPERADOR - DESCRIÇÃO
=          IGUAL
>          MAIOR QUE 
<          MENOR QUE 
>=         MAIOR QUE OU IGUAL 
<=         MENOR QUE OU IGUAL 
<>         DIFERENTE 
AND        E
OR         OU 
*/

SELECT *
FROM person.person
WHERE LastName = 'Miller' and firstname = 'Anna'


SELECT*
FROM production.Product
WHERE color = 'Blue' or color = 'black'


SELECT*
FROM production.Product
WHERE ListPrice > 1500 


SELECT*
FROM production.Product
WHERE ListPrice > 1500 and ListPrice < 5000



SELECT*
FROM production.Product
WHERE color <> 'red'
