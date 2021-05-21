create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar (20) not null,
    valor bigint,
    tipo varchar (20) not null,
    
    primary key (id)  

);
insert tb_categoria (nome, valor, tipo) value ("Portuguesa", 50,"salgada");
insert tb_categoria (nome, valor, tipo) value ("Chocolate", 60, "doce");
insert tb_categoria (nome, valor, tipo) value ("Calabresa", 40, "salgada");
select * from tb_categoria;

create table tb_pizza (
	id bigint auto_increment,
    nome varchar (255) not null,
    Pedido bigint not null,
    ativo boolean not null,
    tb_categoria bigint,
    primary key (id),
    
     foreign key (tb_categoria) references tb_categoria(id)
     
     );

select * from tb_pizza;

insert tb_pizza (nome, pedido, ativo) value ("João", 001, true);
insert tb_pizza (nome, pedido, ativo) value ("Maria", 002, true);
insert tb_pizza (nome, pedido, ativo) value ("Marcos", 003, true);

select * from tb_pizza;

select * from tb_categoria where valor > 45;

select * from tb_categoria where valor between 29 and 60;

 select * from tb_categoria where nome like  "%c%";
 
 UPDATE `db_pizzaria_legal`.`tb_pizza` SET `tb_categoria` = '1' WHERE (`id` = '1');
  UPDATE `db_pizzaria_legal`.`tb_pizza` SET `tb_categoria` = '2' WHERE (`id` = '2');
   UPDATE `db_pizzaria_legal`.`tb_pizza` SET `tb_categoria` = '3' WHERE (`id` = '3');
 
  select * from tb_categoria inner join tb_pizza on tb_pizza.id = tb_pizza.tb_categoria;
  
   select * from tb_categoria right join tb_pizza on tb_pizza.id = tb_pizza.tb_categoria;
   
    select * from tb_categoria where tipo = "doce"
 