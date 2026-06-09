/*
BETWEEN

Objetivo:
Filtrar valores dentro de um intervalo
Sintaxe:
WHERE coluna BETWEEN valor_inicial AND valor_final

Exemplo:
Listar produtos entre R$ 100 e R$ 2500
*/
USE ecommerce;
SELECT
    id,
    nome,
    preco,
    estoque
FROM produto
WHERE preco BETWEEN 100 AND 2500
ORDER BY preco DESC;