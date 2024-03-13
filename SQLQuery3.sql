create database instagram
use instagram
create table instagram(
	id_empresa int primary key,
	equipe_desenvolvimento varchar(20),
	tecnologia_ultilizada varchar(15),
	contato_empresa varchar(20),
	endereco varchar(20),
	ceo varchar(20)
);
-- Criar tabela usuario
create table perfil_usuario(
	id_usuario int primary key,
	nome_usuario varchar(10),
	telefone varchar(12),
	email nvarchar(30),
	senha nvarchar(20)
);
create table login_usuario(
	id_login int primary key,
	nome_usuario,
	email_usuario,
	senha_usuario
);
create table pesquisa(
	id_pesquisa,
	conta_usuario,
	nome_usuario
);
create table pessoal(
	id_pessoal
);
create table beta(
	id_beta,
	atualizacao
);
create table criador_conteudo(
	id_criador 
);
create table comercial(
	id_comercial
);
create table direct(
	id_mensagem,
	data_hora,
	destinatario,
	resposta_mensagem,
	anexo
);
create table audio(
	id_audio,
	enviar_audio,
	excluir_audio,
	duracao_audio
);
create table imagem(
	id_imagem,
	formato_imagem
);
create table texto(
	id_texto
);
create table chamada(
	id_chamada,
	data_hora,
	duracao_chamada
);
create table video(
	id_video,
	tamanho,
	formato,
	duracao
);
create table postagem(
	
);
create table feed(
	
);
create table reel(
	
);
create table story(
	
);
create table notifica(

);
create table criador(

);
create table vendedor(

);