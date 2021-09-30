SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         d.nm_disciplina,
         b.vl_nota
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina
  ORDER BY a.nm_aluno;
  
  
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         d.nm_disciplina,
         b.vl_nota
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina
     WHERE a.nm_turma = 'Informatica a'
       AND a.nr_ano_letivo = 1
  ORDER BY b.vl_nota DESC;
  
  
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         d.nm_disciplina,
         b.vl_nota
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina
     WHERE b.vl_nota > 5
       AND a.nm_turma like '%Informatica%'
       AND a.nr_ano_letivo = 1
  ORDER BY a.nr_ano_letivo,
  		   a.nm_turma,
           a.nr_chamada;
           

SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina
     WHERE b.vl_nota < 5
       AND a.nm_turma like '%Informatica%'
       AND a.nr_ano_letivo = 1;
       
       
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         b.vl_nota
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina       
     WHERE b.vl_nota = 10;     
		    
  
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         a.ds_sexo
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina  
     WHERE a.ds_sexo = 'Feminino';
     
     
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         a.tp_status
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina     
     WHERE a.tp_status = 'F';
     
     
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo,
         b.qtd_faltas
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina
	 WHERE b.qtd_faltas > 5;
     
     
SELECT   a.nm_aluno,
         a.nm_turma,
         a.nr_ano_letivo
  FROM   tb_boletim			b 
INNER JOIN tb_aluno			a  ON	a.id_aluno 		= b.id_aluno	
INNER JOIN tb_disciplina	d  ON	d.id_disciplina = b.id_disciplina
	 WHERE a.nm_aluno not like '%a%';