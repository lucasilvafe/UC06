use sistema_biblioteca;

-- Quest�o 1
select count(*) as total_livros
from LIVRO_BIBLIOTECA
where cnpj= '12345678000123'

-- quest�o 2
select *
from BIBLIOTECARIO

-- quest�o 3
select titulo,autor,numero_registro
from LIVRO
where numero_registro = 10;

select
-- quest�o 4
select *
from evento
where tipo = 'workshop' and custo > 150.00;

-- questao 6
select *
from ATENDENTE

-- questao 8
select * nome
from SOCIOLOGIA

-- questao 9
select nome,matricula
from EDUCADOR