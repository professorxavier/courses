create database udf_aula10;

drop table if exists cliente;

create table cliente (

	cliente_id int,
    nome varchar(200),
    telefone varchar(20),
    responsavel_id int, 
	constraint cliente_PK primary key (cliente_id),
    constraint funcionario_FK foreign key (responsavel_id) 
		references funcionario(matricula)
);


create table produto (

	produto_id int,
    nome varchar(200),
    quantidade int,
	constraint produto_PK primary key (produto_id)
);

create table funcionario (

	matricula int,
    nome varchar(200),
    rg varchar(200),
    cpf varchar(200),
    salario float,
	constraint funcionario_PK primary key (matricula)
);


