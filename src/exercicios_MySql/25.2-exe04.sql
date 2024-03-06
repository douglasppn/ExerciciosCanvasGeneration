-- Criação do banco de dados
CREATE DATABASE db_cidade_das_carnes;

-- Uso do banco de dados criado
USE db_cidade_das_carnes;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255)
);

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    valor DECIMAL(10,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Aves', 'Carnes de aves'),
('Bovinos', 'Carnes de bovinos'),
('Suínos', 'Carnes de suínos'),
('Ovinos', 'Carnes de ovinos'),
('Peixes', 'Carnes de peixes');

-- Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, valor, id_categoria) VALUES
('Frango', 'Carne de frango', 10.00, 1),
('Bife', 'Carne de boi', 20.00, 2),
('Pernil', 'Carne de porco', 30.00, 3),
('Cordeiro', 'Carne de cordeiro', 40.00, 4),
('Salmão', 'Carne de salmão', 50.00, 5),
('Peito de Frango', 'Peito de frango', 15.00, 1),
('Costela', 'Costela de boi', 35.00, 2),
('Bacalhau', 'Carne de bacalhau', 45.00, 5);

-- SELECT que retorna todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- SELECT que retorna todos os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertencem a uma categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.nome = 'Aves';
