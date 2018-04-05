-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 03:40 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gotcha`
--

-- --------------------------------------------------------

--
-- Table structure for table `atraco`
--

CREATE TABLE `atraco` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `pertenencia` text NOT NULL,
  `no.asaltantes` int(11) NOT NULL,
  `color_piel` varchar(20) NOT NULL,
  `estatura` decimal(10,2) NOT NULL,
  `vestimenta` text NOT NULL,
  `no.armas` int(11) NOT NULL,
  `tipo_arma` varchar(20) NOT NULL,
  `transporte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `obj_perdido`
--

CREATE TABLE `obj_perdido` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `donde` text NOT NULL,
  `cuando` text NOT NULL,
  `tipo_obj` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_persona`
--

CREATE TABLE `p_persona` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `color_piel` varchar(30) NOT NULL,
  `estatura` decimal(10,2) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `ult_location` text NOT NULL,
  `detalles` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `Cedula` varchar(40) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contrasena` varchar(10) NOT NULL,
  `Celular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atraco`
--
ALTER TABLE `atraco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_persona`
--
ALTER TABLE `p_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Cedula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atraco`
--
ALTER TABLE `atraco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_persona`
--
ALTER TABLE `p_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
