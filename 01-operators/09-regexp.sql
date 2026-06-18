/*
  REGEXP — Expressões Regulares
  Filtra registros com base em padrões de texto
  Melhor que LIKE para buscas complexas
*/
USE db_biblioteca;
SELECT * FROM tbl_livros;

-- Livros que começam com F ou S
SELECT nome_livro
FROM tbl_livros
WHERE nome_livro REGEXP '^[FS]';

-- Livros que não começam com F ou S
SELECT nome_livro
FROM tbl_livros
WHERE nome_livro REGEXP '^[^FS]';

-- Livros que terminam com A ou T
SELECT nome_livro
FROM tbl_livros
WHERE nome_livro REGEXP '[AT]$';

-- Livros que começam com F ou S  ou contêm 'Mi'
SELECT nome_livro
FROM tbl_livros
WHERE nome_livro REGEXP '^[FS]|Mi';