-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/10/2024 às 01:37
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
-- Banco de dados: `automotiv`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `NOME`, `TELEFONE`, `EMAIL`) VALUES
(1, 'João Silva', '123456789', 'joao.silva@email.com'),
(2, 'Maria Oliveira', '987654321', 'maria.oliveira@email.com'),
(3, 'Pedro Santos', '456123789', 'pedro.santos@email.com'),
(4, 'Ana Lima', '321654987', 'ana.lima@email.com'),
(5, 'Carlos Pereira', '789123456', 'carlos.pereira@email.com'),
(6, 'Fernanda Costa', '654789321', 'fernanda.costa@email.com'),
(7, 'Ricardo Almeida', '159753486', 'ricardo.almeida@email.com'),
(8, 'Juliana Martins', '753951852', 'juliana.martins@email.com'),
(9, 'Diego Ferreira', '951852753', 'diego.ferreira@email.com'),
(10, 'Patrícia Gomes', '258147369', 'patricia.gomes@email.com'),
(11, 'Bruno Rocha', '369258147', 'bruno.rocha@email.com'),
(12, 'Larissa Souza', '741852963', 'larissa.souza@email.com'),
(13, 'Gabriel Almeida', '852963741', 'gabriel.almeida@email.com'),
(14, 'Tatiane Martins', '147258369', 'tatiane.martins@email.com'),
(15, 'Lucas Ferreira', '963258741', 'lucas.ferreira@email.com'),
(16, 'Isabella Dias', '321987654', 'isabella.dias@email.com'),
(17, 'Vinícius Santos', '654321987', 'vinicius.santos@email.com'),
(18, 'Camila Nascimento', '159456753', 'camila.nascimento@email.com'),
(19, 'Felipe Ribeiro', '753159486', 'felipe.ribeiro@email.com'),
(20, 'Aline Oliveira', '852147963', 'aline.oliveira@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_ordem_servico`
--

CREATE TABLE `item_ordem_servico` (
  `ID_ITEM_ORDEM` int(11) NOT NULL,
  `ID_ORDEM` int(11) DEFAULT NULL,
  `ID_SERVICO` int(11) DEFAULT NULL,
  `QUANTIDADE` int(11) NOT NULL,
  `PRECO` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_ordem_servico`
--

INSERT INTO `item_ordem_servico` (`ID_ITEM_ORDEM`, `ID_ORDEM`, `ID_SERVICO`, `QUANTIDADE`, `PRECO`) VALUES
(11, NULL, 1, 1, 150.00),
(12, NULL, 2, 1, 100.00),
(13, NULL, 3, 1, 200.00),
(14, NULL, 4, 2, 100.00),
(15, NULL, 5, 1, 300.00),
(16, NULL, 6, 1, 400.00),
(17, NULL, 1, 2, 300.00),
(18, NULL, 2, 1, 100.00),
(19, NULL, 3, 1, 200.00),
(20, NULL, 4, 1, 75.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mecanico`
--

CREATE TABLE `mecanico` (
  `ID_MECANICO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `ESPECIALIDADE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mecanico`
--

INSERT INTO `mecanico` (`ID_MECANICO`, `NOME`, `ESPECIALIDADE`) VALUES
(1, 'Carlos Souza', 'Mecânica Geral'),
(2, 'Fernanda Lima', 'Eletrônica Automotiva'),
(3, 'João Silva', 'Suspensão e Direção'),
(4, 'Mariana Oliveira', 'Injeção Eletrônica'),
(5, 'Ricardo Almeida', 'Motor e Transmissão');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ordem_servico`
--

CREATE TABLE `ordem_servico` (
  `ID_ORDEM` int(11) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  `ID_VEICULO` int(11) DEFAULT NULL,
  `ID_MECANICO` int(11) DEFAULT NULL,
  `DATA_ABERTURA` date NOT NULL,
  `DATA_CONCLUSAO` date DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT 'Em andamento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ordem_servico`
--

INSERT INTO `ordem_servico` (`ID_ORDEM`, `ID_CLIENTE`, `ID_VEICULO`, `ID_MECANICO`, `DATA_ABERTURA`, `DATA_CONCLUSAO`, `STATUS`) VALUES
(21, 1, 118, 1, '2024-10-01', '2024-10-03', 'Concluída'),
(22, 2, 119, 2, '2024-10-02', NULL, 'Em andamento'),
(23, 3, 120, 3, '2024-10-05', NULL, 'Em andamento'),
(24, 4, 121, 4, '2024-10-07', '2024-10-09', 'Concluída'),
(25, 5, 122, 5, '2024-10-10', NULL, 'Em andamento'),
(26, 6, 123, 1, '2024-10-12', NULL, 'Em andamento'),
(27, 11, 124, 2, '2024-10-14', '2024-10-16', 'Concluída'),
(28, 9, 125, 3, '2024-10-15', NULL, 'Em andamento'),
(29, 14, 126, 4, '2024-10-18', '2024-10-20', 'Concluída'),
(30, 15, 127, 5, '2024-10-20', NULL, 'Em andamento'),
(31, 1, 118, 1, '2024-10-01', '2024-10-03', 'Concluída'),
(32, 2, 119, 2, '2024-10-02', NULL, 'Em andamento'),
(33, 3, 120, 3, '2024-10-05', NULL, 'Em andamento'),
(34, 4, 121, 4, '2024-10-07', '2024-10-09', 'Concluída'),
(35, 5, 122, 5, '2024-10-10', NULL, 'Em andamento'),
(36, 6, 123, 1, '2024-10-12', NULL, 'Em andamento'),
(37, 11, 124, 2, '2024-10-14', '2024-10-16', 'Concluída'),
(38, 9, 125, 3, '2024-10-15', NULL, 'Em andamento'),
(39, 14, 126, 4, '2024-10-18', '2024-10-20', 'Concluída'),
(40, 15, 127, 5, '2024-10-20', NULL, 'Em andamento'),
(41, 1, 118, 1, '2024-10-01', '2024-10-03', 'Concluída'),
(42, 2, 119, 2, '2024-10-02', NULL, 'Em andamento'),
(43, 3, 120, 3, '2024-10-05', NULL, 'Em andamento'),
(44, 4, 121, 4, '2024-10-07', '2024-10-09', 'Concluída'),
(45, 5, 122, 5, '2024-10-10', NULL, 'Em andamento'),
(46, 6, 123, 1, '2024-10-12', NULL, 'Em andamento'),
(47, 11, 124, 2, '2024-10-14', '2024-10-16', 'Concluída'),
(48, 9, 125, 3, '2024-10-15', NULL, 'Em andamento'),
(49, 14, 126, 4, '2024-10-18', '2024-10-20', 'Concluída'),
(50, 15, 127, 5, '2024-10-20', NULL, 'Em andamento');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `ID_SERVICO` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `PRECO` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`ID_SERVICO`, `DESCRICAO`, `PRECO`) VALUES
(1, 'Troca de Óleo', 150.00),
(2, 'Alinhamento e Balanceamento', 100.00),
(3, 'Substituição de Pastilhas de Freio', 200.00),
(4, 'Troca de Filtro de Ar', 50.00),
(5, 'Revisão Completa', 300.00),
(6, 'Troca de Pneu', 400.00),
(7, 'Serviço de Descarbonização', 250.00),
(8, 'Instalação de Sistema de Som', 500.00),
(9, 'Verificação de Suspensão', 75.00),
(10, 'Limpeza de Injetores', 180.00),
(11, 'Troca de Óleo', 150.00),
(12, 'Alinhamento e Balanceamento', 100.00),
(13, 'Substituição de Pastilhas de Freio', 200.00),
(14, 'Troca de Filtro de Ar', 50.00),
(15, 'Revisão Completa', 300.00),
(16, 'Troca de Pneu', 400.00),
(17, 'Serviço de Descarbonização', 250.00),
(18, 'Instalação de Sistema de Som', 500.00),
(19, 'Verificação de Suspensão', 75.00),
(20, 'Limpeza de Injetores', 180.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `ID_VEICULO` int(11) NOT NULL,
  `PLACA` varchar(20) NOT NULL,
  `MARCA` varchar(50) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `ANO` int(11) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`ID_VEICULO`, `PLACA`, `MARCA`, `MODELO`, `ANO`, `ID_CLIENTE`) VALUES
(118, 'ABC1D23', 'Ford', 'Fiesta', 2020, 1),
(119, 'XYZ4W56', 'Chevrolet', 'Onix', 2021, 2),
(120, 'DEF7G89', 'Volkswagen', 'Gol', 2019, 3),
(121, 'GHI0J12', 'Hyundai', 'HB20', 2022, 4),
(122, 'JKL3M45', 'Toyota', 'Corolla', 2023, 5),
(123, 'MNO6P78', 'Honda', 'Civic', 2018, 6),
(124, 'QRS9T01', 'Nissan', 'Kicks', 2022, 7),
(125, 'UVW2X34', 'Fiat', 'Palio', 2017, 8),
(126, 'YZA5B67', 'Renault', 'Duster', 2020, 9),
(127, 'BCD8C90', 'Peugeot', '208', 2021, 10),
(128, 'EFG1D23', 'Kia', 'Seltos', 2023, 11),
(129, 'HIJ4E56', 'Subaru', 'Crosstrek', 2020, 12),
(130, 'KLM7F89', 'Mazda', 'CX-5', 2021, 13),
(131, 'NOP0G12', 'Chrysler', '300', 2022, 14),
(132, 'QRS3H45', 'Dodge', 'Charger', 2019, 15),
(133, 'TUV6I78', 'Mercedes-Benz', 'C-Class', 2023, 16),
(134, 'WXY9J01', 'BMW', '3 Series', 2020, 17),
(135, 'ZAB2K34', 'Audi', 'A4', 2021, 18),
(136, 'CDE5L67', 'Jaguar', 'XE', 2022, 19),
(137, 'FGH8M90', 'Land Rover', 'Evoque', 2020, 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Índices de tabela `item_ordem_servico`
--
ALTER TABLE `item_ordem_servico`
  ADD PRIMARY KEY (`ID_ITEM_ORDEM`),
  ADD KEY `ID_ORDEM` (`ID_ORDEM`),
  ADD KEY `ID_SERVICO` (`ID_SERVICO`);

--
-- Índices de tabela `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`ID_MECANICO`);

--
-- Índices de tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  ADD PRIMARY KEY (`ID_ORDEM`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`),
  ADD KEY `ID_VEICULO` (`ID_VEICULO`),
  ADD KEY `ID_MECANICO` (`ID_MECANICO`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`ID_SERVICO`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`ID_VEICULO`),
  ADD UNIQUE KEY `PLACA` (`PLACA`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `item_ordem_servico`
--
ALTER TABLE `item_ordem_servico`
  MODIFY `ID_ITEM_ORDEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `mecanico`
--
ALTER TABLE `mecanico`
  MODIFY `ID_MECANICO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  MODIFY `ID_ORDEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `ID_SERVICO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `ID_VEICULO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `item_ordem_servico`
--
ALTER TABLE `item_ordem_servico`
  ADD CONSTRAINT `item_ordem_servico_ibfk_1` FOREIGN KEY (`ID_ORDEM`) REFERENCES `ordem_servico` (`ID_ORDEM`),
  ADD CONSTRAINT `item_ordem_servico_ibfk_2` FOREIGN KEY (`ID_SERVICO`) REFERENCES `servico` (`ID_SERVICO`);

--
-- Restrições para tabelas `ordem_servico`
--
ALTER TABLE `ordem_servico`
  ADD CONSTRAINT `ordem_servico_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`),
  ADD CONSTRAINT `ordem_servico_ibfk_2` FOREIGN KEY (`ID_VEICULO`) REFERENCES `veiculo` (`ID_VEICULO`),
  ADD CONSTRAINT `ordem_servico_ibfk_3` FOREIGN KEY (`ID_MECANICO`) REFERENCES `mecanico` (`ID_MECANICO`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
