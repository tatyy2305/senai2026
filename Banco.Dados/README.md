#  Banco de Dados — Compra de Produtos

##  Descrição

Este projeto consiste na criação de um banco de dados para controlar **clientes, produtos e compras realizadas**.

O banco de dados foi desenvolvido utilizando **MySQL**, permitindo cadastrar clientes, cadastrar produtos e registrar quais produtos foram comprados por cada cliente.

O projeto faz parte da atividade **Compra de Produtos**, que envolve a criação do Modelo Entidade-Relacionamento (MER), criação das tabelas, implementação do banco de dados e testes utilizando operações CRUD.

---

##  Objetivo

O objetivo do projeto é desenvolver um banco de dados capaz de:

-  Cadastrar clientes;
-  Cadastrar produtos;
-  Registrar compras;
-  Consultar informações cadastradas;
-  Atualizar informações;
-  Excluir registros;
-  Relacionar clientes e produtos através da tabela de compras.

---

##  Estrutura do Banco de Dados

O banco de dados possui três tabelas principais:

###  Cliente

Armazena as informações dos clientes.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_cliente` | INT | Identificador único do cliente |
| `nome` | VARCHAR(100) | Nome do cliente |
| `email` | VARCHAR(100) | E-mail do cliente |
| `telefone` | VARCHAR(20) | Telefone do cliente |

###  Produto

Armazena as informações dos produtos.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_produto` | INT | Identificador único do produto |
| `nome_produto` | VARCHAR(100) | Nome do produto |
| `preco` | DECIMAL(10,2) | Preço do produto |

###  Compra

Armazena os produtos comprados pelos clientes.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_compra` | INT | Identificador único da compra |
| `id_cliente` | INT | Identificador do cliente |
| `id_produto` | INT | Identificador do produto |
| `qtd` | INT | Quantidade de produtos comprados |

---

##  Relacionamentos

O banco possui os seguintes relacionamentos:

```text
CLIENTE 1 ───────── N COMPRA N ───────── 1 PRODUTO