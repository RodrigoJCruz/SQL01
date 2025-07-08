use bd_16_byciclon
INSERT INTO tb_endereco( pais, uf,cidade, bairro, rua, numero)
values ('Brasil','SP','Osasco','centro','Rua das camelias',100),
('Brasil','RJ','niteroi','centro','Rua das Rosas',200);

INSERT INTO tb_regional(nomeregional, enderecoregional,telefoneregional)
VALUES('SUDESTE','AV.PAULISTA 1439','12341234'),
('NORTE','RUA DOS CRAVOS 123','423243232');

INSERT INTO tb_cliente(idendereco,idregional,nome,email,cpf) 
	values(1,1,'ana','ana@gmail.com','123242344'),
	(2,2,'Yan','yan@gmail.com','123242344');


INSERT INTO tb_vendedores(idendereco,idregional,nome,email,cpf) 
	values(2,1,'Maria','maria@gmail.com','123242344'),
	(2,2,'caio','caio@gmail.com','123242344');

INSERT INTO tb_produtos(nome, linha, volorunitario) 
	values ('montain bike Specialized', 'mtb',3500.90),
	('caloi ceci', 'speed',2800.00),
	('Barra forte','MTB',4000.10);

INSERT INTO tb_pedidos (idcliente, idvendedor,datapedido,qntditens,valortotal)
	values ( 1,1,'2025-07-20',2,5000),
	( 1,1,'2025-07-21',1,5000),
	( 1,1,'2025-07-22',3,2000);
	
	INSERT INTO tb_itens_pedidos (idpedido,idproduto,quantidade,precounitario,desconto)
	values (1,1,1,5000.10,0),
	(2,1,18,1000,10),
	(2,1,3,4000,10);



