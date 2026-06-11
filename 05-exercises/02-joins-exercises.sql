-- Ex (Desafio - JOIN): Nome, email e estado do cliente.
-- total e status dos pedidos pagos acima de R$500
USE ecommerce;

SELECT
    cliente.nome,
    cliente.email,
    cliente.estado,
    pedido.total,
    pedido.status
FROM cliente
JOIN pedido ON cliente.id = pedido.cliente_id
WHERE pedido.status = 'pago'
AND pedido.total > 500
ORDER BY pedido.total ASC;