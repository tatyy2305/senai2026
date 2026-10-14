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

- Listar todos os clientes cadastrados.
- Cadastrar novos clientes.
- Atualizar os dados de um cliente.
- Excluir clientes pelo ID.

Cada cliente possui as seguintes informações:

| Campo | Descrição |
|---|---|
| `id` | Identificador do cliente |
| `cpf` | CPF do cliente |
| `nome` | Nome do cliente |

###  Pedidos

- Listar os pedidos cadastrados.
- Cadastrar novos pedidos
