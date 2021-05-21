create database db_farmacia_do_bem;

use db_farmacia_do_bem;

 id bigint auto_increment,
 nome varchar (20) not null,
 tipo varchar (20) not null,
 valor bigint,

    
    primary key (id)  
    );
    
insert tb_produto (nome, tipo, valor) value ("DorFlex", "remedio", 50);
insert tb_produto (nome, tipo, valor) value ("Neusadina", "remedio", 40);
insert tb_produto (nome, tipo, valor) value ("lixa", "cosmetico", 5);
insert tb_produto (nome, tipo, valor) value ("baton", "cosmetico", 15);
insert tb_produto (nome, tipo, valor) value ("esmalte", "cosmetico", 20);
insert tb_produto (nome, tipo, valor) value ("Cimegripe", "remedio", 60);


create table tb_categoria (
	id bigint auto_increment,
    nome varchar (255) not null,
    Pedido bigint not null,
    ativo boolean not null,
    tb_produto bigint,
    primary key (id),
    
     foreign key ( tb_produto) references  tb_produto(id)
     
     );
     
insert tb_categoria (nome, pedido, ativo, tb_produto) value ("João", 001, true, 1);
insert tb_categoria (nome, pedido, ativo, tb_produto) value ("Maria", 002, true, 2);
insert tb_categoria (nome, pedido, ativo, tb_produto) value ("jose", 003, true, 3);
insert tb_categoria (nome, pedido, ativo, tb_produto) value ("jaque", 004, true, 4);
insert tb_categoria (nome, pedido, ativo, tb_produto) value ("bruno", 005, true, 5);
insert tb_categoria (nome, pedido, ativo, tb_produto) value ("victor", 006, true, 6);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

 select * from tb_produto where nome like  "%b%";

 select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_categoria.tb_produto;
 
