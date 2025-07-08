
--- indica o uso do banco de dados

USE bd_16_byciclon
SELECT*FROM TEMPORARIA

---- remover uma coluna da tabela
ALTER TABLE temporaria
DROP COLUMN coluna02

---- consultar agora as alterações

SELECT * FROM TEMPORARIA;

----excluir a tabela temporaria


DROP TABLE TEMPORARIA


--- indica o uso do banco de dados

-- ADICIONAR COLUNA (varchar)
use bd_16_byciclon
ALTER TABLE tb_endereco
add  Bairro VARCHAR (50);




