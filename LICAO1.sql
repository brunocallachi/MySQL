create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    nome varchar (20) not null,
    valor bigint,
    ativo boolean,
    
    primary key (id)  

);

select * from tb_classe;

insert tb_classe (nome, valor, ativo) value ("Jogos", 100,true);
insert tb_classe (nome, valor, ativo) value ("controle", 200,true);
insert tb_classe (nome, valor, ativo) value ("console", 500,true);



create table tb_personagem (
	id bigint auto_increment,
    nome varchar (255) not null,
    forca bigint not null,
    poderAtaque bigint not null,
    poderDefesa  bigint not null,
    ativo boolean not null,
    tb_classe bigint,
    primary key (id),
    
     foreign key (tb_classe) references tb_classe(id)
     
     );
     
    
	insert tb_personagem (nome, forca, poderAtaque , poderDefesa, ativo) values ("Carlos" , 50, 5000, 3000, true);
	insert tb_personagem (nome, forca, poderAtaque , poderDefesa, ativo) values ("Edu" , 20, 1000, 500, true);
	insert tb_personagem (nome, forca, poderAtaque , poderDefesa, ativo) values ("Fer" , 10, 1000, 2000, true);
	insert tb_personagem (nome, forca, poderAtaque , poderDefesa, ativo) values ("Lucas" , 70, 7000, 2000, true);
	insert tb_personagem (nome, forca, poderAtaque , poderDefesa, ativo) values ("Marco" , 90, 300, 3000, true);

    select * from tb_personagem;
    select * from tb_personagem where poderAtaque > 2000;
    select * from tb_personagem where poderDefesa < 2000;
    
      select * from tb_personagem where nome like  "%c%";
      
      select * from tb_classe right join tb_personagem on tb_personagem.id = tb_classe.id;
      
      
