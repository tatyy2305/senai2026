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
 
INSERT INTO produto (nome_produto, preco)
    VALUES ("Mouse", 175.00);
INSERT INTO produto (nome_produto, preco)
VALUES ("Notebook", 3500.00),
 
INSERT INTO produto (nome_produto, preco)
    VALUES ("MousePad", 50.00);

INSERT INTO compra (id_cliente, qtd,)
VALUES
(1 , 1),
(1 , 2),
(2 , 1),
(2 , 2),
(3 , 1);
 
create database aluno(
    nome INT PRIMARY KEY AUTO_INCREMENT,
    curso VARCHAR(100) NOT NULL,
    email VARCHAR (100) NOT NULL,
);

create database livro(
    titulo INT PRIMARY KEY AUTO_INCREMENT,
    autor VARCHAR(100) NOT NULL,
    ano_publicado DATE NOT NULL
);
create database cliente(
    dt_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    dt_devolucao DATE NOT NULL
);
CREATE DATABASE biblioteca;

USE biblioteca;

2. Criar a Tabela Aluno
CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100),
    email VARCHAR(100),
    curso VARCHAR(100)
);

3. Criar a Tabela Livro
CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    ano_publicacao INT
);

4. Criar a Tabela Empréstimo
CREATE TABLE emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE,
    data_devolucao DATE,

    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

5. Inserir Alunos
INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Michael Jackson", "m.jackson@gmail.com", "Administração");

INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Loud Coringa", "l.deloude@gmail.com", "Análise e Desenvolvimento de Sistemas");

INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Peter Parker", "aranha@gmail.com", "Engenharia");

6. Consultar Alunos
SELECT * FROM aluno;

7. Inserir Livros
INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Dom Casmurro", "Machado de Assis", 1899);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("O Hobbit", "J. R. R. Tolkien", 1937);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Harry Potter e a Pedra Filosofal", "J. K. Rowling", 1997);

8. Consultar Livros
SELECT * FROM livro;

9. Inserir Empréstimos
INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (1, 1, "2026-09-25", "2026-10-02");

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (3, 2, "2026-09-20", "2026-09-30");

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
------------------------------------------------------------

CREATE DATABASE sist_biblioteca;

USE sist_biblioteca;

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100),
    email VARCHAR(100),
    curso VARCHAR(100)
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    ano_publicado INT
);


CREATE TABLE emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE,
    data_devolucao DATE,

    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);


INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Michael Jackson", "m.jackson@gmail.com", "Administração");

INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Loud Coringa", "l.deloude@gmail.com", "Análise e Desenvolvimento de Sistemas");

INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Peter Parker", "aranha@gmail.com", "Engenharia");


SELECT * FROM aluno;


INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Luz das Trevas", "Ed & Lorraine Warren", 2023);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Demonologistas", "Ed & Lorraine Warren", 1980);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Diario de Anne Frank", "Anne Frank", 1947);


SELECT * FROM livro;

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (1, 1, "2026-05-23", "2026-07-05");

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (3, 2, "2026-04-10", "2026-04-09");

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (2, 3, "2026-12-20", "2026-01-12");


SELECT * FROM emprestimo;
---------------------------------------------------
create table produto(
    id_produto int primary key AUTO_INCREMENT
    marcavarchar(100) not null,
    dt_entrada date not null,
    preco decimal (19, 2) not null,
    qtd int not null
);
