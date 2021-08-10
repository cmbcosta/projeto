-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Ago-2021 às 16:02
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
-- Estrutura da tabela `edicao_historico`
--

CREATE TABLE `edicao_historico` (
  `id_participante` int(11) NOT NULL COMMENT 'id participante',
  `id_edicao` int(11) NOT NULL COMMENT 'id edição',
  `dt_cadastro` date NOT NULL COMMENT 'data de cadastro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `edicao_historico`
--
ALTER TABLE `edicao_historico`
  ADD KEY `fk_edicao_participante` (`id_participante`),
  ADD KEY `fk_edicao_edicao` (`id_edicao`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `edicao_historico`
--
ALTER TABLE `edicao_historico`
  ADD CONSTRAINT `fk_edicao_edicao` FOREIGN KEY (`id_edicao`) REFERENCES `edicao` (`id`),
  ADD CONSTRAINT `fk_edicao_participante` FOREIGN KEY (`id_participante`) REFERENCES `participante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
