CREATE DATABASE db_biblioteca;
USE db_biblioteca;

CREATE TABLE tbl_autores(
	id_autor INT AUTO_INCREMENT PRIMARY KEY ,
    nome_autor VARCHAR(50) NOT NULL,
    sobrenome_autor VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_editoras(
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_livro(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    nome_livro VARCHAR (50) NOT NULL,
    isbn CHAR(13) NOT NULL UNIQUE,
    id_autor INT NOT NULL,
    id_editora INT NOT NULL,
    data_pub DATE NOT NULL,
    preco_livro DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_id_autor FOREIGN KEY (id_autor) REFERENCES tbl_autores (id_autor),
    CONSTRAINT fk_id_editora FOREIGN KEY (id_editora) REFERENCES tbl_editoras (id_editora)
); 

INSERT INTO tbl_autores(id_autor, nome_autor, sobrenome_autor)
VALUES
	('Daniel', 'Barret'),
    ('Gerald', 'Carter'),
    ('Mark', 'Sobeli'),
    ('Willian', 'Stanek'),
    ('Richard', 'Blum');
    
INSERT INTO tbl_editoras(nome_editora)
VALUES
	('Prentice Hall'),
    ('O´Reilly'),
    ('Microsoft Press'),
    ('Wiley');
    
INSERT INTO tbl_livros(nome_livro, isbn, id_autor, id_editora, data_pub, preco_livro)
VALUES 
	('Linux Command Line and Shell', '1234567890001', 5, 4, '20091221', 68.35),
    ('SSH, the Secure Shell', '1234567890002', 1, 2, '20091028', 58.30),
    ('Using Samba', '1234567890003', 2, 2, '20001221', 61.45),
    ('Fedora and Red Hat Linux ', '1234567890004', 3, 1, '20101101', 62.24),
    ('Windows Server 2012 Inside Out', '1234567890005', 4, 3, '20040517', 66.80),
    ('Microsoft Exchange Server 2010', '1234567890006', 4, 3, '20001221', 45.30);
    






    