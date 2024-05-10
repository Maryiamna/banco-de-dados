use Mercado;

insert into Fornecedor (idFornecedor, nomeFornecedor) values 
(46, 'Elma Chips'),
(47, 'Mayara'),
(48, 'Roberto'),
(49, 'Danila'),
(50, 'Lindenberg'),
(51, 'Danilo');

insert into Categoria (idCategoria, nome) values 
(46, 'Peixaria'),
(47, 'Brinquedos'),
(48, 'Salgadinhos');

insert into Produto (idProduto, idFornecedor, idCateg oria, nome, quantidade, valorUnitario) values 
(46, 51, 47, 'Tartaruga Ninja', 20, 30.0),
(47, 49, 47, 'Barbie', 25, 300.0),
(48, 50, 46, 'Tambaqui', 10, 20.0),
(49, 51, 46, 'Esturjão', 70, 600.0),
(50, 46, 46, 'Tilápia', 350, 60.0),
(51, 48, 48, 'Cheetos', 50, 10.0),
(52, 47, 48, 'Fandangos', 60, 13.0),
(53, 49, 48, 'Fofura', 250, 5.0),
(54, 50, 47, 'Beyblade', 20, 30.0),
(55, 51, 47, 'Uno', 20, 30.0),
(56, 46, 47, 'Max Steel', 20, 30.0),
(57, 47, 46, 'Carpa', 20, 30.0),
(58, 48, 46, 'Salmão', 20, 95.0),
(59, 49, 48, 'Doritos', 20, 30.0),
(60, 50, 48, 'Torcida', 20, 30.0);

insert into Estado (uf, nome) values 
('CE', 'Ceará'),
('ES', 'Espírito Santo'),
('PR', 'Paraná'),
('BA', 'Bahia'),
('PE', 'Pernambuco');

insert into Cidade (idCidade, uf, nome) values
(46, 'CE', 'Fortaleza'),
(47, 'CE', 'Granja'),
(48, 'CE', 'Pentecoste'),
(49, 'ES', 'Alegre'),
(50, 'ES', 'Pancas'),
(51, 'ES', 'Vitória'),
(52, 'PR', 'Foz do Iguaçu'),
(53, 'PR', 'Maringá'),
(54, 'PR', 'Araucária'),
(55, 'BA', 'Salvador'), 
(56, 'BA', 'Itapetinga'),
(57, 'BA', 'Xique-Xique'),
(58, 'PE', 'Caruaru'),
(59, 'PE', 'Pesqueira'),
(60, 'PE', 'Água Preta');

insert into Bairro (idBairro, idCidade, nome) values
(46, 46, 'Cocó'),
(47, 47, 'Lagoa'),
(48, 48, 'Boca do Acre'),
(49, 49, 'Café'),
(50, 50, 'Ubá'),
(51, 51, 'Praia da Canto'),
(52, 52, 'Cataratas'),
(53, 53, 'Ebenezer'),
(54, 54, 'Sabiá'),
(55, 55, 'Paripé'),
(56, 56, 'Otávio Camões'),
(57, 57, 'Copixaba'),
(58, 58, 'Vassoural'),
(59, 59, 'Mimoso'),
(60, 60, 'Povoado Campo Frio');

insert into TipoEndereco (idTipoEndereco, nome) values 
(17, 'Avenida'),
(2, 'Residencial'),
(3, 'Comercial'),
(4, 'Apartamento'),
(5, 'Condominio'),
(6, 'Escritório'),
(7, 'Rural'),
(8, 'Sede de campo'),
(9, 'Galpão'),
(10, 'Armazem'),
(11, 'Loja'),
(12, 'Consultório'),
(13, 'Estabelecimento '),
(14, 'Fazenda'),
(15, 'Chacara'),
(16, 'Travessa'),
(18, 'Esquina'),
(19, 'Rua'),
(20, 'Viela'),
(21, 'Vila'),
(22, 'Jardim');

insert into Endereco (idEndereco, idTipoEndereco, idBairro, nome, numero, cep) values
(46, 46, 46, 'Cocó', '120', '60192-015'),
(47, 47, 47, 'Lagoa', '230', '62430-000'),
(48, 48, 48, 'Boca do Acre', '291', '69850-000'),
(49, 49, 49, 'Café', '678', '04311-002'),
(50, 50, 50, 'Ubá', '375', '29750-000'),
(51, 51, 51, 'Praia do Canto', '488', '29055-430'),
(52, 52, 52, 'Cataratas', '555', '85855-679'),
(53, 46, 53, 'Ebenezer', '220', '87035-280'),
(54, 47, 54, 'Sabiá', '129', '83708-070'),
(55, 48, 55, 'Paripé', '420', '40800-003'),
(56, 49, 56, 'Otávio Camões', '110', '45700-000'),
(57, 50, 57, 'Copixaba', '588', '47430-970'),
(58, 51, 58, 'Vassoural', '616', '55028-115'),
(59, 52, 59, 'Mimoso', '215', '55200-000'),
(60, 52, 60, 'Povoado Campo Frio', '185', '55550-000');

