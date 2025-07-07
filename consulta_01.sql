select
p.id_pedidos,
p.descricao,
p.valor,
c.id_cliente,
c.nome,
c.cidade

from
	tb_pedidos p
	join
	tb_clientes c ON p.fk_cliente=c.id_cliente
	order by c.nome;