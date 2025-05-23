/*
MULTIPLAS TABELAS
*/

USE restaurante;

SELECT * FROM produto;
SELECT * FROM info_produtos;

-- Produtos: id, Nome, Descrição e Ingredientes

SELECT produto.id_produto, produto.nome, produto.descricao, info_produtos.ingredientes
FROM produto
INNER JOIN info_produtos
ON produto.id_produto = info_produtos.id_produto;

-- SELECIONANDO DA TABELA PEDIDO ID, QUANTIDADE E DATA E NOME E EMAIL DO CLIENTE
SELECT * FROM pedido;
SELECT * FROM clientes;
SELECT * FROM  funcionarios;
SELECT pedido.id_cliente, pedido.quantidade, pedido.data_pedido, clientes.nome, clientes.email
FROM pedido
INNER JOIN clientes
ON pedido.id_cliente = clientes.id_cliente;

-- SELECIOANDNO ID, QUANDTIDADE E DATA DA TABELA PEDIDO E NOME, EMAIL DA TABELA CLIENTE, E NOME DO FUNCIONARIO DA TABELA FUNCIONARIO
SELECT pedido.id_pedido, pedido.quantidade, pedido.data_pedido, clientes.nome as Cliente, clientes.email, funcionarios.nome AS Nome_Funcionario
FROM pedido  
INNER JOIN clientes ON clientes.id_cliente = pedido.id_cliente
INNER JOIN  funcionarios ON funcionarios.id_funcionario = pedido.id_funcionario;

-- SELECIONANDO ID QUANTIDADE E DATA DOS PEDIDOS, JUNTO COM NOME 
-- E E-MAIL DOS CLIENTES, COM NOME DOS FUNCIONARIOS E NOME E PREÇO DOS PRODUTOS

SELECT pedido.id_pedido, pedido.quantidade, 
	   pedido.data_pedido, clientes.nome as Cliente,
       clientes.email, funcionarios.nome AS Nome_Funcionario, 
       produto.nome AS Nome_produto, produto.preco
FROM pedido  
INNER JOIN clientes ON clientes.id_cliente = pedido.id_cliente
INNER JOIN funcionarios ON funcionarios.id_funcionario = pedido.id_funcionario
INNER JOIN produto ON pedido.id_pedido = produto.id_produto;

-- SELECIONANDO NOME DOS CLIENTES COM PEDIDOS COM PENDENTES
SELECT clientes.nome
FROM pedido
INNER JOIN clientes ON pedido.id_cliente = clientes.id_cliente
WHERE situacao = 'Pendente'
ORDER BY pedido.id_pedido desc;

-- SELECIONANDO CLIENTES SEM PEDIDOS
SELECT nome
FROM clientes 
WHERE id_cliente NOT IN (SELECT id_cliente FROM pedido);

-- SELECIONANDO NOME E O TTOAL DE PEDIDODS DE CADA CLIENTE
	SELECT nome,
	(SELECT SUM(preco) FROM pedido WHERE pedido.id_cliente = clientes.id_cliente) as Preco_Total
    FROM clientes;
    
    
    
