-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Maio-2023 às 14:32
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `2ucase_bd3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_administrador`
--
CREATE DATABASE 2ucase_bd3;

USE 2ucase_bd3;


CREATE TABLE `adm_administrador` (
  `id_adm` int(11) NOT NULL,
  `nome_adm` varchar(300) NOT NULL COMMENT 'nome do administrador',
  `email_adm` varchar(300) NOT NULL COMMENT 'email do administrador',
  `senha_adm` varchar(64) NOT NULL COMMENT 'senha em sha256',
  `poder_adm` int(1) NOT NULL COMMENT 'abrangencia do usuario no sistema',
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo',
  `data_reg_adm` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adm_administrador`
--

INSERT INTO `adm_administrador` (`id_adm`, `nome_adm`, `email_adm`, `senha_adm`, `poder_adm`, `status`, `data_reg_adm`) VALUES
(1, 'Davi Moreira', 'davi@adm.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 9, 1, '2023-05-29 09:25:14'),
(2, 'Tetra Moreira', 'davi@adm.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 9, 1, '2023-05-29 09:25:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_carrossel`
--

CREATE TABLE `adm_carrossel` (
  `id_carrossel` int(11) NOT NULL,
  `nome_carrossel` varchar(200) NOT NULL,
  `link_carrossel` varchar(300) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo',
  `data_reg_adm` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `link_promo_carrossel` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adm_carrossel`
--

INSERT INTO `adm_carrossel` (`id_carrossel`, `nome_carrossel`, `link_carrossel`, `status`, `data_reg_adm`, `link_promo_carrossel`) VALUES
(1, 'Time Qualquer', '../assets/img/Banner1.png', 1, '2023-05-29 09:25:14', ''),
(2, 'Time Qualquer', '../assets/img/Banner2.png', 1, '2023-05-29 09:25:14', ''),
(3, 'Time Qualquer', '../assets/img/Banner3.png', 1, '2023-05-29 09:25:14', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_menu`
--

CREATE TABLE `adm_menu` (
  `id_menu` int(11) NOT NULL,
  `nome_menu` varchar(300) NOT NULL,
  `link_menu` varchar(300) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo',
  `data_reg_menu` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adm_menu`
--

INSERT INTO `adm_menu` (`id_menu`, `nome_menu`, `link_menu`, `status`, `data_reg_menu`) VALUES
(1, 'Teste delete', './categoria.php', 1, '2023-05-29 09:25:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_submenu`
--

CREATE TABLE `adm_submenu` (
  `id_submenu` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nome_submenu` varchar(300) NOT NULL,
  `link_submenu` varchar(300) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo',
  `data_reg_submenu` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adm_submenu`
--

INSERT INTO `adm_submenu` (`id_submenu`, `id_menu`, `nome_submenu`, `link_submenu`, `status`, `data_reg_submenu`) VALUES
(1, 1, 'Teste delete2', './categoria.php', 1, '2023-05-29 09:25:14'),
(2, 1, 'Teste delete3', './categoria.php', 1, '2023-05-29 09:25:14'),
(3, 1, 'Teste', './categoria.php', 1, '2023-05-29 09:25:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_venda`
--

CREATE TABLE `adm_venda` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_pagamento` int(11) NOT NULL,
  `valor_desconto_total` double NOT NULL,
  `data_venda` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `valor_venda_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quant_produto_total` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_carrinho` int(11) NOT NULL,
  `numero_venda` int(11) NOT NULL,
  `frete_carrinho` decimal(10,2) NOT NULL DEFAULT 0.00,
  `id_endereco` int(11) NOT NULL,
  `cod_frete_venda` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_carrinho`
--

CREATE TABLE `produto_carrinho` (
  `id_produto_carrinho` int(11) NOT NULL,
  `id_carrinho` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quant_carrinho` int(11) NOT NULL,
  `preco_quant_prod` decimal(10,2) NOT NULL DEFAULT 0.00,
  `preco_desconto_prod` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'So ira receber um valor, quando aplicado o cupom\nVALOR: Porcentagem do cupom menos o valor do produto.',
  `data_reg_Cprod` datetime NOT NULL DEFAULT current_timestamp(),
  `marca_celular` varchar(120) NOT NULL,
  `preco_total` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor da quantidade do produto menos o valor com o desconto',
  `used_cupom` int(11) NOT NULL DEFAULT 0 COMMENT '1 Utilizou\n0 Não utilizou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_avaliacao`
--

CREATE TABLE `user_avaliacao` (
  `id_avaliacao` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nota_avaliacao` int(1) NOT NULL COMMENT 'avalia??o de 1 - 5',
  `titulo_avaliacao` varchar(300) NOT NULL,
  `descricao` varchar(900) NOT NULL,
  `data_avaliacao` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_carrinho`
--

CREATE TABLE `user_carrinho` (
  `id_carrinho` int(11) NOT NULL,
  `data_reg_carrinho` datetime NOT NULL DEFAULT current_timestamp(),
  `id_cliente` int(11) NOT NULL,
  `total_carrinho` decimal(10,2) NOT NULL DEFAULT 0.00,
  `desconto_carrinho` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quant_carrinho` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_categoria`
--

CREATE TABLE `user_categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(200) NOT NULL,
  `img_categoria` varchar(300) NOT NULL,
  `data_reg_cupom` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `link_categoria` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_categoria`
--

INSERT INTO `user_categoria` (`id_categoria`, `nome_categoria`, `img_categoria`, `data_reg_cupom`, `link_categoria`) VALUES
(1, 'Times', '../assets/img/times-category.jpg', '2023-05-29 09:25:05', './homepage.php'),
(2, 'Animacoes', '../assets/img/animacao-category.jpg', '2023-05-29 09:25:05', './homepage.php'),
(3, 'flork', '../assets/img/flork-category.jpg', '2023-05-29 09:25:05', './homepage.php'),
(4, 'estampas', '../assets/img/estampa-category.jpg', '2023-05-29 09:25:05', './homepage.php'),
(5, 'herois', '../assets/img/herois-category.jpg', '2023-05-29 09:25:05', './homepage.php'),
(6, 'pop-socket', '../assets/img/StitchAirpodscase.png', '2023-05-29 09:25:05', './homepage.php'),
(7, 'Times', '../assets/img/Banner1.png', '2023-05-29 09:25:14', './home.php'),
(8, 'Animacoes', '../assets/img/Banner2.png', '2023-05-29 09:25:14', './home.php');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_cliente`
--

CREATE TABLE `user_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(300) NOT NULL COMMENT 'nome do cliente',
  `email_cliente` varchar(300) NOT NULL COMMENT 'email do cliente',
  `cpf_cliente` varchar(18) NOT NULL COMMENT 'cpf do cliente',
  `telefone_cliente` varchar(18) NOT NULL COMMENT 'telefone do cliente',
  `genero_cliente` int(1) NOT NULL COMMENT '1 - feminino; 0 - masculino; 2 - n?o informar',
  `senha_cliente` varchar(256) NOT NULL COMMENT 'senha em sha256',
  `data_nasc_cliente` date NOT NULL COMMENT 'data de nascimente',
  `data_reg_cliente` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo',
  `telefoneFixo_cliente` varchar(16) NOT NULL,
  `token_email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_cliente`
--

INSERT INTO `user_cliente` (`id_cliente`, `nome_cliente`, `email_cliente`, `cpf_cliente`, `telefone_cliente`, `genero_cliente`, `senha_cliente`, `data_nasc_cliente`, `data_reg_cliente`, `status`, `telefoneFixo_cliente`, `token_email`) VALUES
(1, 'Davi Moreira', 'davisant6@gmail.com', '49471488885', '11996120093', 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2006-01-21', '2023-05-29 09:25:14', 1, '', ''),
(2, 'Filipe Moreira', 'davisant6@gmail.com', '49471488885', '11996120093', 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2006-01-21', '2023-05-29 09:25:14', 1, '', ''),
(3, 'Sophia', 'carro@gmail.com', '49471488885', '11996120093', 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2006-01-21', '2023-05-29 09:25:14', 1, '', ''),
(4, 'Davi Moreira', 'davisant6@gmail.com', '49471488885', '118762123', 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2006-01-21', '2023-05-29 09:25:14', 1, '', ''),
(5, 'Filipe Moreira', 'davisant6@gmail.com', '49471488885', '118762123', 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2006-01-21', '2023-05-29 09:25:14', 1, '', ''),
(6, 'Carlos', 'davisant6@gmail.com', '55848621', '118762123', 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2006-01-21', '2023-05-29 09:25:14', 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_cupom`
--

CREATE TABLE `user_cupom` (
  `id_cupom` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome_cupom` varchar(400) NOT NULL,
  `codigo_cupom` varchar(200) NOT NULL,
  `data_expira_cupom` date NOT NULL,
  `desconto_cupom` float NOT NULL,
  `data_reg_cupom` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_cupom`
--

INSERT INTO `user_cupom` (`id_cupom`, `id_categoria`, `nome_cupom`, `codigo_cupom`, `data_expira_cupom`, `desconto_cupom`, `data_reg_cupom`, `status`) VALUES
(1, 2, 'So para quem me quiser', 'CARENTE25', '2022-09-30', 25, '2023-05-29 09:25:14', 1),
(2, 1, 'So para quem não me quiser', 'CARENTENAO50', '2022-09-30', 50, '2023-05-29 09:25:14', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_endereco_cliente`
--

CREATE TABLE `user_endereco_cliente` (
  `id_endereco` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `logradouro_cliente` varchar(900) NOT NULL,
  `bairro_cliente` varchar(100) NOT NULL,
  `cep_cliente` varchar(15) NOT NULL,
  `uf_cliente` varchar(2) NOT NULL,
  `numero_cliente` int(5) NOT NULL,
  `complemento_cliente` varchar(150) DEFAULT NULL,
  `ponto_ref_cliente` varchar(300) DEFAULT NULL,
  `data_endereco_cliente` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `nomeR_cliente` varchar(250) NOT NULL,
  `cidade_cliente` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_endereco_cliente`
--

INSERT INTO `user_endereco_cliente` (`id_endereco`, `id_cliente`, `logradouro_cliente`, `bairro_cliente`, `cep_cliente`, `uf_cliente`, `numero_cliente`, `complemento_cliente`, `ponto_ref_cliente`, `data_endereco_cliente`, `nomeR_cliente`, `cidade_cliente`) VALUES
(1, 1, 'Rua Ciclades', 'Jardim Guaruja', '05876-040', 'SP', 30, 'Casa 4', NULL, '2023-05-29 09:25:14', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_favoritos`
--

CREATE TABLE `user_favoritos` (
  `id_favoritos` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `dataReg_favoritos` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_forma_pagamento`
--

CREATE TABLE `user_forma_pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `parcelamento_pagamento` int(1) NOT NULL,
  `metodo_pagamento` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_forma_pagamento`
--

INSERT INTO `user_forma_pagamento` (`id_pagamento`, `parcelamento_pagamento`, `metodo_pagamento`) VALUES
(1, 5, 'Cartão de Crédito'),
(2, 0, 'Cartão de Debito'),
(3, 0, 'Boleto'),
(4, 0, 'PIX'),
(5, 0, 'Cartão de Crédito - Mastercard');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_mod_celular`
--

CREATE TABLE `user_mod_celular` (
  `id_modelo_celular` int(11) NOT NULL,
  `marca_celular` varchar(64) NOT NULL,
  `modelo_celular` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_mod_celular`
--

INSERT INTO `user_mod_celular` (`id_modelo_celular`, `marca_celular`, `modelo_celular`) VALUES
(1, 'Apple', 'Iphone 13 Pro Max'),
(2, 'Apple', 'Iphone 12'),
(3, 'Apple', 'Iphone 11'),
(4, 'Apple', 'Iphone 13 Pro Max');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_newsletter`
--

CREATE TABLE `user_newsletter` (
  `id_noticias` int(11) NOT NULL,
  `email_noticias` varchar(360) NOT NULL,
  `data_reg_noticias` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Data de registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_produto`
--

CREATE TABLE `user_produto` (
  `id_produto` int(11) NOT NULL,
  `id_modelo_celular` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome_produto` varchar(300) NOT NULL,
  `preco_produto` decimal(10,2) NOT NULL DEFAULT 0.00,
  `descricao_produto` varchar(900) NOT NULL,
  `imagem_principal_produto` varchar(300) NOT NULL,
  `quantidade_produto` int(11) NOT NULL,
  `categoria_special_produto` varchar(200) NOT NULL,
  `garantias_produto` varchar(300) NOT NULL COMMENT 'beneficios - ex - garantia 3 dias',
  `status` int(1) NOT NULL COMMENT '2 - oferta 1 - disponivel 0 - indisponivel',
  `data_reg_produto` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro',
  `cod_produto` int(4) UNSIGNED ZEROFILL NOT NULL,
  `peso_produto` int(11) NOT NULL COMMENT 'Peso em Gramas',
  `last_price_produto` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Ultimo preço do produto, só add caso a categoria dele for promoção'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user_produto`
--

INSERT INTO `user_produto` (`id_produto`, `id_modelo_celular`, `id_categoria`, `nome_produto`, `preco_produto`, `descricao_produto`, `imagem_principal_produto`, `quantidade_produto`, `categoria_special_produto`, `garantias_produto`, `status`, `data_reg_produto`, `cod_produto`, `peso_produto`, `last_price_produto`) VALUES
(1, 1, 1, 'Capinha Flamengo 2022 - Selecao Oficial', '25.94', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illum facere aperiam dolor minus laudantium autem soluta eum, officia sunt ducimus sed. Possimus necessitatibus ex molestiae.', '../assets/img/Banner1.png', 10, 'Novidades', '3 Meses', 1, '2023-05-29 09:25:14', 0420, 20, '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_produtos_img`
--

CREATE TABLE `user_produtos_img` (
  `id_img` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome_img` varchar(300) NOT NULL,
  `link_img` varchar(300) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 - ativo; 0 - inativo',
  `data_reg_img` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'data e hora do registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_status`
--

CREATE TABLE `venda_status` (
  `id_status` int(11) NOT NULL,
  `status_venda` varchar(60) NOT NULL,
  `data_reg_status` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `venda_status`
--

INSERT INTO `venda_status` (`id_status`, `status_venda`, `data_reg_status`) VALUES
(1, 'Pendente', '2023-05-29 09:25:05'),
(2, 'Pagamento Aprovado', '2023-05-29 09:25:05'),
(3, 'Cancelada', '2023-05-29 09:25:05'),
(4, 'Enviada', '2023-05-29 09:25:05'),
(5, 'Entregue', '2023-05-29 09:25:05'),
(6, 'Reembolsada', '2023-05-29 09:25:05'),
(7, 'Pendente', '2023-05-29 09:25:14'),
(8, 'Pagamento Aprovado', '2023-05-29 09:25:14'),
(9, 'Cancelada', '2023-05-29 09:25:14'),
(10, 'Enviada', '2023-05-29 09:25:14'),
(11, 'Entregue', '2023-05-29 09:25:14'),
(12, 'Reembolsada', '2023-05-29 09:25:14');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adm_administrador`
--
ALTER TABLE `adm_administrador`
  ADD PRIMARY KEY (`id_adm`);

--
-- Índices para tabela `adm_carrossel`
--
ALTER TABLE `adm_carrossel`
  ADD PRIMARY KEY (`id_carrossel`);

--
-- Índices para tabela `adm_menu`
--
ALTER TABLE `adm_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Índices para tabela `adm_submenu`
--
ALTER TABLE `adm_submenu`
  ADD PRIMARY KEY (`id_submenu`),
  ADD KEY `fk_id_menu` (`id_menu`);

--
-- Índices para tabela `adm_venda`
--
ALTER TABLE `adm_venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk1_id_cliente` (`id_cliente`),
  ADD KEY `fk_adm_venda_user_carrinho1` (`id_carrinho`),
  ADD KEY `fk_adm_venda_venda_status1` (`id_status`),
  ADD KEY `fk_id_pagamento` (`id_pagamento`),
  ADD KEY `id_fk_endereco` (`id_endereco`);

--
-- Índices para tabela `produto_carrinho`
--
ALTER TABLE `produto_carrinho`
  ADD PRIMARY KEY (`id_produto_carrinho`),
  ADD KEY `fk_produto_carrinho_user_carrinho1` (`id_carrinho`),
  ADD KEY `fk_produto_carrinho_user_produto1` (`id_produto`);

--
-- Índices para tabela `user_avaliacao`
--
ALTER TABLE `user_avaliacao`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `fk1_id_produto` (`id_produto`),
  ADD KEY `fk2_id_cliente` (`id_cliente`);

--
-- Índices para tabela `user_carrinho`
--
ALTER TABLE `user_carrinho`
  ADD PRIMARY KEY (`id_carrinho`),
  ADD KEY `fk_user_carrinho_user_cliente` (`id_cliente`),
  ADD KEY `id_fk_status` (`id_status`);

--
-- Índices para tabela `user_categoria`
--
ALTER TABLE `user_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `user_cliente`
--
ALTER TABLE `user_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `user_cupom`
--
ALTER TABLE `user_cupom`
  ADD PRIMARY KEY (`id_cupom`),
  ADD KEY `fk1_id_categoria` (`id_categoria`);

--
-- Índices para tabela `user_endereco_cliente`
--
ALTER TABLE `user_endereco_cliente`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `fk_id_cliente` (`id_cliente`);

--
-- Índices para tabela `user_favoritos`
--
ALTER TABLE `user_favoritos`
  ADD PRIMARY KEY (`id_favoritos`),
  ADD KEY `user_favoritos_user_cliente_id_cliente_fk` (`id_cliente`),
  ADD KEY `user_favoritos_user_produto_id_produto_fk` (`id_produto`);

--
-- Índices para tabela `user_forma_pagamento`
--
ALTER TABLE `user_forma_pagamento`
  ADD PRIMARY KEY (`id_pagamento`);

--
-- Índices para tabela `user_mod_celular`
--
ALTER TABLE `user_mod_celular`
  ADD PRIMARY KEY (`id_modelo_celular`);

--
-- Índices para tabela `user_newsletter`
--
ALTER TABLE `user_newsletter`
  ADD PRIMARY KEY (`id_noticias`);

--
-- Índices para tabela `user_produto`
--
ALTER TABLE `user_produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_id_categoria` (`id_categoria`),
  ADD KEY `fk_id_modelo_celular` (`id_modelo_celular`);

--
-- Índices para tabela `user_produtos_img`
--
ALTER TABLE `user_produtos_img`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `fk_id_produto` (`id_produto`);

--
-- Índices para tabela `venda_status`
--
ALTER TABLE `venda_status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm_administrador`
--
ALTER TABLE `adm_administrador`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `adm_carrossel`
--
ALTER TABLE `adm_carrossel`
  MODIFY `id_carrossel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `adm_menu`
--
ALTER TABLE `adm_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `adm_submenu`
--
ALTER TABLE `adm_submenu`
  MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `adm_venda`
--
ALTER TABLE `adm_venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produto_carrinho`
--
ALTER TABLE `produto_carrinho`
  MODIFY `id_produto_carrinho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user_avaliacao`
--
ALTER TABLE `user_avaliacao`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user_carrinho`
--
ALTER TABLE `user_carrinho`
  MODIFY `id_carrinho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_categoria`
--
ALTER TABLE `user_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `user_cliente`
--
ALTER TABLE `user_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `user_cupom`
--
ALTER TABLE `user_cupom`
  MODIFY `id_cupom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `user_endereco_cliente`
--
ALTER TABLE `user_endereco_cliente`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user_favoritos`
--
ALTER TABLE `user_favoritos`
  MODIFY `id_favoritos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_forma_pagamento`
--
ALTER TABLE `user_forma_pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `user_mod_celular`
--
ALTER TABLE `user_mod_celular`
  MODIFY `id_modelo_celular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `user_newsletter`
--
ALTER TABLE `user_newsletter`
  MODIFY `id_noticias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_produto`
--
ALTER TABLE `user_produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user_produtos_img`
--
ALTER TABLE `user_produtos_img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `venda_status`
--
ALTER TABLE `venda_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `adm_submenu`
--
ALTER TABLE `adm_submenu`
  ADD CONSTRAINT `fk_id_menu` FOREIGN KEY (`id_menu`) REFERENCES `adm_menu` (`id_menu`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `adm_venda`
--
ALTER TABLE `adm_venda`
  ADD CONSTRAINT `fk1_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `user_cliente` (`id_cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_adm_venda_user_carrinho1` FOREIGN KEY (`id_carrinho`) REFERENCES `user_carrinho` (`id_carrinho`),
  ADD CONSTRAINT `fk_adm_venda_venda_status1` FOREIGN KEY (`id_status`) REFERENCES `venda_status` (`id_status`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pagamento` FOREIGN KEY (`id_pagamento`) REFERENCES `user_forma_pagamento` (`id_pagamento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_fk_endereco` FOREIGN KEY (`id_endereco`) REFERENCES `user_endereco_cliente` (`id_endereco`);

--
-- Limitadores para a tabela `produto_carrinho`
--
ALTER TABLE `produto_carrinho`
  ADD CONSTRAINT `fk_produto_carrinho_user_carrinho1` FOREIGN KEY (`id_carrinho`) REFERENCES `user_carrinho` (`id_carrinho`),
  ADD CONSTRAINT `fk_produto_carrinho_user_produto1` FOREIGN KEY (`id_produto`) REFERENCES `user_produto` (`id_produto`);

--
-- Limitadores para a tabela `user_avaliacao`
--
ALTER TABLE `user_avaliacao`
  ADD CONSTRAINT `fk1_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `user_produto` (`id_produto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `user_cliente` (`id_cliente`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `user_carrinho`
--
ALTER TABLE `user_carrinho`
  ADD CONSTRAINT `fk_user_carrinho_user_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `user_cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_fk_status` FOREIGN KEY (`id_status`) REFERENCES `venda_status` (`id_status`);

--
-- Limitadores para a tabela `user_cupom`
--
ALTER TABLE `user_cupom`
  ADD CONSTRAINT `fk1_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `user_categoria` (`id_categoria`);

--
-- Limitadores para a tabela `user_endereco_cliente`
--
ALTER TABLE `user_endereco_cliente`
  ADD CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `user_cliente` (`id_cliente`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `user_favoritos`
--
ALTER TABLE `user_favoritos`
  ADD CONSTRAINT `user_favoritos_user_cliente_id_cliente_fk` FOREIGN KEY (`id_cliente`) REFERENCES `user_cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_favoritos_user_produto_id_produto_fk` FOREIGN KEY (`id_produto`) REFERENCES `user_produto` (`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `user_produto`
--
ALTER TABLE `user_produto`
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `user_categoria` (`id_categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_modelo_celular` FOREIGN KEY (`id_modelo_celular`) REFERENCES `user_mod_celular` (`id_modelo_celular`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `user_produtos_img`
--
ALTER TABLE `user_produtos_img`
  ADD CONSTRAINT `fk_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `user_produto` (`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- INSERTS USUARIOS ADMINISTRATIVOS

INSERT INTO adm_administrador(nome_adm, email_adm, senha_adm, poder_adm, status) VALUES(
'Davi Moreira',
'davi@adm.com',
'5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',
9,
1);

INSERT INTO adm_administrador(nome_adm, email_adm, senha_adm, poder_adm, status) VALUES(
'Tetra Moreira',
'davi@adm.com',
'5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',
9,
1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
