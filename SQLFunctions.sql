-- Função que retorna o numero total de livros
/*create function fn_total_livros(@cnpj nvarchar(14))
returns int
as
begin
	declare @total_livros int; --Variavel Declarada
	select @total_livros = count(*) from LIVRO_BIBLIOTECA
	where cnpj = @cnpj;
	return @total_livros
end;

*/

-- Função que retorna o numero total de funcionarios

create function fn_total_funcionarioas()
returns int
as
begin
	declare @total_funcionario int;
	select @total_funcionario = COUNT(*) from FUNCIONARIO
	return @total_funcionario
end

select dbo.fn_total_funcionarioas() as total_funcionario;

create function fn_total_evento(@tipo nvarchar(30))
returns int
as
begin
	declare @total_eventos int
	select @total_eventos = count(*) from evento
	where tipo = @tipo;
	return @total_eventos;
end

select dbo.fn_total_evento('workshop') as total_evento

--Função para calcular o custo médido do tipo wokshop

alter function fn_media_evento(@tipo nvarchar(30))
returns decimal(6,2)
as
begin
	declare @media_eventos decimal(6,2)
	select @media_eventos = avg(custo) from evento
	where tipo = @tipo;
	return @media_eventos;
end

select dbo.fn_media_evento('palestra') as media_custo
