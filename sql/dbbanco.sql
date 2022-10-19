-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Out-2022 às 18:42
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbbanco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `correntista`
--

CREATE TABLE `correntista` (
  `codigo` int(11) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `correntista`
--

INSERT INTO `correntista` (`codigo`, `nome`, `email`, `tipo`, `saldo`, `ativo`, `data_criacao`) VALUES
(1, 'Marcilio Freitas', 'marcilio.f@email.com', 'conta', 0, 1, '2022-10-15 00:00:00'),
(2, 'Teste teste', 'teste@email.com', 'conta corr', 100, 0, '2022-10-15 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacao`
--

CREATE TABLE `movimentacao` (
  `codigo` int(11) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `data_criacao` date DEFAULT NULL,
  `codigo_correntista` int(11) DEFAULT NULL CHECK (`saldo` > 0 and `tipo` in ('pago','saque','deposito','saque transferencia','deposito transferencia'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
