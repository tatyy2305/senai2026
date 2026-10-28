Atualização de dados — UPDATE

O comando `UPDATE` é utilizado para modificar informações já cadastradas em uma tabela do banco de dados. O comando `SET` define os novos valores, enquanto `WHERE` especifica quais registros serão alterados.

 1. Atualizar a cidade dos clientes de SP e RJ

```sql
UPDATE cliente
SET cidade = 'PaoDeQueijo'
WHERE estado IN ('SP', 'RJ');
```

Atualiza a cidade dos clientes que possuem o estado cadastrado como SP ou RJ.

 2. Atualizar a data de cadastro dos clientes de Manaus

```sql
UPDATE cliente
SET data_cadastro = '2026-01-01'
WHERE cidade = 'Manaus';
```

Altera a data de cadastro dos clientes que residem em Manaus.

 3. Atualizar o nome de um cliente

```sql
UPDATE cliente
SET nome_cliente = 'Michael Jackson'
WHERE id_cliente = 10;
```

Modifica o nome do cliente cujo identificador é 10.

 4. Atualizar o nome de um produto

```sql
UPDATE produto
SET nome_produto = 'Notebook Lenovo IdeaPad7'
WHERE id_produto = 1;
```

Altera o nome do produto que possui o identificador 1.

5. Atualizar o preço dos produtos da marca Dell

```sql
UPDATE produto
SET preco_unitario = 4999.99
WHERE marca = 'DELL'
AND categoria = 'Notebook';
```

Define o preço unitário como 4999,99 para os produtos da marca Dell cuja categoria seja Notebook.

 6. Atualizar o desconto das vendas com quantidade maior ou igual a 2

```sql
UPDATE venda
SET desconto_percentual = 0.01
WHERE quantidade >= 2;
```
Atualiza o desconto das vendas que possuem quantidade igual ou superior a 2 unidades.

 Comandos utilizados
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



