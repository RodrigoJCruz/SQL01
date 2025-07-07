--- criar banco de dados 
CREATE DATABASE bd_16_byciclon
GO
USE bd_16_byciclon
GO


----- criar tabela tb_cliente

create table tb_cliente(
	idcliente INT PRIMARY KEY IDENTITY (1,1), --- coluna numerica do tipo autonumeraçção
	idendereco INT NOT NULL, -- campo numerico para FK
	idregional INT NOT NULL, --- campo numerico para FK
	nome VARCHAR (40) not null, -- campo de texto 
	email VARCHAR (40) NOT NULL, -- campo de texto
	cpf varchar (11) NOT NULL

);

CREATE TABLE tb_vendedores(
	idvendedor INT PRIMARY KEY IDENTITY (1,1),
	idendereco INT NOT NULL,
	idregional INT NOT NULL,
	nome varchar (40) NOT NULL,
	email VARCHAR (30) NOT NULL,
	cpf varchar ( 11) NOT NULL

);

CREATE TABLE tb_produtos(
	idproduto INT IDENTITY (1,1)PRIMARY KEY,
	nome VARCHAR (255) NOT NULL,
	linha VARCHAR(255) NOT NULL,
	volorunitario MONEY NOT NULL
);

CREATE TABLE tb_pedidos (
	idpedido INT PRIMARY KEY IDENTITY (1,1),
	idcliente INT NOT NULL,
	idvendedor INT NOT NULL,
	datapedido DATE NOT NULL,
	qntditens INT NOT NULL,
	valortotal MONEY NOT NULL
	);

	CREATE TABLE tb_itens_pedidos(

	iditem INT IDENTITY(1,1) PRIMARY KEY,
	idpedido INT NOT NULL,
	idproduto INT NOT NULL,
	quantidade INT NOT NULL,
	precounitario MONEY NOT NULL,
	desconto MONEY NOT NULL,
	
	
	);
	
	CREATE TABLE tb_regional (

	idregional INT PRIMARY KEY IDENTITY (1,1),
	nomeregional VARCHAR (50) NOT NULL,
	enderecoregional VARCHAR (255),
	telefoneregional VARCHAR (50) 	
	
	);
	
	CREATE TABLE tb_endereco(

	idendereco INT PRIMARY KEY IDENTITY (1,1),
	pais VARCHAR (50) NOT NULL,
	uf VARCHAR (50) NOT NULL,
	cidade VARCHAR (50) NOT NULL,
	rua VARCHAR (50) NOT NULL,
	numero VARCHAR (50) NOT NULL	
	
	);


	CREATE TABLE TEMPORARIA(
	coluna INT,
	coluna02 int
	
	);