drop database if exists aula15;
create database aula15;
use aula15;

create table produto (
	produto_id int primary key,
    nomeproduto varchar(200),
    preco decimal(10,2),
    estoque int default 0
);

insert into produto VALUES (1, 'Teclado', 100, 40);
insert into produto VALUES (2, 'Mouse', 40, 120);
insert into produto VALUES (3, 'Monitor 15 polegadas', 800, 20);
insert into produto VALUES (4, 'Monitor 17 polegadas', 1200, 30);
insert into produto VALUES (5, 'Pen drive 16 GB', 20, 1000);

create table fornecedor(
	fornecedor_id int primary key,
    nomefornecedor varchar(200),
    cnpj varchar(14)
);

insert into fornecedor values (1, 'Empresa do Tio Fernando', '12345678909876');
insert into fornecedor values (2, 'Concorrente 1 do Fernando', '09876543211234');
insert into fornecedor values (3, 'Concorrente 2 do Fernando', '135876100811');


create table precocompra (

	produto_id int,
    fornecedor_id int,
    precocompra decimal(10,2),
    constraint preco_pk primary key (produto_id, fornecedor_id),
    constraint produto_fk foreign key (produto_id) references produto(produto_id),
    constraint fornecedor_fk foreign key (fornecedor_id) references fornecedor(fornecedor_id)
);

insert into precocompra values (1,1,40);
insert into precocompra values (1,2,45);
insert into precocompra values (2,2,20);
insert into precocompra values (3,2,500);
insert into precocompra values (3,3,400);
insert into precocompra values (4,3,600);
insert into precocompra values (5,1,10);
insert into precocompra values (5,2,8);
insert into precocompra values (5,3,6);



create table cliente(
	cliente_id int primary key,
    nomecliente varchar(200)
);

insert into cliente values (1, 'Prof. Fernando');
insert into cliente values (2, 'Prof. Tite');
insert into cliente values (3, 'Prof. Parreira');
insert into cliente values (4, 'Prof. Zagalo');


create table vendedor(
	vendedor_id int primary key,
    nomevendedor varchar(200),
    comissao int
);

insert into vendedor values (1, 'Fernando X', 20);
insert into vendedor values (2, 'Empresário do Kazim', 25);
insert into vendedor values (3, 'Carille', 10);
insert into vendedor values (4, 'Neymar Pai', 30);


create table venda (

	venda_id int primary key,
    datavenda date,
    cliente int,
    vendedor int,
    constraint cliente_fk foreign key (cliente) references cliente(cliente_id),
    constraint vendedor_fk foreign key (vendedor) references vendedor(vendedor_id)
);

insert into venda values (1, '2018-05-10', 1, 2);
insert into venda values (2, '2018-05-15', 2, 4);
insert into venda values (3, '2018-05-16', 3, 1);

create table itensvenda (
	item_id int primary key,
    venda_id int,
    produto int,
    qtde int,
    constraint venda_fk foreign key (venda_id) references venda(venda_id),
    constraint produto_venda_fk foreign key (produto) references produto(produto_id)
);

insert into itensvenda VALUES (1, 1, 1, 10);
insert into itensvenda VALUES (2, 1, 2, 1);
insert into itensvenda VALUES (3, 2, 3, 2);
insert into itensvenda VALUES (4, 3, 2, 5);
insert into itensvenda VALUES (5, 3, 4, 1);


