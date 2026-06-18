/*
  Funções de Agregação
  Realizam cálculos sobre um conjunto de linhas e retornam um único valor.
*/
USE db_biblioteca;

-- COUNT(*): total de registros na tabela
SELECT COUNT(*) FROM tbl_autores;

-- COUNT(DISTINCT): conta valores únicos sem repetição.
SELECT COUNT(DISTINCT id_autor) FROM tbl_livro;

-- MAX / MIN: maior e menor valor
SELECT MAX(preco_livro) FROM tbl_livro;
SELECT MIN(preco_livro) FROM tbl_livro;

-- AVG: média dos valores
SELECT AVG(preco_livro) FROM tbl_livro;

-- SUM: soma total
SELECT SUM(preco_livro) FROM tbl_livro;