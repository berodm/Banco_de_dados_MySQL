create database if not exists db_deletar;
use db_deletar;

#drop table consumidores; 
create table if not exists consumidores (
id int PRIMARY KEY AUTO_INCREMENT,
nome varchar(30)
);

insert into consumidores (nome) values
("Marcelo"),
("Julia");

select * from consumidores;

delete from consumidores where id = 1;

truncate consumidores; #comando para apagar o conteudo da tabela sem apagar a tabela

select * from consumidores;

