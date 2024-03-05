CREATE DATABASE EmpresaRH;
USE EmpresaRH;

CREATE TABLE Colaboradores (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Data_de_Contratacao DATE,
    Salario DECIMAL(10, 2)
);

INSERT INTO Colaboradores (ID, Nome, Cargo, Data_de_Contratacao, Salario)
VALUES 
(1, 'João Silva', 'Gerente', '2018-05-21', 3000.00),
(2, 'Maria Santos', 'Analista', '2019-07-30', 1500.00),
(3, 'Pedro Costa', 'Desenvolvedor', '2020-01-15', 3500.00),
(4, 'Ana Pereira', 'Analista', '2021-03-27', 1300.00),
(5, 'Lucas Souza', 'Desenvolvedor', '2022-06-01', 2800.00);

SELECT * FROM Colaboradores WHERE Salario > 2000;

SELECT * FROM Colaboradores WHERE Salario < 2000;

UPDATE Colaboradores SET Salario = 2600 WHERE ID = 2;
