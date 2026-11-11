 Atividade Prática de Banco de Dados MySQL — INSERT
Este projeto apresenta exercícios práticos de SQL utilizando o comando INSERT INTO, pertencente ao grupo DML (Data Manipulation Language). O objetivo é praticar a inserção de registros em tabelas de um banco de dados relacional MySQL.
   
 Tecnologias utilizadas
MySQL — Sistema de gerenciamento de banco de dados relacional.
SQL — Linguagem utilizada para manipulação dos dados.
   Arquivo do projeto
INSERT.sql — Arquivo contendo comandos SQL para inserir registros nas tabelas do banco de dados.
Exercícios desenvolvidos
1. Inserir um novo cliente
sql
INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro)
VALUES ("Rubervaldo Sesião", "ruber.sesi@gmail.com", "Jaguaruana", "SP", "2026-05-06");


Insere um novo cliente com nome, e-mail, cidade, estado e data de cadastro.

2. Inserir um novo produto
sql
INSERT INTO produto (id_produto, categoria, marca, estoque, preco, status, data_cadastro)
VALUES ("MousePad 5POL", "Acessorios", "Lunix", "35", "59.98", "Ativo", "2026-03-12");


Insere um produto com informações de identificação, categoria, marca, estoque, preço, status e data de cadastro.

3. Inserir uma nova venda
sql
INSERT INTO venda (id_produto, id_cliente, data_venda, quantidade, desconto_percentual, forma_pagamento, status_venda)
VALUES (21, 101, "2026-10-21",
