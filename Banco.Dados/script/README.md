#  Consultas SQL – LIKE, BETWEEN e JOIN

Este documento apresenta consultas SQL utilizando os comandos `LIKE`, `BETWEEN`, `INNER JOIN`, `IN`, `OR` e `ORDER BY`, para realizar pesquisas e filtrar informações nas tabelas `produto`, `cliente` e `venda`.

##  1. Consultas utilizando LIKE

O comando `LIKE` permite pesquisar registros que correspondem a determinados padrões de texto.

### 1. Buscar produtos que começam com a letra D

```sql
SELECT * FROM produto
WHERE nome_produto LIKE "D%";
```

### 2. Buscar produtos cuja marca contém a letra E

```sql
SELECT nome_produto, marca, estoque
FROM produto
WHERE marca LIKE "%E%";
```

### 3. Buscar produtos que possuem Gamer no nome

```sql
SELECT nome_produto, marca, preco_unitario
FROM produto
WHERE nome_produto LIKE "%Gamer%";
```

### 4. Buscar clientes que possuem Barbosa no nome

```sql
SELECT * FROM cliente
WHERE nome_cliente LIKE "%Barbosa%";
```

### 5. Buscar clientes cujos nomes começam com a letra C

```sql
SELECT cliente.nome_cliente,
       venda.data_venda,
       produto.preco_unitario,
       venda.forma_pagamento
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
ON venda.id_produto = produto.id_produto
WHERE cliente.nome_cliente LIKE "C%";
```

### 6. Buscar produtos com Polegada e formas de pagamento PIX ou Boleto

```sql
SELECT Produto.nome_produto,
       Venda.preco_unitario_venda,
       Venda.id_venda,
       Venda.forma_pagamento
FROM Produto
INNER JOIN Venda
ON Produto.id_produto = Venda.id_produto
WHERE Produto.nome_produto LIKE "%Polegada%"
AND Venda.forma_pagamento IN ("PIX", "Boleto");
```

### 7. Buscar vendas de produtos com Placa, Notebook ou clientes com Ana no nome

```sql
SELECT produto.nome_produto,
       cliente.nome_cliente,
       venda.desconto_percentual,
       venda.forma_pagamento
FROM venda
INNER JOIN produto
ON venda.id_produto = produto.id_produto
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
WHERE produto.nome_produto LIKE "%placa%"
OR produto.nome_produto LIKE "%Notebook%"
OR cliente.nome_cliente LIKE "%Ana%"
ORDER BY venda.status_venda ASC;
```

---

## 2. Consultas utilizando BETWEEN

O comando `BETWEEN` permite buscar registros dentro de um intervalo de valores ou datas.

### 1. Buscar produtos cadastrados entre 01/03/2024 e 31/03/2024

```sql
SELECT * FROM produto
WHERE data_cadastro BETWEEN "2024-03-01" AND "2024-03-31";
```

### 2. Buscar produtos cadastrados entre janeiro e março de 2024

```sql
SELECT nome_produto, marca, estoque, data_cadastro
FROM produto
WHERE data_cadastro BETWEEN "2024-01-01" AND "2024-03-31";
```

### 3. Buscar clientes cadastrados entre 01/01/2023 e 31/01/2023

```sql
SELECT * FROM cliente
WHERE data_cadastro BETWEEN "2023-01-01" AND "2023-01-31";
```

### 4. Buscar clientes cadastrados entre 01/06/2023 e 15/06/2023

```sql
SELECT nome_cliente, email, cidade, estado, data_cadastro
FROM cliente
WHERE data_cadastro BETWEEN "2023-06-01" AND "2023-06-15";
```

### 5. Buscar vendas realizadas durante maio de 2025

```sql
SELECT * FROM venda
WHERE data_venda BETWEEN "2025-05-01" AND "2025-05-31";
```

### 6. Buscar vendas realizadas entre 24/12/2025 e 15/01/2026

```sql
SELECT nome_cliente,
       data_venda,
       preco_unitario_venda,
       forma_pagamento
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
WHERE venda.data_venda BETWEEN "2025-12-24" AND "2026-01-15"
ORDER BY venda.preco_unitario_venda DESC;
```

### 7. Buscar vendas de dezembro de 2025 com status Cancelada ou Concluída

```sql
SELECT cliente.nome_cliente,
       cliente.email,
       produto.nome_produto,
       produto.marca,
       produto.categoria,
       venda.forma_pagamento,
       venda.data_venda,
       venda.status_venda
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
ON venda.id_produto = produto.id_produto
WHERE venda.data_venda BETWEEN "2025-12-01" AND "2025-12-31"
AND venda.status_venda IN ("Cancelada", "Concluida")
ORDER BY venda.preco_unitario_venda DESC;
```

---
