# 🛒 API de Clientes e Pedidos

API desenvolvida utilizando **Node.js**, **Express** e **CORS**, seguindo uma organização baseada no padrão **MVC (Model-View-Controller)**.

O projeto permite realizar operações **CRUD** de clientes e pedidos, além de calcular o subtotal dos pedidos.

---

## 📌 Sobre o projeto

O objetivo do projeto é desenvolver uma API capaz de cadastrar, consultar, alterar e excluir **clientes e pedidos**.

A aplicação utiliza arquivos `.json` para armazenar os dados e o **Express** para criar as rotas e controlar as requisições HTTP.

### Funcionalidades

* 👤 Listar clientes
* ➕ Cadastrar clientes
* ✏️ Alterar clientes
* 🗑️ Excluir clientes
* 📦 Listar pedidos
* ➕ Cadastrar pedidos
* ✏️ Alterar pedidos
* 🗑️ Excluir pedidos
* 🧮 Calcular subtotal dos pedidos
* 🌐 Utilização de CORS
* 🔄 API baseada em requisições HTTP

---

## 🛠️ Tecnologias utilizadas

* **Node.js**
* **Express**
* **CORS**
* **JavaScript**
* **JSON**
* **REST API**
* **Arquitetura MVC**

---

## 📁 Estrutura do projeto

```text
projeto/
│
├── dados/
│   ├── clientes.json
│   └── pedidos.json
│
├── src/
│   └── controllers/
│       ├── cliente.js
│       ├── pedido.js
│       └── routes.js
│
├── index.js
├── package.json
└── README.md
```

---

# 👤 Clientes

Os clientes são armazenados no arquivo:

```text
dados/clientes.json
```

Exemplo:

```json
[
    {
        "id": 1,
        "cpf": "123.456.789-00",
        "nome": "Ivone Silva"
    },
    {
        "id": 2,
        "cpf": "123.456.000-01",
        "nome": "Marieta"
    },
    {
        "id": 3,
        "cpf": "123.456.111-02",
        "nome": "Julieta"
    }
]
```

---

## 📦 Pedidos

Os pedidos são armazenados no arquivo:

```text
dados/pedidos.json
```

Exemplo:

```json
[
    {
        "id": 1,
        "cliente_id": 1,
        "produto": "Notebook",
        "preco": 3500.00,
        "quantidade": 2
    },
    {
        "id": 2,
        "cliente_id": 2,
        "produto": "Smartphone",
        "preco": 1500.00,
        "quantidade": 2
    },
    {
        "id": 3,
        "cliente_id": 1,
        "produto": "Teclado",
        "preco": 200.00,
        "quantidade": 3
    },
    {
        "id": 4,
        "cliente_id": 3,
        "produto": "Monitor",
        "preco": 800.00,
        "quantidade": 1
    }
]
```

---

# 🔧 CRUD

CRUD representa as quatro principais operações realizadas em uma API:

| Operação | Método HTTP | Função              |
| -------- | ----------- | ------------------- |
| Create   | `POST`      | Criar um registro   |
| Read     | `GET`       | Consultar registros |
| Update   | `PUT`       | Alterar um registro |
| Delete   | `DELETE`    | Excluir um registro |

---

# 👤 Rotas de Clientes

### 📋 Listar clientes

```http
GET /clientes
```

Retorna todos os clientes cadastrados.

---

### ➕ Cadastrar cliente

```http
POST /clientes
```

Exemplo de JSON enviado:

```json
{
    "cpf": "111.222.333-44",
    "nome": "Carlos Silva"
}
```

---

### ✏️ Alterar cliente

```http
PUT /clientes/:id
```

Exemplo:

```http
PUT /clientes/1
```

JSON:

```json
{
    "id": 1,
    "cpf": "999.888.777-66",
    "nome": "Carlos Santos"
}
```

---

### 🗑️ Excluir cliente

```http
DELETE /clientes/:id
```

Exemplo:

```http
DELETE /clientes/1
```

---

# 📦 Rotas de Pedidos

### 📋 Listar pedidos

