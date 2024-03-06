-- Criação do banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Uso do banco de dados criado
USE db_curso_da_minha_vida;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255)
);

-- Criação da tabela tb_cursos
CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    valor DECIMAL(10,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos de programação'),
('Design', 'Cursos de design'),
('Marketing', 'Cursos de marketing'),
('Negócios', 'Cursos de negócios'),
('Idiomas', 'Cursos de idiomas');

-- Inserção de registros na tabela tb_cursos
INSERT INTO tb_cursos (nome, descricao, valor, id_categoria) VALUES
('Java para Iniciantes', 'Curso introdutório de Java', 500.00, 1),
('Photoshop Avançado', 'Curso avançado de Photoshop', 700.00, 2),
('Marketing Digital', 'Curso de marketing digital', 400.00, 3),
('Gestão de Projetos', 'Curso de gestão de projetos', 600.00, 4),
('Inglês Intermediário', 'Curso de inglês nível intermediário', 300.00, 5),
('JavaScript Avançado', 'Curso avançado de JavaScript', 800.00, 1),
('Branding', 'Curso de branding', 350.00, 3),
('Espanhol para Viagens', 'Curso de espanhol focado em viagens', 250.00, 5);

-- SELECT que retorna todos os cursos cujo valor seja maior do que R$ 500,00
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- SELECT que retorna todos os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

-- SELECT utilizando o operador LIKE, buscando todos os cursos que possuam a letra J no atributo nome
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id WHERE tb_categorias.nome = 'Programação';
