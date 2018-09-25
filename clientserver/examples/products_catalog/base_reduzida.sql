
create database aula3_clientserver;

use aula3_clientserver;

create table fabricante (

	fabricante_id int,
    nome varchar(200),
    constraint fabricante_PK primary key (fabricante_id)
);


create table produto (

	produto_id int,
    nome varchar(200) NOT NULL,
    estoque int DEFAULT 0,
    preco float DEFAULT 0,
    cod_fabricante int,
	constraint produto_PK primary key (produto_id),
    constraint fabricante_FK foreign key (cod_fabricante) 
    references fabricante(fabricante_id) ON delete cascade
);

insert into fabricante (fabricante_id, nome) VALUES (1, 'Microsoft');
insert into fabricante (fabricante_id, nome) VALUES (2, 'Logitech');
insert into fabricante (fabricante_id, nome) VALUES (3, 'Dell');
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (1,'ZHLGTK',46,77.13,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (2,'GGHQYE',71,92.25,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (3,'FW5G0C',67,72.52,1);
