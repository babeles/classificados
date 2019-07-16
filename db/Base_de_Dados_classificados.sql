-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jul-2019 às 03:33
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.6

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
(2, 1, 1, 'Hublot Editado', 'Descubra o mundo dos relÃ³gios suiÃ§os de luxo para homem e mulher. RelÃ³gios Modernos. RelÃ³gios ClÃ¡ssicos. EdiÃ§Ãµes Ãšnicas. EdiÃ§Ãµes Limitadas. RelÃ³gios de Luxo. Categorias: ColeÃ§Ã£o, TÃ©cnica Artesanal, Boutiques.', 5000, 2),
(3, 2, 2, 'CAMISETA UOT PRETA MASCULINA', 'CAMISETA 15 X 16, GOLA POLO 100% ALGODÃƒO', 150, 0),
(4, 1, 2, 'Kit 07 Camisetas Masculinas Blusa Camisa Slim Fit Lisa Basic', 'Utilizamos em nossa confecÃ§Ã£o a malha Premium Ultrafine MoulineÂ®, um tecido leve e extremamente confortÃ¡vel, que nÃ£o encolhe na lavagem e nÃ£o desbota.', 150, 0),
(5, 1, 5, 'Celular Samsung Galaxy S10 Preto 128gb Dual Chip Tela 6', 'Smartphone Samsung Galaxy S10 Preto 128GB Dual Chip Tela 6,1\\\\\\\" OctaCore CÃ¢mera Traseira Tripla', 4999, 0),
(6, 2, 5, 'Notebook Dell Inspiron I15-3567-A15C Intel Core i3 4GB 1TB Tela 15,6\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\', 'Desenvolvido para quem busca um notebook de alta qualidade, com design elegante e detalhes que surpreendem. O Notebook Dell Inspiron I15-3567-A15C Ã© a escolha perfeita, seja para uso individual ou para compartilhar com a famÃ­lia, para navegar em redes sociais e sites de compra online ou para se aprofundar nos estudos, o Inspiron I15-3567-A15C Ã© o companheiro perfeito para pessoas criativas, motivando-as a gerar novas ideias. ConstruÃ­do para encaixar em sua rotina e projetado com atenÃ§Ã£o aos detalhes, Ã© a escolha perfeita para seu dia a dia.', 1934, 0),
(7, 2, 6, 'Ferrari', 'Carro esportivo Vermelho', 50000, 0);

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
  `img_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`img_iduni`, `img_iduni_anu`, `img_url`) VALUES
(3, 2, '0d8f0104827f8db9a91c64197947e991.jpg'),
(4, 2, 'b5b909c4330fa19c08e3e35d01bc7c5b.jpg'),
(5, 2, '947142c85a950102d1bb6b107bd24363.jpg'),
(10, 3, 'b284ac138bb794420bc97d981b0f34e0.jpg'),
(11, 4, 'd9978ab4414b2027c33b20a83f463c18.jpg'),
(12, 4, '84907d9c5a01d0019945b132cefc0f8e.jpg'),
(13, 4, '69ea3c45c682357d429afbbdb268b046.jpg'),
(14, 4, '8c8b9bf25c5caf68343576d802484345.jpg'),
(15, 4, '2d8b2b6410fd2ba611eebac14e7df4fa.jpg'),
(16, 4, 'bfa9004395b828cb158ca192563521ad.jpg'),
(17, 4, '5e34c4bcb1b028348bf7b7004f783ab6.jpg'),
(18, 5, '293e95f303ed0ab519044155dda60e9a.jpg'),
(19, 5, '3491f393f0d32c81bbb77e89b937d3db.jpg'),
(20, 5, 'a405a342eade52c5c3400afdb85ac278.jpg'),
(21, 5, '0d0f508b1c0d52ea9c038da7e2882456.jpg'),
(34, 6, 'e9c359d1686a0dc8628c9075ff8ecffa.jpg'),
(35, 6, '099ff837c379e0f6a8a02f4e374fa191.jpg'),
(36, 6, '051e15bb5f24d897bb8db5f00f583e62.jpg'),
(37, 6, '70ad1568f1352622863d695032816d86.jpg'),
(39, 7, 'aa29eadf29b7f6445193d96916ba24e3.jpg'),
(40, 7, '5f9aff0ac77eb8ef5716e913a037dd4c.jpg'),
(41, 7, 'f016a8731f2e21f10bce1295485bbaf5.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_iduni` int(11) NOT NULL,
  `usu_nm` varchar(100) NOT NULL,
  `usu_dcapl` varchar(100) NOT NULL,
  `usu_dceml` varchar(100) NOT NULL,
  `usu_dcsnh` varchar(32) NOT NULL,
  `usu_nrtel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usu_iduni`, `usu_nm`, `usu_dcapl`, `usu_dceml`, `usu_dcsnh`, `usu_nrtel`) VALUES
(1, 'Leandro Babeles', 'Leandro', 'leandrobabeles@gmail.com', '7746000b1e41a04f71b4ca6cf75d8fe5', '27998490701'),
(2, 'Almerindo Urias Franchi Junior', 'Almerindo', 'almerindo_junior2@hotmail.com', '202cb962ac59075b964b07152d234b70', '6666666666');

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
  MODIFY `anu_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `img_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
