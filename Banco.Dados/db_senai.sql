create database db_senai;

use db_senai;

create database cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR (100) NOT NULL,
    dt_nasc DATE NOT NULL
);

create table produto(
    id_produto int primary key AUTO_INCREMENT
    produto varchar(100) not null,
    dt_entrada date not null,
    preco decimal (19, 2) not null,
    qtd int not null
)

create table venda(
    id_venda int primary key AUTO_INCREMENT,
    id_cliente int not null,
    id_produto int not null,
    data_entrada date not null
)