/*
AND e OR

Objetivo:
Combinar múltiplas condições
AND:
Todas as condições devem ser true.
OR:
Pelo menos uma condição deve ser true.

Exemplo:
Listar produtos com preço acima de R$ 100 e estoque maior que 5
*/
USE ecommerce;
SELECT *
FROM produto
WHERE preco > 100 AND estoque > 5;