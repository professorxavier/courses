drop database if exists aula13;
create database aula13;
use aula13;

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

INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) 
VALUES (1,'9UMJS3',39,82.4,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) 
VALUES (2,'0TOAFZ',13,118.72,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) 
VALUES (3,'88XIIV',22,101.47,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (4,'ODIEWT',52,72.09,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (5,'R8PVKU',88,115.07,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (6,'BSIXP2',91,104.24,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (7,'G5481C',81,99.23,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (8,'2IH63W',61,71.71,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (9,'PHMVOP',19,76.71,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (10,'HNTSG4',36,75.29,1);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (11,'URWLRT',55,79.17,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (12,'BHZ376',0,80.35,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (13,'PPCPTQ',91,111.06,2);

# apenas se for usar o MySQL Workbench
SET SQL_SAFE_UPDATES = 0;

#exemplos update
UPDATE fabricante SET nome='Dell Inc.' WHERE nome='Dell';
UPDATE fabricante SET nome='Dell Inc.' WHERE fabricante_id=3;
update produto SET preco=preco*1.3
WHERE cod_fabricante=1;

update produto SET preco=round(preco,2)
WHERE cod_fabricante=1;



