faça um readme.md

Pronto! Fiz o README.md completo com base no seu projeto, incluindo clientes, pedidos, CRUD, rotas, cálculo de subtotal, estrutura MVC e como executar a API.

📄 
Baixar README.md 

README.md
Documento

Biblioteca
/
README.md
📦 API de Clientes e Pedidos

API REST desenvolvida com Node.js e Express para realizar o gerenciamento de clientes e pedidos, utilizando arquivos JSON como fonte de dados.

O projeto implementa operações de CRUD para clientes e pedidos, além de uma estrutura inicial para cálculo de subtotais.

🚀 Tecnologias utilizadas
🟢 Node.js
⚡ Express
🌐 CORS
📄 JSON para armazenamento dos dados
🔗 API REST
🛠️ Visual Studio Code
📁 Estrutura do projeto
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
├── app.js
├── package.json
└── README.md

Os nomes das pastas podem variar de acordo com a organização do projeto.

👥 Clientes

Os clientes são armazenados no arquivo clientes.json.

Exemplo:

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
Endpoints de clientes
Método	Rota	Função
GET	/clientes	Lista todos os clientes
POST	/clientes	Cadastra um novo cliente
PUT	/clientes/:id	Altera um cliente
DELETE	/clientes/:id	Exclui um cliente
🛒 Pedidos

Os pedidos são armazenados no arquivo pedidos.json.

Cada pedido possui informações como:

id
cliente_id
produto
preco
quantidade

Exemplo:

{
  "id": 1,
  "cliente_id": 1,
  "produto": "Notebook",
  "preco": 3500.00,
  "quantidade": 2
}
Endpoints de pedidos
Método	Rota	Função
GET	/pedidos	Lista todos os pedidos
POST	/pedidos	Cadastra um novo pedido
PUT	/pedidos/:id	Altera um pedido
DELETE	/pedidos/:id	Exclui um pedido
🧮 Cálculo do subtotal

O projeto possui uma função calcTotais() destinada ao cálculo dos valores dos pedidos.

A lógica utilizada é:

subtotal = preço × quantidade

Por exemplo:

R$ 3.500,00 × 2 = R$ 7.000,00

Também existe uma rota para subtotal, atualmente definida como:

GET /subtotal

Essa funcionalidade está em desenvolvimento.

🔄 CRUD

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
📌 Exemplos de requisições
Cadastrar cliente

POST /clientes

{
  "cpf": "123.456.789-99",
  "nome": "João da Silva"
}
Alterar cliente

PUT /clientes/1

{
  "cpf": "123.456.789-88",
  "nome": "João Silva"
}
Cadastrar pedido

POST /pedidos

{
  "cliente_id": 1,
  "produto": "Mouse",
  "preco": 150.00,
  "quantidade": 2
}
Alterar pedido

PUT /pedidos/1

{
  "cliente_id": 1,
  "produto": "Teclado",
  "preco": 200.00,
  "quantidade": 3
}
⚠️ Tratamento de erros

Caso um cliente ou pedido não seja encontrado, a API retorna o status:

404 Not Found

Exemplo:

Cliente não encontrado.

ou:

Pedido não encontrado!
▶️ Como executar o projeto
1. Instale as dependências

No terminal, dentro da pasta do projeto:

npm install
2. Execute a aplicação
node app.js

Se estiver utilizando o nodemon:

npx nodemon app.js
3. Acesse a API

O servidor é executado na porta 3000:

http://localhost:3000

A rota inicial retorna:

{
  "mensagem": "MVC respondendo"
}
🧪 Testando a API

Você pode utilizar ferramentas como:

Postman
Insomnia
Thunder Client
Navegador, para requisições GET

Exemplos:

GET http://localhost:3000/clientes
GET http://localhost:3000/pedidos
🏗️ Arquitetura

O projeto utiliza uma organização baseada em MVC (Model-View-Controller), separando as responsabilidades da aplicação.

Requisição
    ↓
Routes
    ↓
Controllers
    ↓
Arquivos JSON
    ↓
Resposta da API
Routes

Responsável por definir as rotas e direcionar cada requisição para o controlador correspondente.

Controllers

Responsáveis pelas regras e operações de clientes e pedidos.

Dados

Os arquivos JSON armazenam os registros utilizados pela aplicação.

🔐 Configurações do servidor

O Express é configurado para aceitar:

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

Isso permite o recebimento de dados em formato JSON e dados enviados por formulários.

📚 Objetivo do projeto

O objetivo deste projeto é desenvolver uma API REST utilizando Node.js e Express, praticando:

Criação de APIs;
Rotas HTTP;
CRUD;
Manipulação de arquivos JSON;
Uso de parâmetros de rota;
Requisições GET, POST, PUT e DELETE;
Organização de código com Controllers;
Relacionamento entre clientes e pedidos;
Cálculo de valores de pedidos.
👨‍💻 Projeto acadêmico

Projeto desenvolvido para fins de estudo e prática de desenvolvimento Backend com Node.js e Express.

📄 Licença

Este projeto foi desenvolvido para fins educacionais.