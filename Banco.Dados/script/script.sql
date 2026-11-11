1. SELECT * FROM produto WHERE nome_produto LIKE "D%";

2. SELECT nome_produto, marca, estoque FROM produto WHERE marca LIKE "%E%";

3. SELECT nome_produto, marca, preco_unitario FROM produto WHERE nome_produto LIKE "%Gamer%";

4. SELECT * FROM cliente WHERE nome_cliente LIKE "%Barbosa%";

5. SELECT cliente.nome_cliente, venda.data_venda, produto.preco_unitario, venda.forma_pagamento FROM cliente, produto, venda WHERE nome_cliente LIKE "C%";

6. SELECT Produto.nome_produto,
 Venda.preco_unitario_venda,
 Venda.id_venda,
 Venda.forma_pagamento
FROM Produto
INNER JOIN Venda 
ON Produto.id_produto = Venda.id_produto
WHERE Produto.nome_produto LIKE '%Polegada%'
AND Venda.forma_pagamento IN ('PIX', 'Boleto');

7. SELECT produto.nome_produto,
 cliente.nome_cliente,
 venda.desconto_percentual, 
 venda.forma_pagamento
  FROM venda 
  INNER JOIN produto ON venda.id_produto = produto.id_produto
  INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
  WHERE produto.nome_produto LIKE "%placa%" 
  OR produto.nome_produto LIKE "%Notebook%"
  OR cliente.nome_cliente LIKE "%Ana%" 
  ORDER BY venda.status_venda ASC;

1. SELECT * FROM produto WHERE data_cadastro BETWEEN "2024-03-01" AND "2024-03-31";

2. SELECT nome_produto, marca, estoque, data_cadastro FROM produto WHERE data_cadastro BETWEEN "2024-01-01" AND "2024-03-31";

3.  SELECT * FROM cliente WHERE data_cadastro BETWEEN "2023-01-01" AND "2023-01-31";

4. SELECT nome_cliente, email, cidade, estado, data_cadastro FROM cliente WHERE data_cadastro BETWEEN "2023-06-01" AND "2023-06-15";

5.SELECT * FROM venda WHERE data_venda BETWEEN "2025-05-01" AND "2025-05-31";

6. SELECT nome_cliente, 
data_venda, 
preco_unitario_venda, 
forma_pagamento 
FROM venda 
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente 
WHERE venda.data_venda BETWEEN "2025-12-24" AND "2026-01-15"
ORDER BY venda.preco_unitario_venda DESC

7. SELECT cliente.nome_cliente,
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