/*
  UPDATE — Atualizar registros
  WHERE para não atualizar a tabela inteira por acidente
  SELECT antes para confirmar o que será alterado
*/

USE db_biblioteca;

SELECT
	id_livro,
    preco_livro
FROM tbl_livros
WHERE id_livro = 1;

UPDATE tbl_livros
SET preco_livro = 71.89
WHERE id_livro = 1