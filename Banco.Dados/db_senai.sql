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
);
USE db_senai;

INSERT INTO cliente(nome_cliente, email, dt_nasc)
VALUES("michael jackson", "m.jackson@gmail.com", "1920-03-22");
 
 INSERT INTO cliente(nome_cliente, email, dt_nasc)
 VALUES ("Juliao P.P", "Hgatinha@gmail.com", "1987-03-31");


USE db_senai;

INSERT INTO produto (produto,dt_entrada,preco,qtd)
    VALUES ("Monitor Dell","2026-08-23","2800.00",4);

INSERT INTO produto (produto,dt_entrada,preco,qtd)
    VALUES ("Mouse Dell","2026-05-06","125.00",3);

INSERT INTO produto (produto,dt_entrada,preco,qtd)
    VALUES ("Teclado Dell","2026-08-03","125.00",5);


USE db_senai;
 INSERT INTO venda(id_cliente, id_produto, data_entrada)
 VALUES(1, 1, "2026-09-09");

 INSERT INTO venda(id_cliente, id_produto, data_entrada)
 VALUES(2, 2, "2026-10-10");

 INSERT INTO venda(id_cliente, id_produto, data_entrada)
 VALUES(3, 3, "2026-07-03");

USE db_senai;
 ALTER TABLE venda 
 ADD CONSTRAINT fk_venda_produto
 FOREIGN KEY (id_produto)
 REFERENCes produto(id_produto);

CREATE DATABASE compra_produtos;

USE compra_produtos;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

create table produto(
    id_produto int primary key AUTO_INCREMENT
    nome_cliente varchar(100) not null,
    preco decimal (10, 2) not null,
    
)

create table compra(
    id_compra int primary key AUTO_INCREMENT,
    id_cliente int not null,
    id_produto int not null,
    qtd int not null
);
INSERT INTO cliente(id_cliente, email, telefone)
VALUES("Luisa da Silva Azevedo", "luizaazevedo@gmail.com", "19997416489");
 
INSERT INTO cliente(id_cliente, email, telefone)
VALUES("Antonio Lopes Oliveira", "antoniooliveira@email.com", "19994735736");
 
INSERT INTO produto (nome_produto,preco)
    VALUES ("Mouse","175");

-