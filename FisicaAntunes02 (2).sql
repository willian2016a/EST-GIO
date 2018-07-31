-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 30-Jul-2018 às 21:05
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
-- Estrutura da tabela `arquivosDisciplina`
--

CREATE TABLE IF NOT EXISTS `arquivosDisciplina` (
`idArquivo` int(11) NOT NULL,
  `nomeArquivo` varchar(255) NOT NULL,
  `idDisciplina` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `arquivosDisciplina`
--

INSERT INTO `arquivosDisciplina` (`idArquivo`, `nomeArquivo`, `idDisciplina`) VALUES
(2, 'Captura de tela de 2017-09-18 16:51:18.png', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivosTecnico`
--

CREATE TABLE IF NOT EXISTS `arquivosTecnico` (
`idArquivo` int(11) NOT NULL,
  `nomeArquivo` varchar(255) NOT NULL,
  `idTecnico` int(11) NOT NULL,
  `bimestre` int(11) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`idDisciplina`, `nome`) VALUES
(4, 'roma');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE IF NOT EXISTS `eventos` (
`idEvento` int(11) NOT NULL,
  `nomeEvento` varchar(255) NOT NULL,
  `conteudoEvento` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`idEvento`, `nomeEvento`, `conteudoEvento`) VALUES
(10, 'O CORVO.jpg', 'dfghjk'),
(11, 'supernova.jpg', 'sdfkjsdfnkjsdnfs'),
(12, '00.jpg', 'wertyui');

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE IF NOT EXISTS `tecnicos` (
`idTecnico` int(11) NOT NULL,
  `nomeTecnico` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`idTecnico`, `nomeTecnico`) VALUES
(2, '3º Info');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arquivosDisciplina`
--
ALTER TABLE `arquivosDisciplina`
 ADD PRIMARY KEY (`idArquivo`);

--
-- Indexes for table `arquivosTecnico`
--
ALTER TABLE `arquivosTecnico`
 ADD PRIMARY KEY (`idArquivo`);

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
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
 ADD PRIMARY KEY (`idEvento`);

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
-- Indexes for table `tecnicos`
--
ALTER TABLE `tecnicos`
 ADD PRIMARY KEY (`idTecnico`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivosDisciplina`
--
ALTER TABLE `arquivosDisciplina`
MODIFY `idArquivo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `arquivosTecnico`
--
ALTER TABLE `arquivosTecnico`
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
MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
-- AUTO_INCREMENT for table `tecnicos`
--
ALTER TABLE `tecnicos`
MODIFY `idTecnico` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
