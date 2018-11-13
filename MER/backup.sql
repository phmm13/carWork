-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Nov-2018 às 01:24
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
-- Estrutura da tabela `ta_oficina_carro`
--

CREATE TABLE `ta_oficina_carro` (
  `cod_oficina` int(11) NOT NULL,
  `cod_carro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ta_oficina_carro`
--

INSERT INTO `ta_oficina_carro` (`cod_oficina`, `cod_carro`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ta_servico_oficina`
--

CREATE TABLE `ta_servico_oficina` (
  `cod_servico` int(11) NOT NULL,
  `cod_oficina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ta_servico_oficina`
--

INSERT INTO `ta_servico_oficina` (`cod_servico`, `cod_oficina`) VALUES
(21, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_carro`
--

CREATE TABLE `tb_carro` (
  `idt_carro` int(11) NOT NULL,
  `ano_carro` year(4) NOT NULL,
  `cod_versao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_carro`
--

INSERT INTO `tb_carro` (`idt_carro`, `ano_carro`, `cod_versao`) VALUES
(1, 2014, 5),
(2, 2018, 40),
(3, 2001, 15),
(4, 2010, 36),
(5, 2005, 8),
(6, 1997, 7),
(7, 2016, 25),
(8, 1992, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_marca`
--

CREATE TABLE `tb_marca` (
  `idt_marca` int(11) NOT NULL,
  `nme_marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_marca`
--

INSERT INTO `tb_marca` (`idt_marca`, `nme_marca`) VALUES
(1, 'fiat'),
(2, 'Hyundai'),
(3, 'Volkswagem'),
(4, 'BMW'),
(5, 'Audi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_modelo`
--

CREATE TABLE `tb_modelo` (
  `idt_modelo` int(11) NOT NULL,
  `nme_modelo` varchar(50) NOT NULL,
  `cod_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_modelo`
--

INSERT INTO `tb_modelo` (`idt_modelo`, `nme_modelo`, `cod_marca`) VALUES
(1, 'Mobi', 1),
(2, 'Argo', 1),
(3, 'Uno', 1),
(4, 'Siena', 1),
(5, 'HB20', 2),
(6, 'IX35', 2),
(7, 'I30', 2),
(8, 'Creta', 2),
(9, 'Gol', 3),
(10, 'Golf', 3),
(11, 'Up', 3),
(12, 'Jetta', 3),
(13, 'X4', 4),
(14, '328i', 4),
(15, 'M5', 4),
(16, '528i M', 4),
(17, 'RS5', 5),
(18, 'TTS', 5),
(19, 'A1', 5),
(20, 'Q3', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_oficina`
--

CREATE TABLE `tb_oficina` (
  `idt_oficina` int(11) NOT NULL,
  `cod_tipo_oficina` int(11) NOT NULL,
  `nme_oficina` varchar(50) NOT NULL,
  `tel_oficina` varchar(20) NOT NULL,
  `cnpj_oficina` varchar(45) NOT NULL,
  `eml_oficina` varchar(45) DEFAULT NULL,
  `usr_oficina` varchar(30) NOT NULL,
  `pwd_oficina` varchar(128) NOT NULL,
  `cep_oficina` varchar(9) NOT NULL,
  `lgd_oficina` varchar(45) NOT NULL,
  `bai_oficina` varchar(45) NOT NULL,
  `num_oficina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_oficina`
--

INSERT INTO `tb_oficina` (`idt_oficina`, `cod_tipo_oficina`, `nme_oficina`, `tel_oficina`, `cnpj_oficina`, `eml_oficina`, `usr_oficina`, `pwd_oficina`, `cep_oficina`, `lgd_oficina`, `bai_oficina`, `num_oficina`) VALUES
(1, 11, 'Oficina do pedro', '6137948863', '54813579651354', 'pedro@gmail.com', 'admin', '123', '72165140', 'quadra 05 lote 22', 'taguatinga', 42);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_versao`
--

CREATE TABLE `tb_versao` (
  `idt_versao` int(11) NOT NULL,
  `nme_versao` varchar(50) NOT NULL,
  `cod_modelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_versao`
--

INSERT INTO `tb_versao` (`idt_versao`, `nme_versao`, `cod_modelo`) VALUES
(1, 'Mobi Easy', 1),
(2, 'Mobi Way', 1),
(3, 'Mobi Drive GSR', 1),
(4, 'Argo Drive', 2),
(5, 'Argo HGT', 2),
(6, 'Uno Way', 3),
(7, 'Uno Drive', 3),
(8, 'Uno Sporting GSR', 3),
(9, 'Siena Essence', 4),
(10, 'Siena Working', 4),
(11, 'Siena Hard Working', 4),
(12, 'Confort', 5),
(13, 'Confort Plus', 5),
(14, 'Rspec', 5),
(15, 'Modelo de entrada', 6),
(16, 'GL', 6),
(17, 'GLS', 6),
(18, 'Attitude', 7),
(19, 'Pulse', 7),
(20, 'GLS', 8),
(21, 'Versao Limitada', 8),
(22, 'Track', 9),
(23, 'TrendLine', 9),
(24, 'Comfortline', 10),
(25, 'TSI', 10),
(26, 'Cross Up', 11),
(27, 'Pepper', 11),
(28, 'TSI', 12),
(29, 'GTI', 12),
(30, 'Sport', 13),
(31, ' M Sport', 13),
(32, 'Sport', 14),
(33, 'Sport GT', 14),
(34, ' M5 Sport', 15),
(35, 'Sport', 16),
(36, 'M', 16),
(37, 'RS5 Coupe', 17),
(38, 'TTS Coupe', 18),
(39, 'TTS Roadster', 18),
(40, 'SportBack', 19),
(41, 'Roadster', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tipo_oficina`
--

CREATE TABLE `td_tipo_oficina` (
  `idt_tipo_oficina` int(11) NOT NULL,
  `dsc_oficina` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_tipo_oficina`
--

INSERT INTO `td_tipo_oficina` (`idt_tipo_oficina`, `dsc_oficina`) VALUES
(10, 'Autorizada'),
(11, 'Concessionaria'),
(12, 'Oficina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tipo_servico`
--

CREATE TABLE `td_tipo_servico` (
  `idt_tipo_servico` int(11) NOT NULL,
  `dsc_tipo_servico` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_tipo_servico`
--

INSERT INTO `td_tipo_servico` (`idt_tipo_servico`, `dsc_tipo_servico`) VALUES
(21, 'Auto Eletrica'),
(22, 'Suspensao'),
(23, 'Freio'),
(24, 'Regulagem Eletronica'),
(25, 'Borracharia'),
(26, 'Troca de Oleo'),
(27, 'Som automotivo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ta_oficina_carro`
--
ALTER TABLE `ta_oficina_carro`
  ADD PRIMARY KEY (`cod_oficina`,`cod_carro`),
  ADD KEY `fk_Oficina_has_Carro_Carro1_idx` (`cod_carro`),
  ADD KEY `fk_Oficina_has_Carro_Oficina1_idx` (`cod_oficina`);

--
-- Indexes for table `ta_servico_oficina`
--
ALTER TABLE `ta_servico_oficina`
  ADD PRIMARY KEY (`cod_servico`,`cod_oficina`),
  ADD KEY `fk_tipo_servico_has_oficina_oficina1_idx` (`cod_oficina`),
  ADD KEY `fk_tipo_servico_has_oficina_tipo_servico1_idx` (`cod_servico`);

--
-- Indexes for table `tb_carro`
--
ALTER TABLE `tb_carro`
  ADD PRIMARY KEY (`idt_carro`),
  ADD KEY `fk_carro_versão1_idx` (`cod_versao`);

--
-- Indexes for table `tb_marca`
--
ALTER TABLE `tb_marca`
  ADD PRIMARY KEY (`idt_marca`);

--
-- Indexes for table `tb_modelo`
--
ALTER TABLE `tb_modelo`
  ADD PRIMARY KEY (`idt_modelo`),
  ADD KEY `fk_modelo_marca1_idx` (`cod_marca`);

--
-- Indexes for table `tb_oficina`
--
ALTER TABLE `tb_oficina`
  ADD PRIMARY KEY (`idt_oficina`,`cnpj_oficina`),
  ADD KEY `fk_Oficina_Tipo de Oficina1_idx` (`cod_tipo_oficina`);

--
-- Indexes for table `tb_versao`
--
ALTER TABLE `tb_versao`
  ADD PRIMARY KEY (`idt_versao`),
  ADD KEY `fk_Versão_Modelo1_idx` (`cod_modelo`);

--
-- Indexes for table `td_tipo_oficina`
--
ALTER TABLE `td_tipo_oficina`
  ADD PRIMARY KEY (`idt_tipo_oficina`);

--
-- Indexes for table `td_tipo_servico`
--
ALTER TABLE `td_tipo_servico`
  ADD PRIMARY KEY (`idt_tipo_servico`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_carro`
--
ALTER TABLE `tb_carro`
  MODIFY `idt_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_oficina`
--
ALTER TABLE `tb_oficina`
  MODIFY `idt_oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `td_tipo_oficina`
--
ALTER TABLE `td_tipo_oficina`
  MODIFY `idt_tipo_oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `td_tipo_servico`
--
ALTER TABLE `td_tipo_servico`
  MODIFY `idt_tipo_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `ta_oficina_carro`
--
ALTER TABLE `ta_oficina_carro`
  ADD CONSTRAINT `fk_Oficina_has_Carro_Carro1` FOREIGN KEY (`cod_carro`) REFERENCES `tb_carro` (`idt_carro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Oficina_has_Carro_Oficina1` FOREIGN KEY (`cod_oficina`) REFERENCES `tb_oficina` (`idt_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ta_servico_oficina`
--
ALTER TABLE `ta_servico_oficina`
  ADD CONSTRAINT `fk_tipo_servico_has_oficina_oficina1` FOREIGN KEY (`cod_oficina`) REFERENCES `tb_oficina` (`idt_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_servico_has_oficina_tipo_servico1` FOREIGN KEY (`cod_servico`) REFERENCES `td_tipo_servico` (`idt_tipo_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tb_carro`
--
ALTER TABLE `tb_carro`
  ADD CONSTRAINT `fk_carro_versão1` FOREIGN KEY (`cod_versao`) REFERENCES `tb_versao` (`idt_versao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tb_modelo`
--
ALTER TABLE `tb_modelo`
  ADD CONSTRAINT `fk_modelo_marca1` FOREIGN KEY (`cod_marca`) REFERENCES `tb_marca` (`idt_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tb_oficina`
--
ALTER TABLE `tb_oficina`
  ADD CONSTRAINT `fk_Oficina_Tipo de Oficina1` FOREIGN KEY (`cod_tipo_oficina`) REFERENCES `td_tipo_oficina` (`idt_tipo_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tb_versao`
--
ALTER TABLE `tb_versao`
  ADD CONSTRAINT `fk_Versão_Modelo1` FOREIGN KEY (`cod_modelo`) REFERENCES `tb_modelo` (`idt_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
