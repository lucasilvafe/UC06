-- Criar banco de dados
create database senac_bd;
-- Usar o banco de dados senac_bd
use senac_bd

-- Criar a tabela Senac
create table SENAC(
	cnpj int identity(1,1) primary key,
	
);

-- Criar a tabela Departamento
create table DEPARTAMENTO(
	id_departamento int identity(1,1) primary key,
	nome_departamento varchar(30)
);

-- Criar a tabela Endereco
create table ENDERECO(
	id_endereco int identity(1,1) primary key,
	rua varchar(50),
	cep char(8),
	uf char(2),
	numero char(5)
);

-- Criar a tabela Aluno
create table ALUNO(
	cpf_aluno char(11) primary key,
	nome_aluno varchar(50),
	email varchar(30) unique,
	data_nascimento date,
	idade int
);

-- Criar a tabela Comercial
create table COMERCIAL(
	
);

-- Criar a tabela Aprendiz
create table APRENDIZ(
	
);

-- Criar a tabela Psg
create table PSG(
	
);

-- Criar a tabela Ead
create table EAD(
	
);

-- Criar a tabela Matricula
create table MATRICULA(
	id_matricula int identity(1,1) primary key,
	data_hora_matricula Date
);

-- Criar a tabela Curso
create table CURSO(
	id_curso int identity(1,1) primary key,
	nome_curso varchar(50)
);

-- Criar a tabela Turma
create table TURMA(
	numero_turma int identity(1,1) primary key,
	id_curso int,
	foreign key (id_curso) references CURSO(id_curso)
 
-- Criar a tabela Funcionario
create table FUNCIONARIO(
	id_funcionario int identity(1,1) primary key,
	nome varchar(50),
	rg char(9),
	cpf char(11),
	cargo varchar(20)
);

-- Criar a tabela Professor
create table PROFESSOR(
	id_funcionario int,
	foreign key (id_funcionario) references FUNCIONARIO(id_funcionario)
);

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