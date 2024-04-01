use sistema_biblioteca
--1 Retornar todos os livros de Sociologia
select titulo, autor from livro
join SOCIOLOGIA on
SOCIOLOGIA.numero_registro = LIVRO.numero_registro

--2 Listar os nomes dos funcionários que são bibliotecários
select nome from BIBLIOTECARIO

--3 Exibir os títulos dos publicados antes de 2000
select titulo, ano_publicacao from livro
where ano_publicacao < 2000

--4 Mostrar o número total de livros em cada biblioteca
select cnpj, count(*) as total_livros from livro_biblioteca
group by cnpj

--5 Listar eventos do tipo 'Workshop' que ocorreram após 2020
select tipo, data_evento from EVENTO
where year(data_evento) > 2020;

--6 Exibir os nomes dos usuários que fizeram empréstimos de livros em janeiro de2023
select * from EMPRESTIMO
where month(data_devoluca) = 1



create table USUARIO(
	id_usuario int identity(1,1) primary key,
	nome_usuario varchar(max) not null
);

select nome_usuario from USUARIO
create table EMPRESTIMO(
	data_devoluca date,
	id_usuario int,
	numero_registro int,
	foreign key (id_usuario) references usuario(id_usuario),
	foreign key (numero_registro) references livro(numero_registro)
);

select * from EMPRESTIMO
where month(data_devoluca) = 1

insert into EMPRESTIMO (data_devoluca,id_usuario,numero_registro) values ('2024-01-03', 7, 33)

--7 Retornar os títulos dos livros de tecnologia que tem 'Pyton' no título
select titulo from livro
where titulo like '%python%'

--8 Listar os títulos dos periódicos disponivéis na biblioteca com CNPJ '12345678000123'
select titulo from LIVRO
join PERIODICO_BIBLIOTECA on
PERIODICO_BIBLIOTECA.numero_registro = LIVRO.numero_registro

select * from PERIODICO_BIBLIOTECA