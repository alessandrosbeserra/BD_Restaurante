-- criando banco de dados
create database restaurante;

-- Ativando para o Uso o Banco de dados
use restaurante;

-- Criando tabelas de Funcionarios
create table funcionarios(
id_funcionario int auto_increment primary key,
nome varchar(255),
cpf varchar(14),
data_nascimento date,
endereco varchar(255),
telefone varchar(15),
email varchar(100) unique,
cargo varchar(100),
salario decimal(10,2),
data_admissao date
);
-- Alterando campo email para unico
alter table funcionarios add unique(email);
alter table funcionarios modify nome varchar(255) not null;

-- Criando tabela Clientes
create table clientes(
id_cliente int auto_increment primary key,
nome varchar(255),
cpf varchar(14),
data_nascimento date,
endereco varchar(255),
telefone varchar(15),
email varchar(100) unique,
data_cadastro date
);
-- Alterando o campo nome
alter table clientes modify nome varchar(255) not null;

-- Criando Tabela de Produtos
create table produto(
id_produto int auto_increment primary key,
nome varchar(255),
descricao text,
preco decimal(10,2),
categoria varchar(100)
);

-- Alterando o campo nome
alter table produto modify nome varchar(255) not null;

-- Criando Tabela de Pedidos
create table pedido(
id_pedido int auto_increment primary key,
id_cliente int, 
foreign key(id_cliente) references clientes(id_cliente),
id_funcionario int,
foreign key(id_funcionario) references funcionarios(id_funcionario),
id_produto int,
foreign key(id_produto) references produto(id_produto),
qunatidade int,
preco decimal(10,2),
data_pedido date,
situacao varchar(50)
);

-- Criando Tabela de Informações adicionais de Produtos
create table info_produtos(
id_info int auto_increment primary key,
id_produto int,
foreign key(id_produto) references produto(id_produto),
ingredientes text,
fornecedor varchar(255)
);