-- Criação do banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Uso do banco de dados criado
USE db_pizzaria_legal;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

-- Criação da tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    valor DECIMAL(5,2),
    ingredientes VARCHAR(255),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias VALUES (1, 'Doce', 'Pizzas com ingredientes doces');
INSERT INTO tb_categorias VALUES (2, 'Salgada', 'Pizzas com ingredientes salgados');
INSERT INTO tb_categorias VALUES (3, 'Vegetariana', 'Pizzas com ingredientes vegetarianos');
INSERT INTO tb_categorias VALUES (4, 'Vegana', 'Pizzas com ingredientes veganos');
INSERT INTO tb_categorias VALUES (5, 'Especial', 'Pizzas com ingredientes especiais');

-- Inserção de registros na tabela tb_pizzas
-- (Aqui estou apenas inserindo os IDs das categorias, você pode alterar os valores conforme necessário)
INSERT INTO tb_pizzas VALUES (1, 'Margherita', 50.00, 'Molho de tomate, mussarela e manjericão', 2);
INSERT INTO tb_pizzas VALUES (2, 'Pepperoni', 60.00, 'Molho de tomate, mussarela e pepperoni', 5);
INSERT INTO tb_pizzas VALUES (3, 'Quatro Queijos', 70.00, 'Molho de tomate, mussarela, gorgonzola, parmesão e provolone', 2);
INSERT INTO tb_pizzas VALUES (4, 'Calabresa', 80.00, 'Molho de tomate, mussarela e calabresa', 2);
INSERT INTO tb_pizzas VALUES (5, 'Frango com Catupiry', 90.00, 'Molho de tomate, frango desfiado e catupiry', 2);
INSERT INTO tb_pizzas VALUES (6, 'Vegana', 40.00, 'Molho de tomate, queijo vegano, cogumelos, pimentões, cebolas, azeitonas e manjericão', 4);
INSERT INTO tb_pizzas VALUES (7, 'Vegetariana', 30.00, 'Molho de tomate, mussarela, cogumelos, pimentões, cebolas, azeitonas e espinafre', 3);
INSERT INTO tb_pizzas VALUES (8, 'Nutella com Morango', 20.00, 'Massa de pizza, Nutella, morangos e açúcar de confeiteiro', 1);

-- Consulta para retornar todas as pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Consulta para retornar todas as pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- Consulta para retornar todas as pizzas que possuem a letra 'M' no nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- Consulta utilizando INNER JOIN para unir os dados das tabelas tb_pizzas e tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- Consulta utilizando INNER JOIN para unir os dados das tabelas tb_pizzas e tb_categorias, retornando apenas as pizzas da categoria 'Doce'
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Doce';
