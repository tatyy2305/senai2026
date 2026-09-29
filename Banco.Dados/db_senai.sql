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
 SELECT * FROM cliente;


 INSERT INTO produto(produto, dt_entrega, preco, qtd)
 VALUES("Notebook","2026-02-05", 5000.45, 5);


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
 