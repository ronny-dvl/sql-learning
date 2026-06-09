/*
IN

Objetivo:
Filtrar varios valores em uma única condição
Sintaxe:
WHERE coluna IN (valor1, valor2, valor3)

Exemplo:
Listar clientes dos estados SP e RJ.
*/
USE ecommerce;

SELECT *
FROM cliente
WHERE estado IN ('SP', 'RJ');