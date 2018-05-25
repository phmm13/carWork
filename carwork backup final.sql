-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Maio-2018 às 06:10
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carwork`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cadastro_cliente`
-- (See below for the actual view)
--
CREATE TABLE `cadastro_cliente` (
`Nome do cliente` varchar(45)
,`E-mail` varchar(45)
,`Telefone` varchar(11)
,`ID Cliente` int(11)
,`ID Carro` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `id_carro` int(11) NOT NULL,
  `ano_carro` varchar(45) NOT NULL,
  `versao_id_versao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`id_carro`, `ano_carro`, `versao_id_versao`) VALUES
(5, '2017', 31),
(6, '2010', 60),
(7, '2001', 98),
(8, '2018', 91),
(9, '2008', 84),
(10, '123132312', 41);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro_cliente`
--

CREATE TABLE `carro_cliente` (
  `carro_id_carro` int(11) NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carro_cliente`
--

INSERT INTO `carro_cliente` (`carro_id_carro`, `cliente_id_cliente`) VALUES
(5, 4),
(6, 6),
(7, 5),
(8, 7),
(9, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(45) NOT NULL,
  `telefone_cliente` varchar(11) DEFAULT NULL,
  `email_cliente` varchar(45) DEFAULT NULL,
  `ind_ativo` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `telefone_cliente`, `email_cliente`, `ind_ativo`) VALUES
(4, 'Pedro Henrique', NULL, 'pedromarcelino699@gmail.com', b'0'),
(5, 'Maria da silva', NULL, NULL, b'0'),
(6, 'Carlos André', '35409080', 'carlos123@gmail.com', b'0'),
(7, 'Ranielle de Moraes Ferreira', NULL, 'raniellef@outlook.com', b'0'),
(8, 'Joao Pedro', NULL, 'jpalvesc@hotmail.com', b'0'),
(9, 'Lucas Santiago', '981314151', NULL, b'0'),
(10, 'Filipe Sabino', '35846981', NULL, b'0'),
(11, 'Vitor Gabriel', '983043450', NULL, b'0'),
(12, 'Pedro 2', '2231', 'dsadqawe@teste', b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `oficina_id_oficina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `cep`, `logradouro`, `bairro`, `complemento`, `numero`, `oficina_id_oficina`) VALUES
(18, '72477533', 'SIA Q 3 C ', 'SIA', 'Q 3 C', 3, 13),
(19, '73684486', 'SQS 414 BLOCO C ', 'ASA SUL', 'LOJA  42', 42, 14),
(20, '72478972', '\n								QNL 0 CONJUNTO F', 'TAGUATINGA SUL', 'LOJA 08 ', 8, 15),
(22, '73684486', 'SQS 414 BLOCO C ', 'ASA SUL', 'LOJA  42', 42, 14),
(23, '72477533', 'SIA Q 3 C ', 'SIA', 'Q 3 C', 3, 13),
(24, '70568054', 'SIA Trecho 2 - Lote 1750 ', 'SIA', 'Lote 1750', 1750, 10),
(25, '145', 'teste2', 'bairro teste', '2', 44, 16);

-- --------------------------------------------------------

--
-- Stand-in structure for view `info`
-- (See below for the actual view)
--
CREATE TABLE `info` (
`Nome do cliente` varchar(45)
,`E-mail` varchar(45)
,`Telefone` varchar(11)
,`ID Cliente` int(11)
,`ID do carro` int(11)
,`Versao do carro` varchar(45)
,`Modelo do carro` varchar(45)
,`Marca do carro` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nome_marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id_marca`, `nome_marca`) VALUES
(1, 'Fiat'),
(2, 'Hyundai'),
(3, 'Volkswagem'),
(4, 'BMW'),
(5, 'Audi'),
(6, 'teste'),
(7, 'teste23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `nome_modelo` varchar(45) NOT NULL,
  `marca_id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `nome_modelo`, `marca_id_marca`) VALUES
(1, 'Mobi', 1),
(2, 'Argo', 1),
(3, 'Uno', 1),
(4, 'Siena', 1),
(5, 'Strada', 1),
(6, 'Fiorino', 1),
(7, 'HB20', 2),
(8, 'IX35', 2),
(9, 'Creta', 2),
(10, 'i30', 2),
(11, 'Azera', 2),
(12, 'Elantra', 2),
(13, 'Gol', 3),
(14, 'Up', 3),
(15, 'Jetta', 3),
(16, 'Polo', 3),
(17, 'Fox', 3),
(18, 'Golf', 3),
(19, '120i', 4),
(20, '140i', 4),
(21, '320i', 4),
(22, '528i', 4),
(23, 'M4', 4),
(24, 'X4', 4),
(25, 'A1', 5),
(26, 'A5', 5),
(27, 'RS5', 5),
(28, 'RS7', 5),
(29, 'TT', 5),
(30, 'Q3', 5),
(31, 'testeModelo', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oficina`
--

CREATE TABLE `oficina` (
  `id_oficina` int(11) NOT NULL,
  `tipo_oficina_id_tipo_oficina` int(11) NOT NULL,
  `nome_oficina` varchar(40) NOT NULL,
  `telefone_oficina` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oficina`
--

INSERT INTO `oficina` (`id_oficina`, `tipo_oficina_id_tipo_oficina`, `nome_oficina`, `telefone_oficina`) VALUES
(10, 4, 'Oficina do seu zé', '35954878'),
(13, 4, 'Plaza motors', '32524080'),
(14, 6, 'Oficina pague menos', '35955388'),
(15, 7, 'Sérvulo car', '33541432'),
(16, 9, 'Freedom honda', '32514879'),
(17, 6, 'teste234', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oficina_carro`
--

CREATE TABLE `oficina_carro` (
  `oficina_id_oficina` int(11) NOT NULL,
  `carro_id_carro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oficina_carro`
--

INSERT INTO `oficina_carro` (`oficina_id_oficina`, `carro_id_carro`) VALUES
(10, 5),
(10, 6),
(13, 6),
(13, 8),
(13, 9),
(14, 5),
(15, 7),
(16, 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ranking_montadoras`
-- (See below for the actual view)
--
CREATE TABLE `ranking_montadoras` (
`Nome Marca` varchar(45)
,`Quantidade de modelos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ranking_oficinas`
-- (See below for the actual view)
--
CREATE TABLE `ranking_oficinas` (
`Oficina` varchar(40)
,`Quantidade de Veiculos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico_oficina`
--

CREATE TABLE `servico_oficina` (
  `servico_id_servico` int(11) NOT NULL,
  `oficina_id_oficina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico_oficina`
--

INSERT INTO `servico_oficina` (`servico_id_servico`, `oficina_id_oficina`) VALUES
(8, 16),
(9, 14),
(10, 10),
(10, 16),
(11, 10),
(11, 15),
(12, 15),
(13, 15),
(14, 13),
(15, 10),
(15, 13),
(17, 10),
(17, 13),
(18, 14),
(19, 14),
(20, 14),
(20, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_oficina`
--

CREATE TABLE `tipo_oficina` (
  `id_tipo_oficina` int(11) NOT NULL,
  `des_oficina` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_oficina`
--

INSERT INTO `tipo_oficina` (`id_tipo_oficina`, `des_oficina`) VALUES
(4, 'Autorizada'),
(5, 'Oficina'),
(6, 'Concessionária'),
(7, 'Autorizada'),
(8, 'Oficina'),
(9, 'Concessionária'),
(10, 'teste23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_servico`
--

CREATE TABLE `tipo_servico` (
  `id_tipo_servico` int(11) NOT NULL,
  `des_tipo_servico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_servico`
--

INSERT INTO `tipo_servico` (`id_tipo_servico`, `des_tipo_servico`) VALUES
(8, 'Auto elétrica'),
(9, 'Suspensão'),
(10, 'Freio'),
(11, 'Regulagem Eletrônica'),
(12, 'Borracharia'),
(13, 'Troca de óleo'),
(14, 'Mecânica em geral'),
(15, 'Suspensão'),
(16, 'Freio'),
(17, 'Regulagem Eletrônica'),
(18, 'Borracharia'),
(19, 'Troca de óleo'),
(20, 'Mecânica em geral'),
(21, 'teste2344');

-- --------------------------------------------------------

--
-- Estrutura da tabela `versao`
--

CREATE TABLE `versao` (
  `id_versao` int(11) NOT NULL,
  `nome_versao` varchar(45) NOT NULL,
  `modelo_id_modelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `versao`
--

INSERT INTO `versao` (`id_versao`, `nome_versao`, `modelo_id_modelo`) VALUES
(31, 'Mobi Easy', 1),
(32, 'Mobi Like', 1),
(33, 'Mobi Way', 1),
(34, 'Mobi Drive', 1),
(35, 'Mobi Drive GSR', 1),
(36, 'Argo Drive', 2),
(37, 'Argo Drive GSR', 2),
(38, 'Argo Precision', 2),
(39, 'Argo HGT', 2),
(40, 'Uno Drive', 3),
(41, 'Uno Way', 3),
(42, 'Uno Way GSR', 3),
(43, 'Uno Sporting', 3),
(44, 'Uno Sporting GSR', 3),
(45, 'Siena Attractive', 4),
(46, 'Siena Essence', 4),
(47, 'Siena Tetratuel', 4),
(48, 'Strada Working', 5),
(50, 'Strada Hard Working CE', 5),
(51, 'Strada Hard Working CD', 5),
(52, 'Strada Adventure CE', 5),
(53, 'Strada Adventure CD', 5),
(54, 'Fiorino EVO', 6),
(55, 'Fiorino Hard Working', 6),
(56, 'HB20 Confort', 7),
(57, 'HB20 Confort Plus', 7),
(58, 'HB20 Confort com BlueMedia', 7),
(59, 'HB20 Confort Plus com BlueMedia', 7),
(60, 'IX35 Modelo de entrada', 8),
(61, 'IX35 GL', 8),
(62, 'IX35 GLS', 8),
(63, 'Creta Attitude', 9),
(64, 'Creta Pulse', 9),
(65, 'I30 Modelo de Entrada', 10),
(66, 'I30 GLS', 10),
(67, 'I30 Versão Limitada', 10),
(68, 'Azera Completo', 11),
(69, 'New Elantra Completo', 12),
(70, 'Gol TrendLine', 13),
(71, 'Gol Track', 13),
(72, 'Up! Take Up', 14),
(73, 'Up! Move Up', 14),
(74, 'Up! Cross Up', 14),
(75, 'Up! Pepper', 14),
(76, 'Polo 1.0', 16),
(77, 'Polo MSI', 16),
(78, 'Comfortline TSI', 16),
(79, 'Highline  TSI', 16),
(80, 'Xtreme', 17),
(81, 'Connect', 17),
(82, 'Comfortline', 18),
(83, 'Highline', 18),
(84, 'GTI', 18),
(85, '118 Sport', 19),
(86, 'M140i ', 20),
(87, '320 Sport', 21),
(88, '320 Sport GP', 21),
(89, '320 M Sport', 21),
(90, '528I M Sport', 22),
(91, 'M4 Sport', 23),
(92, 'X4 M Sport', 24),
(93, 'A1 SportBack', 25),
(94, 'A5 SportBack', 26),
(95, 'RS5 Coupe', 26),
(96, 'RS7 Sportback Performace', 27),
(97, 'TT Coupe', 29),
(98, 'TT Roadster', 29),
(99, 'TTS Coupe', 29),
(100, 'TTS Roadster', 29),
(101, 'TT  RS', 29),
(102, 'teste2341', 2);

-- --------------------------------------------------------

--
-- Structure for view `cadastro_cliente`
--
DROP TABLE IF EXISTS `cadastro_cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cadastro_cliente`  AS  select `cli`.`nome_cliente` AS `Nome do cliente`,`cli`.`email_cliente` AS `E-mail`,`cli`.`telefone_cliente` AS `Telefone`,`cli`.`id_cliente` AS `ID Cliente`,`carcli`.`carro_id_carro` AS `ID Carro` from (`cliente` `cli` join `carro_cliente` `carcli` on((`cli`.`id_cliente` = `carcli`.`cliente_id_cliente`))) order by `carcli`.`cliente_id_cliente` desc ;

-- --------------------------------------------------------

--
-- Structure for view `info`
--
DROP TABLE IF EXISTS `info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `info`  AS  select `cli`.`nome_cliente` AS `Nome do cliente`,`cli`.`email_cliente` AS `E-mail`,`cli`.`telefone_cliente` AS `Telefone`,`carcli`.`cliente_id_cliente` AS `ID Cliente`,`car`.`id_carro` AS `ID do carro`,`v`.`nome_versao` AS `Versao do carro`,`model`.`nome_modelo` AS `Modelo do carro`,`m`.`nome_marca` AS `Marca do carro` from (((((`cliente` `cli` left join `carro_cliente` `carcli` on((`cli`.`id_cliente` = `carcli`.`cliente_id_cliente`))) left join `carro` `car` on((`carcli`.`carro_id_carro` = `car`.`id_carro`))) left join `versao` `v` on((`v`.`id_versao` = `car`.`versao_id_versao`))) left join `modelo` `model` on((`model`.`id_modelo` = `v`.`modelo_id_modelo`))) left join `marca` `m` on((`m`.`id_marca` = `model`.`marca_id_marca`))) order by `car`.`id_carro` desc ;

-- --------------------------------------------------------

--
-- Structure for view `ranking_montadoras`
--
DROP TABLE IF EXISTS `ranking_montadoras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ranking_montadoras`  AS  select `m`.`nome_marca` AS `Nome Marca`,count(`mm`.`id_modelo`) AS `Quantidade de modelos` from (`marca` `m` join `modelo` `mm` on((`mm`.`marca_id_marca` = `m`.`id_marca`))) group by `m`.`id_marca` order by count(`mm`.`id_modelo`) desc ;

-- --------------------------------------------------------

--
-- Structure for view `ranking_oficinas`
--
DROP TABLE IF EXISTS `ranking_oficinas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ranking_oficinas`  AS  select `o`.`nome_oficina` AS `Oficina`,count(`oc`.`carro_id_carro`) AS `Quantidade de Veiculos` from ((`oficina` `o` join `oficina_carro` `oc` on((`o`.`id_oficina` = `oc`.`oficina_id_oficina`))) join `carro` `c` on((`oc`.`carro_id_carro` = `c`.`id_carro`))) group by `o`.`id_oficina` order by count(`o`.`id_oficina`) desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_carro`),
  ADD KEY `fk_carro_versão1_idx` (`versao_id_versao`);

--
-- Indexes for table `carro_cliente`
--
ALTER TABLE `carro_cliente`
  ADD PRIMARY KEY (`carro_id_carro`,`cliente_id_cliente`),
  ADD KEY `fk_Carro_has_Cliente_Cliente1_idx` (`cliente_id_cliente`),
  ADD KEY `fk_Carro_has_Cliente_Carro_idx` (`carro_id_carro`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_Cliente_UNIQUE` (`id_cliente`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD UNIQUE KEY `ID_OFICINA_UNIQUE` (`id_endereco`),
  ADD KEY `fk_Endereço_Oficina1_idx` (`oficina_id_oficina`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`),
  ADD KEY `fk_modelo_marca1_idx` (`marca_id_marca`);

--
-- Indexes for table `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`id_oficina`),
  ADD KEY `fk_Oficina_Tipo de Oficina1_idx` (`tipo_oficina_id_tipo_oficina`);

--
-- Indexes for table `oficina_carro`
--
ALTER TABLE `oficina_carro`
  ADD PRIMARY KEY (`oficina_id_oficina`,`carro_id_carro`),
  ADD KEY `fk_Oficina_has_Carro_Carro1_idx` (`carro_id_carro`),
  ADD KEY `fk_Oficina_has_Carro_Oficina1_idx` (`oficina_id_oficina`);

--
-- Indexes for table `servico_oficina`
--
ALTER TABLE `servico_oficina`
  ADD PRIMARY KEY (`servico_id_servico`,`oficina_id_oficina`),
  ADD KEY `fk_tipo_servico_has_oficina_oficina1_idx` (`oficina_id_oficina`),
  ADD KEY `fk_tipo_servico_has_oficina_tipo_servico1_idx` (`servico_id_servico`);

--
-- Indexes for table `tipo_oficina`
--
ALTER TABLE `tipo_oficina`
  ADD PRIMARY KEY (`id_tipo_oficina`);

--
-- Indexes for table `tipo_servico`
--
ALTER TABLE `tipo_servico`
  ADD PRIMARY KEY (`id_tipo_servico`);

--
-- Indexes for table `versao`
--
ALTER TABLE `versao`
  ADD PRIMARY KEY (`id_versao`),
  ADD KEY `fk_Versão_Modelo1_idx` (`modelo_id_modelo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carro`
--
ALTER TABLE `carro`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oficina`
--
ALTER TABLE `oficina`
  MODIFY `id_oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tipo_oficina`
--
ALTER TABLE `tipo_oficina`
  MODIFY `id_tipo_oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tipo_servico`
--
ALTER TABLE `tipo_servico`
  MODIFY `id_tipo_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `versao`
--
ALTER TABLE `versao`
  MODIFY `id_versao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `fk_carro_versão1` FOREIGN KEY (`versao_id_versao`) REFERENCES `versao` (`id_versao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `carro_cliente`
--
ALTER TABLE `carro_cliente`
  ADD CONSTRAINT `fk_Carro_has_Cliente_Carro` FOREIGN KEY (`carro_id_carro`) REFERENCES `carro` (`id_carro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Carro_has_Cliente_Cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_Endereço_Oficina1` FOREIGN KEY (`oficina_id_oficina`) REFERENCES `oficina` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_modelo_marca1` FOREIGN KEY (`marca_id_marca`) REFERENCES `marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `oficina`
--
ALTER TABLE `oficina`
  ADD CONSTRAINT `fk_Oficina_Tipo de Oficina1` FOREIGN KEY (`tipo_oficina_id_tipo_oficina`) REFERENCES `tipo_oficina` (`id_tipo_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `oficina_carro`
--
ALTER TABLE `oficina_carro`
  ADD CONSTRAINT `fk_Oficina_has_Carro_Carro1` FOREIGN KEY (`carro_id_carro`) REFERENCES `carro` (`id_carro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Oficina_has_Carro_Oficina1` FOREIGN KEY (`oficina_id_oficina`) REFERENCES `oficina` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servico_oficina`
--
ALTER TABLE `servico_oficina`
  ADD CONSTRAINT `fk_tipo_servico_has_oficina_oficina1` FOREIGN KEY (`oficina_id_oficina`) REFERENCES `oficina` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_servico_has_oficina_tipo_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `tipo_servico` (`id_tipo_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `versao`
--
ALTER TABLE `versao`
  ADD CONSTRAINT `fk_Versão_Modelo1` FOREIGN KEY (`modelo_id_modelo`) REFERENCES `modelo` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