```http
GET /pedidos
```

Retorna todos os pedidos cadastrados.

---

### ➕ Cadastrar pedido

```http
POST /pedidos
```

Exemplo:

```json
{
    "cliente_id": 1,
    "produto": "Mouse",
    "preco": 100.00,
    "quantidade": 2
}
```

---

### ✏️ Alterar pedido

```http
PUT /pedidos/:id
```

Exemplo:

```http
PUT /pedidos/1
```

JSON:

```json
{
    "id": 1,
    "cliente_id": 1,
    "produto": "Notebook",
    "preco": 3500.00,
    "quantidade": 3
}
```

---

### 🗑️ Excluir pedido

```http
DELETE /pedidos/:id
```

Exemplo:

```http
DELETE /pedidos/1
```

---

# 🧮 Cálculo do subtotal

O sistema possui uma função responsável pelo cálculo do subtotal de cada pedido.

A fórmula utilizada é:

```text
Subtotal = Preço × Quantidade
```

Por exemplo:

```text
Notebook
Preço: R$ 3.500,00
Quantidade: 2

Subtotal = 3500 × 2
Subtotal = R$ 7.000,00
```

A função utilizada no projeto:

```javascript
function calcTotais() {
    pedidos.forEach(p => {
        p.subtotais = p.quantidade * p.preco;
    });
}
```

---

# 🌐 Rotas da API

| Método   | Rota            | Descrição                          |
| -------- | --------------- | ---------------------------------- |
| `GET`    | `/`             | Verifica se a API está funcionando |
| `GET`    | `/clientes`     | Lista clientes                     |
| `POST`   | `/clientes`     | Cadastra cliente                   |
| `PUT`    | `/clientes/:id` | Altera cliente                     |
| `DELETE` | `/clientes/:id` | Exclui cliente                     |
| `GET`    | `/pedidos`      | Lista pedidos                      |
| `POST`   | `/pedidos`      | Cadastra pedido                    |
| `PUT`    | `/pedidos/:id`  | Altera pedido                      |
| `DELETE` | `/pedidos/:id`  | Exclui pedido                      |

---

# 🚀 Instalação

## 1. Clonar o projeto

```bash
git clone URL_DO_SEU_REPOSITORIO
```

Entre na pasta:

```bash
cd nome-do-projeto
```

---

## 2. Instalar as dependências

Execute:

```bash
npm install
```

Caso as dependências ainda não estejam instaladas:

```bash
npm install express cors
```

---

## 3. Executar o servidor

```bash
node index.js
```

Se estiver utilizando `nodemon`:

```bash
npx nodemon index.js
```

---

#  Servidor

O servidor utiliza a porta `3000`.

```javascript
const express = require("express");
const cors = require("cors");

const routes = require("./src/controllers/routes");

const app = express();

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(routes);

const porta = 3000;

app.listen(porta, () => {
    console.log(`Servidor respondente em: http://localhost:${porta}`);
});
```

Após iniciar o projeto, acesse:

```text
http://localhost:3000
```

A resposta esperada será:

```text
MVC respondendo
```

---

#  Testando a API

Você pode utilizar ferramentas como:

* **Insomnia**
* **Postman**
* **Thunder Client**
* **Navegador** para requisições `GET`

Exemplo:

```text
GET http://localhost:3000/clientes
```

ou:

```text
GET http://localhost:3000/pedidos
```

---

#  Arquitetura MVC

O projeto utiliza uma organização baseada em **MVC**.

```text
              API
               │
               ▼
             Routes
               │
        ┌──────┴──────┐
        ▼             ▼
     Cliente        Pedido
     Controller    Controller
        │             │
        ▼             ▼
 clientes.json    pedidos.json
```

### Controllers

Os controllers são responsáveis por receber as requisições e executar as operações necessárias.

```text
cliente.js
pedido.js
```

### Routes

O arquivo `routes.js` define os caminhos e métodos HTTP utilizados pela API.

```text
routes.js
```

### Dados

Os dados são armazenados em arquivos JSON:

```text
clientes.json
pedidos.json
```

