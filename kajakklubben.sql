-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 19. 03 2018 kl. 13:56:33
-- Serverversion: 10.1.28-MariaDB
-- PHP-version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kajakklubben`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bruger`
--

CREATE TABLE `bruger` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` mediumblob NOT NULL,
  `fk_brugerrolle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `nyheder`
--

CREATE TABLE `nyheder` (
  `id` int(11) NOT NULL,
  `titel` text NOT NULL,
  `dato` datetime NOT NULL,
  `beskrivelse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `bruger`
--
ALTER TABLE `bruger`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `nyheder`
--
ALTER TABLE `nyheder`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `bruger`
--
ALTER TABLE `bruger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `nyheder`
--
ALTER TABLE `nyheder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