insert into Cliente (idCliente, idEndereco, nome, sexo, idade) values
(46, 46, 'Murilo', 'M', 19),
(47, 47, 'Mariana', 'F', 18),
(48, 48, 'João', 'M', 17),
(49, 49, 'Sabrina', 'F', 17),
(50, 50, 'Pedro', 'M', 18),
(51, 51, 'Luiz', 'M', 19),
(52, 52, 'Elton', 'M', 40),
(53, 53, 'Gustavo', 'M', 20),
(54, 54, 'Vitor', 'M', 18),
(55, 55, 'Davi', 'M', 21),
(56, 56, 'Giovanna', 'F', 23),
(57, 57, 'Julia', 'F', 33),
(58, 58, 'Pietro', 'M', 24),
(59, 59, 'Denis', 'M', 19),
(60, 60, 'Donald', 'M', 18);

insert into Funcionario (idFuncionario, idSupervisor, idEndereco, nome, idade, sexo, dataContratacao, dataDemissao, demissao, salario) values
(46, 55, 46, 'Laura', 20, 'F', '2023-02-10', '2024-04-12', '1', 2000.00),
(47, 56, 47, 'Francimar', 23, 'M', '2020-06-02', '2023-01-20', '1', 4000.00);

insert into Funcionario (idFuncionario, idSupervisor, idEndereco, nome, idade, sexo, dataContratacao, demissao, salario) values
(48, 55, 48, 'Luciana', 20, 'F', '2019-04-19', '0', 2000.00),
(49, 56, 49, 'Daniel', 23, 'M', '2020-06-15', '0', 4000.00),
(50, 57, 50, 'Rose', 28, 'F', '2021-09-23', '0', 5000.00),
(51, 58, 51, 'Ferdinando', 24, 'M', '2020-06-19', '0', 4000.00),
(52, 59, 52, 'Lucas', 27, 'M', '2022-02-20', '0', 5000.00),
(53, 59, 53, 'Luiz', 30, 'M', '2022-01-20', '0', 5000.00),
(54, 60, 52, 'João', 49, 'M', '2017-03-27', '0', 6000.00),
(55, 46, 52, 'Sabrina', 23, 'F', '2024-03-29', '0', 1000.00),
(56, 47, 52, 'Mariana', 16, 'F', '1997-05-20', '0', 5000.00),
(57, 48, 52, 'Eduardo', 53, 'M', '1997-05-20', '0', 8000.00),
(58, 49, 52, 'Murilo', 65, 'M', '1970-06-13', '0', 3000.00),
(59, 50, 52, 'Elton', 29, 'M', '2019-07-02', '0', 3400.00),
(60, 51, 52, 'Lucas', 37, 'M', '2015-08-07', '0', 5000.00);

insert into Departamento (idDepartamento, nome) values
(1, 'Gerência'),
(2, 'Administração'),
(3, 'RH'),
(4, 'Operações de loja'),
(5, 'Atendimento ao Cliente'),
(6, 'Caixa'),
(7, 'Logística'),
(8, 'Marketing'),
(9, 'Segurança'),
(10, 'Departamento de Pesquisa e Desenvolvimento'),
(11, 'Departamento de Alimentos Preparados');

insert into Deptfunc (idDeptFunc, idFuncionario, idDepartamento, dataEntradaDept, dataSaidaDept) values
(46, 48, 1, '2019-04-19', null),
(47, 49, 2, '2020-06-15', null),
(48, 50, 3, '2021-09-23', null),
(49, 51, 4, '2020-06-19', null),
(50, 52, 5, '2022-02-20', null),
(51, 53, 6, '2022-02-20', null),
(52, 54, 7, '2022-02-20', null),
(53, 55, 8, '2022-01-20', null),
(54, 56, 9, '2017-03-27', null),
(55, 57, 10, '2024-03-29', null),
(56, 58, 11, '1997-05-20', null),
(57, 59, 1, '1997-05-20', null),
(58, 60, 2, '1970-06-13', null),
(59, 48, 3, '2019-07-02', null),
(60, 49, 4, '2015-08-07', null);