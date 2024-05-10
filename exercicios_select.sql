-- grupo: João Pedro, Luiz, Mariana Chaves, Sabrina
use mercado;

-- 1
select nome from estado;

-- 2
select idCidade, nome from cidade where uf ='RJ' order by nome asc;

-- 3
select * from estado where uf like '%J' or uf like 'S%';

-- 4
select nome from funcionario where idFuncionario in (
	select idFuncionario from deptFunc where idDepartamento = 8);

-- 5
select nome, sexo, idade from cliente where idade >= 60;

-- 6
select nome, sexo, idade from cliente where idade <= 17;

-- 7
select valorTotalCompra from compra order by dataCompra limit 1;

-- 8
insert into telefone (idCliente, numeroTelefone, idTelefone) values
(33, '35996016092', 700);

select numeroTelefone from telefone where idCliente in (
	select idCliente from cliente where nome = 'Maria');

-- 9
select nome from dependente where idFuncionario in (
	select idFuncionario from funcionario where nome = 'Messi');
    
-- 10
select nome from funcionario where idade between 30 and 35;

-- 11
select nome, salario from funcionario order by salario desc limit 3;

-- 12
select nome from produto where nome like '%hidra%' or '%phone%';

-- 13
select nome, valorUnitario from produto order by valorUnitario desc limit 5;

-- 14
select nome, valorUnitario from produto order by valorUnitario asc limit 3;

-- 15
select nome, valorUnitario, quantidade from produto order by quantidade desc;

-- 16
select nome, valorUnitario, quantidade from produto where valorUnitario between 5 and 10.90 limit 5;

-- 17
select nome from produto where idCategoria in (
select idCategoria from categoria where idCategoria = 2);

-- 18 
select nome, dataContratacao from funcionario where year(dataContratacao) = 2023 and demissao = 0;

-- 19 
select distinct parentesco from dependente;

-- 20
select nome from funcionario where idSupervisor is not null ;

-- 21
select nome, idCidade from bairro where idCidade = '78' or idCidade = '46' or idCidade = '14'; -- 78, 46, 14

-- 22
select distinct * from compra where  formaPagamento like 'cartão%';

-- 23
select * from compra where year (dataCompra) = '2023';

-- 24
select nome, dataDemissao from funcionario where year (dataDemissao) = '2022';

-- 25
select distinct nome, idCliente from cliente where idCliente in (
select idCliente from compra where year(dataCompra) = 2023 order by valorTotalCompra);

-- 26
select dataCompra, valorTotalCompra, formaPagamento from compra where formaPagamento like 'Débito' or formaPagamento like 'Dinheiro';