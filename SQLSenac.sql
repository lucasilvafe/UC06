-- Criar banco de dados
create database senac_bd;
-- Usar o banco de dados senac_bd
use senac_bd

-- Criar a tabela Senac
create table UNIDADE(
	id_unidade int identity(1,1) primary key,
	cep_unidade char(8),
	nome_unidade varchar(30)
);
insert into UNIDADE (cep_unidade, nome_unidade) values ('59111113','Senac BRR')
select * from UNIDADE


create table SENAC(
	cnpj char(14) primary key not null,
	id_unidade int
	foreign key (id_unidade) references unidade(id_unidade)
);
insert into senac (cnpj) values ('12345678911111')
select * from senac


-- Criar a tabela Endereco
create table ENDERECO(
	id_endereco int identity(1,1) primary key not null,
	rua varchar(50) not null,
	cep char(8) not null,
	uf char(2),
	numero int
);
insert into endereco (rua, cep, uf, numero) values ('Rua Grande ', '59313442', 'RN',32)
select * from ENDERECO


-- Criar a tabela Aluno
create table ALUNO(
	cpf_aluno char(11) primary key not null,
	nome_aluno varchar(50) not null,
	email varchar(30) unique not null,
	data_nascimento date,
	idade int
);
insert into ALUNO (cpf_aluno, nome_aluno, email, data_nascimento, idade) values ('34689624692','Eduarda','Eduarda123@gmail.com','2000-03-02',30)
select * from ALUNO


-- Criar a tabela Matricula
create table MATRICULA(
	id_matricula int identity(1,1) primary key,
	data_hora_matricula Date
);


-- Criar a tabela Curso
create table CURSO(
	id_curso int identity(1,1) primary key not null,
	nome_curso varchar(50) not null,
	carga_horaria int not null,
	inicio_curso date not null,
	termino_curso date not null
);
insert into CURSO (nome_curso, carga_horaria, inicio_curso, termino_curso) values ('Manutenção de computadores', 22, '2024-02-17', '2025-06-10')


-- Criar a tabela Comercial
create table COMERCIAL(
	id_curso int
	foreign key (id_curso) references CURSO(id_curso)
);


-- Criar a tabela Aprendiz
create table APRENDIZ(
	id_curso int
	foreign key (id_curso) references CURSO(id_curso)
);


-- Criar a tabela Psg
create table PSG(
	id_curso int,
	foreign key (id_curso) references CURSO(id_curso)
);


-- Criar a tabela Ead
create table EAD(
	id_curso int,
	nome_curso varchar(50)
	foreign key (id_curso) references CURSO(id_curso)
);


-- Criar a tabela Turma
create table TURMA(
	numero_turma int identity(1,1) primary key,
	id_curso int,
	foreign key (id_curso) references CURSO(id_curso)
);


-- Criar a tabela Funcionario
create table FUNCIONARIO(
	id_funcionario int identity(1,1) primary key,
	nome varchar(50),
	rg char(9),
	cpf char(11),
	cargo varchar(20)
);
insert into FUNCIONARIO (nome, rg, cpf, cargo) values ('Pedro', '234598715', '67890456888', 'Vigia')
select nome from FUNCIONARIO

-- Criar a tabela Departamento
create table DEPARTAMENTO(
	id_departamento int identity(1,1) primary key,
	nome_departamento varchar(30),
	id_funcionario int
	foreign key (id_funcionario) references funcionario(id_funcionario)
); 


-- Criar a tabela Professor
create table PROFESSOR(
	salario decimal(10,2),
	id_funcionario int,
	foreign key (id_funcionario) references FUNCIONARIO(id_funcionario)
);
insert into PROFESSOR (salario) values (150.60)
--drop table PROFESSOR
select * from professor

-- Criar a tabela Asg
create table ASG(
	id_funcionario int,
	foreign key (id_funcionario) references FUNCIONARIO(id_funcionario)
);


-- Criar a tabela Gerente
create table GERENTE(
	id_funcionario int,
	foreign key (id_funcionario) references FUNCIONARIO(id_funcionario)
);


