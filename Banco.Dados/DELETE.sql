 Atividade Prática de Banco de Dados MySQL — DML
 Descrição

Este projeto apresenta exercícios práticos de SQL utilizando o comando DELETE, pertencente ao grupo DML (Data Manipulation Language). O objetivo é praticar a exclusão de registros em tabelas de um banco de dados relacional MySQL por meio de condições específicas.

Objetivo
Excluindo dados de tabelas utilizando o comando DELETE FROM combinado com a cláusula WHERE, garantindo que apenas os registros desejados sejam removidos.

Tecnologias utilizadas
MySQL — Sistema de gerenciamento de banco de dados relacional.
SQL — Linguagem utilizada para manipulação dos dados. 
 Arquivo do projeto
DELETE.sql — Arquivo contendo seis comandos SQL para exclusão de registros.
 Exercícios desenvolvidos
   
1. Excluir um cliente pelo código
sql
DELETE FROM cliente
WHERE id_cliente = 5;


Remove o cliente cujo identificador é igual a 5.

2. Excluir clientes de um estado específico
sql
DELETE FROM cliente
WHERE estado = 'SC';


Remove os clientes cadastrados no estado de Santa Catarina (SC).

3. Excluir produtos de uma marca
sql
DELETE FROM produtos
WHERE marca = 'LG';


Remove os produtos cuja marca seja LG.

4. Excluir produtos por identificadores
sql
DELETE FROM produto
WHERE id_produto IN (3, 5, 10);


Remove os produtos cujos identificadores sejam 3, 5 ou 10.

5. Excluir vendas sem desconto
sql
DELETE FROM venda
WHERE desconto_percentual = 0;


Remove as vendas cujo desconto percentual seja igual a zero.

6. Excluir vendas canceladas
sql
DELETE FROM venda
WHERE status_venda = 'Cancelada';


Remove as vendas cujo status seja Cancelada.


A atividade permite praticar a exclusão de dados em um banco de dados MySQL utilizando diferentes condições. Dessa forma, reforça o conhecimento sobre a linguagem SQL e sobre o uso seguro do comando DELETE na manipulação de registros.
