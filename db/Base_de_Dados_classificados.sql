-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jul-2019 às 21:26
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `classificados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

CREATE TABLE `anuncios` (
  `anu_iduni` int(11) NOT NULL,
  `anu_iduni_usu` int(11) NOT NULL,
  `anu_iduni_cat` int(11) NOT NULL,
  `anu_dctit` varchar(100) NOT NULL,
  `anu_dc` text NOT NULL,
  `anu_vr` float NOT NULL,
  `anu_dcest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`anu_iduni`, `anu_iduni_usu`, `anu_iduni_cat`, `anu_dctit`, `anu_dc`, `anu_vr`, `anu_dcest`) VALUES
(2, 1, 1, 'Hublot Editado', 'Descubra o mundo dos relÃ³gios suiÃ§os de luxo para homem e mulher. RelÃ³gios Modernos. RelÃ³gios ClÃ¡ssicos. EdiÃ§Ãµes Ãšnicas. EdiÃ§Ãµes Limitadas. RelÃ³gios de Luxo. Categorias: ColeÃ§Ã£o, TÃ©cnica Artesanal, Boutiques.', 5000, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `cat_iduni` int(11) NOT NULL,
  `cat_nm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`cat_iduni`, `cat_nm`) VALUES
(1, 'RELOGIOS'),
(2, 'ROUPAS'),
(5, 'ELETRONICOS'),
(6, 'CARROS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `img_iduni` int(11) NOT NULL,
  `img_iduni_anu` int(11) NOT NULL,
  `img_url` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_iduni` int(11) NOT NULL,
  `usu_nm` varchar(100) NOT NULL,
  `usu_dceml` varchar(100) NOT NULL,
  `usu_dcsnh` varchar(32) NOT NULL,
  `usu_nrtel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usu_iduni`, `usu_nm`, `usu_dceml`, `usu_dcsnh`, `usu_nrtel`) VALUES
(1, 'Leandro Babeles', 'leandrobabeles@gmail.com', '7746000b1e41a04f71b4ca6cf75d8fe5', '27998490701');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`anu_iduni`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cat_iduni`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`img_iduni`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_iduni`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `anu_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `img_iduni` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
