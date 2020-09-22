create database if not exists db_chaves;

use db_chaves;

CREATE TABLE  if not exists Pessoas (
ID_Pessoa int PRIMARY KEY AUTO_INCREMENT,
Nome varchar(255));


CREATE TABLE if not exists Carro (
ID_Carro integer PRIMARY KEY auto_increment,
Nome varchar(255),
Marca varchar(255),
ID_Pessoa integer,
CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa) REFERENCES Pessoas (ID_Pessoa));
#modelar    nomeChave   chaveEstrangeira       relaciona com id pessoa da tabela pessoas

insert into Pessoas (Nome) values  ('Juliana'), ('Julio'), ('Márcio');

SELECT * FROM Pessoas;

insert into Carro (Nome, Marca, ID_Pessoa) values
('Gol', 'Wolks', 2),  ('Palio', 'Fiat', 3);

SELECT * FROM Carro;
truncate Pessoas; #nao pode executar pq as tabelas estao relacionadas