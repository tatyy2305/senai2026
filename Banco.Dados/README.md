#  Banco de Dados — Compra de Produtos

- ##  Descrição

Este projeto consiste na criação de um banco de dados para controlar **clientes, produtos e compras realizadas**.

O banco de dados foi desenvolvido utilizando **MySQL**, permitindo cadastrar clientes, cadastrar produtos e registrar quais produtos foram comprados por cada cliente.

O projeto faz parte da atividade **Compra de Produtos**, que envolve a criação do Modelo Entidade-Relacionamento (MER), criação das tabelas, implementação do banco de dados e testes utilizando operações CRUD.

---

- ##  Objetivo

O objetivo do projeto é desenvolver um banco de dados capaz de:

-  Cadastrar clientes;
-  Cadastrar produtos;
-  Registrar compras;
-  Consultar informações cadastradas;
-  Atualizar informações;
-  Excluir registros;
-  Relacionar clientes e produtos através da tabela de compras.

---

- ## Estrutura do Banco de Dados

O banco de dados possui três tabelas principais:

- ##  Cliente

Armazena as informações dos clientes.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_cliente` | INT | Identificador único do cliente |
| `nome` | VARCHAR(100) | Nome do cliente |
| `email` | VARCHAR(100) | E-mail do cliente |
| `telefone` | VARCHAR(20) | Telefone do cliente |

- ##  Produto

Armazena as informações dos produtos.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_produto` | INT | Identificador único do produto |
| `nome_produto` | VARCHAR(100) | Nome do produto |
| `preco` | DECIMAL(10,2) | Preço do produto |

- ##  Compra

Armazena os produtos comprados pelos clientes.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_compra` | INT | Identificador único da compra |
| `id_cliente` | INT | Identificador do cliente |
| `id_produto` | INT | Identificador do produto |
| `qtd` | INT | Quantidade de produtos comprados |

---

- ##  Relacionamentos

O banco possui os seguintes relacionamentos:
<img width="833" height="378" alt="Captura de tela 2026-10-07 135535" src="https://github.com/user-attachments/assets/057ca678-9266-480f-875d-52cb7b6b9d53" />
<img width="969" height="309" alt="image" src="https://github.com/user-attachments/assets/f549962c-46fc-49ef-8858-40f99635d029" />
<img width="691" height="359" alt="image" src="https://github.com/user-attachments/assets/b9697cdd-f89d-4cd9-aa25-5f71cadc377b" />
<img width="1012" height="335" alt="Captura de tela 2026-10-07 163530" src="https://github.com/user-attachments/assets/d5454e2b-560c-4618-9049-b9cfc4f3a527" />


## Atividade 2

#  Sistema de Biblioteca

- ##  Descrição

Este projeto consiste na criação de um banco de dados para um **Sistema de Biblioteca**.

O sistema foi desenvolvido em **MySQL** e tem como objetivo controlar os alunos, livros e empréstimos realizados.

O banco de dados permite cadastrar alunos, cadastrar livros e registrar os empréstimos, relacionando cada empréstimo a um aluno e a um livro.

---

- ##  Objetivo

O objetivo do projeto é desenvolver um banco de dados capaz de:

-  Cadastrar alunos;
-  Cadastrar livros;
-  Registrar empréstimos;
-  Registrar datas de devolução;
-  Relacionar alunos e livros;
-  Consultar informações cadastradas.

---

- ##  Estrutura do Banco de Dados

O banco de dados possui três tabelas:

- ##  Aluno

Armazena as informações dos alunos.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_aluno` | INT | Identificador do aluno |
| `nome_aluno` | VARCHAR(100) | Nome do aluno |
| `email` | VARCHAR(100) | E-mail do aluno |
| `curso` | VARCHAR(100) | Curso do aluno |

- ##  Livro

Armazena as informações dos livros.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_livro` | INT | Identificador do livro |
| `titulo` | VARCHAR(100) | Título do livro |
| `autor` | VARCHAR(100) | Autor do livro |
| `ano_publicado` | INT | Ano de publicação |

- ##  Empréstimo

Registra os empréstimos realizados pelos alunos.

| Campo | Tipo | Descrição |
|---|---|---|
| `id_emprestimo` | INT | Identificador do empréstimo |
| `id_aluno` | INT | Identificador do aluno |
| `id_livro` | INT | Identificador do livro |
| `data_emprestimo` | DATE | Data do empréstimo |
| `data_devolucao` | DATE | Data da devolução |

---
- ## Draw.io
<img width="827" height="419" alt="Captura de tela 2026-10-07 162200" src="https://github.com/user-attachments/assets/4c97ca5c-b4fa-4182-982e-04fe87c3b29e" />


- ##  Relacionamentos
<img width="1044" height="500" alt="Captura de tela 2026-10-07 162426" src="https://github.com/user-attachments/assets/1a70fcb2-0b15-4de8-95d8-7b582133200f" />
<img width="999" height="475" alt="Captura de tela 2026-10-07 162444" src="https://github.com/user-attachments/assets/691bfdc7-8278-4c3f-a476-a8d3f8f854ea" />
<img width="1041" height="476" alt="Captura de tela 2026-10-07 162625" src="https://github.com/user-attachments/assets/a46b66d3-8e9f-410d-a58c-8388517c09e9" />

