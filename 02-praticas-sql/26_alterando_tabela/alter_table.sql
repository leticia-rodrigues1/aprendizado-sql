-- Criando uma nova tabela Youtube2
CREATE table YouTube2(
id INT PRIMARY KEY,
nome VARCHAR(150) not null unique,
categoria VARCHAR(100) not null,
dataCriacao datetime not null
)

-- Usando o ALTER TABLE
ALTER TABLE YouTube2
add ativo  bit 

SELECT *
FROM YouTube2

-- Alterando a coluna categoria de 200 caracteres 300 para da tabela YouTube2 
ALTER TABLE YouTube2
ALTER COLUMN categoria VARCHAR(300) NOT NULL 

-- Para alterar algum nome da tabela eu uso: EXEC sp_RENAME 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'
EXEC sp_RENAME 'YouTube2.nome', 'nomeCanal', 'COLUMN'

SELECT *
FROM YouTube2
