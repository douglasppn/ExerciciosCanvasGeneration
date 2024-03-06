-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;

-- Uso do banco de dados criado
USE db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserção de registros na tabela tb_classes
INSERT INTO tb_classes VALUES (1, 'Guerreiro', 'Classe forte e resistente');
INSERT INTO tb_classes VALUES (2, 'Mago', 'Classe inteligente e poderosa');
INSERT INTO tb_classes VALUES (3, 'Arqueiro', 'Classe ágil e precisa');
INSERT INTO tb_classes VALUES (4, 'Clerigo', 'Classe sábia e curandeira');
INSERT INTO tb_classes VALUES (5, 'Bardo', 'Classe carismática e versátil');

-- Inserção de registros na tabela tb_personagens
-- (Aqui estou apenas inserindo os IDs das classes, você pode alterar os valores conforme necessário)
INSERT INTO tb_personagens VALUES (1, 'Aragorn', 2500, 1500, 1);
INSERT INTO tb_personagens VALUES (2, 'Legolas', 2200, 1300, 2);
INSERT INTO tb_personagens VALUES (3, 'Gimli', 2100, 1400, 3);
INSERT INTO tb_personagens VALUES (4, 'Frodo', 2300, 1200, 4);
INSERT INTO tb_personagens VALUES (5, 'Samwise', 2400, 1100, 5);
INSERT INTO tb_personagens VALUES (6, 'Gandalf', 2000, 1000, 1);
INSERT INTO tb_personagens VALUES (7, 'Boromir', 1900, 900, 2);
INSERT INTO tb_personagens VALUES (8, 'Crin', 1800, 800, 3);

-- Consulta para retornar todos os personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Consulta para retornar todos os personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Consulta para retornar todos os personagens que possuem a letra 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Consulta utilizando INNER JOIN para unir os dados das tabelas tb_personagens e tb_classes
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- Consulta utilizando INNER JOIN para unir os dados das tabelas tb_personagens e tb_classes, retornando apenas os personagens da classe 'Arqueiro'
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.nome = 'Arqueiro';
