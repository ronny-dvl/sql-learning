/*
Ex: Comandos de exclusão de dados.
*/

CREATE DATABASE IF NOT EXISTS teste;
USE teste;

CREATE TABLE tbl_teste (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_teste VARCHAR(20) NOT NULL
);

INSERT INTO tbl_teste (nome_teste)
VALUES
	('Renata'), ('Roger'), ('Roberto'), ('Ryan'), ('Rafael');

SELECT * FROM tbl_teste;

-- DELETE com WHERE para excluir dados com critério.
DELETE FROM tbl_teste
WHERE id = 2;
SELECT * FROM tbl_teste;

-- TRUNCATE TABLE para excluir todos os dados da tabela.
TRUNCATE TABLE tbl_teste;
SELECT * FROM tbl_teste;

-- DROP TABLE para excluir dados e estrutura da tabela.
DROP TABLE tbl_teste;

