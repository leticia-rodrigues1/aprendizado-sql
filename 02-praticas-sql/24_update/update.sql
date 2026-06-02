-- UPDATE	
UPDATE nomeTabela
SET coluna 1 = valor1
    coluna 2 = valor2


-- agora vou usar o UPDATE para atualizar a tabela que selecionamos no SELECT a cima que é a tabela AULA
-- nesse exemplo a baixo NÃO usamos o WHERE então mudou todos as linhas dos nomes da coluna aula para TESTE
UPDATE aula
SET nome = 'teste'

SELECT *
FROM aula
 
 -- agora vamos usar o WHERE no exemplo abaixo
 -- usando o WHERE muda apenas o ID da linha 3 
 UPDATE aula
 SET nome = 'mudei'
 WHERE id = 3
 
SELECT *
FROM aula

