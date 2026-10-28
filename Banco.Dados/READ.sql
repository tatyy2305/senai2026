   
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