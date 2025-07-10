/*
adicionar uma coluna nova na tabela tb_produtos
essa coluna se chamara estoque 
*/
-----


-- ADICIONAR COLUNA (varchar)
use bd_16_byciclon
ALTER TABLE tb_produtos
add  estoque INT DEFAULT (0);


---- ver todos os produtos que estão dentro da tabela

SELECT * FROM tb_produtos

 ---- atualizar os valores da tabela de produtos

 UPDATE tb_produtos SET estoque = 15 WHERE nome = 'barra forte';
 UPDATE tb_produtos SET estoque = 8 WHERE nome = 'caloi ceci';
  UPDATE tb_produtos SET estoque = 30 WHERE nome = 'montain bike specialized';

  -- confirmar se os dados foi atualizados

 SELECT * FROM tb_produtos

 ----- Trazendo o total de valor em estoque multiplicando a quantidade por valor

 use bd_16_byciclon
 SELECT
	nome,
	volorunitario,
	estoque,
	(volorunitario * estoque) AS valortotalestoque
	FROM tb_produtos

	
---- adicionar um novo produto na tabela pedidos

INSERT tb_produtos (nome,linha,volorunitario)
values('topbike','LV', 5000)

---- atualizando o estoque da Bicicleta topbike

 UPDATE tb_produtos SET estoque = 15 WHERE nome = 'topbike';

	-- conferir se foi incluido o modelo topbike
 SELECT * FROM tb_produtos

 --- orientação do professor
 INSERT tb_produtos (nome,linha,volorunitario)
values('superbike','hb', 10000)

-- so se for imediatamente

DECLARE @id INT = SCOPE_IDENTITY();
UPDATE tb_produtos SET estoque = 19
Where idproduto = @id;




 -- criar coluna e calcular a % do desconto
 
 SELECT
 nome,
 volorunitario,
 estoque,
 (volorunitario * estoque) AS valortotal,
 (volorunitario * estoque) * 0.05 AS DESCONTO5PORCENTO,
 (Volorunitario *estoque) * 0.95 AS Valorfinalcomdesconto
 FROM tb_produtos

 ---- Select com formato e join realizadas nos calculos

 SELECT
	i.idpedido,
	p.nome AS produto,
	i.quantidade,
	FORMAT(i.precounitario, 'c', 'pt_br') AS precounitario,
	FORMAT (i.desconto, 'c','pt_br') AS valordesconto,
	FORMAT((i.quantidade * precounitario)- i.desconto, 'c','pt_br') AS valorf	
	FROM tb_itens_pedidos i
	JOIN tb_produtos p ON i.idproduto = p.idproduto

	
 SELECT * FROM tb_itens_pedidos

 UPDATE tb_itens_pedidos SET desconto = 200
 WHERE iditem = 1

 -----define um desconto de 10% globalmente

 DECLARE @descontoGlobal DECIMAL (5,2) = 0.10;
SELECT
nome,
FORMAT (volorunitario,'C', 'PT-BR') AS valor_unitario,
estoque,
FORMAT (volorunitario*estoque, 'c', 'pt-br') AS total_bruto,
FORMAT (volorunitario * estoque * (1-@descontoGlobal),'c','pt-br') as Total_comdesconto
from tb_produtos

---Trabalhando com cases
SELECT
nome,
FORMAT(volorunitario, 'C','PT-BR')AS valor_unitario,
CASE
		WHEN volorunitario >= 4000 THEN 'Premium'
		WHEN volorunitario >=2000 THEN 'Intermediario'
		ELSE 'Basic'
END AS Categoria
fROM tb_produtos

----- trazer os itens que estão com estoque baixo

SELECT nome, estoque FROM tb_produtos where estoque <30;

SELECT * from tb_produtos where estoque = 3

delete from tb_produtos where idproduto = 3

----- Apagar somente se existir o valor a ser apagado

IF EXISTS (SELECT 1 FROM tb_produtos WHERE idproduto = 2)
delete from tb_produtos where idproduto = 2

SELECT * FROM tb_produtos

----- Apagar tabela em modo destrutivo

---- DROP Table tb_produtos

---Apagar em modo seguro
/* IF OBJECT_ID ('tb_produtos', 'u')  is not null

DROP TABLE tb_produtos*/

--- apagar o meu primeiro banco 

DROP DATABASE Meuprimeirobanco

IF EXISTs (SELECT NAME FROM Sys.databases WHERE name = 'db_pedidos')
drop database 'db_pedidos'


SELECT * FROM bd_pedidos




