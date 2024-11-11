-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/10/2024 às 01:06
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
-- Banco de dados: `lojadb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_JOGO` int(11) DEFAULT NULL,
  `ID_PERIFERICO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`ID_CATEGORIA`, `ID_JOGO`, `ID_PERIFERICO`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 5),
(16, 1, 6),
(17, 2, 7),
(18, 3, 8),
(19, 4, 9),
(20, 5, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE `genero` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `GENERO_JOGO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `genero`
--

INSERT INTO `genero` (`ID_CATEGORIA`, `GENERO_JOGO`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'RPG'),
(4, 'Esportes'),
(5, 'Estratégia'),
(6, 'Simulação'),
(7, 'Corrida'),
(8, 'Tiro'),
(9, 'Plataforma'),
(10, 'Puzzle'),
(11, 'Terror'),
(12, 'Musical'),
(13, 'Luta'),
(14, 'Stealth'),
(15, 'MOBA'),
(16, 'MMORPG'),
(17, 'Sandbox'),
(18, 'Survival'),
(19, 'Battle Royale'),
(20, 'Roguelike');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID_JOGO` int(11) NOT NULL,
  `NOME_JOGO` varchar(255) NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `DATA_LANCAMENTO` date NOT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  `ID_GENERO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`ID_JOGO`, `NOME_JOGO`, `VALOR`, `DATA_LANCAMENTO`, `ID_CATEGORIA`, `ID_GENERO`) VALUES
