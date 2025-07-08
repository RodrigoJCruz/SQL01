
----tudo sobre a tabela

EXEC sp_help 'tb_produtos'

----Lista de coluna e tipos

	select COLUMN_NAME, DATA_TYPE, 
	CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME = 'tb_produtos'

	----chave primaria da tabela
	
	EXEC SP_PKEYS 'tb_pedidos'

	--- chave extrangeira da tabela

	EXEC SP_FKEYS 'tb_pedidos'

---- ver todas as tableas do banco de dados

SELECT NAME
FROM SYS.TABLES
ORDER BY name ; --- ASC OU DESC

--- ver a distribuição de valores
--- (ex: por cidade ou estado)

select uf, COUNT(*) AS total
FROM tb_endereco
GROUP BY uf
ORDER BY total desc;