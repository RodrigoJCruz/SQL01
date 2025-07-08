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

