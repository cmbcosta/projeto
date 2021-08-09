-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Ago-2021 às 22:28
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `b3mastertrader`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `edicao`
--

CREATE TABLE `edicao` (
  `id` int(11) NOT NULL COMMENT 'identificador único',
  `num_edicao` int(11) NOT NULL COMMENT 'numero da edição',
  `dt_inical` date NOT NULL COMMENT 'data inicial edição',
  `dt_final` date NOT NULL COMMENT 'data final edição',
  `status` varchar(50) NOT NULL COMMENT 'status da edição'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `edicao`
--
ALTER TABLE `edicao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_num_edicao` (`num_edicao`),
  ADD UNIQUE KEY `idx_dt_inicial` (`dt_inical`),
  ADD UNIQUE KEY `idx_dt_final` (`dt_final`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `edicao`
--
ALTER TABLE `edicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador único';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
