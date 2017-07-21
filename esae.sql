-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Jul-2017 às 17:42
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esae`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(60) NOT NULL,
  `ects` int(11) NOT NULL,
  `descri` text,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `name`, `type`, `ects`, `descri`, `created_at`, `updated_at`) VALUES
(1, 'Gestão de Recursos Humanos e Comportamento Organizacional', 'Mestrado', 120, 'descrição alguma', '2017-07-15 13:34:12', '2017-07-15 13:34:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_disciplina`
--

CREATE TABLE `curso_disciplina` (
  `curso_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `semester` varchar(60) NOT NULL,
  `prof` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `name`, `semester`, `prof`, `created_at`, `updated_at`) VALUES
(1, 'Openning Potals By Humming', 'First Smester', 'Old Man', '2017-06-03 22:04:46', '2017-06-03 22:04:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina_horario`
--

CREATE TABLE `disciplina_horario` (
  `disciplina_id` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL,
  `local` varchar(255) CHARACTER SET latin1 NOT NULL,
  `descri` text CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `name`, `date`, `local`, `descri`, `created_at`, `updated_at`) VALUES
(1, 'Free the Mudokon\'s', '2017-06-14 12:00:00', 'Rupture Farms', 'The Exodus begins! Time to save the Mudokon\'s.', '2017-06-03 22:11:02', '2017-06-03 22:11:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `financas`
--

CREATE TABLE `financas` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `paid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `weekday` varchar(255) CHARACTER SET latin1 NOT NULL,
  `timebegin` time NOT NULL,
  `timeend` time NOT NULL,
  `classroom` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `weekday`, `timebegin`, `timeend`, `classroom`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '08:00:00', '10:00:00', 'Slave Dorms', '2017-06-03 22:05:40', '2017-06-03 22:05:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `curso`, `photo`, `type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abe', 'Abe@odd.com', 'Comunication Curse', NULL, 'Slave', 'HelloHiOK', NULL, '2017-06-03 23:00:00', '2017-06-03 23:00:00'),
(2, 'That Slig', 'git@im.com', 'Guard', NULL, 'Guard', 'hereboy', NULL, '2017-06-03 23:00:00', '2017-06-03 23:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_curso`
--

CREATE TABLE `user_curso` (
  `user_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curso_disciplina`
--
ALTER TABLE `curso_disciplina`
  ADD PRIMARY KEY (`curso_id`,`disciplina_id`),
  ADD UNIQUE KEY `idcurso` (`curso_id`),
  ADD UNIQUE KEY `iddisciplina` (`disciplina_id`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina_horario`
--
ALTER TABLE `disciplina_horario`
  ADD PRIMARY KEY (`disciplina_id`,`horario_id`),
  ADD UNIQUE KEY `iddisciplina` (`disciplina_id`),
  ADD UNIQUE KEY `idhorario` (`horario_id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financas`
--
ALTER TABLE `financas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_curso`
--
ALTER TABLE `user_curso`
  ADD PRIMARY KEY (`user_id`,`curso_id`),
  ADD UNIQUE KEY `idcurso` (`curso_id`),
  ADD KEY `iduser` (`user_id`);

--
-- Indexes for table `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `financas`
--
ALTER TABLE `financas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `curso_disciplina`
--
ALTER TABLE `curso_disciplina`
  ADD CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `disciplina_horario`
--
ALTER TABLE `disciplina_horario`
  ADD CONSTRAINT `disciplina_horario_ibfk_1` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`),
  ADD CONSTRAINT `disciplina_horario_ibfk_2` FOREIGN KEY (`horario_id`) REFERENCES `horarios` (`id`);

--
-- Limitadores para a tabela `user_curso`
--
ALTER TABLE `user_curso`
  ADD CONSTRAINT `user_curso_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_curso_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
