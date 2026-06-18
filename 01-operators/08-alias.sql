/*
  ALIAS — abreviação de colunas e tabelas
  - AS em coluna: renomeia o cabeçalho do resultado
  - AS em tabela: simplifica referências nos JOINs
*/

USE db_biblioteca;

SELECT
	tbl_livro.nome_livro AS 'Livro',
    tbl_autores.nome_autor AS 'Autor',
    tbl_editoras.nome_editora AS 'Editora'
FROM tbl_livro
JOIN tbl_autores ON tbl_autores.id_autor = tbl_livro.id_autor
JOIN tbl_editoras ON tbl_editoras.id_editora = tbl_livro.id_editora;
