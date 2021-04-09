-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Abr-2021 às 16:05
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `novo_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartaocredito`
--

CREATE TABLE `cartaocredito` (
  `id_cartao` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `data_movimento` date DEFAULT NULL,
  `movimentacao` decimal(18,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cartaocredito`
--

INSERT INTO `cartaocredito` (`id_cartao`, `numero`, `data_movimento`, `movimentacao`, `id_cliente`) VALUES
(1, 12345, '2021-12-25', '48.50', 1),
(2, 54321, '2021-05-31', '521.12', 1),
(3, 84579, '2021-01-15', '987.54', 2),
(4, 26549, '2021-11-08', '1000.10', 3),
(5, 50015, '2021-08-01', '458.00', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cartaocredito`
--
ALTER TABLE `cartaocredito`
  ADD PRIMARY KEY (`id_cartao`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `fk_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cartaocredito`
--
ALTER TABLE `cartaocredito`
  MODIFY `id_cartao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cartaocredito`
--
ALTER TABLE `cartaocredito`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
