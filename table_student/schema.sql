CREATE TABLE tb_aluno (
id_aluno		int primary key auto_increment,
nm_turma		varchar(255),
nr_ano_letivo	int,
nm_aluno		varchar(255),
nr_chamada		int,
ds_sexo			varchar(20),
tp_status		varchar(1)  
);


CREATE TABLE tb_disciplina (
id_disciplina	int primary key auto_increment,
nm_disciplina	varchar(255),
nm_professor	varchar(255)
);


CREATE TABLE tb_boletim (
id_boletim		int primary key auto_increment,
id_aluno		int,
id_disciplina	int,
vl_nota			decimal(15,2),
qtd_faltas		int,
FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno),  
FOREIGN KEY (id_disciplina) REFERENCES tb_disciplina(id_disciplina)  
);

INSERT INTO tb_aluno (nm_turma, nr_ano_letivo, nm_aluno, nr_chamada, ds_sexo, tp_status)
	 VALUES	('Informatica a', 1, 'Carlos Alberto', 3, 'Masculino', 'F'),
     		('Informatica b', 1, 'Rogerio Luiz', 25, 'Masculino', 'F'),
            ('Informatica c', 1, 'João da Silva', 18, 'Feminino', 'F');
            
INSERT INTO tb_disciplina (nm_disciplina, nm_professor)
	 VALUES ('Analise de Sistemas', 'Bruno Oliveira'),
     		('Fundamentos da Logica', 'Bruno Oliveira'),
            ('Linguagem de Programação', 'Bruno Oliveira'),
            ('Banco de Dados', 'Bruno Oliveira'),
            ('C', 'Bruno Oliveira');
            
INSERT INTO tb_boletim (id_aluno, id_disciplina, vl_nota, qtd_faltas)
     VALUES (1, 1, 0, 0),
     		(1, 2, 10, 0),
            (1, 3, 9, 0),
            (1, 4, 9, 0),
            (1, 5, 10, 0),
            (2, 1, 5, 10),
     		(2, 2, 6, 6),
            (2, 3, 4, 4),
            (2, 4, 1, 3),
            (2, 5, 5, 8),
            (3, 1, 9, 2),
     		(3, 2, 9, 0),
            (3, 3, 8, 1),
            (3, 4, 6, 0),
            (3, 5, 7, 1);
            
UPDATE tb_aluno            
   SET nm_aluno = 'Marcela da Silva'         
 WHERE id_aluno = 3;           
            
UPDATE tb_disciplina
   SET nm_disciplina = 'Phyton'
 WHERE id_disciplina = 5;
 
 UPDATE tb_boletim
    SET vl_nota = 10
  WHERE id_boletim = 1;
  

DELETE FROM tb_boletim
      WHERE id_boletim = 9;
      
DELETE FROM tb_boletim
	  WHERE id_disciplina = 1;
      
DELETE FROM tb_boletim
	  WHERE id_aluno = 3;