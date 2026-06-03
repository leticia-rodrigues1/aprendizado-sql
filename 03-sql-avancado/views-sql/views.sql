-- #### CRIANDO VIEWS NO SQL ####

-- Selecionar a tabela Person.Colaboradores
SELECT *
FROM person.colaboradores

-- Seleciona apenas os tipos de clientes/PersonType 'SC'
SELECT *
FROM person.Colaboradores
WHERE PersonType = 'SC'

/* O QUE É UMA VIEW (ou traduzindo, uma exibição), é uma tabela virtual criada a partir
de uma consulta a uma ou mais tabelas (ou até mesmo de outras views) no banco de dados.


CRIANDO, ALTERANDO E EXCLUINDO VIEWS 

Quando falamos em Views, existem 3 ações envolvidas:

1. Criação de uma View 
2. Alteração de uma View
3. Exclusão de uma View 

Para cada uma dessas ações, temos um comando associado:
1. CREATE VIEW 
2. ALTER VIEW 
3. DROP VIEW 
*/

-- CREATE VIEW: CRIE UMA VIEW PARA ARMAZENAR APENAS OS CLIENTES DO TIPO 'SC'
-- ESTRUTURA DA CRIAÇÃO DA VIEW:
CREATE VIEW nome_view AS 
SELECT 

-- CRIANDO UMA VIEW:
-- Usamos vw para dar o nome da view 
CREATE VIEW vwExemplo AS 
SELECT *
FROM Person.Colaboradores
WHERE PersonType = 'SC'

-- CONSULTANDO/ VISUALIZANDO A VIEW CRIADA
-- Agora ficou armazenado no meu banco de dados a VIEW que criamos e podemos conultar sempre que precisar 
SELECT *
FROM vwExemplo

/* ALTER VIEW: ALTERE A VIEW CRIADA PARA INCLUIR OS CLIENTES DO TIPO 'VC'

Agora vamos alterar a nossa VIEW criada

Usando o CREATE OR ALTER VIEW você esta falando para criar ou aulterar o vwExemplo, 
é mais interessante usar os dois porque se a VIEW não existe ele já criar agora se a VIEW existir ele só altera

*/
CREATE OR ALTER VIEW vwExemplo AS
SELECT *
FROM Person.Colaboradores
WHERE PersonType = 'VC'

-- CONSULTANDO A ALTEREÇÃO QUE EU FIZ Á CIMA
SELECT *
FROM vwExemplo


/* EXCLUINDO UMA VIEW 
DROP VIEW: EXCLUA A VIEW CRIADA 
*/
DROP VIEW vwExemplo


/* Porque criamos uma VIEW ?

1. Reutilização: Sempre que necessário, podemos consultar aquela VIEW, pois ela fica armazenada no sistema.

2. Segurança: Ao criar uma VIEW, estamos ocultando linhas ou colunas da tabela original do bando de dados.
Desta forma, apenas algumas informações relevantes serão visualizadas na VIEW.

3. Simplificação: Quando criamos VIEWS, estamos poupando o tempo de recriar vários 
SELECTS, o que aumenta a produtividade.