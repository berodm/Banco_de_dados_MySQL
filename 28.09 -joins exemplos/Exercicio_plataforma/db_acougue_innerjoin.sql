create database if not exists db_cidade_das_carnes;
use db_cidade_das_carnes;

CREATE TABLE tb_categoria (
ID_categoria int PRIMARY KEY AUTO_INCREMENT,
tipo_carne enum ('Bovina', 'Suina', 'Aves'),
marca enum ('Friboi', 'Seara', 'Swift', 'Angus')
);

CREATE TABLE tb_produto (
nome varchar(45),
peso_peca double,
preco double,
validade enum ('5 dias', '7 dias', '10 dias'),
ID_categoria int,
CONSTRAINT fk_tb_categoria FOREIGN KEY (ID_categoria) REFERENCES tb_categoria (ID_categoria));

insert tb_categoria (tipo_carne, marca) values 
('Bovina','Friboi'),
('Bovina','Swift'),
('Bovina','Angus'),
('Aves','Seara'),
('Suina', 'Friboi');

select * from tb_categoria;

insert tb_produto (nome, peso_peca, preco, validade, ID_categoria) values
('Coxão Mole', 1, 26.70, '5 dias', 1),
('Picanha', 1.1, 55.90, '7 dias', 3),
('Contra Filé', 1.3, 38.90, '10 dias', 3),
('Alcatra', 1.5, 44.00, '10 dias', 1),
('Patinho', 1, 33.30, '5 dias', 2),
('Lombo', 1, 29.90, '10 dias', 5),
('Filé de peito', 1, 15.90, '5 dias', 4),
('Coxa', 1, 13.50, '5 dias', 4);

select * from tb_produto WHERE preco > 50;

select * from tb_produto WHERE preco BETWEEN 3 and 60;

select * from tb_produto WHERE nome like 'C%';

SELECT * FROM tb_produto 
INNER JOIN tb_categoria ON 
tb_categoria.ID_categoria = tb_produto.ID_categoria
where tb_categoria.tipo_carne = 'Bovina';
