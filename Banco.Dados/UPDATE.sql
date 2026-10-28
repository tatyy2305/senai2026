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