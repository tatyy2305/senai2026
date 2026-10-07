<<<<<<< HEAD
<<<<<<< HEAD
# 🛒 API de Clientes e Pedidos

API desenvolvida utilizando **Node.js**, **Express** e **CORS**, seguindo uma organização baseada no padrão **MVC (Model-View-Controller)**.

O projeto permite realizar operações **CRUD** de clientes e pedidos, além de calcular o subtotal dos pedidos.

---

## 📌 Sobre o projeto
=======
## API de Clientes e Pedidos
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f

O objetivo do projeto é desenvolver uma API capaz de cadastrar, consultar, alterar e excluir **clientes e pedidos**.

A aplicação utiliza arquivos `.json` para armazenar os dados e o **Express** para criar as rotas e controlar as requisições HTTP.

<<<<<<< HEAD
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
=======
#  API de Clientes e Pedidos

API desenvolvida utilizando **Node.js**, **Express** e **CORS**, seguindo uma organização baseada no padrão **MVC (Model-View-Controller)**.

O projeto permite realizar operações **CRUD** de clientes e pedidos, além de calcular o subtotal dos pedidos.

---

##  Sobre o projeto

O objetivo do projeto é desenvolver uma API capaz de cadastrar, consultar, alterar e excluir **clientes e pedidos**.

A aplicação utiliza arquivos `.json` para armazenar os dados e o **Express** para criar as rotas e controlar as requisições HTTP.

### Funcionalidades

*  Listar clientes
*  Cadastrar clientes
*  Alterar clientes
*  Excluir clientes
*  Listar pedidos
*  Cadastrar pedidos
*  Alterar pedidos
*  Excluir pedidos
*  Calcular subtotal dos pedidos
*  Utilização de CORS
*  API baseada em requisições HTTP

---

##  Tecnologias utilizadas
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

* **Node.js**
* **Express**
* **CORS**
* **JavaScript**
* **JSON**
* **REST API**
* **Arquitetura MVC**

---

<<<<<<< HEAD
## 📁 Estrutura do projeto

```text
=======
 Tecnologias utilizadas
 Node.js
 Express
 CORS
 JSON para armazenamento dos dados
 API REST
 Visual Studio Code
 Estrutura do projeto
 
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
##  Estrutura do projeto

```text
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830
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

<<<<<<< HEAD
<<<<<<< HEAD
# 👤 Clientes
=======
 Clientes
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
#  Clientes
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

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
<<<<<<< HEAD
<<<<<<< HEAD
```
=======
Endpoints de clientes
Método	Rota	Função
GET	/clientes	Lista todos os clientes
POST	/clientes	Cadastra um novo cliente
PUT	/clientes/:id	Altera um cliente
DELETE	/clientes/:id	Exclui um cliente
 Pedidos
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
```
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

---

##  Pedidos

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

<<<<<<< HEAD
#  CRUD
=======
# 🔧 CRUD
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

CRUD representa as quatro principais operações realizadas em uma API:

| Operação | Método HTTP | Função              |
| -------- | ----------- | ------------------- |
| Create   | `POST`      | Criar um registro   |
| Read     | `GET`       | Consultar registros |
| Update   | `PUT`       | Alterar um registro |
| Delete   | `DELETE`    | Excluir um registro |

---

#  Rotas de Clientes

###  Listar clientes

```http
GET /clientes
```

Retorna todos os clientes cadastrados.

---

<<<<<<< HEAD
### ➕ Cadastrar cliente

```http
POST /clientes
```
=======
###  Cadastrar cliente
<img width="755" height="751" alt="Captura de tela 2026-10-07 102929" src="https://github.com/user-attachments/assets/62cddf15-24d8-4743-a6c2-3312271e4c77" />
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

Exemplo de JSON enviado:

