-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Ago-2021 às 15:23
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
-- Estrutura da tabela `pre_edicao`
--

CREATE TABLE `pre_edicao` (
  `id_participante` int(11) NOT NULL COMMENT 'id participante da tabela participante',
  `id_edicao` int(11) NOT NULL COMMENT 'id edicaoda tabela edicao',
  `dt_cadastro` date NOT NULL COMMENT 'data cadastro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pre_edicao`
--
ALTER TABLE `pre_edicao`
  ADD KEY `fk_edicao` (`id_edicao`),
  ADD KEY `fk_participante` (`id_participante`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pre_edicao`
--
ALTER TABLE `pre_edicao`
  ADD CONSTRAINT `fk_edicao` FOREIGN KEY (`id_edicao`) REFERENCES `edicao` (`id`),
  ADD CONSTRAINT `fk_participante` FOREIGN KEY (`id_participante`) REFERENCES `participante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
