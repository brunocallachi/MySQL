

use db_escola;

create table tb_alunes(

	id bigint (5) auto_increment,
		nome varchar (20) not null,
        matricula bigint not null,
		nota bigint not null,
		cpf bigint not null,
        serie bigint not null,
		primary key (id)
       
   	);	
    
	insert into tb_alunes (nome, matricula, nota, cpf, serie) values ("João", 0001, 8 , 0001 , 8);
	insert into tb_alunes (nome, matricula, nota, cpf, serie) values ("Maria", 0002, 7 , 0002 , 5);
	insert into tb_alunes (nome, matricula, nota, cpf, serie) values ("Francisco", 0003, 10 , 0003 , 7);
	insert into tb_alunes (nome, matricula, nota, cpf, serie) values ("Gabriela", 0004, 5 , 0004 , 9);
	insert into tb_alunes (nome, matricula, nota, cpf, serie) values ("Matheus", 0005, 2 , 0005 , 6);
    
    select * from tb_alunes where nota > 7;
    select * from tb_alunes where nota < 7;
    
    update tb_alunes set nome = "Marina" where id = 1
    
