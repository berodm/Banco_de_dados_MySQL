create database db_loja1;
use db_loja1;
CREATE TABLE if not exists tb_clientes
(
Codigo INT,
Nome VARCHAR (69),
dataNascimento DATE,
telefone CHAR(8)
)engine=InnoDB;

show tables;
show databases;
select * from tb_clientes;

describe tb_clientes;


