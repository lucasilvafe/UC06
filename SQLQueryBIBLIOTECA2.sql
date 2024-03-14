use sistema_biblioteca;

-- Questão 1
select count(*) as total_livros
from LIVRO_BIBLIOTECA
where cnpj= '12345678000123'

-- questão 2
select *
from BIBLIOTECARIO

-- questão 3
select titulo,autor,numero_registro
from LIVRO
where numero_registro = 10;

select
-- questão 4
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