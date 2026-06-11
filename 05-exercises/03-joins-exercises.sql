/*
Ex: Lista o nome do produto, quantidade, preço unitário, total (calcula preço unit * quantidade)
  e o nome do cliente de todos os itens de pedidos pagos.
*/

USE ecommerce;

SELECT
	produto.nome,
    item_pedido.quantidade,
    item_pedido.preco_unit,
    item_pedido.quantidade * item_pedido.preco_unit AS 'total',
    cliente.nome,
    pedido.status
FROM pedido
JOIN item_pedido 
	ON item_pedido.pedido_id = pedido.id
JOIN produto 
	ON produto.id = item_pedido.produto_id
JOIN cliente 
	ON cliente.id = pedido.cliente_id
    
WHERE pedido.status = 'pago'
ORDER BY total ASC




    