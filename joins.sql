use bd_16_byciclon

--- relacionamento entre as tabelas tb_clientes ------> tb_endereco
ALTER TABLE tb_cliente
ADD CONSTRAINT fk_cliente_endereco
FOREIGN KEY (idendereco)  REFERENCES tb_endereco ( idendereco)

--- relacionamento entre as tabelas tb_clientes ------> tb_regional
ALTER TABLE tb_cliente
ADD CONSTRAINT fk_cliente_regional
FOREIGN KEY (idregional) REFERENCES tb_regional (idregional)

--- relacionamento entre as tabelas tb_vendedores ------> tb_endereco

ALTER TABLE tb_vendedores
ADD CONSTRAINT fk_vendedores_endereco
FOREIGN KEY (idendereco) REFERENCES tb_endereco (idendereco)

----- relacionamento entre as tabelas tb_vendedores ----> tb_regionais

ALTER TABLE tb_vendedores
ADD CONSTRAINT fK_vendedores_regionais
FOREIGN KEY (idregional) REFERENCES tb_regional (idregional)


----- tb_pedidos -- > tb_clientes
ALTER TABLE tb_pedidos
ADD CONSTRAINT fk_pedidos_clientes
FOREIGN KEY ( idcliente) REFERENCES tb_cliente (idcliente)

---- tb_pedidos -- > tb vendedores --- 

ALTER TABLE tb_pedidos
ADD CONSTRAINT fk_pedidos_vendedores
FOREIGN KEY (idvendedor) REFERENCES tb_vendedores (idvendedor)

---- tb_itens_pedidos ---> tb_pedidos
ALTER TABLE tb_itens_pedidos
ADD CONSTRAINT fk_itens_pedidos_pedidos
FOREIGN KEY ( idpedido) REFERENCES Tb_pedidos(idpedido)

---- tb_itens_pedidos - > tb_produtos

ALTER TABLE tb_itens_pedidos
ADD CONSTRAINT fk_itens_pedidos_produtos
FOREIGN KEY(idproduto) REFERENCES tb_produtos(idproduto)


