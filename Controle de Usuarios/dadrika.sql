-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31-Ago-2019 às 02:03
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dadrika`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOME_CATEGORIA` varchar(50) NOT NULL,
  `DESCRICAO_CATEGORIA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID_CLIENTE` int(30) NOT NULL,
  `NOME_CLIENTE` varchar(250) NOT NULL,
  `RUA_CLIENTE` varchar(250) NOT NULL,
  `NUMERO_CLIENTE` varchar(250) NOT NULL,
  `BAIRRO_CLIENTE` varchar(250) NOT NULL,
  `CIDADE_CLIENTE` varchar(250) NOT NULL,
  `CEP_CLIENTE` varchar(250) NOT NULL,
  `CPF_CLIENTE` varchar(250) NOT NULL,
  `RG_CLIENTE` varchar(250) NOT NULL,
  `TELEFONE_CLIENTE` varchar(25) NOT NULL,
  `CELULAR_CLIENTE` varchar(25) NOT NULL,
  `DATACADASTRO_CLIENTE` date NOT NULL,
  `NASCIMENTO_CLIENTE` date NOT NULL,
  `EMAIL_CLIENTE` varchar(250) NOT NULL,
  `ESTADO_CLIENTE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `ID_FUNCIONARIO` int(30) NOT NULL,
  `NOME_FUNCIONARIO` varchar(55) NOT NULL,
  `RUA_FUNCIONARIO` varchar(55) NOT NULL,
  `NUMERO_FUNCIONARIO` varchar(55) NOT NULL,
  `BAIRRO_FUNCIONARIO` varchar(55) NOT NULL,
  `ESTADO_FUNCIONARIO` varchar(55) NOT NULL,
  `CIDADE_FUNCIONARIO` varchar(55) NOT NULL,
  `CELULAR_FUNCIONARIO` varchar(50) NOT NULL,
  `TELEFONE_FUNCIONARIO` varchar(50) DEFAULT NULL,
  `CARGO_FUNCIONARIO` varchar(50) NOT NULL,
  `SALARIO_FUNCIONARIO` varchar(25) NOT NULL,
  `DATACADASTRO_FUNCIONARIO` date NOT NULL,
  `NASCIMENTO_FUNCIONARIO` date NOT NULL,
  `OBSERVACOES_FUNCIONARIO` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel`
--

CREATE TABLE `nivel` (
  `ID_NIVEL` int(30) NOT NULL,
  `NOME_NIVEL` varchar(250) NOT NULL,
  `DESCRICAO_NIVEL` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_PRODUTO` int(30) NOT NULL,
  `NOME_PRODUTO` varchar(50) NOT NULL,
  `COD_PRODUTO` varchar(250) NOT NULL,
  `DESCRICAO_PRODUTO` varchar(100) NOT NULL,
  `ID_UNIDADE` int(30) NOT NULL,
  `ID_CATEGORIA` int(30) NOT NULL,
  `ESTOQUEMINIMO` int(30) NOT NULL,
  `ESTOQUEATUAL` int(30) NOT NULL,
  `VALORCOMPRA` varchar(55) NOT NULL,
  `VALORVENDA` varchar(55) NOT NULL,
  `MARGEM` varchar(55) NOT NULL,
  `ANOTACOES_PRODUTO` varchar(250) NOT NULL,
  `SITUACAO_PRODUTO` varchar(55) NOT NULL,
  `DATACADASTRO_PRODUTO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `salao`
--

CREATE TABLE `salao` (
  `ID_SALAO` int(30) NOT NULL,
  `ID_FUNCIONARIO` int(30) NOT NULL,
  `ID_CLIENTE` int(30) NOT NULL,
  `DATA_SALAO` date NOT NULL,
  `HORARIO_SALAO` time(6) NOT NULL,
  `VALOR_SALAO` varchar(50) NOT NULL,
  `PAGO_SALAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

CREATE TABLE `unidade` (
  `ID_UNIDADE` int(30) NOT NULL,
  `NOME_UNIDADE` varchar(50) NOT NULL,
  `DESCRICAO_UNIDADE` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_USUARIO` int(30) NOT NULL,
  `NOME_USUARIO` varchar(250) NOT NULL,
  `DATA_USUARIO` date NOT NULL,
  `LOGIN_USUARIO` varchar(250) NOT NULL,
  `SENHA_USUARIO` varchar(250) NOT NULL,
  `STATUS_USUARIO` varchar(250) NOT NULL,
  `ID_NIVEL` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID_USUARIO`, `NOME_USUARIO`, `DATA_USUARIO`, `LOGIN_USUARIO`, `SENHA_USUARIO`, `STATUS_USUARIO`, `ID_NIVEL`) VALUES
(10, 'Alysson Henrique Nunes Silva', '2019-08-29', 'alysson', '46f94c8de14fb36680850768ff1b7f2a', 'Ativo', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `ID_VENDA` int(30) NOT NULL,
  `ID_CLIENTE` int(30) NOT NULL,
  `ID_USUARIO` int(30) NOT NULL,
  `DATA_VENDA` date NOT NULL,
  `SITUACAO_VENDA` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`ID_FUNCIONARIO`);

--
-- Indexes for table `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`ID_NIVEL`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_PRODUTO`);

--
-- Indexes for table `salao`
--
ALTER TABLE `salao`
  ADD PRIMARY KEY (`ID_SALAO`);

--
-- Indexes for table `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`ID_UNIDADE`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`ID_VENDA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_CLIENTE` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `ID_FUNCIONARIO` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `ID_NIVEL` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_PRODUTO` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salao`
--
ALTER TABLE `salao`
  MODIFY `ID_SALAO` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unidade`
--
ALTER TABLE `unidade`
  MODIFY `ID_UNIDADE` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_USUARIO` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `ID_VENDA` int(30) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
