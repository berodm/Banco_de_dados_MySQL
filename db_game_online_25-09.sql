create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classe (
ID_classe int PRIMARY KEY AUTO_INCREMENT,
tipo_classe enum ('Arqueiro', 'Guerreiro', 'Mago', 'Lutador'),
tipo_de_arma enum ('Arco', 'Espada', 'Machado', 'Cajado')
);

CREATE TABLE tb_personagem (
habilidade varchar(45),
poder_ataque int,
poder_defesa int,
nome varchar(45),
sexo enum ('F','M'),
ID_classe int,
CONSTRAINT fk_tb_classe FOREIGN KEY (ID_classe) REFERENCES tb_classe (ID_classe));


insert tb_classe (tipo_classe, tipo_de_arma) values 
('Arqueiro','Arco'),
('Guerreiro','Espada'),
('Mago','Cajado'),
('Lutador','Machado');

select * from tb_classe;

insert tb_personagem (habilidade, poder_ataque, poder_defesa, nome, sexo, ID_classe) values
('Atirar', 2560, 2670, 'ArqueiraTeste1', 'F', 1),
('Defender',1500, 4670, 'GuerreiroTeste1', 'M', 2),
('Atirar', 2100, 1870, 'ArqueiraTeste2', 'F', 1),
('Feitiço', 2330, 1670, 'MagaTeste1', 'F',3),
('Lutar', 4560, 1990, 'LutadorTeste1', 'M',4),
('Defender', 1470, 1999, 'GuerreiraTeste2', 'F',2),
('Feitiço', 2190, 1970, 'MagoTeste2', 'M',3),
('Lutar', 3990, 1670, 'LutadoraTeste1', 'F',4);


select * from tb_personagem WHERE poder_ataque > 2000;

select * from tb_personagem WHERE poder_defesa > 1000 AND poder_defesa < 2000;

select * from tb_personagem WHERE nome like 'C%';

UPDATE tb_personagem set nome = 'CrystalMagic' WHERE ID_classe = '3' AND sexo = 'F';

select * from tb_personagem WHERE nome like 'C%';