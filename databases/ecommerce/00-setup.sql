--  00-setup.sql
--  Banco de dados base para o projeto sql-learning
--  Cenário: Loja E-commerce
 
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;
 
CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);
 
CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);
 
CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    cidade VARCHAR(50),
    estado CHAR(2),
    criado_em DATETIME DEFAULT NOW()
);
 
CREATE TABLE pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    total DECIMAL(10,2),
    status ENUM('pendente', 'pago', 'cancelado') DEFAULT 'pendente',
    criado_em DATETIME DEFAULT NOW(),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);
 
CREATE TABLE item_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unit DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (pedido_id)  REFERENCES pedido(id),
    FOREIGN KEY (produto_id) REFERENCES produto(id)
);
 
CREATE TABLE funcionario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    gestor_id INT,
    FOREIGN KEY (gestor_id) REFERENCES funcionario(id)
);
 
INSERT INTO categoria (nome) 
VALUES
    ('Informática'),
    ('Periféricos'),
    ('Smartphones'),
    ('Acessórios');
 
INSERT INTO produto (nome, preco, estoque, categoria_id) 
VALUES
    ('Notebook Dell',        3500.00, 10, 1),
    ('Notebook Samsung',     2800.00,  5, 1),
    ('Monitor LG 24"',        900.00, 15, 1),
    ('Mouse Logitech',         80.00, 50, 2),
    ('Teclado Mecânico',      250.00, 30, 2),
    ('Headset HyperX',        350.00, 20, 2),
    ('iPhone 15',            6500.00,  8, 3),
    ('Samsung Galaxy S24',   4800.00, 12, 3),
    ('Cabo USB-C',             35.00,100, 4),
    ('Suporte para Notebook', 120.00, 40, 4);
 
INSERT INTO cliente (nome, email, cidade, estado) 
VALUES
    ('Ana Silva',    'ana@email.com',    'São Paulo',       'SP'),
    ('Bruno Costa',  'bruno@email.com',  'Rio de Janeiro',  'RJ'),
    ('Carlos Lima',  'carlos@email.com', 'Belo Horizonte',  'MG'),
    ('Diana Souza',  'diana@email.com',  'São Paulo',       'SP'),
    ('Eduardo Reis', 'edu@email.com',    'Curitiba',        'PR'),
    ('Fernanda Luz', 'fe@email.com',     'Salvador',        'BA');
 
INSERT INTO funcionario (nome, cargo, salario, gestor_id) 
VALUES
    ('Ricardo Mendes', 'Diretor',   12000.00, NULL),
    ('Patricia Alves', 'Gerente',    8000.00, 1),
    ('João Pedro',     'Analista',   4500.00, 2),
    ('Mariana Faria',  'Analista',   4200.00, 2),
    ('Lucas Teixeira', 'Estagiário', 1800.00, 3);
 
INSERT INTO pedido (cliente_id, total, status, criado_em) 
VALUES
    (1, 3580.00, 'pago',      '2024-01-10 10:00:00'),
    (1,   80.00, 'pago',      '2024-02-15 14:30:00'),
    (2, 5100.00, 'pago',      '2024-02-20 09:00:00'),
    (3,  250.00, 'cancelado', '2024-03-01 11:00:00'),
    (4, 6500.00, 'pago',      '2024-03-05 16:00:00'),
    (5,  155.00, 'pendente',  '2024-03-10 08:00:00'),
    (6,  350.00, 'pago',      '2024-03-12 13:00:00');
 
INSERT INTO item_pedido (pedido_id, produto_id, quantidade, preco_unit) 
VALUES
    (1, 1,  1, 3500.00),
    (1, 4,  1,   80.00),
    (2, 4,  1,   80.00),
    (3, 7,  1, 6500.00),
    (3, 9,  2,   35.00),
    (4, 5,  1,  250.00),
    (5, 7,  1, 6500.00),
    (6, 4,  1,   80.00),
    (6, 9,  2,   35.00),
    (7, 6,  1,  350.00);