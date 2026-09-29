atividade aula 7 
Claro — abaixo está um **README.md completo**, já formatado em Markdown para você copiar e colocar no arquivo `README.md`.

# API de Patrimônio

Projeto desenvolvido em **Node.js** utilizando **Express** para criar uma API simples de gerenciamento de patrimônios.

A API permite **consultar, cadastrar, alterar e excluir patrimônios** utilizando requisições HTTP.

## 🚀 Tecnologias utilizadas

* Node.js
* Express
* JavaScript
* JSON
* Insomnia ou Postman para testes

## 📁 Estrutura do projeto

```text
aula7/
│
├── dados.json
│
├── package.json
│
└── servidor/
    └── server.js
```

## 📦 Instalação

Clone ou abra o projeto e instale as dependências:

```bash
npm install
```

## ▶️ Executando o projeto

Para iniciar o servidor, utilize:

```bash
npm run dev
```

O servidor será executado em:

```text
http://127.0.0.1:3000
```

## 🔗 Rotas da API

### GET — Consultar patrimônios

Retorna todos os patrimônios cadastrados.

```http
GET /
```

Exemplo de resposta:

```json
[
    {
        "id": 1,
        "item": "Notebook Dell",
        "local": "Laboratório 01",
        "dataRegistro": "2026-09-01",
        "valor": 3500,
        "patrimonio": "PAT-00125"
    }
]
```

---

### POST — Cadastrar patrimônio

Utilizado para adicionar um novo patrimônio.

```http
POST /
```

Exemplo de JSON enviado:

```json
{
    "id": 5,
    "item": "Computador",
    "local": "Laboratório 03",
    "dataRegistro": "2026-09-29",
    "valor": 4500,
    "patrimonio": "PAT-00129"
}
```

Resposta:

```text
Pedido recebido com sucesso!
```

---

### DELETE — Excluir patrimônio

Utilizado para excluir um patrimônio pelo seu `id`.

```http
DELETE /:id
```

Exemplo:

<img width="759" height="896" alt="Captura de tela 2026-09-29 093738" src="https://github.com/user-attachments/assets/bf2b4d99-301f-4af3-a303-ff010564b2d9" />

```http
DELETE /4
```

Nesse caso, o patrimônio com `id` igual a `4` será excluído.

Resposta:

```text
Patrimônio excluído com sucesso!
```

---

### PUT — Alterar patrimônio

Utilizado para atualizar os dados de um patrimônio.

```http
PUT /:id
```

Exemplo:

```http
PUT /4
```

JSON enviado:

```json
{
    "item": "Monitor Samsung 24p",
    "local": "Laboratório 03",
    "dataRegistro": "2026-09-29",
    "valor": 1500,
    "patrimonio": "PAT-00128"
}
```

Resposta:

```text
Patrimônio atualizado com sucesso!
```

## 📋 Dados cadastrados

O arquivo `dados.json` contém inicialmente os seguintes patrimônios:

| ID | Item              | Local          |       Valor | Patrimônio |
| -: | ----------------- | -------------- | ----------: | ---------- |
|  1 | Notebook Dell     | Laboratório 01 | R$ 3.500,00 | PAT-00125  |
|  2 | Projetor Epson    | Sala 03        | R$ 2.800,00 | PAT-00126  |
|  3 | Teclado           | Sala 02        |   R$ 160,00 | PAT-00127  |
|  4 | Monitor Ryzen 24p | Laboratório 02 | R$ 1.200,00 | PAT-00128  |

## 🧪 Testando a API

Você pode utilizar ferramentas como:

* **Insomnia**
* **Postman**

### Exemplos

**Consultar:**

```http
GET http://127.0.0.1:3000/
```

**Cadastrar:**

```http
POST http://127.0.0.1:3000/
```

**Alterar:**

```http
PUT http://127.0.0.1:3000/1
```

**Excluir:**

```http
DELETE http://127.0.0.1:3000/1
```

## ⚙️ Scripts disponíveis

No arquivo `package.json`, o projeto possui o seguinte comando:

```bash
npm run dev
```

Esse comando inicia o servidor Node.js.

## 👨‍💻 Objetivo do projeto

O objetivo deste projeto é praticar o desenvolvimento de uma **API REST**, utilizando os principais métodos HTTP:

* `GET` — consultar dados
* `POST` — cadastrar dados
* `PUT` — alterar dados
* `DELETE` — excluir dados

O projeto também permite compreender conceitos básicos de **rotas, requisições, respostas, parâmetros e manipulação de dados em JSON**.

## 📄 Licença

Este projeto foi desenvolvido para fins **educacionais e acadêmicos**.

