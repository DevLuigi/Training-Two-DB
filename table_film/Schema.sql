create table tb_genero(
  id_genero			int primary key auto_increment,
  nm_genero			varchar(255),
  bt_ativo			bool
);

create table tb_filme (
  id_filme			int	primary key auto_increment,
  nm_filme			varchar(255),
  dt_lancamento 	date,
  vl_avaliacao		decimal(15,2),
  bt_disponivel		bool
);

create table tb_filme_genero (
  id_filme_genero		int primary key auto_increment,
  id_filme			int,
  id_genero			int,
  FOREIGN KEY (id_filme) REFERENCES tb_filme(id_filme),
  FOREIGN KEY (id_genero) REFERENCES tb_genero(id_genero)
);


insert into tb_genero (nm_genero, bt_ativo)
     values ('Romance', true),
            ('Ação', true),
            ('Terror', true),
            ('Aventura', true),
            ('Suspense', true);
 
 insert tb_filme (nm_filme, dt_lancamento, vl_avaliacao, bt_disponivel)
values ('Interestelar', '2014-10-07', 9, true),
	   ('O Poderoso Chefão', '1972-04-07', 9.9, true),
       ('Velozes e Furiosos 3', '2006-04-22', 9.5, true),
       ('A origem', '2010-05-09', 8.7, false),
       ('Matrix', '1999-01-27', 10, true);
       
 insert into tb_filme_genero (id_filme, id_genero)
  values (1, 2),
         (1, 4),
         (2, 3),
         (3, 2),
         (3, 5),
         (4, 2),
         (4, 4),
         (5, 1),
         (5, 2),
         (5, 4);
 
 update  tb_filme
    set  nm_filme = 'Poderoso Chefão 2'
  where  id_filme = 2;
 
 update  tb_genero
    set  nm_genero = 'ficção'
  where  id_genero = 1;
  
 update  tb_filme_genero
    set  id_genero = 2
  where  id_filme_genero= 3; 
  
  delete from  tb_filme_genero
        where  id_filme = 4;
        
  delete from  tb_filme_genero
        where  id_genero = 1; 
        
  delete from  tb_filme_genero
        where  id_filme_genero = 1; 