```json
{
    "cpf": "111.222.333-44",
    "nome": "Carlos Silva"
}
<<<<<<< HEAD
<<<<<<< HEAD
```
=======
Endpoints de pedidos
Método	Rota	Função
GET	/pedidos	Lista todos os pedidos
POST	/pedidos	Cadastra um novo pedido
PUT	/pedidos/:id	Altera um pedido
DELETE	/pedidos/:id	Exclui um pedido
 Cálculo do subtotal
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
```
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

---

###  Alterar cliente

```http
PUT /clientes/:id
```

Exemplo:

```http
PUT /clientes/1
```

JSON:

<<<<<<< HEAD
```json
{
    "id": 1,
    "cpf": "999.888.777-66",
    "nome": "Carlos Santos"
}
```
=======
<img width="726" height="710" alt="Captura de tela 2026-10-07 103508" src="https://github.com/user-attachments/assets/c7b984b8-509e-4673-a094-3ee972f9142e" />

>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

---

###  Excluir cliente

```http
DELETE /clientes/:id
```

Exemplo:

```http
DELETE /clientes/1
```
<<<<<<< HEAD
=======
<img width="731" height="714" alt="Captura de tela 2026-10-07 103348" src="https://github.com/user-attachments/assets/09a25955-b066-4e9f-881b-4e8bc7cb9bb5" />
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

---

#  Rotas de Pedidos

###  Listar pedidos

```http
GET /pedidos
```

Retorna todos os pedidos cadastrados.
<<<<<<< HEAD

---

### ➕ Cadastrar pedido
=======
<img width="729" height="714" alt="Captura de tela 2026-10-07 103609" src="https://github.com/user-attachments/assets/83ef04ab-2ccf-4923-9823-e01eec6179dc" />

---

###  Cadastrar pedido
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

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
<<<<<<< HEAD
=======
<img width="729" height="721" alt="Captura de tela 2026-10-07 103713" src="https://github.com/user-attachments/assets/c2ef80e9-90c5-499b-befa-94564f3a9c7e" />
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

---

###  Alterar pedido

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
<<<<<<< HEAD

---

###  Excluir pedido
=======
<img width="735" height="725" alt="Captura de tela 2026-10-07 103916" src="https://github.com/user-attachments/assets/41193c9c-a2f5-4f8e-9ace-b6f7cd7ccfa5" />

---

### 🗑️ Excluir pedido
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

```http
DELETE /pedidos/:id
```

Exemplo:

```http
DELETE /pedidos/1
```
<<<<<<< HEAD

---

# Cálculo do subtotal
=======
<img width="731" height="726" alt="Captura de tela 2026-10-07 103809" src="https://github.com/user-attachments/assets/086a9ad6-0c5f-4c9f-9fe6-03c757ed8823" />

---

#  Cálculo do subtotal
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

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

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830
```javascript
function calcTotais() {
    pedidos.forEach(p => {
        p.subtotais = p.quantidade * p.preco;
    });
<<<<<<< HEAD
}
Essa funcionalidade está em desenvolvimento.

 CRUD

O projeto utiliza as quatro operações principais do CRUD:

Create

Criação de novos registros:

POST /clientes
POST /pedidos
Read

Consulta dos registros:

GET /clientes
GET /pedidos
Update

Alteração de registros:

PUT /clientes/:id
PUT /pedidos/:id
Delete

Exclusão de registros:

DELETE /clientes/:id
DELETE /pedidos/:id
 Exemplos de requisições
Cadastrar cliente

POST /clientes

{
  "cpf": "123.456.789-99",
  "nome": "João da Silva"
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830
}
```

---

<<<<<<< HEAD
# 🌐 Rotas da API
=======
#  Rotas da API
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

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

<<<<<<< HEAD
# 🚀 Instalação

<<<<<<< HEAD
## 1. Clonar o projeto
=======
{
  "cliente_id": 1,
  "produto": "Teclado",
  "preco": 200.00,
  "quantidade": 3
}
 Tratamento de erros
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
#  Instalação

## 1. Clonar o projeto
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

```bash
git clone URL_DO_SEU_REPOSITORIO
```

Entre na pasta:

```bash
cd nome-do-projeto
```

---

## 2. Instalar as dependências

<<<<<<< HEAD
<<<<<<< HEAD
Execute:
=======
Pedido não encontrado!
 Como executar o projeto
1. Instale as dependências

No terminal, dentro da pasta do projeto:
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
Execute:
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

```bash
npm install
```

Caso as dependências ainda não estejam instaladas:

```bash
npm install express cors
```

---

## 3. Executar o servidor
<<<<<<< HEAD

```bash
node index.js
```

<<<<<<< HEAD
Se estiver utilizando `nodemon`:
=======
{
  "mensagem": "MVC respondendo"
}
 Testando a API
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======

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

<img width="633" height="365" alt="image" src="https://github.com/user-attachments/assets/623f154e-e7ff-4419-8e59-4c3cf16b8570" />

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
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

```bash
npx nodemon index.js
```

<<<<<<< HEAD
---

#  Servidor

<<<<<<< HEAD
O servidor utiliza a porta `3000`.
=======
=======
* **Insomnia**
* **Postman**
* **Thunder Client**
* **Navegador** para requisições `GET`

Exemplo:

```text
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830
GET http://localhost:3000/clientes
```

ou:

```text
GET http://localhost:3000/pedidos
<<<<<<< HEAD
 Arquitetura
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f

```javascript
const express = require("express");
const cors = require("cors");

const routes = require("./src/controllers/routes");

<<<<<<< HEAD
const app = express();
=======
Responsável por definir as rotas e direcionar cada requisição para o controlador correspondente.
=======
```

---

#  Arquitetura MVC

O projeto utiliza uma organização baseada em **MVC**.
>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830

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

<<<<<<< HEAD
O Express é configurado para aceitar:
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(routes);

const porta = 3000;

<<<<<<< HEAD
app.listen(porta, () => {
    console.log(`Servidor respondente em: http://localhost:${porta}`);
});
```
=======
 Objetivo do projeto
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f

Após iniciar o projeto, acesse:

<<<<<<< HEAD
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

=======
Criação de APIs;
Rotas HTTP;
CRUD;
Manipulação de arquivos JSON;
Uso de parâmetros de rota;
Requisições GET, POST, PUT e DELETE;
Organização de código com Controllers;
Relacionamento entre clientes e pedidos;
Cálculo de valores de pedidos.
 Projeto acadêmico

Projeto desenvolvido para fins de estudo e prática de desenvolvimento Backend com Node.js e Express.
>>>>>>> e8f28287b3f224bf0773ed4c1b8caec1f7e0439f
=======
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


>>>>>>> 79b30cdbe4445baa669978fe4e353d4f6527f830
