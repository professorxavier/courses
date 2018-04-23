drop database if exists aula11;
create database aula11;
use aula11;

create table produto (

	produto_id int,
    nome varchar(80)

);

alter table produto add 
	descricao varchar(200);
    
alter table produto add
	codigo varchar(10) not null;

alter table produto modify
	codigo varchar(20) not null;

alter table produto modify
	nome varchar(100) not null;
    
alter table produto 
	drop column descricao;

alter table produto
	add constraint produto_PK 
    primary key (produto_id);
    
alter table produto
	drop primary key;    
    
create table categoria (
	categoria_id int,
    nome varchar(30),
    primary key (categoria_id)
);    
    
alter table produto
	add categoria int;
    
    
alter table produto
	add constraint categoria_FK
    foreign key (categoria)
    references categoria(categoria_id);
    
alter table produto
		drop foreign key categoria_FK;
    
 create table funcionario (
 	codigo int,
    nome varchar(100)
 );
 
 alter table funcionario
	ADD constraint funcionario_PK 
    primary key (codigo);

alter table funcionario
	ADD ativo char DEFAULT 'N';
    
alter table funcionario
	ADD ano_nascimento int NOT NULL;
    
alter table funcionario
	add constraint ativo_CHK 
    check(ativo='Y' OR ativo='N');
    
    