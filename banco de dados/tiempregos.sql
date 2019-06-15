-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2019 às 04:19
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tiempregos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico_vagas`
--

CREATE TABLE `historico_vagas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `tipo_tempo` varchar(10) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `data_inicio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `historico_vagas`
--

INSERT INTO `historico_vagas` (`id`, `descricao`, `titulo`, `cidade`, `tipo_tempo`, `empresa`, `data_inicio`) VALUES
(1, 'King operates mobile games at a massive scale. With titles like Candy Crush, Bubble Witch and Farm Heroes our code runs on hundreds of millions of devices across the world.\r\n\r\nWe are looking for Java Backend Developers that will take pride in creating the very best bite sized entertainment for millions of players worldwide.', 'Java Backend Developer', 'Barcelona', 'true', 'king', '2019-06-04'),
(2, 'Skills to create thrills\r\n\r\nFluent in modern C++ (C++ 11 and later)\r\nPlatform development, API design or Software DevKits and tools development\r\nCross-platform development (especially iOS and Android)', 'C++ Developer, King Tech', 'Stockholm', 'true', 'King', '2019-05-07');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `historico_vagas`
--
ALTER TABLE `historico_vagas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `historico_vagas`
--
ALTER TABLE `historico_vagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
