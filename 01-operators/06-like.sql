/*
LIKE

Objetivo:
Pesquisar padrões em textos.
Curingas:
%  Qualquer quantidade de caracteres
_  Um único caractere

Exemplo:
Listar clientes cujo nome começa com a letra A.
*/
USE ecommerce;
SELECT *
FROM cliente
WHERE nome LIKE 'A%';