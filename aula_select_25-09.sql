create database aula_select;
use aula_select;

create table clientes (
codigo_cliente int not null primary key,
nome varchar (50),
cidade varchar (10),
serie char (1)
);
CREATE table funcionarios (
		id int not null auto_increment,
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum ('M','F'),
		peso decimal(5,2),
		altura decimal(3,2),
		nacionalidade varchar(20) DEFAULT 'Brasil',
		primary key (id));
        
Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');

# selecionar coluna 1 e 2 da tabela
select * FROM funcionarios;
select id, nome FROM funcionarios; #--> seleciona de um lugar especifico

select * from funcionarios WHERE id = 3;

#para palavras utiliza-se aspas simples 
select * from funcionarios WHERE nome = 'Gabriela'; 
#exercicio = faça uma selecao onde a nacionalidade seja igual brasil

select * from funcionarios WHERE nacionalidade = 'Brasil';

select COUNT(*) FROM funcionarios; #conta a quantidade de pessoas cadsatradas

#RENAME TABLE banco_atual TO novo_banco; --> renomea database

Insert into funcionarios values 
	('4','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
    
select * from funcionarios WHERE nome LIKE 'G%';
#seleciona nomes q começem com a letra G
select * from funcionarios WHERE nome LIKE '%A'; 
#seleciona nomes q terminem com A, depende da posicao do %

select * from funcionarios WHERE sexo = 'F' AND nacionalidade = 'Brasil';
#seleciona mulheres brasileiras

select * from funcionarios WHERE nome like '%abriel%';
# quando usar % colocar LIKE, outras situações usar o =

select * from funcionarios WHERE nome like '_l%';
#procura o L na segunda letra

select * from funcionarios where altura > 2;

truncate table funcionarios;
#apaga os dados da tabela
Insert into funcionarios values 
		('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil'),
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');

