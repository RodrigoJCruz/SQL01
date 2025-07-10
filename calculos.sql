

USE bd_16_byciclon
----- tabelas do banco de dados

SELECT NAME  FROM SYS.TABLES ORDER BY NAME;

---------- campo da tabela pedidos
SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'tb_pedidos'

-------- total de clientes por estado

SELECT uf e , COUNT (*) AS total_clientes
FROM tb_cliente c
JOIN tb_endereco e ON c.idendereco = e.idendereco
GROUP BY e.uf
ORDER BY total_clientes DESC;

----- nome clientes e valor total que cada um ja gastou

SELECT 
	c.nome AS cliente,
	SUM (p.valortotal)AS totalgasto
	from tb_cliente c
	JOIN tb_pedidos p On c.idcliente = p.idcliente
	GROUP BY c.nome
	ORDER BY totalgasto DESC

	------ valor total de pedidos por clientes e estaticas de calculo
	SELECT
	c.nome AS cliente,
	SUM (P.valortotal) AS totalgasto,
	AVG ( p.valortotal) AS mediaporpedidos,
	MIN(p.valortotal) AS pedidomaisbarato,
	MAx (P.valortotal) AS pedidomaiscaro
	FROM tb_cliente c
	JOIN tb_pedidos p ON c.idcliente= p.idcliente
	GROUP BY c.nome

	---- pedidos por mês com media de valor

	--- para ano ( YEAR) e dia ( DAY)

	SELECT
	MONTH(datapedido) AS mes,
	COUNT (*) AS totalpedidos,
	AVG (valortotal) AS mediapedido
	FROM  tb_pedidos
	GROUP BY MONTH(datapedido)
	ORDER BY MES;


		
/*
Qual cliente comprou o maior numero de produtos no mês passado, e quanto ele gastou no total

*/

use bd_16_byciclon
	select TOP 3
	c.nome as cliente,
	SUM(p.valortotal) as 'total gasto'
	from tb_cliente c
	JOIN tb_pedidos p ON c.idcliente = p.idcliente
	GROUP by c.nome
	ORDER BY 'TOTAL GASTO' DESC;


	/*
Qual cliente comprou o maior numero de produtos no mês passado, e quanto ele gastou no total

*/

select
	c.nome as cliente,
	sum(i.quantidade) AS total_produtos_comprados, 
	FORMAT( SUM((i.precounitario * i.quantidade) - i.desconto), 'c', 'pt-br') as total_gasto
	FROM tb_pedidos p 
	JOIN tb_cliente C ON p.idcliente =c.idcliente
	JOIN tb_itens_pedidos i ON p.idpedido = i.idpedido
	WHERE
	p.datapedido between '2025-07-01' and '2025-07-30'
	group by c.nome
	order by total_produtos_comprados desc;



---- listar totas as fks de uma tabela ( modo pratico)
EXEC sp_fkeys 'tb_cliente'  ----- ou o nome da tabela com problema
EXEC sp_fkeys 'tb_pedidos'
EXEC sp_fkeys 'tb_itens_pedidos'
exec sp_fkeys 'tb_produtos'
EXEC sp_fkeys 'tb_endereco'

---ver o nome das constrains no banco de dados inteiro

SELECT

f.name AS 'nome constraint',
OBJECT_NAME ( f.parent_object_id) AS tabela,
COL_NAME ( fc.parent_object_id, fc.parent_column_id) AS coluna
FROM sys.foreign_keys as f
INNER JOIN sys.foreign_key_columns AS fc
ON f.object_id = fc.constraint_object_id
order by tabela


--- excluir a constraint ( chave estrangeira incorreta)

ALTER TABLE tb_cliente ---substitua pela tablea com a constraint errada
DROP CONSTRAINT fk_cliente_endereco -- substitua pela constraint errada

SELECT * FROM tb_cliente WHERE idendereco NOT IN (SELECT idendereco FROM tb_endereco); ----consultar problema