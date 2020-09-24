use my_rh;
#tabela feita de forma gráfica 
select * from funcionarios;

SELECT * FROM my_rh.funcionarios where salario > 2000;
SELECT * FROM funcionarios where salario < 2000;

update funcionarios set salario = 2987.00 where id_funcionarios = 1;

select * from funcionarios;