-- Criar banco de dados
create database livraria
use livraria
create table livro(
	cod_livro int primary key,
	foreign key (cod_editora) references estoque(cod_editora),
	valor smallmoney(4),
	ano_publicacao date,
	categoria varchar(10),
	titulo varchar(10),
	autor varchar(20)
);
create table editora(
	cod_editora int primary key,
	telefone_1 varchar,
	telefone_2,
	nome_contato,
	email
);
create table estoque(
	qtde_estoque int
);
create table cliente(
	cod_cliente int,
	nome varchar(10),
	email varchar(30),
	telefone_1 char(12),
	telefone_2 char(12),
	rua varchar(20),
	bairro varchar(20),
	cidade varchar(20),
	estado varchar(20)
);
create table pessoa_fisica(
	foreign key (cod_cliente) references cliente(cod_cliente),
	rg char(7),
	cpf char(11)
);
create table pessoa_juridica(
	foreign key (cod_editora) references estoque(cod_editora),
	cnpj char(14),
	ie char(11)
);
create table pedido(
	cod_pedido int primary key,
	foreign key (cod_cliente) references cliente(cod_cliente),
	data_pedido date,
	valor_pedido smallmoney(4)
);
create table item_pedido(
	foreign key (cod_editora) references estoque(cod_editora),
	foreign key (cod_editora) references estoque(cod_editora),
	qtde_pedido,
	valor_item
);
