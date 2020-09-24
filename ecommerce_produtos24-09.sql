create database e_commerce;
use e_commerce;

create table tb_produtos(
 id int PRIMARY KEY AUTO_INCREMENT,
 nome varchar(30),
 cor varchar(30),
 marca varchar(30),
 preco decimal(10,2)
);


insert into tb_produtos (nome, cor, marca, preco) values
    ("Tv 32 polegadas", "preta", "Samsung", 1190.99),
    ("Notebook", "prata", "Dell", 2600.00),
    ("iPhone 11", "vermelho", "Apple", 4199.00),
    ("Playstation 4", "preto", "Sony", 1300.99),
    ("Xbox One S", "branco", "Microsoft", 2100.00),
	("Nintendo Switch", "preto", "Nintendo", 2599.99),
	("Monitor 23 polegadas", "preto", "AOC", 499.99),
	("Impressora", "branco", "Epson", 350.90);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 1999.99, marca = "Samsung" where id = 2;

select * from tb_produtos;
