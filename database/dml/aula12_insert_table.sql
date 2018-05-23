drop database if exists aula12;
create database aula12;
use aula12;

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
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (14,'4C0VN6',81,93.16,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (15,'YXWDBG',87,91.99,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (16,'HDN3IK',15,101.23,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (17,'WKQRJD',94,88.85,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (18,'AC42BD',91,114.11,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (19,'93UAUM',55,107.71,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (20,'WD4Q77',22,117.9,2);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (21,'483QVO',32,93.62,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (22,'7A57SL',9,88.04,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (23,'8SY98C',5,91.4,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (24,'ZT3XOS',89,85.74,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (25,'TA9ELZ',50,86.4,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (26,'2POLEC',99,90.54,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (27,'Q00K8Q',1,93.96,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (28,'SFBLRW',34,116.9,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (29,'Q9B7WZ',3,98.4,3);
INSERT INTO produto (produto_id, nome, estoque, preco, cod_fabricante) VALUES (30,'Z8Z7EO',85,104.51,3);

#exemplos delete
SET SQL_SAFE_UPDATES = 0;
DELETE FROM produto WHERE preco>80 and preco<90;
DELETE FROM produto WHERE cod_fabricante=1 OR cod_fabricante=3;
DELETE FROM fabricante WHERE fabricante_id=2;

