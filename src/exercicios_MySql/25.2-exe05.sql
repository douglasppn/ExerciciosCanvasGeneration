-- Criação do banco de dados
CREATE DATABASE db_construindo_vidas;

-- Uso do banco de dados criado
USE db_construindo_vidas;

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
('Hidráulica', 'Produtos para instalações hidráulicas'),
('Elétrica', 'Produtos para instalações elétricas'),
('Pintura', 'Produtos para pintura'),
('Ferramentas', 'Ferramentas diversas'),
('Madeiras', 'Produtos de madeira');

-- Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, valor, id_categoria) VALUES
('Tubo PVC 100mm', 'Tubo de PVC para esgoto, 100mm x 6m', 75.00, 1),
('Fio 2,5mm', 'Fio elétrico 2,5mm', 50.00, 2),
('Tinta Acrílica 18L', 'Tinta acrílica, lata de 18L', 300.00, 3),
('Martelo Unha', 'Martelo unha 27mm', 25.00, 4),
('Madeira Pinus 2x4', 'Madeira Pinus 2x4, comprimento 3m', 35.00, 5),
('Tubo PVC 75mm', 'Tubo de PVC para esgoto, 75mm x 6m', 50.00, 1),
('Disjuntor 30A', 'Disjuntor tripolar 30A', 45.00, 2),
('Madeira Pinus 2x6', 'Madeira Pinus 2x6, comprimento 3m', 50.00, 5);

-- SELECT que retorna todos os produtos cujo valor seja maior do que R$ 100,00
SELECT * FROM tb_produtos WHERE valor > 100.00;

-- SELECT que retorna todos os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.nome = 'Hidráulica';
