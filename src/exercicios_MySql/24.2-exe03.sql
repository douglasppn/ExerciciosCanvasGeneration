CREATE DATABASE Escola;
USE Escola;

CREATE TABLE Estudantes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Curso VARCHAR(100),
    Nota DECIMAL(3, 2)
);

INSERT INTO Estudantes (ID, Nome, Idade, Curso, Nota)
VALUES 
(1, 'Estudante A', 20, 'Curso 1', 8.5),
(2, 'Estudante B', 22, 'Curso 1', 7.0),
(3, 'Estudante C', 21, 'Curso 2', 6.5),
(4, 'Estudante D', 23, 'Curso 2', 9.0),
(5, 'Estudante E', 20, 'Curso 3', 7.5),
(6, 'Estudante F', 22, 'Curso 3', 6.0),
(7, 'Estudante G', 21, 'Curso 4', 8.0),
(8, 'Estudante H', 23, 'Curso 4', 6.5);

SELECT * FROM Estudantes WHERE Nota > 7.0;

SELECT * FROM Estudantes WHERE Nota < 7.0;

UPDATE Estudantes SET Nota = 7.5 WHERE ID = 3;
