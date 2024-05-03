-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/05/2024 às 14:32
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_escola`
CREATE DATABASE `bd_escola`;
USE `bd_escola`;
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `matricula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `codcurso` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `endereco`, `cidade`, `codcurso`) VALUES
('10001', 'Maria Eduarda Silva', 'Rua das Flores, 123', 'São Paulo', '01'),
('10002', 'Gabriel Oliveira', 'Avenida Central, 456', 'Rio de Janeiro', '01'),
('10003', 'Juliana Santos', 'Rua dos Passarinhos, 789', 'Belo Horizonte', '01'),
('10004', 'Lucas Souza', 'Travessa das Árvores, 321', 'Curitiba', '01'),
('10005', 'Ana Clara Pereira', 'Rua das Pedras, 654', 'Recife', '01'),
('10006', 'Pedro Henrique Costa', 'Avenida dos Coqueiros, 987', 'Manaus', '02'),
('10007', 'Carolina Oliveira', 'Rua das Palmeiras, 654', 'Florianópolis', '02'),
('10008', 'Fernando Santos', 'Avenida das Praias, 321', 'Porto Alegre', '02'),
('10009', 'Mariana Lima', 'Travessa dos Corais, 987', 'Salvador', '02'),
('10010', 'Rodrigo Silva', 'Rua das Ondas, 654', 'Natal', '02'),
('10011', 'Larissa Costa', 'Avenida das Dunas, 321', 'João Pessoa', '03'),
('10012', 'Thiago Oliveira', 'Travessa dos Ventos, 987', 'Fortaleza', '03'),
('10013', 'Amanda Santos', 'Rua das Marés, 654', 'Maceió', '03'),
('10014', 'Felipe Souza', 'Avenida dos Rios, 321', 'Aracaju', '03'),
('10015', 'Bianca Lima', 'Travessa das Fontes, 987', 'Teresina', '03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `codcurso` char(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `coddisc1` char(2) NOT NULL,
  `coddisc2` char(2) NOT NULL,
  `coddsic3` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`codcurso`, `nome`, `coddisc1`, `coddisc2`, `coddsic3`) VALUES
('01', 'Auxiliar de informática', '11', '12', '13'),
('02', 'Programador de Computadores', '21', '22', '23'),
('03', 'Técnico em Informática', '31', '32', '33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `CodDisciplina` char(2) NOT NULL,
  `NomeDisciplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`CodDisciplina`, `NomeDisciplina`) VALUES
('11', 'Banco de Dados'),
('12', 'Lógica de Progamação'),
('13', 'Desenvolvimento de Software 1'),
('21', 'Banco de Dados 2'),
('22', 'Desenvolvimento de Software 2'),
('23', 'Programação de Computadores 1'),
('31', 'Banco de Dados 3'),
('32', 'Programação de Computadores 2'),
('33', 'Desenvolvimento de Software 3');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`CodDisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
