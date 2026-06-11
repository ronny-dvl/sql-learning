-- EXERCÍCIOS - OPERADORES

-- Ex 1: Produtos entre R$100 e R$1000
USE ecommerce;
SELECT *
FROM produto
WHERE preco BETWEEN 100 AND 1000
ORDER BY preco ASC;
 
-- Ex 2: Clientes de SP
SELECT
    nome,
    email,
    estado
FROM cliente
WHERE estado = 'SP';
 
-- Ex 3: Pedidos com status pago ou pendente
SELECT *
FROM pedido
WHERE status IN ('pago', 'pendente');

-- Ex 4: Produtos com "Notebook" no nome
SELECT *
FROM produto
WHERE nome LIKE '%Notebook%';

-- Ex 5: Produtos com estoque menor que 15
SELECT *
FROM produto
WHERE estoque < 15
ORDER BY estoque ASC;

-- Ex 6: Clientes que não são de SP
SELECT
    nome,
    cidade,
    estado
FROM cliente
WHERE estado != 'SP';

-- Ex 7: Pedidos feitos após 01/02/2024
SELECT *
FROM pedido
WHERE criado_em > '2024-02-01'
ORDER BY criado_em DESC;