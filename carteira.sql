-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Ago-2021 às 21:21
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
-- Estrutura da tabela `carteira`
--

CREATE TABLE `carteira` (
  `id_participante` int(11) NOT NULL COMMENT 'id participante',
  `id_edicao` int(11) NOT NULL COMMENT 'id edição',
  `str_acao` varchar(200) NOT NULL COMMENT 'nome da ação',
  `val_comprado` decimal(13,0) NOT NULL COMMENT 'valor da compra',
  `val_rentabilidade` decimal(13,0) NOT NULL COMMENT 'valor da rentabilidade',
  `dt_cadastro` date NOT NULL COMMENT 'data cadastro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carteira`
--
ALTER TABLE `carteira`
  ADD KEY `fk_carteira_atual_participante` (`id_participante`),
  ADD KEY `fk_carteira_atual_edicao` (`id_edicao`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `carteira`
--
ALTER TABLE `carteira`
  ADD CONSTRAINT `fk_carteira_atual_edicao` FOREIGN KEY (`id_edicao`) REFERENCES `edicao` (`id`),
  ADD CONSTRAINT `fk_carteira_atual_participante` FOREIGN KEY (`id_participante`) REFERENCES `participante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
