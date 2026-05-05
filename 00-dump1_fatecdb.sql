-- MySQL Dump
-- Schema: fatecdb

DROP DATABASE IF EXISTS fatecdb;
CREATE DATABASE fatecdb
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

USE fatecdb;

-- =========================
-- TABLE: cursos
-- =========================
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sigla CHAR(5) NOT NULL UNIQUE,
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT NOT NULL,
    carga_horaria INT NOT NULL,
    ano YEAR(4) NOT NULL,
    ativo BOOLEAN DEFAULT TRUE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- =========================
-- TABLE: estudantes
-- =========================
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    celular VARCHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero ENUM('M','F','N') NOT NULL,
    nacionalidade VARCHAR(20) DEFAULT 'Brasil'
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- =========================
-- INSERT cursos (10 registros)
-- =========================
INSERT INTO cursos (sigla, nome, descricao, carga_horaria, ano, ativo) VALUES
('ADS', 'Analise Sistemas', 'Desenvolvimento de software', 2800, 2026, 1),
('LOG', 'Logistica', 'Gestao de cadeias logisticas', 2400, 2026, 1),
('GE', 'Gestao Empresarial', 'Administracao e negocios', 2400, 2026, 1),
('SI', 'Sistemas Info', 'Sistemas corporativos', 2800, 2026, 1),
('BD', 'Banco Dados', 'Modelagem e administracao de dados', 2800, 2026, 1),
('GTI', 'Gestao TI', 'Gestao de tecnologia', 2400, 2026, 1),
('RED', 'Redes', 'Infraestrutura de redes', 2600, 2026, 1),
('MEC', 'Mecatronica', 'Automacao industrial', 3000, 2026, 1),
('PROD', 'Producao', 'Engenharia de producao', 3000, 2026, 1),
('COMEX', 'Comercio Ext', 'Comercio internacional', 2400, 2026, 1);

-- =========================
-- INSERT estudantes (20 registros)
-- =========================
INSERT INTO estudantes (nome, email, celular, data_nascimento, genero, nacionalidade) VALUES
('Lucas Silva', 'lucas1@email.com', '11987654321', '2001-05-12', 'M', 'Brasil'),
('Ana Souza', 'ana2@email.com', '11987654322', '2000-08-22', 'F', 'Brasil'),
('Pedro Santos', 'pedro3@email.com', '11987654323', '1999-03-10', 'M', 'Brasil'),
('Mariana Lima', 'mariana4@email.com', '11987654324', '2002-11-05', 'F', 'Portugal'),
('Joao Oliveira', 'joao5@email.com', '11987654325', '2001-01-30', 'M', 'Brasil'),
('Carla Pereira', 'carla6@email.com', '11987654326', '2003-07-14', 'F', 'Brasil'),
('Rafael Costa', 'rafael7@email.com', '11987654327', '2002-09-18', 'M', 'Alemanha'),
('Fernanda Alves', 'fernanda8@email.com', '11987654328', '2000-04-02', 'F', 'Inglaterra'),
('Bruno Gomes', 'bruno9@email.com', '11987654329', '1998-12-21', 'M', 'Brasil'),
('Juliana Rocha', 'juliana10@email.com', '11987654330', '2001-06-17', 'F', 'Brasil'),
('Gabriel Martins', 'gabriel91@email.com', '11987654411', '2000-10-10', 'M', 'Uganda'),
('Patricia Mendes', 'patricia92@email.com', '11987654412', '1999-02-20', 'F', 'Brasil'),
('Thiago Barros', 'thiago93@email.com', '11987654413', '2003-01-01', 'M', 'Peru'),
('Aline Teixeira', 'aline94@email.com', '11987654414', '2002-03-03', 'F', 'Brasil'),
('Diego Ribeiro', 'diego95@email.com', '11987654415', '2001-05-05', 'M', 'Chile'),
('Larissa Freitas', 'larissa96@email.com', '11987654416', '2000-07-07', 'F', 'Brasil'),
('Vinicius Cardoso', 'vinicius97@email.com', '11987654417', '1998-09-09', 'M', 'China'),
('Camila Duarte', 'camila98@email.com', '11987654418', '2003-11-11', 'F', 'Uzbesquistão'),
('Rodrigo Araujo', 'rodrigo99@email.com', '11987654419', '2002-12-12', 'M', 'Suriname'),
('Beatriz Nogueira', 'beatriz100@email.com', '11987654420', '2001-04-04', 'F', 'Brasil');
