atividade aula 7 
Claro — abaixo está um **README.md completo**, já formatado em Markdown para você copiar e colocar no arquivo `README.md`.

# API de Patrimônio

Projeto desenvolvido em **Node.js** utilizando **Express** para criar uma API simples de gerenciamento de patrimônios.

A API permite **consultar, cadastrar, alterar e excluir patrimônios** utilizando requisições HTTP.

## Tecnologias utilizadas

* Node.js
* Express
* JavaScript
* JSON
* Insomnia ou Postman para testes

## Estrutura do projeto

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

## Instalação

Clone ou abra o projeto e instale as dependências:

```bash
npm install
```

## Executando o projeto

Para iniciar o servidor, utilize:

```bash
npm run dev
```

O servidor será executado em:

```text
http://127.0.0.1:3000
```
## Rotas

```text
Post patrimônio:   http://localhost:3000/patrimonio
Get patrimônios:   http://localhost:3000/patrimonio
Put patrimônio:    http://localhost:3000/patrimonio/:id
Delete patrimônio: http://localhost:3000/patrimonio/:id
## Rotas da API
```
### GET — Consultar patrimônios

Retorna todos os patrimônios cadastrados.

```http
GET /
```

Exemplo de resposta:

<img width="759" height="913" alt="Captura de tela 2026-09-29 093645" src="https://github.com/user-attachments/assets/2e71cb41-eea6-4694-ba24-6f392e6d846d" />


---

### POST — Cadastrar patrimônio

Utilizado para adicionar um novo patrimônio.

```http
POST /
```

Exemplo de JSON enviado:

<img width="751" height="761" alt="Captura de tela 2026-09-29 093617" src="https://github.com/user-attachments/assets/67872768-57b4-4e98-b9d3-eabaaec0d3ce" />


---


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

<img width="758" height="895" alt="Captura de tela 2026-09-29 093707" src="https://github.com/user-attachments/assets/cf9b1aa1-d664-49b8-8163-d4a41c1c98c2" />


Resposta:

```text
Patrimônio atualizado com sucesso!
```

## Dados cadastrados

<img width="1387" height="701" alt="Captura de tela 2026-09-29 095258" src="https://github.com/user-attachments/assets/20288bf3-85d4-4b7b-a92a-c6b624c845ae" />

## Testando a API

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
DELETE http://127.0.0.1:3000/4
```
