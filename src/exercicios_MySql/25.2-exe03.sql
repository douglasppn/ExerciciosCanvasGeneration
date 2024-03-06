-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Uso do banco de dados criado
USE db_farmacia_bem_estar;

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
('Medicamentos', 'Medicamentos de venda livre e prescritos'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene Pessoal', 'Produtos para higiene pessoal'),
('Suplementos', 'Suplementos alimentares e vitaminas'),
('Produtos Naturais', 'Produtos naturais e orgânicos');

-- Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, valor, id_categoria) VALUES
('Paracetamol 500mg', 'Analgésico e antipirético', 10.00, 1),
('Shampoo Hidratante', 'Shampoo para todos os tipos de cabelo', 20.00, 2),
('Creme Dental', 'Creme dental com flúor', 5.00, 3),
('Whey Protein', 'Suplemento proteico para atletas', 120.00, 4),
('Chá Verde', 'Chá verde orgânico', 15.00, 5),
('Ibuprofeno 400mg', 'Anti-inflamatório, analgésico e antipirético', 15.00, 1),
('Protetor Solar FPS 30', 'Protetor solar para todos os tipos de pele', 35.00, 2),
('Multivitamínico', 'Suplemento com diversas vitaminas e minerais', 50.00, 4);

-- SELECT que retorna todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- SELECT que retorna todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertencem a uma categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.nome = 'Categoria 1';