(1, 'Game Aventura 1', 199.99, '2023-03-12', 2, 1),
(2, 'Game Ação 2', 149.99, '2022-11-08', 1, 2),
(3, 'Game RPG 3', 249.99, '2023-05-19', 3, 3),
(4, 'Game Esportes 4', 99.99, '2023-02-22', 4, 4),
(5, 'Game Estratégia 5', 129.99, '2023-06-13', 5, 5),
(6, 'Game Simulação 6', 189.99, '2023-01-20', 6, NULL),
(7, 'Game Corrida 7', 219.99, '2022-10-15', 7, NULL),
(8, 'Game Tiro 8', 179.99, '2023-07-30', 8, NULL),
(9, 'Game Plataforma 9', 129.99, '2023-09-10', 9, NULL),
(10, 'Game Puzzle 10', 89.99, '2023-04-25', 10, NULL),
(11, 'Game Terror 11', 149.99, '2023-08-12', 11, NULL),
(12, 'Game Musical 12', 79.99, '2023-03-18', 12, NULL),
(13, 'Game Luta 13', 139.99, '2023-06-05', 13, NULL),
(14, 'Game Stealth 14', 199.99, '2022-12-01', 14, NULL),
(15, 'Game MOBA 15', 159.99, '2023-07-22', 15, NULL),
(16, 'Game MMORPG 16', 249.99, '2023-02-10', 16, NULL),
(17, 'Game Sandbox 17', 299.99, '2023-05-29', 17, NULL),
(18, 'Game Survival 18', 199.99, '2023-08-05', 18, NULL),
(19, 'Game Battle Royale 19', 169.99, '2023-09-15', 19, NULL),
(20, 'Game Roguelike 20', 109.99, '2023-10-03', 20, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `perifericos`
--

CREATE TABLE `perifericos` (
  `ID_PERIFERICO` int(11) NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `NOME_PERIFERICO` varchar(255) NOT NULL,
  `FABRICANTE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perifericos`
--

INSERT INTO `perifericos` (`ID_PERIFERICO`, `VALOR`, `NOME_PERIFERICO`, `FABRICANTE`) VALUES
(1, 299.99, 'Teclado Gamer', 'Logitech'),
(2, 199.99, 'Mouse Gamer', 'Razer'),
(3, 399.99, 'Headset Gamer', 'HyperX'),
(4, 499.99, 'Monitor 144Hz', 'Samsung'),
(5, 599.99, 'Cadeira Gamer', 'DXRacer'),
(6, 159.99, 'Mouse Pad RGB', 'Corsair'),
(7, 89.99, 'Controle USB', 'Logitech'),
(8, 249.99, 'Microfone Condensador', 'Blue'),
(9, 349.99, 'Webcam HD', 'Logitech'),
(10, 129.99, 'Alto-Falantes', 'Creative'),
(11, 199.99, 'Fone de Ouvido Bluetooth', 'Sony'),
(12, 399.99, 'Placa de Captura', 'Elgato'),
(13, 499.99, 'Suporte para Monitor', 'Ergotron'),
(14, 79.99, 'Teclado Mecânico', 'Redragon'),
(15, 299.99, 'Cadeira de Escritório', 'Aorus'),
(16, 249.99, 'Hub USB', 'Anker'),
(17, 89.99, 'Fone de Ouvido Com Fio', 'JBL'),
(18, 299.99, 'Pedal para Jogos', 'Thrustmaster'),
(19, 499.99, 'Monitor 27\" 4K', 'LG'),
(20, 149.99, 'Estabilizador', 'SMS');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `DATA_CADASTRO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOME`, `EMAIL`, `SENHA`, `DATA_CADASTRO`) VALUES
(1, 'Fernanda Martins', 'fernanda@email.com', 'senha91011', '2023-06-02'),
(2, 'Lucas Pereira', 'lucas@email.com', 'senha1213', '2023-06-15'),
(3, 'Juliana Mendes', 'juliana@email.com', 'senha1415', '2023-07-08'),
(4, 'Rafael Almeida', 'rafael@email.com', 'senha1617', '2023-07-21'),
(5, 'Beatriz Souza', 'beatriz@email.com', 'senha1819', '2023-08-03'),
(6, 'Thiago Santos', 'thiago@email.com', 'senha2021', '2023-08-16'),
(7, 'Patrícia Ferreira', 'patricia@email.com', 'senha2223', '2023-09-04'),
(8, 'Rodrigo Melo', 'rodrigo@email.com', 'senha2425', '2023-09-17'),
(9, 'Gabriela Lima', 'gabriela@email.com', 'senha2627', '2023-09-30'),
(10, 'Vinícius Costa', 'vinicius@email.com', 'senha2829', '2023-10-10'),
(11, 'Carolina Barbosa', 'carolina@email.com', 'senha3031', '2023-10-25'),
(12, 'André Gonçalves', 'andre@email.com', 'senha3233', '2023-11-05'),
(13, 'Paula Miranda', 'paula@email.com', 'senha3435', '2023-11-18'),
(14, 'Gustavo Ribeiro', 'gustavo@email.com', 'senha3637', '2023-12-01'),
(15, 'Isabela Carvalho', 'isabela@email.com', 'senha3839', '2023-12-15'),
(16, 'João Silva', 'joao@email.com', 'senha123', '2023-01-15'),
(17, 'Maria Oliveira', 'maria@email.com', 'senha456', '2023-02-10'),
(18, 'Carlos Souza', 'carlos@email.com', 'senha789', '2023-03-05'),
(19, 'Ana Lima', 'ana@email.com', 'senha1234', '2023-04-12'),
(20, 'Pedro Costa', 'pedro@email.com', 'senha5678', '2023-05-19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `ID_VENDA` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_PERIFERICO` int(11) DEFAULT NULL,
  `ID_JOGO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`ID_VENDA`, `ID_USUARIO`, `ID_PERIFERICO`, `ID_JOGO`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 3),
(3, 3, 3, 2),
(4, 4, 4, 5),
(5, 5, 5, 4),
(6, 6, 6, 1),
(7, 7, 7, 2),
(8, 8, 8, 3),
(9, 9, 9, 4),
(10, 10, 10, 5),
(11, 1, 2, 6),
(12, 2, 3, 7),
(13, 3, 4, 8),
(14, 4, 5, 9),
(15, 5, 6, 10),
(16, 6, 1, 11),
(17, 7, 2, 12),
(18, 8, 3, 13),
(19, 9, 4, 14),
(20, 10, 5, 15);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`),
  ADD KEY `ID_JOGO` (`ID_JOGO`),
  ADD KEY `ID_PERIFERICO` (`ID_PERIFERICO`);

--
-- Índices de tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID_JOGO`),
  ADD KEY `ID_CATEGORIA` (`ID_CATEGORIA`);

--
-- Índices de tabela `perifericos`
--
ALTER TABLE `perifericos`
  ADD PRIMARY KEY (`ID_PERIFERICO`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`ID_VENDA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_PERIFERICO` (`ID_PERIFERICO`),
  ADD KEY `ID_JOGO` (`ID_JOGO`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID_JOGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `perifericos`
--
ALTER TABLE `perifericos`
  MODIFY `ID_PERIFERICO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `ID_VENDA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`ID_JOGO`) REFERENCES `jogo` (`ID_JOGO`),
  ADD CONSTRAINT `categoria_ibfk_2` FOREIGN KEY (`ID_PERIFERICO`) REFERENCES `perifericos` (`ID_PERIFERICO`);

--
-- Restrições para tabelas `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `genero` (`ID_CATEGORIA`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`ID_PERIFERICO`) REFERENCES `perifericos` (`ID_PERIFERICO`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`ID_JOGO`) REFERENCES `jogo` (`ID_JOGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
