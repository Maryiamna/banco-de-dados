create database Mercado;
use Mercado;

create table Fornecedor (--
	idFornecedor INT PRIMARY KEY,
    nomeFornecedor VARCHAR(45) NULL
);

create table Categoria (--
	idCategoria INT PRIMARY KEY,
    nome VARCHAR(45) NULL
);

create table Estado (--
	uf CHAR(2) PRIMARY KEY,
    nome VARCHAR(50) NULL,
    Estadocol VARCHAR(45) NULL
);

create table TipoEndereco (--
	idTipoEndereco INT PRIMARY KEY,
    nome VARCHAR(30) NULL
);

create table Departamento (
	idDepartamento INT PRIMARY KEY,
    nome VARCHAR(45) NULL
);

create table Cidade (--
idCidade INT PRIMARY KEY,
uf CHAR(2),
nome VARCHAR(85),
FOREIGN KEY (uf) REFERENCES Estado(uf)
);

create table Bairro (--
idBairro INT PRIMARY KEY,
idCidade INT NOT NULL,
nome VARCHAR(85),
FOREIGN KEY (idCidade) REFERENCES Cidade(idCidade)
);

create table Endereco (--
idEndereco INT PRIMARY KEY,
idTipoEndereco INT NOT NULL,
idBairro INT NOT NULL,
nome VARCHAR (85),
numero VARCHAR (6),
cep CHAR(9),
FOREIGN KEY (idTipoEndereco) REFERENCES TipoEndereco(idTipoEndereco),
FOREIGN KEY (idBairro) REFERENCES Bairro(idBairro)
);

create table Funcionario (
	idFuncionario INT PRIMARY KEY,
    idSupervisor INT NOT NULL,
    idEndereco INT,
    nome VARCHAR (150) NULL,
    idade INT NULL,
    sexo CHAR(2),
    dataContratacao DATE NULL,
    dataDemissao DATE NULL,
    demissao TINYINT(1) NULL,
    salario FLOAT NULL,
    FOREIGN KEY (idEndereco) REFERENCES Endereco (idEndereco)
);

create table Cliente (--
idCliente INT PRIMARY KEY,
idEndereco INT,
nome VARCHAR(150),
sexo CHAR(1),
idade INT,
FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco)
);

create table Compra (
	idCompra INT PRIMARY KEY,
    idCliente INT,
    idFuncionario INT,
    dataCompra DATE NULL,
    valorTotalCompra FLOAT NULL,
    finalizada TINYINT(1) NULL,
    formaPagamento VARCHAR (15) NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario (idFuncionario)
);

create table Produto (--
idProduto INT PRIMARY KEY,
idFornecedor INT,
FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor),
idCategoria INT,
FOREIGN KEY (idCategoria) REFERENCES Categoria (idCategoria),
nome VARCHAR(150) NOT NULL,
quantidade INT NOT NULL,
valorUnitario FLOAT NOT NULL
);

create table ItemCompra (
	idCompra INT,
    idProduto INT,
    quantidade INT NOT NULL,
    valorTotal FLOAT NOT NULL,
    FOREIGN KEY (idCompra) REFERENCES Compra (idCompra),
    FOREIGN KEY (idProduto) REFERENCES Produto (idProduto)
);

create table Dependente (
idDependente INT,
idFuncionario INT,
nome varchar(150),
parentesco varchar(45),
sexo char(2),
idade int,
FOREIGN KEY (idFuncionario) REFERENCES Funcionario (idFuncionario)
);

create table Telefone (
idCliente INT,
FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
idFuncionario INT,
FOREIGN KEY (idFuncionario) REFERENCES Funcionario (idFuncionario),
numeroTelefone VARCHAR(10)
);

alter table Telefone
add column idTelefone int primary key;

create table DeptFunc (
idDeptFunc INT,
idFuncionario INT,
FOREIGN KEY (idFuncionario) REFERENCES Funcionario (idFuncionario),
idDepartamento INT,
FOREIGN KEY (idDepartamento) REFERENCES Departamento (idDepartamento),
dataEntradaDept DATE,
dataSaidaDept DATE
);