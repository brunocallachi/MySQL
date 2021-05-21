create database db_cidade_das_frutas

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
 nome varchar (20) not null,
 tipo varchar (20) not null,
 valor bigint,
    
    primary key (id)  
    );
    
	  insert tb_categoria (nome, tipo, valor) value ("Banana", "fruta", 6);
     insert tb_categoria (nome, tipo, valor) value ("maça", "fruta", 5);     
     insert tb_categoria (nome, tipo, valor) value ("mamao", "fruta", 50);
     insert tb_categoria (nome, tipo, valor) value ("moranago", "fruta", 60);
     insert tb_categoria (nome, tipo, valor) value ("abacate", "fruta", 69);
     insert tb_categoria (nome, tipo, valor) value ("melancia", "fruta", 84);

 
create table tb_produto (
	id bigint auto_increment,
    nome varchar (255) not null,
    Pedido bigint not null,
    ativo boolean not null,
    tb_categoria bigint,
    primary key (id),
    
     foreign key ( tb_categoria) references  tb_categoria(id)
     
     );
     
insert tb_produto (nome, pedido, ativo, tb_categoria) value ("Jose", 0005, true, 1);
insert tb_produto (nome, pedido, ativo, tb_categoria) value ("maria", 0004, true, 2);
insert tb_produto (nome, pedido, ativo, tb_categoria) value ("antonio", 0205, true, 3);
insert tb_produto (nome, pedido, ativo, tb_categoria) value ("mauro", 0305, true, 4);
insert tb_produto (nome, pedido, ativo, tb_categoria) value ("bruno", 0005, true, 5);
insert tb_produto (nome, pedido, ativo, tb_categoria) value ("josefa", 0905, true, 6);

select * from tb_categoria where valor > 50;
select * from tb_categoria where valor between 3 and 60;
select * from tb_categoria where nome like  "%C%";
 select * from tb_categoria inner join tb_produto on tb_produto.id = tb_produto.tb_categoria;
