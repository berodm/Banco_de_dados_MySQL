create database db_escola;
use db_escola;

create table tb_alunos(
 id int PRIMARY KEY AUTO_INCREMENT,
 nome varchar(45),
 idade int,
 materia varchar(30),
 nota decimal(10,2)
);


insert into tb_alunos (nome, idade, materia, nota) values
	("Marcelo", 16, "Matemática", 9.8),
    ("Maria", 17, "Inglês", 8.5),
    ("Mariana", 18, "História", 7.8),
    ("Marcos", 15, "Geografia", 10),
    ("Michele", 16, "Português", 6.5),
    ("Mario", 17, "Matemática", 5.5),
    ("Mateus", 15, "Ciências", 7.3),
    ("Monica", 14, "Matemática", 9.8);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 10 where id = 1;

select * from tb_alunos;