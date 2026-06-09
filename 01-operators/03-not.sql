/*
NOT

Objetivo:
Negar uma condição.
Sintaxe:
WHERE NOT condição

Exemplo:
Listar pedidos que não foram cancelados.
*/
USE ecommerce;

SELECT *
FROM pedido
WHERE NOT status = 'cancelado';