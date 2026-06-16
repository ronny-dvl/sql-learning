/*
Ex - Criação de um Banco de Dados de uma Locadora com 3 clientes e 4 filmes,
filtrando somente os filmes de gênero ação.
*/


CREATE DATABASE db_locadora;

USE db_locadora;
CREATE TABLE tbl_clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE
);

CREATE TABLE tbl_filmes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    preco_diaria DECIMAL(10,2) NOT NULL
);

INSERT INTO tbl_clientes (nome, cpf)
VALUES
	('Jin-Wooso', '12345678910'),
    ('Arthur Leywin', '12345678911'),
	('Pendragon', '12345678912');

INSERT INTO tbl_filmes (titulo, genero, preco_diaria)
VALUES
	('Missao Impossivel', 'Acao', 120.90),
    ('Demon Slayer', 'Acao', 130.70),
    ('A Sociedade das Neves', 'Drama', 90.50),
    ('Divergentes', 'Acao', 20);
    
SELECT * FROM tbl_filmes
WHERE genero = 'Acao';


