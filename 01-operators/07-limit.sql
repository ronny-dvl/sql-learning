/*
LIMIT

Objetivo:
Limitar a quantidade de registros retornados por uma consulta
Sintaxe:
LIMIT quantidade
ou
LIMIT inicio, quantidade

Exemplo:
Listar 4 pedidos a partir do terceiro registro.
*/
USE ecommerce;

SELECT *
FROM pedido
LIMIT 2,4