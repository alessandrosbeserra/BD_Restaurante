-- selecionando banco de dados
use restaurante;

-- Criando view resumo_pedido
create view resumo_pedido as 
select id_pedido, quantidade, data_pedido 
from pedido
	left join clientes on pedido.id_cliente = clientes.id_cliente
	left join  funcionarios on pedido.id_funcionario = funcionarios.id_funcionario
	left join produto on pedido.id_produto = produto.id_produto;
    
    select id_pedido, clientes.nome, (quantidade * preco) as Total from resumo_pedido;
    
 -- Selecione o id do pedido, nome do cliente e o total (quantidade * preco) de cada pedido da view resumo_pedido
CREATE OR REPLACE VIEW resumo_pedido AS
SELECT 
    pedido.id_pedido AS pedido_id, 
    pedido.quantidade, 
    pedido.data_pedido, 
    clientes.nome AS cliente_nome, 
    clientes.email, 
    funcionarios.nome AS funcionario_nome, 
    produto.nome AS produto_nome, 
    produto.preco
    total_pedido
FROM 
    pedido
JOIN 
    clientes ON pedido.id_cliente = clientes.id_cliente
JOIN 
    funcionarios ON pedido.id_funcionario = funcionarios.id_funcionario
JOIN 
    produto ON pedido.id_produto = produto.id_produto;
    
    select * from resumo_pedido;
 

SELECT 
    pedido_id, 
    cliente_nome, 
    (quantidade * preco) AS total_pedido 
FROM 
    resumo_pedido;
    
    -- atualizando view
    CREATE OR REPLACE VIEW resumo_pedido AS
SELECT 
    pedido.id_pedido AS pedido_id, 
    pedido.quantidade, 
    pedido.data_pedido, 
    clientes.nome AS cliente_nome, 
    clientes.email, 
    funcionarios.nome AS funcionario_nome, 
    produto.nome AS produto_nome, 
    produto.preco
    total_pedido
FROM 
    pedido
JOIN 
    clientes ON pedido.id_cliente = clientes.id_cliente
JOIN 
    funcionarios ON pedido.id_funcionario = funcionarios.id_funcionario
JOIN 
    produto ON pedido.id_produto = produto.id_produto;

-- Repita a consulta da questão 3, utilizando o campo total adicionado
explain   
SELECT 
    pedido_id, 
    cliente_nome, 
   total_pedido
FROM 
    resumo_pedido;
    
   -- Repita a consulta da pergunta anterior, com uso do EXPLAIN para verificar e compreender o JOIN que está oculto na nossa query
   explain   
SELECT 
    pedido_id, 
    cliente_nome, 
   total_pedido
FROM 
    resumo_pedido;
    
    
-- Criando uma função chamada ‘BuscaIngredientesProduto’, que irá retornar os ingredientes da tabela info produtos, quando passar 
-- o id de produto como argumento (entrada) da função.

delimiter //
create function BuscarIngredientesProduto(idProduto int)
returns varchar(200)
reads sql data
	begin
		declare infoProduto varchar (200);
        select ingredientes into infoProduto from info_produtos where id_produto = idProduto;
        return infoProduto;
	end //
delimiter ;

-- Usar a função em uma consulta
select BuscarIngredientesProduto(10);

-- Criando função chamada ‘mediaPedido’ que irá retornar uma mensagem dizendo que o total do pedido é acima
--  abaixo ou igual a média de todos os pedidos, quando passar o id do pedido como argumento da função

    
    

