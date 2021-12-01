-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),

);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);


/* para workbench - local - desenvolvimento */
CREATE DATABASE MakewithG;
USE MakewithG;

CREATE TABLE usuario(
idusuario int primary key not null auto_increment,
nome_completo varchar(100),
email varchar(45),
senha varchar(45),
apelido varchar(45),
sexo char(1) check (sexo = "feminino" OR sexo = "masculino" OR sexo = "naoespecificado")
) auto_increment = 1;


CREATE TABLE comentario(
idcomentario int primary key,
texto varchar (1000),
resposta varchar(500),
fk_usuario int,
foreign key (fk_usuario) references usuario(idusuario)
);

CREATE TABLE visitas(
idvisitas int primary key auto_increment,
quantidade_visitas int
);