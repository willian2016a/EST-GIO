-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 19-Fev-2018 às 17:29
-- Versão do servidor: 5.5.28
-- versão do PHP: 5.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `fisicaantunes02`
--
CREATE DATABASE IF NOT EXISTS `fisicaantunes02` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fisicaantunes02`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivosdisciplina`
--

CREATE TABLE IF NOT EXISTS `arquivosdisciplina` (
  `idArquivo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeArquivo` varchar(255) NOT NULL,
  `idDisciplina` int(11) NOT NULL,
  PRIMARY KEY (`idArquivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivostecnico`
--

CREATE TABLE IF NOT EXISTS `arquivostecnico` (
  `idArquivo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeArquivo` varchar(255) NOT NULL,
  `idTecnico` int(11) NOT NULL,
  `bimestre` int(11) NOT NULL,
  PRIMARY KEY (`idArquivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compromissos`
--

CREATE TABLE IF NOT EXISTS `compromissos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conteudo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
  `idDisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`idDisciplina`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE IF NOT EXISTS `eventos` (
  `idEvento` int(11) NOT NULL AUTO_INCREMENT,
  `nomeEvento` varchar(255) NOT NULL,
  `conteudoEvento` longtext NOT NULL,
  PRIMARY KEY (`idEvento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE IF NOT EXISTS `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `conteudo` text NOT NULL,
  `dataMarcada` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
  `idTecnico` int(11) NOT NULL AUTO_INCREMENT,
  `nomeTecnico` varchar(255) NOT NULL,
  PRIMARY KEY (`idTecnico`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
