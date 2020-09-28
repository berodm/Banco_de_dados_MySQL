create database if not exists db_construindo_nossa_vida;
use db_construindo_nossa_vida;

CREATE TABLE tb_categoria (
ID_categoria int PRIMARY KEY AUTO_INCREMENT,
tipo_produto enum ('Construçao', 'Eletrica', 'Acabamento','Hidraulica'),
marca enum ('Tigre', 'Portobello', '3M', 'Portinari', 'Votoran')
);

CREATE TABLE tb_produto (
nome varchar(45),
preco double,
cor varchar(45),
disponivel enum ('S','N'),
ID_categoria int,
CONSTRAINT fk_tb_categoria FOREIGN KEY (ID_categoria) REFERENCES tb_categoria (ID_categoria));

insert tb_categoria (tipo_produto, marca) values 
('Construçao','Votoran'),
('Acabamento','Portinari'),
('Eletrica','3M'),
('Acabamento','Portobello'),
('Hidraulica', 'Tigre');

select * from tb_categoria;

insert tb_produto (nome, preco, cor, disponivel,ID_categoria) values
('Cimento 50kg', 22.90, 'branco', 'S', 1),
('Fita isolante', 2.90, 'preta', 'S', 3),
('Piso porcelanato caixa', 80.90, 'bege', 'S', 2),
('Tubo 6 metros', 59.90, 'branco', 'N', 5),
('Piso simples caixa', 54.00, 'branco', 'S', 4),
('Argamassa 20kg', 12.90, 'branco', 'S', 1),
('Piso porcelanato madeira', 52.90, 'marrom', 'S', 2),
('Conector elétrico', 9.99, 'preto', 'S', 3);

select * from tb_produto WHERE preco > 50;

select * from tb_produto WHERE preco BETWEEN 3 and 60;

select * from tb_produto WHERE nome like 'C%';

SELECT * FROM tb_produto 
INNER JOIN tb_categoria ON 
tb_categoria.ID_categoria = tb_produto.ID_categoria
where tb_categoria.tipo_produto = 'Acabamento';
