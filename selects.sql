USE bd_16_byciclon

SELECT	c.nome, c.email, e.uf, e.cidade
FROM tb_cliente c
JOIN tb_endereco e ON C.idendereco = e.idendereco
WHERE e.uf = 'SP';


--- pedidos acima de 3000

SELECT p.idpedido, p.datapedido as DATEE,c.nome 
AS cliente, p.valortotal
FROM tb_pedidos p
join tb_cliente c ON p.idcliente = c.idcliente
WHERE p.valortotal<3000

---- PRODUTOS DA LINHA MTB

SELECT nome, linha, volorunitario
FROM tb_produtos
WHERE linha = 'mtb';

----- Cliente que comeca com a letra A

SELECT nome, email
FROM tb_cliente
WHERE nome LIKE 'y%';


----------pedidos feitos entre duas datas

SELECT idpedido,datapedido, valortotal
FROM tb_pedidos
WHERE datapedido BETWEEN '2024-06-01' AND '2025-08-01'

---- ver itens de um pedido especifico

SELECT P.idpedido AS CodPedido, pr.nome as produto,i.quantidade, i.precounitario, i.desconto
FROM tb_itens_pedidos i
JOIN tb_pedidos P ON i.idpedido = p.idpedido
JOIN tb_produtos pr ON I.idproduto = pr.idproduto
WHERE p.idpedido = 2

------- lista de vendedores e suas regiõe

SELECT v.nome AS vendedor,v.email AS email,r.nomeregional AS regiao
from tb_vendedores v
JOIN tb_regional r ON v.idregional = r.idregional;


 --clientes e seus respectivos vendedores (por pedido)
 SELECT c.nome as cliente, v.nome AS vendedores, p.datapedido
FROM tb_pedidos p
Join tb_cliente c ON p.idcliente = c.idcliente
JOIN tb_vendedores v ON p.idvendedor = v.idvendedor

----PRODUTO COM VALOR ENTRE 2000 e 3000

SELECT nome, volorunitario
FROM tb_produtos
WHERE volorunitario BETWEEN 2000 and 3000;

