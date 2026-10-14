#  API de Clientes e Pedidos

##  Sobre o projeto

Este projeto consiste no desenvolvimento de uma API REST utilizando **Node.js** e **Express**, com o objetivo de gerenciar clientes, pedidos e itens relacionados às compras.

A API permite realizar operações de cadastro, consulta, atualização e exclusão de dados, seguindo os conceitos de **CRUD (Create, Read, Update e Delete)**.

Os dados são armazenados inicialmente em arquivos JSON, que funcionam como uma base de dados simples para os testes e o desenvolvimento da aplicação.

##  Tecnologias utilizadas

- **Node.js** — ambiente de execução JavaScript.
- **Express** — framework para criação de rotas e gerenciamento de requisições HTTP.
- **CORS** — permite requisições de diferentes origens.
- **JSON** — formato utilizado para armazenar e transmitir os dados.

##  Estrutura do projeto

```text
projeto/
├── dados/
│   ├── clientes.json
│   ├── pedidos.json
│   └── itens.json
├── src/
│   ├── controllers/
│   │   ├── clientes.js
│   │   ├── pedidos.js
│   │   └── itens.js
│   └── routes.js
├── index.js
├── package.json
└── README.md
```

##  Funcionalidades

###  Clientes

- Listar todos os clientes cadastrados:

<img width="607" height="823" alt="image" src="https://github.com/user-attachments/assets/f5e5b4c2-be58-446e-9e23-e997963a63da" />

- Cadastrar novos clientes:

<img width="606" height="682" alt="image" src="https://github.com/user-attachments/assets/a1fb208f-97eb-4c42-a8fa-a555eb7145e5" />

- Atualizar os dados de um cliente:

<img width="607" height="634" alt="image" src="https://github.com/user-attachments/assets/7e1a7c6b-261b-4d4b-bb03-d5de7bc865e3" />

- Excluir clientes pelo ID:

<img width="605" height="665" alt="image" src="https://github.com/user-attachments/assets/8ef01ead-a809-479d-ba1b-f11b678a4255" />

Cada cliente possui as seguintes informações:

| Campo | Descrição |
|---|---|
| `id` | Identificador do cliente |
| `cpf` | CPF do cliente |
| `nome` | Nome do cliente |

###  Pedidos

- Listar os pedidos cadastrados:

<img width="608" height="659" alt="Captura de tela 2026-10-14 110139" src="https://github.com/user-attachments/assets/42b5d30b-1fe4-4cc2-afde-8f74c6557503" />


- Cadastrar novos pedidos:

<img width="601" height="633" alt="Captura de tela 2026-10-14 110208" src="https://github.com/user-attachments/assets/b9b9da74-8a9a-471e-882f-b42a50cc56a0" />




