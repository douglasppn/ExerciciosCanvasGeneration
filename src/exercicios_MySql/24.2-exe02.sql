CREATE DATABASE Ecommerce;
USE Ecommerce;

CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(100),
    Preco DECIMAL(10, 2),
    Quantidade_em_Estoque INT
);

INSERT INTO Produtos (ID, Nome, Categoria, Preco, Quantidade_em_Estoque)
VALUES 
(1, 'Produto A', 'Categoria 1', 500.00, 10),
(2, 'Produto B', 'Categoria 1', 1500.00, 5),
(3, 'Produto C', 'Categoria 2', 700.00, 8),
(4, 'Produto D', 'Categoria 2', 1200.00, 6),
(5, 'Produto E', 'Categoria 3', 300.00, 15),
(6, 'Produto F', 'Categoria 3', 800.00, 9),
(7, 'Produto G', 'Categoria 4', 2000.00, 4),
(8, 'Produto H', 'Categoria 4', 100.00, 20);

SELECT * FROM Produtos WHERE Preco > 500;

SELECT * FROM Produtos WHERE Preco < 500;

UPDATE Produtos SET Preco = 600 WHERE ID = 1;