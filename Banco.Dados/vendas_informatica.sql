   
1. select * from produto;

2. select nome_produto,marca,estoque FROM produto

3. SELECT nome_produto,categoria, preco_unitario, data_cadastro from produto
ORDER BY marca ASC;

4. SELECT nome_produto,categoria, preco_unitario, data_cadastro from produto
ORDER BY data_cadastro ASC;

5. select * from cliente

6. select nome_cliente, email, cidade, estado FROM cliente

7. SELECT nome_cliente,cidade,estado from cliente
ORDER BY estado ASC;

8. SELECT nome_cliente,email, estado,data_cadastro from cliente
ORDER BY data_cadastro ASC;

9. select * FROM venda;

10. select id_produto,data_venda,preco_unitario_venda,forma_pagamento FROM venda

11. select id_produto,data_venda,quantidade,status_venda FROM venda

12.  select produto.id_produto,produto.preco_unitario,venda.forma_pagamento
 from produto
 INNER JOIN venda
 
 WHERE venda.forma_pagamento IN ("pix","boleto");

13. select id_cliente,id_produto,data_venda,quantidade FROM venda

14.  SELECT id_produto,desconto_percentual,forma_pagamento,data_venda from venda
ORDER BY data_venda ASC;

15. SELECT id_produto,id_cliente,desconto_percentual,forma_pagamento,status_venda from venda
ORDER BY forma_pagamento ASC;

16. select produto.nome_produto, cliente.nome_cliente, produto.categoria, cliente.email, produto.marca, venda.forma_pagamento, venda.status_venda
from produto 
inner JOIN venda
on venda.id_produto = produto.id_produto
inner join cliente
on cliente.id_cliente = venda.id_cliente
WHERE venda.status_venda in ("cancelada","concluida")
order by venda.preco_unitario_venda DESC;
---------------------------------------------------------------------------
    
1. INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro)
VALUES ("Rubervaldo Sesiano", "ruber.sesi@gmail.com", "Jaguariúna", "SP", "2026-05-06");

2. INSERT INTO produto (id_produto, categoria, marca, estoque, preco, status, data_cadastro)
VALUES ("MousePad 5POL", "Acessorios", "Lunix", "35", "59.98", "Ativo", "2026-03-12");

3. INSERT INTO venda (id_produto, id_cliente, data_venda, quantidade, desconto_percentual, forma_pagamento, status_venda)
VALUES (21, 101, "2026-10-21", 10, "1.33", "PIX", "Concluída");
---------------------------------------------------------------------------
    
1. UPDATE cliente
SET cidade = 'PaoDequeijo';
WHERE estado IN ("SP", "RJ")

2. UPDATE cliente
SET data_cadastro = '2026-01-01';
WHERE ciade = 'Manaus';

3. UPDATE cliente 
SET nome_cliente = 'Michael Jackson'
WHERE id_cliente = 10

4. UPDATE produto
SET nome_produto = 'Notebook Lenovo IdeaPad7'
WHERE id_produto = 1

5. UPDATE produto
 SET preco_unitario = 4999.99
 WHERE marca = 'DELL'
 AND categoria = 'Notebook'

6. UPDATE venda
SET desconto_percentual = 0.01
WHERE quantidade >= 2;
--------------------------------------------------------------------------

1. DELETE FROM cliente
WHERE id_cliente = 5;

2. DELETe FROM cliente
WHERE estado = 'SC'

3.DELETE FROM produtos
WHERE marca = 'LG'

4. DELETE FROM produto
WHERE id_produto IN  (3, 5, 10);

5. DELETE FROM venda 
WHERE desconto_percentual = 0;

6.DELETE FROM venda 
WHERE status_venda = 'Cancelada';
