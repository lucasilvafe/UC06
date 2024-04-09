/* 2
create procedure sp_funcionarios_bibliotecarios
as
begin
	select * from funcionario
	join BIBLIOTECARIO on funcionario.matricula = BIBLIOTECARIO.matricula
end;

exec sp_funcionarios_bibliotecarios

3
create procedure sp_livros_publicados_antes_2000
as
begin
	select titulo from LIVRO
	where year(ano_publicacao) < 2000
end;

exec sp_livros_publicados_antes_2000

4
create procedure sp_total_livros_cada_biblioteca
as
begin
	select cnpj, count(*) as total_livros from livro_biblioteca 
	group by cnpj
end

exec sp_total_livros_cada_biblioteca

5
create procedure sp_listar_eventos_workshop
as
begin
	select tipo, data_evento from EVENTO
	where year(data_evento) > 2020;
end

exec sp_listar_eventos_workshop
6
create procedure sp_titulo_python
as
begin
	select titulo from livro
	join TECNOLOGIA on livro.numero_registro = TECNOLOGIA.numero_registro
	where titulo like '%python%'
end

exec sp_titulo_python

7
create procedure sp_titulos_periodico
as
begin
	select titulo from PERIODICO
	join PERIODICO_BIBLIOTECA on PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
	where cnpj = '12345678000123';
end

exec sp_titulos_periodico
8
create procedure sp_funcionarios_nao_ti
as
begin
	select * from funcionario
	where matricula not like 't%';
end

exec sp_funcionarios_nao_ti
9
*/

/*
10
create procedure sp_titulo_emprestado_pelo_U0001
as
begin
select titulo, autor from LIVRO
join EMPRESTIMO_TARDE on LIVRO.numero_registro = EMPRESTIMO_TARDE.numero_registro
where id_usuario = 'U0001';
end
*/

/*
11
create procedure sp_palestras_custaram_acima_100_reais
as
begin
select * from evento
join palestra on evento.id_evento = palestra.id_evento 
where custo > 100.00;
end

--exec sp_palestras_custaram_acima_100_reais

12
create procedure sp_livros_ciencia_publicado_depois_de_2010
as
begin
select LIVRO.titulo,LIVRO.ano_publicacao from LIVRO
join CIENCIA on LIVRO.numero_registro = CIENCIA.numero_registro
where ano_publicacao > 2010;
end

exec sp_livros_ciencia_publicado_depois_de_2010

create procedure sp_nomes_atendente_com_Maria
as
begin
select FUNCIONARIO.nome from FUNCIONARIO
join ATENDENTE on FUNCIONARIO.matricula = ATENDENTE.matricula
where funcionario.nome like '% maria %'
end

exec sp_nomes_atendente_com_Maria


alter procedure sp_livros_emprestados
as
begin
	select LIVRO.titulo, count(titulo) as total_emprestimo from livro
	join EMPRESTIMO_TARDE on livro.numero_registro= EMPRESTIMO_TARDE.numero_registro
	where (select count(*) from EMPRESTIMO_TARDE where livro.numero_registro = EMPRESTIMO_TARDE.numero_registro) > 5
	group by titulo;
end

exec sp_livros_emprestados
*/

select nome,titulo
from EMPRESTIMO_TARDE
join LIVRO on LIVRO.numero_registro = EMPRESTIMO_TARDE.numero_registro
join usuario on EMPRESTIMO_TARDE.matricula = usuario.matricula
join TECNOLOGIA on LIVRO.numero_registro = TECNOLOGIA.numero_registro;
