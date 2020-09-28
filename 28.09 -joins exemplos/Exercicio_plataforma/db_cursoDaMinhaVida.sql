CREATE DATABASE db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
ID_categoria int PRIMARY KEY AUTO_INCREMENT,
curso varchar(100),
nivel enum ('Iniciante', 'Intermediario', 'Avançado')
);

CREATE TABLE tb_curso (
nome varchar(45),
valor double(7,2),
periodo enum ('Manhã','Tarde','Noite'),
ID_categoria int,
CONSTRAINT fk_tb_categoria FOREIGN KEY (ID_categoria) REFERENCES tb_categoria (ID_categoria));

select * from tb_categoria;
select * from tb_curso;

insert tb_curso (nome, valor, periodo, ID_categoria) values
('Portugol', 99.90, 'Manhã', 1);

insert tb_curso (nome, valor, periodo, ID_categoria) values
('Portugol', 49.90, 'Manhã', 1),
('Portugol', 99.90, 'Tarde', 1),
('HTML', 59.90, 'Manhã', 2),
('JavaScript', 199.90, 'Noite', 4),
('React', 599.90, 'Noite', 5),
('MySQL', 99.90, 'Manhã', 3),
('Spring', 99.90, 'Tarde', 3);

select * from tb_curso WHERE valor > 50;

select * from tb_curso WHERE valor BETWEEN 3 and 60;

select * from tb_curso WHERE nome like '%J%';

SELECT * FROM tb_curso 
INNER JOIN tb_categoria ON 
tb_categoria.ID_categoria = tb_curso.ID_categoria
where tb_categoria.nivel = 'Iniciante';
