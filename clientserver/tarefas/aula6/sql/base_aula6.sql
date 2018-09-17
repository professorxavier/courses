drop database if exists aula6;
create database aula6;
use aula6;

create table cliente (
	cliente_id int auto_increment,
    nome varchar(200) NOT NULL,
	limitevenda decimal DEFAULT 0,
	constraint client_PK primary key (cliente_id)
);

insert into cliente (nome, limitevenda) VALUES ('Fernando', 100);
insert into cliente (nome, limitevenda) VALUES ('Neymar', 100000);
insert into cliente (nome, limitevenda) VALUES ('Tite', 0);