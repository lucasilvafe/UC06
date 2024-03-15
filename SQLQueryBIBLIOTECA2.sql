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

-- quest�o 4
select *
from EVENTO
where tipo = 'workshop' and custo > 150;
-- quest�o 5
select livro.titulo
from livro
join tecnologia on
livro.numero_registro = TECNOLOGIA.numero_registro
-- questao 6
select *
from ATENDENTE

-- corre��o
select nome
from ATENDENTE

-- quest�o 7
select titulo, ano_publicacao
from PERIODICO
where ano_publicacao = '2023'
-- questao 8
select livro.titulo
from LIVRO
join SOCIOLOGIA on livro.numero_registro = SOCIOLOGIA.numero_registro

-- questao 9
select nome,matricula
from EDUCADOR


-- questao 10
select PERIODICO.titulo
from PERIODICO
where titulo like 'c%';

-- quest�o 11
 select evento.data, evento.tipo
 from evento
 where tipo = 'palestra' and data < '2022'

 -- quest�o 12
 select livro.titulo, livro.ano_publicacao
 from livro
 join CIENCIA on livro.numero_registro = CIENCIA.numero_registro
 and ano_publicacao > '2015'

 -- quest�o 13
 select TECNICO_TI.nome
 from TECNICO_TI
 where nome like '%rodrigo%'

 -- quest�o 14
 select FUNCIONARIO.nome
 from FUNCIONARIO
 join ASSISTENTE on FUNCIONARIO.matricula = ASSISTENTE.matricula;

 -- quest�o 15
 select LIVRO.titulo
 from LIVRO
 where titulo like '%programa��o%'

 -- questao 16
 select PERIODICO.titulo
 from PERIODICO
 where titulo like '%sa�de%'

 -- quest�o 17
 select FUNCIONARIO.nome
 from FUNCIONARIO
 join GERENTE on FUNCIONARIO.matricula = GERENTE.matricula
 where GERENTE.nome like 'c%';

 -- quest�o 18
 select livro.titulo, livro.ano_publicacao
 from LIVRO
 where ano_publicacao > '2010' and ano_publicacao < '2020';

 -- quest�o 19
 select FUNCIONARIO.nome
 from FUNCIONARIO
 join ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matricula
 where ESTAGIARIO.nome like '%Lima%';