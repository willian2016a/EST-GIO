-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 30-Ago-2017 às 14:57
-- Versão do servidor: 5.6.28-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `FisicaAntunes02`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE IF NOT EXISTS `arquivos` (
`idArquivo` int(11) NOT NULL,
  `nomeArquivo` varchar(255) DEFAULT NULL,
  `idDisciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compromissos`
--

CREATE TABLE IF NOT EXISTS `compromissos` (
`id` int(11) NOT NULL,
  `conteudo` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compromissos`
--

INSERT INTO `compromissos` (`id`, `conteudo`) VALUES
(3, 'Monitoria as 18:30 dia 14/04/2017 , favor não faltar nessa jóça , pois é meu tempo q está em jogo seus alunos queridos !');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE IF NOT EXISTS `disciplinas` (
`idDisciplina` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`idDisciplina`, `nome`) VALUES
(1, 'Laboratório de Física II'),
(2, 'Física I'),
(3, 'Física II'),
(4, 'Laboratório de Física I'),
(5, 'Física III'),
(6, 'Laboratório de Física III'),
(7, 'LABORATÓRIO DE FÍSICA IV'),
(8, 'laboratório de física V');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE IF NOT EXISTS `horarios` (
`id` int(11) NOT NULL,
  `dataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `conteudo` text NOT NULL,
  `dataMarcada` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `dataCadastro`, `conteudo`, `dataMarcada`) VALUES
(1, '2017-03-30 16:33:58', 'jnshv sdhvjshdvjhsdvjshdvjshdvdsh', '2017-03-30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `senha`) VALUES
(1, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arquivos`
--
ALTER TABLE `arquivos`
 ADD PRIMARY KEY (`idArquivo`), ADD KEY `fk_idDisciplina` (`idDisciplina`);

--
-- Indexes for table `compromissos`
--
ALTER TABLE `compromissos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
 ADD PRIMARY KEY (`idDisciplina`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivos`
--
ALTER TABLE `arquivos`
MODIFY `idArquivo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compromissos`
--
ALTER TABLE `compromissos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `arquivos`
--
ALTER TABLE `arquivos`
ADD CONSTRAINT `fk_idDisciplina` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplinas` (`idDisciplina`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
