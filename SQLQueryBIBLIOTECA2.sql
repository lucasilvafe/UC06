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

-- questão 4
select *
from EVENTO
where tipo = 'workshop' and custo > 150;
-- questão 5
select livro.titulo
from livro
join tecnologia on
livro.numero_registro = TECNOLOGIA.numero_registro
-- questao 6
select *
from ATENDENTE

-- correção
select nome
from ATENDENTE

-- questão 7
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

-- questão 11
 select evento.data, evento.tipo
 from evento
 where tipo = 'palestra' and data < '2022'

 -- questão 12
 select livro.titulo, livro.ano_publicacao
 from livro
 join CIENCIA on livro.numero_registro = CIENCIA.numero_registro
 and ano_publicacao > '2015'

 -- questão 13
 select TECNICO_TI.nome
 from TECNICO_TI
 where nome like '%rodrigo%'

 -- questão 14
 select FUNCIONARIO.nome
 from FUNCIONARIO
 join ASSISTENTE on FUNCIONARIO.matricula = ASSISTENTE.matricula;

 -- questão 15
 select LIVRO.titulo
 from LIVRO
 where titulo like '%programação%'

 -- questao 16
 select PERIODICO.titulo
 from PERIODICO
 where titulo like '%saúde%'

 -- questão 17
 select FUNCIONARIO.nome
 from FUNCIONARIO
 join GERENTE on FUNCIONARIO.matricula = GERENTE.matricula
 where GERENTE.nome like 'c%';

 -- questão 18
 select livro.titulo, livro.ano_publicacao
 from LIVRO
 where ano_publicacao > '2010' and ano_publicacao < '2020';

 -- questão 19
 select FUNCIONARIO.nome
 from FUNCIONARIO
 join ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matricula
 where ESTAGIARIO.nome like '%Lima%';