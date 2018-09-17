drop database if exists aula6;
create database aula6;
use aula6;

create table cliente (
	cliente_id int auto_increment,
    nome varchar(200) NOT NULL,
	limiteVenda decimal DEFAULT 0,
	constraint client_PK primary key (cliente_id)
);