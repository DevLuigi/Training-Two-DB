select  f.nm_filme,
            g.nm_genero
      from  tb_filme_genero fg
inner join  tb_filme		f on f.id_filme  = fg.id_filme
inner join  tb_genero		g on g.id_genero = fg.id_genero             
  order by  nm_filme;
    
    
    select fg.id_filme,
            f.nm_filme,
           fg.id_genero,
            g.nm_genero
      from  tb_filme_genero fg
inner join  tb_filme		 f on f.id_filme  = fg.id_filme
inner join  tb_genero	     g on g.id_genero = fg.id_genero     
     where  vl_avaliacao > 4 
  order by  nm_filme;
  
  
     select f.nm_filme,
            f.vl_avaliacao,
            f.dt_lancamento
      from  tb_filme_genero fg
inner join  tb_filme		 f on f.id_filme  = fg.id_filme
inner join  tb_genero		 g on g.id_genero = fg.id_genero
     where  bt_disponivel = true
       and  nm_genero = 'Ação'
  order by  vl_avaliacao;   
       
      select  f.nm_filme,
              f.vl_avaliacao,
              f.dt_lancamento,
              f.bt_disponivel,
              g.nm_genero
      from    tb_filme_genero fg
 inner join   tb_filme		   f on f.id_filme  = fg.id_filme
 inner join   tb_genero		   g on g.id_genero = fg.id_genero     
      where  g.nm_genero = 'Romance' 
        and  g.nm_genero = 'Comedia';


  select   f.nm_filme,
              g.nm_genero,    
              f.dt_lancamento
       from   tb_filme_genero fg
 inner join   tb_filme		   f on f.id_filme  = fg.id_filme
 inner join   tb_genero		   g on g.id_genero = fg.id_genero          
       where  f.nm_filme like '%a%';
     
 
     select   f.nm_filme,
              g.nm_genero,    
              f.dt_lancamento,
              f.vl_avaliacao
       from   tb_filme_genero fg
 inner join   tb_filme		   f on f.id_filme  = fg.id_filme
 inner join   tb_genero		   g on g.id_genero = fg.id_genero    
      where   f.vl_avaliacao not like '%a%';
 
 
     select   f.nm_filme,
              g.nm_genero,    
              f.dt_lancamento
       from   tb_filme_genero fg
 inner join   tb_filme		   f on f.id_filme  = fg.id_filme
 inner join   tb_genero		   g on g.id_genero = fg.id_genero      
     where    g.bt_ativo = true;
 
 
 select       f.nm_filme,
              g.nm_genero,    
              f.dt_lancamento
       from   tb_filme_genero fg
 inner join   tb_filme		   f on f.id_filme  = fg.id_filme
 inner join   tb_genero		   g on g.id_genero = fg.id_genero         
       where  f.nm_filme not like '% %';
       
 select       f.nm_filme,
              g.nm_genero,    
              f.vl_avaliacao
       from   tb_filme_genero fg
 inner join   tb_filme	       f on f.id_filme  = fg.id_filme
 inner join   tb_genero		   g on g.id_genero = fg.id_genero         
       where  f.vl_avaliacao <= 9.5
    order by  f.vl_avaliacao desc;