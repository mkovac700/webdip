-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2022 at 02:04 PM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 7.2.25-1+0~20191128.32+debian8~1.gbp108445

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebDiP2021x051`
--

-- --------------------------------------------------------

--
-- Table structure for table `benzinska_postaja`
--

CREATE TABLE `benzinska_postaja` (
  `id_benzinska_postaja` int(11) NOT NULL,
  `id_lokacija` int(11) NOT NULL,
  `oznaka` varchar(45) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `kontakt_broj` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `benzinska_postaja`
--

INSERT INTO `benzinska_postaja` (`id_benzinska_postaja`, `id_lokacija`, `oznaka`, `adresa`, `kontakt_broj`) VALUES
(1, 1, 'VZ-1', 'Julija Merlica 9 4200 Varazdin', '099123456'),
(2, 2, 'CK-1', 'Varazdinska 54', '099123456'),
(3, 3, 'ZG-1', 'Draskoviceva 12', '099123456'),
(4, 3, 'ZG-2', 'Avenija Veceslava Holjevca 67', '099123456'),
(5, 1, 'VZ-2', 'Kolodvorska 12', '099123456');

-- --------------------------------------------------------

--
-- Table structure for table `benzinska_postaja_vrste_goriva`
--

CREATE TABLE `benzinska_postaja_vrste_goriva` (
  `id_bpvg` int(11) NOT NULL,
  `id_benzinska_postaja` int(11) NOT NULL,
  `id_vrste_goriva` int(11) NOT NULL,
  `kolicina` decimal(10,2) DEFAULT NULL,
  `na_raspolaganju` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `benzinska_postaja_vrste_goriva`
--

INSERT INTO `benzinska_postaja_vrste_goriva` (`id_bpvg`, `id_benzinska_postaja`, `id_vrste_goriva`, `kolicina`, `na_raspolaganju`) VALUES
(1, 1, 1, '5000.00', 1),
(2, 1, 2, '4212.45', 1),
(4, 1, 3, '400.00', 1),
(5, 1, 4, '0.00', 0),
(7, 5, 2, '1980.00', 1),
(9, 5, 1, '3000.00', 1),
(10, 1, 5, '1940.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik`
--

CREATE TABLE `dnevnik` (
  `id_dnevnik` int(11) NOT NULL,
  `id_korisnik` int(11) DEFAULT NULL,
  `id_tip_radnje` int(11) NOT NULL,
  `vrijeme` varchar(45) NOT NULL,
  `zapis` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dnevnik`
--

INSERT INTO `dnevnik` (`id_dnevnik`, `id_korisnik`, `id_tip_radnje`, `vrijeme`, `zapis`) VALUES
(1, 17, 1, '2022-06-18 19:59:01', 'Uspjesna prijava'),
(2, 17, 3, '2022-06-18 19:59:04', 'Pristup stranici Dashboard (admin)'),
(3, 17, 3, '2022-06-18 19:59:06', 'Pristup stranici Uredivanje racuna (admin)'),
(4, 17, 3, '2022-06-18 19:59:08', 'Pristup stranici Upravljanje moderatorima (admin)'),
(5, 17, 3, '2022-06-18 19:59:08', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(6, 17, 3, '2022-06-18 19:59:09', 'Pristup stranici Upravljanje lokacijama (admin)'),
(7, 17, 3, '2022-06-18 19:59:10', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(8, NULL, 2, '2022-06-18 20:02:19', 'Uspjesna registracija'),
(9, 17, 1, '2022-06-18 20:07:49', 'Uspjesna prijava'),
(10, 17, 3, '2022-06-18 20:07:50', 'Pristup stranici Dashboard (admin)'),
(11, 17, 3, '2022-06-18 20:07:51', 'Pristup stranici Uredivanje racuna (admin)'),
(12, 17, 3, '2022-06-18 20:08:22', 'Pristup stranici Upravljanje moderatorima (admin)'),
(13, 17, 3, '2022-06-18 20:08:24', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(14, 17, 3, '2022-06-18 20:08:44', 'Pristup stranici Uredivanje goriva (admin)'),
(15, 17, 3, '2022-06-18 20:08:48', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(16, 17, 3, '2022-06-18 20:08:50', 'Pristup stranici Uredivanje goriva (admin)'),
(17, 17, 3, '2022-06-18 20:08:53', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(18, 17, 3, '2022-06-18 20:09:06', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(19, 17, 3, '2022-06-18 20:09:07', 'Pristup stranici Upravljanje lokacijama (admin)'),
(20, 17, 3, '2022-06-18 20:09:08', 'Pristup stranici Upravljanje moderatorima (admin)'),
(21, 17, 3, '2022-06-18 20:09:09', 'Pristup stranici Uredivanje racuna (admin)'),
(22, 17, 3, '2022-06-18 20:12:18', 'Pristup stranici Uredivanje racuna (admin)'),
(23, 17, 3, '2022-06-18 20:12:20', 'Pristup stranici Uredivanje racuna (admin)'),
(24, 17, 3, '2022-06-18 20:12:23', 'Pristup stranici Uredivanje racuna (admin)'),
(25, 17, 3, '2022-06-18 20:12:27', 'Pristup stranici Uredivanje racuna (admin)'),
(26, 17, 3, '2022-06-18 20:12:31', 'Pristup stranici Uredivanje racuna (admin)'),
(27, 17, 3, '2022-06-18 20:34:42', 'Pristup stranici Uredivanje racuna (admin)'),
(28, 17, 3, '2022-06-18 20:40:33', 'Pristup stranici Uredivanje racuna (admin)'),
(29, 17, 3, '2022-06-18 20:41:00', 'Pristup stranici Uredivanje racuna (admin)'),
(30, 17, 3, '2022-06-18 20:41:15', 'Pristup stranici Dashboard (admin)'),
(31, 17, 3, '2022-06-18 20:41:17', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(32, 17, 3, '2022-06-18 20:41:18', 'Pristup stranici Upravljanje moderatorima (admin)'),
(33, 17, 3, '2022-06-18 20:41:19', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(34, 17, 3, '2022-06-18 20:46:57', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(35, 17, 3, '2022-06-18 20:47:34', 'Pristup stranici Dashboard (admin)'),
(36, 17, 3, '2022-06-18 20:47:41', 'Pristup stranici Dashboard (admin)'),
(37, 17, 3, '2022-06-18 20:47:43', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(38, 17, 3, '2022-06-18 20:47:58', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(39, 17, 3, '2022-06-18 20:51:02', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(40, 17, 3, '2022-06-18 20:53:21', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(41, 17, 3, '2022-06-18 20:53:43', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(42, 17, 3, '2022-06-18 20:53:44', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(43, 17, 3, '2022-06-18 20:53:55', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(44, 17, 3, '2022-06-18 20:54:06', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(45, 17, 3, '2022-06-18 20:54:48', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(46, 17, 3, '2022-06-18 20:55:03', 'Pristup stranici Uredivanje racuna (admin)'),
(47, 17, 3, '2022-06-18 20:55:24', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(48, 17, 3, '2022-06-18 20:56:34', 'Pristup stranici Upravljanje moderatorima (admin)'),
(49, 17, 3, '2022-06-18 20:56:35', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(50, 17, 3, '2022-06-18 20:56:37', 'Pristup stranici Uredivanje racuna (admin)'),
(51, 17, 3, '2022-06-18 20:58:01', 'Pristup stranici Dashboard (admin)'),
(52, NULL, 3, '2022-06-18 22:41:42', 'Pokusaj pristupa stranici Upravljanje moderatorima (gost)'),
(53, 17, 1, '2022-06-18 22:41:46', 'Uspjesna prijava'),
(54, 17, 3, '2022-06-18 22:41:50', 'Pristup stranici Dashboard (admin)'),
(55, 17, 3, '2022-06-18 22:41:51', 'Pristup stranici Upravljanje moderatorima (admin)'),
(56, 17, 3, '2022-06-18 22:43:40', 'Pristup stranici Upravljanje moderatorima (admin)'),
(57, 3, 1, '2022-06-18 22:47:38', 'Uspjesna prijava'),
(58, 3, 3, '2022-06-18 23:06:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(59, 3, 3, '2022-06-18 23:06:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(60, 3, 3, '2022-06-18 23:10:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(61, 3, 3, '2022-06-18 23:10:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(62, 3, 3, '2022-06-18 23:37:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(63, 3, 3, '2022-06-18 23:39:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(64, 3, 3, '2022-06-18 23:39:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(65, NULL, 3, '2022-06-19 00:38:24', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(66, 3, 1, '2022-06-19 00:38:32', 'Neuspjesni pokusaj prijave (netocna lozinka)'),
(67, 3, 1, '2022-06-19 00:38:40', 'Uspjesna prijava'),
(68, 3, 3, '2022-06-19 00:38:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(69, 3, 3, '2022-06-19 00:38:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(70, 3, 3, '2022-06-19 00:38:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(71, 3, 3, '2022-06-19 00:38:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(72, 3, 3, '2022-06-19 00:38:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(73, 3, 3, '2022-06-19 00:43:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(74, 3, 3, '2022-06-19 00:44:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(75, 3, 3, '2022-06-19 00:55:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(76, 3, 3, '2022-06-19 00:55:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(77, 3, 3, '2022-06-19 00:55:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(78, 3, 3, '2022-06-19 00:55:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(79, 3, 3, '2022-06-19 01:06:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(80, 3, 3, '2022-06-19 01:06:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(81, 3, 3, '2022-06-19 01:06:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(82, 3, 3, '2022-06-19 01:06:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(83, 3, 3, '2022-06-19 01:06:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(84, 3, 3, '2022-06-19 01:07:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(85, 3, 3, '2022-06-19 01:07:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(86, 3, 3, '2022-06-19 01:22:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(87, 3, 3, '2022-06-19 01:22:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(88, 3, 3, '2022-06-19 01:23:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(89, 3, 3, '2022-06-19 01:23:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(90, 3, 3, '2022-06-19 01:23:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(91, 3, 3, '2022-06-19 01:23:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(92, 3, 3, '2022-06-19 01:24:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(93, 3, 3, '2022-06-19 01:26:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(94, 3, 3, '2022-06-19 01:26:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(95, 3, 3, '2022-06-19 01:27:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(96, 3, 3, '2022-06-19 01:27:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(97, NULL, 3, '2022-06-19 02:13:35', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(98, 3, 1, '2022-06-19 02:13:42', 'Uspjesna prijava'),
(99, 3, 3, '2022-06-19 02:13:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(100, 3, 3, '2022-06-19 02:13:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(101, 3, 3, '2022-06-19 02:19:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(102, 3, 3, '2022-06-19 02:21:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(103, 3, 3, '2022-06-19 02:21:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(104, 3, 3, '2022-06-19 02:21:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(105, 3, 3, '2022-06-19 02:21:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(106, 3, 3, '2022-06-19 02:22:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(107, 3, 3, '2022-06-19 02:29:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(108, 3, 3, '2022-06-19 02:35:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(109, 3, 3, '2022-06-19 02:35:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(110, 3, 3, '2022-06-19 02:35:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(111, 3, 3, '2022-06-19 02:35:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(112, 3, 3, '2022-06-19 02:37:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(113, 3, 3, '2022-06-19 02:37:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(114, 3, 3, '2022-06-19 02:37:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(115, 3, 3, '2022-06-19 02:37:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(116, 3, 3, '2022-06-19 02:37:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(117, 3, 3, '2022-06-19 02:38:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(118, 3, 3, '2022-06-19 02:40:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(119, 3, 3, '2022-06-19 02:44:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(120, 3, 3, '2022-06-19 02:46:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(121, 3, 3, '2022-06-19 02:46:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(122, 3, 3, '2022-06-19 02:47:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(123, 3, 3, '2022-06-19 02:47:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(124, 3, 3, '2022-06-19 02:47:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(125, 3, 3, '2022-06-19 02:47:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(126, 3, 3, '2022-06-19 02:47:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(127, 3, 3, '2022-06-19 02:47:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(128, 3, 3, '2022-06-19 02:52:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(129, 3, 3, '2022-06-19 03:00:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(130, 3, 3, '2022-06-19 03:04:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(131, 3, 1, '2022-06-19 12:19:05', 'Uspjesna prijava'),
(132, 3, 3, '2022-06-19 12:19:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(133, 3, 3, '2022-06-19 12:19:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(134, 3, 3, '2022-06-19 12:19:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(135, 3, 3, '2022-06-19 12:20:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(136, 3, 3, '2022-06-19 12:36:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(137, 3, 3, '2022-06-19 12:36:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(138, 17, 1, '2022-06-19 13:02:44', 'Uspjesna prijava'),
(139, 17, 3, '2022-06-19 13:02:47', 'Pristup stranici Dashboard (admin)'),
(140, 17, 3, '2022-06-19 13:02:49', 'Pristup stranici Upravljanje moderatorima (admin)'),
(141, 17, 3, '2022-06-19 13:02:54', 'Pristup stranici Uredivanje moderatora (admin)'),
(142, 3, 1, '2022-06-19 13:06:44', 'Uspjesna prijava'),
(143, 3, 3, '2022-06-19 13:06:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(144, 3, 3, '2022-06-19 13:06:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(145, 3, 3, '2022-06-19 13:06:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(146, 3, 3, '2022-06-19 13:17:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(147, 3, 3, '2022-06-19 13:17:44', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(148, 3, 3, '2022-06-19 13:17:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(149, 3, 3, '2022-06-19 13:17:58', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(150, 3, 3, '2022-06-19 13:18:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(151, 3, 3, '2022-06-19 13:18:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(152, 3, 3, '2022-06-19 13:18:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(153, 3, 3, '2022-06-19 13:18:40', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(154, 3, 3, '2022-06-19 13:18:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(155, 3, 3, '2022-06-19 13:21:34', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(156, 3, 3, '2022-06-19 13:38:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(157, 3, 3, '2022-06-19 13:38:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(158, 3, 3, '2022-06-19 13:38:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(159, 3, 3, '2022-06-19 13:38:24', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(160, 3, 3, '2022-06-19 13:38:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(161, 3, 3, '2022-06-19 13:38:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(162, 3, 3, '2022-06-19 13:38:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(163, 3, 3, '2022-06-19 13:38:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(164, 3, 3, '2022-06-19 13:38:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(165, 3, 3, '2022-06-19 13:38:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(166, 3, 3, '2022-06-19 13:41:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(167, 3, 3, '2022-06-19 13:41:26', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(168, 3, 3, '2022-06-19 13:41:50', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(169, 3, 3, '2022-06-19 13:44:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(170, 3, 3, '2022-06-19 13:44:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(171, 3, 3, '2022-06-19 13:44:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(172, 3, 3, '2022-06-19 13:44:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(173, 3, 3, '2022-06-19 13:44:45', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(174, 3, 3, '2022-06-19 13:44:53', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(175, 3, 3, '2022-06-19 13:45:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(176, 3, 3, '2022-06-19 13:45:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(177, 3, 3, '2022-06-19 13:45:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(178, 3, 3, '2022-06-19 13:45:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(179, 3, 3, '2022-06-19 13:45:23', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(180, 3, 3, '2022-06-19 13:46:20', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(181, 3, 3, '2022-06-19 13:47:50', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(182, 3, 3, '2022-06-19 13:50:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(183, 3, 3, '2022-06-19 13:50:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(184, 3, 3, '2022-06-19 13:50:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(185, 3, 3, '2022-06-19 13:50:08', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(186, 3, 3, '2022-06-19 13:50:16', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(187, 3, 3, '2022-06-19 13:51:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(188, 3, 3, '2022-06-19 13:51:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(189, 3, 3, '2022-06-19 13:51:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(190, 3, 3, '2022-06-19 13:51:11', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(191, 3, 3, '2022-06-19 13:53:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(192, 3, 3, '2022-06-19 13:53:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(193, 3, 3, '2022-06-19 13:53:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(194, 3, 3, '2022-06-19 13:53:32', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(195, 3, 3, '2022-06-19 13:53:40', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(196, 3, 3, '2022-06-19 13:55:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(197, 3, 3, '2022-06-19 13:55:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(198, 3, 3, '2022-06-19 13:55:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(199, 3, 3, '2022-06-19 13:55:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(200, 3, 3, '2022-06-19 13:55:45', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(201, 3, 1, '2022-06-19 15:19:52', 'Uspjesna prijava'),
(202, 3, 3, '2022-06-19 15:19:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(203, 3, 3, '2022-06-19 15:20:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(204, 3, 3, '2022-06-19 15:20:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(205, 3, 3, '2022-06-19 15:21:11', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(206, 3, 3, '2022-06-19 15:22:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(207, 3, 3, '2022-06-19 15:22:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(208, 3, 3, '2022-06-19 15:24:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(209, 17, 1, '2022-06-19 15:29:27', 'Uspjesna prijava'),
(210, 17, 3, '2022-06-19 15:29:30', 'Pristup stranici Dashboard (admin)'),
(211, 17, 3, '2022-06-19 15:29:35', 'Pristup stranici Upravljanje moderatorima (admin)'),
(212, 17, 3, '2022-06-19 15:29:44', 'Pristup stranici Uredivanje moderatora (admin)'),
(213, 17, 3, '2022-06-19 15:29:48', 'Pristup stranici Upravljanje moderatorima (admin)'),
(214, 17, 3, '2022-06-19 15:30:09', 'Pristup stranici Uredivanje moderatora (admin)'),
(215, 17, 3, '2022-06-19 15:30:33', 'Pristup stranici Upravljanje moderatorima (admin)'),
(216, 17, 3, '2022-06-19 15:30:48', 'Pristup stranici Uredivanje moderatora (admin)'),
(217, 17, 3, '2022-06-19 15:31:29', 'Pristup stranici Upravljanje moderatorima (admin)'),
(218, 17, 3, '2022-06-19 15:31:31', 'Pristup stranici Uredivanje moderatora (admin)'),
(219, 17, 3, '2022-06-19 15:31:35', 'Pristup stranici Upravljanje moderatorima (admin)'),
(220, 17, 3, '2022-06-19 15:34:18', 'Pristup stranici Upravljanje moderatorima (admin)'),
(221, 17, 3, '2022-06-19 15:34:42', 'Pristup stranici Uredivanje moderatora (admin)'),
(222, 17, 3, '2022-06-19 15:34:54', 'Pristup stranici Uredivanje moderatora (admin)'),
(223, 17, 3, '2022-06-19 15:35:03', 'Pristup stranici Upravljanje moderatorima (admin)'),
(224, 3, 1, '2022-06-19 15:46:51', 'Uspjesna prijava'),
(225, 3, 3, '2022-06-19 15:46:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(226, 3, 3, '2022-06-19 15:53:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(227, 3, 3, '2022-06-19 15:53:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(228, 3, 3, '2022-06-19 15:59:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(229, 3, 3, '2022-06-19 15:59:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(230, 3, 3, '2022-06-19 15:59:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(231, 3, 3, '2022-06-19 15:59:46', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(232, 3, 3, '2022-06-19 16:00:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(233, 3, 3, '2022-06-19 16:00:29', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(234, 3, 3, '2022-06-19 16:00:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(235, 3, 3, '2022-06-19 16:00:48', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(236, 3, 3, '2022-06-19 16:00:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(237, 17, 1, '2022-06-19 16:24:52', 'Neuspjesni pokusaj prijave (netocna lozinka)'),
(238, 17, 1, '2022-06-19 16:24:55', 'Uspjesna prijava'),
(239, 17, 3, '2022-06-19 16:25:03', 'Pristup stranici Dashboard (admin)'),
(240, 17, 3, '2022-06-19 16:25:07', 'Pristup stranici Upravljanje lokacijama (admin)'),
(241, 17, 3, '2022-06-19 16:25:27', 'Pristup stranici Upravljanje moderatorima (admin)'),
(242, 17, 3, '2022-06-19 16:25:40', 'Pristup stranici Uredivanje moderatora (admin)'),
(243, 17, 3, '2022-06-19 16:25:42', 'Pristup stranici Upravljanje moderatorima (admin)'),
(244, 3, 1, '2022-06-19 16:34:06', 'Uspjesna prijava'),
(245, 3, 3, '2022-06-19 16:34:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(246, 3, 3, '2022-06-19 16:34:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(247, 3, 3, '2022-06-19 16:34:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(248, 3, 3, '2022-06-19 16:48:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(249, 3, 3, '2022-06-19 16:50:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(250, 3, 3, '2022-06-19 17:15:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(251, 3, 3, '2022-06-19 17:38:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(252, 3, 3, '2022-06-19 17:38:52', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(253, 3, 3, '2022-06-19 17:38:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(254, 3, 3, '2022-06-19 17:38:59', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(255, 3, 3, '2022-06-19 17:39:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(256, 3, 3, '2022-06-19 17:39:03', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(257, 3, 3, '2022-06-19 17:39:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(258, 3, 3, '2022-06-19 17:39:07', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(259, 3, 3, '2022-06-19 17:39:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(260, NULL, 3, '2022-06-19 18:43:03', 'Pokusaj pristupa stranici Uredivanje vrsta goriva (gost)'),
(261, 3, 1, '2022-06-19 18:43:14', 'Uspjesna prijava'),
(262, 3, 3, '2022-06-19 18:43:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(263, 3, 3, '2022-06-19 18:43:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(264, 3, 3, '2022-06-19 18:43:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(265, 3, 3, '2022-06-19 18:43:32', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(266, 3, 3, '2022-06-19 18:43:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(267, 3, 3, '2022-06-19 18:43:41', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(268, 3, 3, '2022-06-19 19:00:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(269, 3, 3, '2022-06-19 19:00:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(270, 3, 3, '2022-06-19 19:00:13', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(271, 3, 3, '2022-06-19 19:00:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(272, 3, 3, '2022-06-19 19:00:52', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(273, 3, 3, '2022-06-19 19:01:08', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(274, 3, 3, '2022-06-19 19:01:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(275, 3, 3, '2022-06-19 19:01:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(276, 3, 3, '2022-06-19 19:01:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(277, 3, 3, '2022-06-19 19:01:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(278, 3, 3, '2022-06-19 19:01:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(279, 3, 3, '2022-06-19 19:01:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(280, 3, 3, '2022-06-19 19:01:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(281, 3, 3, '2022-06-19 19:01:53', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(282, 3, 3, '2022-06-19 19:02:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(283, 3, 3, '2022-06-19 19:02:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(284, 3, 3, '2022-06-19 19:02:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(285, 3, 3, '2022-06-19 19:02:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(286, 3, 3, '2022-06-19 19:02:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(287, 3, 3, '2022-06-19 19:02:43', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(288, 3, 3, '2022-06-19 19:04:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(289, 3, 3, '2022-06-19 19:04:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(290, 3, 3, '2022-06-19 19:04:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(291, 3, 3, '2022-06-19 19:04:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(292, 3, 3, '2022-06-19 19:04:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(293, 3, 3, '2022-06-19 19:04:24', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(294, 3, 3, '2022-06-19 19:04:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(295, 3, 3, '2022-06-19 19:04:34', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(296, 3, 3, '2022-06-19 19:04:43', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(297, 3, 3, '2022-06-19 19:06:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(298, 3, 3, '2022-06-19 19:06:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(299, 3, 3, '2022-06-19 19:06:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(300, 3, 3, '2022-06-19 19:06:47', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(301, 3, 3, '2022-06-19 19:07:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(302, 3, 3, '2022-06-19 19:07:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(303, 3, 3, '2022-06-19 19:07:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(304, 3, 3, '2022-06-19 19:07:54', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(305, 3, 3, '2022-06-19 19:08:06', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(306, 3, 3, '2022-06-19 19:08:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(307, 3, 3, '2022-06-19 19:08:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(308, 3, 3, '2022-06-19 19:08:37', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(309, 3, 3, '2022-06-19 19:09:17', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(310, 3, 3, '2022-06-19 19:09:26', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(311, 3, 3, '2022-06-19 19:09:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(312, 3, 3, '2022-06-19 19:35:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(313, 3, 3, '2022-06-19 19:35:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(314, 3, 3, '2022-06-19 19:46:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(315, 3, 3, '2022-06-19 19:58:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(316, 3, 3, '2022-06-19 19:58:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(317, 3, 3, '2022-06-19 19:58:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(318, 3, 3, '2022-06-19 19:58:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(319, 3, 3, '2022-06-19 19:59:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(320, 3, 3, '2022-06-19 20:05:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(321, 3, 3, '2022-06-19 20:06:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(322, 3, 3, '2022-06-19 20:06:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(323, 3, 3, '2022-06-19 20:06:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(324, 3, 3, '2022-06-19 20:06:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(325, 3, 3, '2022-06-19 20:06:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(326, 3, 3, '2022-06-19 20:06:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(327, 3, 3, '2022-06-19 20:12:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(328, 3, 3, '2022-06-19 20:12:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(329, 3, 3, '2022-06-19 20:17:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(330, 3, 3, '2022-06-19 20:20:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(331, 3, 3, '2022-06-19 20:23:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(332, 3, 3, '2022-06-19 20:24:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(333, 3, 3, '2022-06-19 20:24:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(334, 3, 3, '2022-06-19 20:25:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(335, 3, 3, '2022-06-19 20:25:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(336, 3, 3, '2022-06-19 20:28:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(337, 3, 3, '2022-06-19 20:28:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(338, 3, 3, '2022-06-19 20:29:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(339, 3, 3, '2022-06-19 20:29:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(340, 3, 3, '2022-06-19 20:30:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(341, 3, 3, '2022-06-19 20:30:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(342, 3, 3, '2022-06-19 20:31:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(343, 3, 3, '2022-06-19 20:32:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(344, 3, 3, '2022-06-19 20:33:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(345, 3, 3, '2022-06-19 20:33:25', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(346, 3, 3, '2022-06-19 20:33:38', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(347, 3, 3, '2022-06-19 20:33:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(348, 3, 3, '2022-06-19 20:34:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(349, 3, 3, '2022-06-19 20:34:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(350, 3, 3, '2022-06-19 20:35:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(351, 3, 3, '2022-06-19 20:36:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(352, 3, 3, '2022-06-19 20:36:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(353, 3, 3, '2022-06-19 20:37:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(354, 3, 3, '2022-06-19 20:38:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(355, 3, 3, '2022-06-19 20:38:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(356, 3, 3, '2022-06-19 20:49:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(357, 3, 3, '2022-06-19 20:50:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(358, 3, 3, '2022-06-19 20:50:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(359, 3, 3, '2022-06-19 20:50:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(360, 3, 3, '2022-06-19 20:50:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(361, 3, 3, '2022-06-19 20:50:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(362, 3, 3, '2022-06-19 20:50:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(363, 3, 3, '2022-06-19 20:50:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(364, 3, 3, '2022-06-19 20:50:40', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(365, 3, 3, '2022-06-19 20:50:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(366, 3, 3, '2022-06-19 20:50:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(367, 3, 3, '2022-06-19 20:50:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(368, 3, 3, '2022-06-19 20:50:54', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(369, 3, 3, '2022-06-19 20:50:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(370, 3, 3, '2022-06-19 20:53:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(371, 3, 3, '2022-06-19 21:02:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(372, 3, 3, '2022-06-19 21:02:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(373, NULL, 3, '2022-06-19 21:53:12', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(374, 3, 1, '2022-06-19 21:53:21', 'Uspjesna prijava'),
(375, 3, 3, '2022-06-19 21:53:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(376, 3, 3, '2022-06-19 21:53:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(377, 3, 3, '2022-06-19 21:53:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(378, 3, 3, '2022-06-19 21:53:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(379, 3, 3, '2022-06-19 21:53:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(380, 3, 3, '2022-06-19 21:55:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(381, 3, 3, '2022-06-19 21:55:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(382, 3, 3, '2022-06-19 21:55:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(383, 3, 3, '2022-06-19 21:56:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(384, 3, 3, '2022-06-19 21:56:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(385, 3, 3, '2022-06-19 21:59:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(386, 3, 3, '2022-06-19 21:59:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(387, 3, 3, '2022-06-19 22:00:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(388, 3, 3, '2022-06-19 22:00:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(389, 3, 3, '2022-06-19 22:01:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(390, 3, 3, '2022-06-19 22:01:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(391, 3, 3, '2022-06-19 22:01:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(392, 3, 3, '2022-06-19 22:02:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(393, 3, 3, '2022-06-19 22:02:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(394, 3, 3, '2022-06-19 22:02:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(395, 3, 3, '2022-06-19 22:03:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(396, NULL, 3, '2022-06-20 01:27:13', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(397, 3, 1, '2022-06-20 01:27:18', 'Uspjesna prijava'),
(398, 3, 3, '2022-06-20 01:27:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(399, 3, 3, '2022-06-20 01:27:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(400, 3, 3, '2022-06-20 01:27:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(401, 3, 3, '2022-06-20 01:27:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(402, 3, 3, '2022-06-20 01:27:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(403, 3, 3, '2022-06-20 01:42:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(404, 3, 3, '2022-06-20 01:42:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(405, 3, 3, '2022-06-20 01:43:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(406, 3, 3, '2022-06-20 01:43:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(407, 3, 3, '2022-06-20 01:43:26', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(408, 3, 3, '2022-06-20 01:43:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(409, 3, 3, '2022-06-20 01:43:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(410, 3, 3, '2022-06-20 01:43:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(411, 3, 3, '2022-06-20 01:43:47', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(412, NULL, 3, '2022-06-20 02:12:20', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(413, 3, 1, '2022-06-20 02:12:26', 'Uspjesna prijava'),
(414, 3, 3, '2022-06-20 02:12:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(415, 3, 3, '2022-06-20 02:12:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(416, 3, 3, '2022-06-20 02:12:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(417, 3, 1, '2022-06-20 11:38:07', 'Uspjesna prijava'),
(418, 3, 3, '2022-06-20 11:38:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(419, 3, 3, '2022-06-20 11:38:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(420, 3, 3, '2022-06-20 11:38:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(421, 3, 3, '2022-06-20 11:38:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(422, 3, 3, '2022-06-20 11:38:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(423, 3, 3, '2022-06-20 11:38:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(424, 3, 3, '2022-06-20 11:39:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(425, 3, 3, '2022-06-20 11:39:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(426, 3, 1, '2022-06-20 23:33:52', 'Uspjesna prijava'),
(427, 3, 3, '2022-06-20 23:33:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(428, 3, 3, '2022-06-20 23:34:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(429, 3, 3, '2022-06-20 23:34:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(430, 3, 3, '2022-06-20 23:34:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(431, 3, 3, '2022-06-20 23:34:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(432, 3, 3, '2022-06-20 23:34:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(433, 3, 3, '2022-06-20 23:34:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(434, 3, 3, '2022-06-20 23:35:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(435, 3, 3, '2022-06-20 23:38:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(436, 3, 3, '2022-06-20 23:49:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(437, 3, 3, '2022-06-20 23:56:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(438, 3, 3, '2022-06-20 23:56:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(439, 3, 3, '2022-06-20 23:57:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(440, 3, 3, '2022-06-20 23:58:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(441, 3, 3, '2022-06-20 23:59:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(442, 3, 3, '2022-06-21 00:01:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(443, 3, 3, '2022-06-21 00:03:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(444, 3, 3, '2022-06-21 00:03:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(445, 3, 1, '2022-06-21 00:51:25', 'Uspjesna prijava'),
(446, 3, 3, '2022-06-21 00:51:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(447, 17, 1, '2022-06-21 00:51:39', 'Uspjesna prijava'),
(448, 17, 3, '2022-06-21 00:51:41', 'Pristup stranici Dashboard (admin)'),
(449, 17, 3, '2022-06-21 00:51:45', 'Pristup stranici Upravljanje lokacijama (admin)'),
(450, 17, 3, '2022-06-21 00:51:52', 'Pristup stranici Uredivanje lokacija (admin)'),
(451, 17, 3, '2022-06-21 00:51:58', 'Pristup stranici Uredivanje lokacija (admin)'),
(452, 17, 3, '2022-06-21 00:52:00', 'Pristup stranici Upravljanje lokacijama (admin)'),
(453, 17, 3, '2022-06-21 00:52:07', 'Pristup stranici Upravljanje lokacijama (admin)'),
(454, 3, 1, '2022-06-21 01:29:43', 'Uspjesna prijava'),
(455, 3, 3, '2022-06-21 01:29:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(456, 3, 3, '2022-06-21 01:29:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(457, 3, 3, '2022-06-21 01:29:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(458, 3, 3, '2022-06-21 01:30:05', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(459, 3, 3, '2022-06-21 01:30:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(460, 3, 3, '2022-06-21 01:43:20', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(461, 3, 3, '2022-06-21 01:43:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(462, 17, 1, '2022-06-21 02:28:51', 'Uspjesna prijava'),
(463, 17, 3, '2022-06-21 02:28:54', 'Pristup stranici Dashboard (admin)'),
(464, 17, 3, '2022-06-21 02:28:55', 'Pristup stranici Upravljanje moderatorima (admin)'),
(465, 17, 3, '2022-06-21 02:28:57', 'Pristup stranici Uredivanje moderatora (admin)'),
(466, 17, 3, '2022-06-21 02:28:58', 'Pristup stranici Upravljanje moderatorima (admin)'),
(467, 17, 3, '2022-06-21 02:28:59', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(468, 17, 3, '2022-06-21 02:29:00', 'Pristup stranici Uredivanje goriva (admin)'),
(469, 17, 3, '2022-06-21 02:29:02', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(470, 17, 3, '2022-06-21 02:29:03', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(471, 17, 3, '2022-06-21 02:29:10', 'Pristup stranici Uredivanje racuna (admin)'),
(472, 17, 3, '2022-06-21 02:29:12', 'Pristup stranici Upravljanje lokacijama (admin)'),
(473, 17, 3, '2022-06-21 02:29:13', 'Pristup stranici Uredivanje lokacija (admin)'),
(474, 17, 3, '2022-06-21 02:29:17', 'Pristup stranici Moje benzinske postaje (admin)'),
(475, 3, 1, '2022-06-21 02:29:30', 'Uspjesna prijava'),
(476, 3, 3, '2022-06-21 02:29:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(477, 3, 3, '2022-06-21 02:29:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(478, 3, 3, '2022-06-21 02:29:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(479, 3, 3, '2022-06-21 02:29:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(480, 3, 3, '2022-06-21 02:29:42', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(481, 3, 3, '2022-06-21 02:29:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(482, 3, 3, '2022-06-21 02:29:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(483, 3, 3, '2022-06-21 02:29:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(484, 3, 3, '2022-06-21 02:29:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(485, 3, 3, '2022-06-21 02:29:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(486, 3, 3, '2022-06-21 02:29:51', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(487, 3, 3, '2022-06-21 02:29:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(488, 3, 3, '2022-06-21 02:30:01', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(489, 3, 3, '2022-06-21 02:30:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(490, 3, 1, '2022-06-21 11:27:14', 'Uspjesna prijava'),
(491, 3, 3, '2022-06-21 11:27:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(492, 3, 3, '2022-06-21 11:27:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(493, 3, 3, '2022-06-21 11:27:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(494, 3, 3, '2022-06-21 11:27:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(495, 3, 3, '2022-06-21 11:28:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(496, 3, 3, '2022-06-21 11:28:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(497, 3, 3, '2022-06-21 11:28:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(498, NULL, 3, '2022-06-21 12:24:56', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(499, 3, 1, '2022-06-21 12:25:02', 'Uspjesna prijava'),
(500, 3, 3, '2022-06-21 12:25:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(501, 3, 3, '2022-06-21 12:25:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(502, 3, 3, '2022-06-21 12:25:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(503, 3, 3, '2022-06-21 12:25:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(504, 3, 3, '2022-06-21 12:25:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(505, 3, 3, '2022-06-21 12:25:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(506, 3, 3, '2022-06-21 12:25:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(507, 3, 3, '2022-06-21 12:25:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(508, 3, 3, '2022-06-21 12:25:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(509, 3, 3, '2022-06-21 12:25:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(510, 3, 3, '2022-06-21 12:25:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(511, 3, 3, '2022-06-21 13:05:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(512, 3, 3, '2022-06-21 13:05:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(513, 3, 3, '2022-06-21 13:05:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(514, 3, 3, '2022-06-21 13:05:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(515, 3, 3, '2022-06-21 13:14:42', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(516, 3, 3, '2022-06-21 13:14:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(517, 3, 3, '2022-06-21 13:14:46', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(518, 3, 3, '2022-06-21 13:14:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(519, 3, 3, '2022-06-21 13:14:51', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(520, 3, 3, '2022-06-21 13:14:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(521, 3, 3, '2022-06-21 13:21:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(522, 3, 3, '2022-06-21 13:21:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(523, 3, 3, '2022-06-21 13:21:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(524, 3, 3, '2022-06-21 13:27:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(525, 3, 3, '2022-06-21 13:45:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(526, 3, 3, '2022-06-21 13:55:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(527, 3, 3, '2022-06-21 13:55:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(528, 3, 3, '2022-06-21 13:55:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(529, 3, 3, '2022-06-21 13:55:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(530, 3, 3, '2022-06-21 13:56:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(531, 3, 3, '2022-06-21 13:56:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(532, 3, 3, '2022-06-21 13:56:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(533, 3, 3, '2022-06-21 13:57:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(534, 3, 3, '2022-06-21 13:57:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(535, 3, 3, '2022-06-21 13:57:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(536, 3, 3, '2022-06-21 13:57:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(537, 3, 3, '2022-06-21 14:01:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(538, 3, 3, '2022-06-21 14:35:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(539, 3, 3, '2022-06-21 14:35:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(540, 3, 3, '2022-06-21 14:36:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(541, 3, 3, '2022-06-21 14:41:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(542, 3, 3, '2022-06-21 14:41:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(543, 3, 3, '2022-06-21 14:41:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(544, 3, 3, '2022-06-21 14:44:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(545, 3, 3, '2022-06-21 14:44:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(546, 3, 3, '2022-06-21 14:44:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(547, 3, 3, '2022-06-21 14:44:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(548, 3, 3, '2022-06-21 14:44:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(549, 3, 3, '2022-06-21 14:44:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(550, 3, 3, '2022-06-21 14:44:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(551, 3, 3, '2022-06-21 14:44:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(552, 3, 3, '2022-06-21 14:51:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(553, 3, 3, '2022-06-21 14:51:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(554, 3, 3, '2022-06-21 14:53:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(555, 3, 3, '2022-06-21 14:53:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(556, 3, 3, '2022-06-21 14:53:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(557, 3, 3, '2022-06-21 14:53:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(558, 3, 3, '2022-06-21 14:53:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(559, 3, 3, '2022-06-21 14:53:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(560, 3, 3, '2022-06-21 14:53:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(561, 3, 3, '2022-06-21 14:53:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(562, 3, 3, '2022-06-21 14:53:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(563, 3, 3, '2022-06-21 14:54:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(564, 3, 3, '2022-06-21 14:54:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(565, 3, 3, '2022-06-21 14:56:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(566, 3, 3, '2022-06-21 14:56:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(567, 3, 3, '2022-06-21 14:56:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(568, 3, 3, '2022-06-21 15:01:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(569, 3, 3, '2022-06-21 15:01:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(570, 3, 3, '2022-06-21 15:02:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(571, 3, 3, '2022-06-21 15:03:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(572, 3, 3, '2022-06-21 15:04:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(573, 3, 3, '2022-06-21 15:04:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(574, 3, 3, '2022-06-21 15:04:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(575, 3, 3, '2022-06-21 15:04:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(576, 3, 3, '2022-06-21 15:04:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(577, 3, 3, '2022-06-21 15:05:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(578, 3, 1, '2022-06-21 17:24:52', 'Uspjesna prijava'),
(579, 3, 3, '2022-06-21 17:24:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(580, 3, 3, '2022-06-21 17:25:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(581, 3, 3, '2022-06-21 17:25:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(582, 3, 3, '2022-06-21 17:25:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(583, 3, 3, '2022-06-21 17:25:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(584, 3, 3, '2022-06-21 17:25:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(585, 3, 3, '2022-06-21 17:25:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(586, 3, 3, '2022-06-21 17:29:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(587, 3, 3, '2022-06-21 17:29:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(588, 3, 3, '2022-06-21 17:36:58', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(589, 3, 3, '2022-06-21 17:37:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(590, 3, 3, '2022-06-21 17:41:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(591, 3, 3, '2022-06-21 17:46:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(592, 3, 3, '2022-06-21 17:46:22', 'Pristup stranici Moje benzinske postaje (pperic)');
INSERT INTO `dnevnik` (`id_dnevnik`, `id_korisnik`, `id_tip_radnje`, `vrijeme`, `zapis`) VALUES
(593, 3, 3, '2022-06-21 17:46:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(594, 3, 3, '2022-06-21 17:48:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(595, 3, 3, '2022-06-21 17:49:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(596, 3, 3, '2022-06-21 18:04:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(597, 3, 3, '2022-06-21 18:04:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(598, 3, 3, '2022-06-21 18:09:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(599, 3, 3, '2022-06-21 18:09:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(600, 3, 3, '2022-06-21 18:10:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(601, 3, 3, '2022-06-21 18:12:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(602, 3, 3, '2022-06-21 18:12:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(603, 3, 3, '2022-06-21 18:13:08', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(604, 3, 3, '2022-06-21 18:13:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(605, 3, 3, '2022-06-21 18:13:12', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(606, 3, 3, '2022-06-21 18:13:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(607, 3, 3, '2022-06-21 18:13:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(608, 3, 3, '2022-06-21 18:13:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(609, 3, 3, '2022-06-21 18:13:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(610, 3, 3, '2022-06-21 18:14:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(611, 3, 3, '2022-06-21 18:19:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(612, 3, 3, '2022-06-21 18:20:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(613, 3, 3, '2022-06-21 18:20:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(614, 3, 3, '2022-06-21 18:20:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(615, 3, 3, '2022-06-21 18:20:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(616, 3, 3, '2022-06-21 18:21:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(617, 3, 3, '2022-06-21 18:21:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(618, 3, 3, '2022-06-21 18:24:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(619, 3, 3, '2022-06-21 18:24:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(620, 3, 3, '2022-06-21 18:24:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(621, 3, 3, '2022-06-21 18:24:34', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(622, 3, 3, '2022-06-21 18:24:38', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(623, 3, 3, '2022-06-21 18:24:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(624, 3, 3, '2022-06-21 18:25:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(625, 3, 3, '2022-06-21 18:26:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(626, 3, 3, '2022-06-21 18:26:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(627, 3, 3, '2022-06-21 18:27:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(628, 3, 3, '2022-06-21 18:31:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(629, 3, 3, '2022-06-21 18:35:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(630, 3, 3, '2022-06-21 18:35:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(631, 3, 3, '2022-06-21 18:36:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(632, 3, 3, '2022-06-21 18:36:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(633, 3, 3, '2022-06-21 18:36:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(634, 3, 3, '2022-06-21 18:36:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(635, 3, 3, '2022-06-21 18:39:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(636, 3, 3, '2022-06-21 18:39:36', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(637, 3, 3, '2022-06-21 18:43:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(638, 3, 3, '2022-06-21 18:43:41', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(639, 3, 3, '2022-06-21 18:43:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(640, 3, 3, '2022-06-21 18:43:50', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(641, 3, 3, '2022-06-21 18:44:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(642, 3, 3, '2022-06-21 18:44:19', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(643, 3, 3, '2022-06-21 18:45:47', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(644, 3, 3, '2022-06-21 18:47:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(645, 3, 3, '2022-06-21 18:47:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(646, 3, 3, '2022-06-21 18:47:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(647, 3, 3, '2022-06-21 18:48:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(648, 3, 3, '2022-06-21 18:48:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(649, 3, 3, '2022-06-21 18:48:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(650, 3, 3, '2022-06-21 18:48:08', 'Pristup stranici Moje benzinske postaje (pperic)'),
(651, 3, 3, '2022-06-21 18:48:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(652, 3, 3, '2022-06-21 18:48:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(653, 3, 3, '2022-06-21 18:48:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(654, 3, 3, '2022-06-21 18:48:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(655, 3, 3, '2022-06-21 18:48:20', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(656, 3, 3, '2022-06-21 18:52:05', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(657, 3, 3, '2022-06-21 18:52:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(658, 3, 3, '2022-06-21 18:52:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(659, 3, 3, '2022-06-21 18:52:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(660, 3, 3, '2022-06-21 18:52:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(661, 3, 3, '2022-06-21 18:52:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(662, 3, 3, '2022-06-21 18:52:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(663, 3, 3, '2022-06-21 18:52:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(664, 3, 3, '2022-06-21 18:52:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(665, 3, 3, '2022-06-21 18:52:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(666, 3, 3, '2022-06-21 18:53:10', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(667, 3, 3, '2022-06-21 18:56:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(668, 3, 3, '2022-06-21 18:57:12', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(669, 3, 3, '2022-06-21 18:57:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(670, 3, 3, '2022-06-21 19:00:49', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(671, 3, 3, '2022-06-21 19:08:37', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(672, 3, 3, '2022-06-21 19:08:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(673, 3, 3, '2022-06-21 19:08:47', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(674, 3, 3, '2022-06-21 19:11:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(675, 3, 3, '2022-06-21 19:11:32', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(676, 3, 3, '2022-06-21 19:13:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(677, 3, 3, '2022-06-21 19:13:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(678, 3, 3, '2022-06-21 19:17:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(679, 3, 3, '2022-06-21 19:20:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(680, 3, 3, '2022-06-21 19:20:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(681, 3, 3, '2022-06-21 19:21:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(682, 3, 3, '2022-06-21 19:21:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(683, 3, 3, '2022-06-21 19:21:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(684, 3, 3, '2022-06-21 19:21:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(685, 3, 3, '2022-06-21 19:21:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(686, 3, 3, '2022-06-21 19:21:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(687, 3, 3, '2022-06-21 19:21:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(688, 3, 3, '2022-06-21 19:21:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(689, 3, 3, '2022-06-21 19:25:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(690, 3, 3, '2022-06-21 19:25:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(691, 3, 3, '2022-06-21 19:25:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(692, 3, 3, '2022-06-21 19:25:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(693, 3, 3, '2022-06-21 19:25:32', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(694, 3, 3, '2022-06-21 19:25:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(695, 3, 3, '2022-06-21 19:25:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(696, 3, 3, '2022-06-21 19:25:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(697, 3, 3, '2022-06-21 19:25:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(698, 3, 3, '2022-06-21 19:25:39', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(699, 3, 3, '2022-06-21 19:25:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(700, 3, 3, '2022-06-21 19:25:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(701, 3, 3, '2022-06-21 19:25:46', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(702, 3, 3, '2022-06-21 19:25:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(703, 3, 3, '2022-06-21 19:26:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(704, 3, 3, '2022-06-21 19:26:31', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(705, 3, 3, '2022-06-21 19:26:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(706, 3, 3, '2022-06-21 19:26:36', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(707, 3, 3, '2022-06-21 19:26:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(708, 3, 3, '2022-06-21 19:27:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(709, 3, 3, '2022-06-21 19:27:09', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(710, 3, 3, '2022-06-21 19:27:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(711, 3, 3, '2022-06-21 19:27:18', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(712, 3, 3, '2022-06-21 19:27:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(713, 3, 3, '2022-06-21 19:27:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(714, 3, 3, '2022-06-21 19:31:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(715, 3, 3, '2022-06-21 19:41:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(716, 3, 3, '2022-06-21 19:42:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(717, 3, 3, '2022-06-21 19:42:23', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(718, 3, 3, '2022-06-21 19:42:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(719, 3, 3, '2022-06-21 19:42:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(720, 3, 3, '2022-06-21 19:42:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(721, 3, 3, '2022-06-21 19:42:37', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(722, NULL, 3, '2022-06-21 20:15:20', 'Pokusaj pristupa stranici Uredivanje vrsta goriva (gost)'),
(723, 3, 1, '2022-06-21 20:15:26', 'Uspjesna prijava'),
(724, 3, 3, '2022-06-21 20:15:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(725, 3, 3, '2022-06-21 20:15:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(726, 3, 3, '2022-06-21 20:15:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(727, 3, 3, '2022-06-21 20:15:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(728, 3, 3, '2022-06-21 20:15:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(729, 3, 3, '2022-06-21 20:15:41', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(730, 3, 3, '2022-06-21 20:21:16', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(731, 3, 3, '2022-06-21 20:22:43', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(732, 3, 3, '2022-06-21 20:23:05', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(733, 3, 3, '2022-06-21 20:23:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(734, 3, 3, '2022-06-21 20:23:57', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(735, 3, 3, '2022-06-21 20:23:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(736, 3, 3, '2022-06-21 20:24:01', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(737, 3, 3, '2022-06-21 20:24:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(738, 3, 3, '2022-06-21 20:24:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(739, 3, 3, '2022-06-21 20:24:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(740, 3, 3, '2022-06-21 20:25:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(741, 3, 3, '2022-06-21 20:25:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(742, 3, 3, '2022-06-21 20:25:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(743, 3, 3, '2022-06-21 20:25:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(744, 3, 3, '2022-06-21 20:25:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(745, 3, 3, '2022-06-21 20:29:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(746, 3, 3, '2022-06-21 20:29:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(747, 3, 3, '2022-06-21 20:29:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(748, 3, 3, '2022-06-21 20:29:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(749, 3, 3, '2022-06-21 20:29:38', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(750, 3, 3, '2022-06-21 20:29:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(751, 3, 3, '2022-06-21 20:29:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(752, 3, 3, '2022-06-21 20:30:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(753, 3, 3, '2022-06-21 20:35:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(754, NULL, 3, '2022-06-21 22:40:36', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(755, 15, 1, '2022-06-21 22:42:20', 'Uspjesna prijava'),
(756, 15, 1, '2022-06-21 22:43:08', 'Uspjesna prijava'),
(757, 3, 1, '2022-06-21 22:45:18', 'Uspjesna prijava'),
(758, 15, 1, '2022-06-21 22:46:09', 'Uspjesna prijava'),
(759, 3, 1, '2022-06-21 23:35:11', 'Uspjesna prijava'),
(760, 3, 3, '2022-06-21 23:35:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(761, 3, 3, '2022-06-21 23:35:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(762, 3, 3, '2022-06-21 23:35:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(763, 3, 3, '2022-06-21 23:35:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(764, 3, 3, '2022-06-21 23:35:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(765, 3, 3, '2022-06-21 23:35:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(766, NULL, 3, '2022-06-22 00:17:16', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(767, 15, 1, '2022-06-22 00:17:22', 'Uspjesna prijava'),
(768, 15, 3, '2022-06-22 00:17:29', 'Pristup stranici Moje benzinske postaje (aanic)'),
(769, 15, 3, '2022-06-22 00:44:53', 'Pristup stranici Moje benzinske postaje (aanic)'),
(770, 14, 1, '2022-06-22 00:45:50', 'Uspjesna prijava'),
(771, 14, 3, '2022-06-22 00:45:53', 'Pristup stranici Moje benzinske postaje (sstevic)'),
(772, 15, 1, '2022-06-22 00:46:04', 'Uspjesna prijava'),
(773, 15, 3, '2022-06-22 00:46:09', 'Pristup stranici Moje benzinske postaje (aanic)'),
(774, 15, 3, '2022-06-22 01:17:47', 'Pristup stranici Moje benzinske postaje (aanic)'),
(775, 15, 3, '2022-06-22 01:17:53', 'Pristup stranici Moje benzinske postaje (aanic)'),
(776, 15, 3, '2022-06-22 01:18:17', 'Pristup stranici Moje benzinske postaje (aanic)'),
(777, 15, 3, '2022-06-22 01:18:19', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(778, 15, 3, '2022-06-22 01:18:22', 'Pristup stranici Moje benzinske postaje (aanic)'),
(779, 15, 3, '2022-06-22 01:20:37', 'Pristup stranici Moje benzinske postaje (aanic)'),
(780, 15, 3, '2022-06-22 01:20:39', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(781, 15, 3, '2022-06-22 01:20:56', 'Pristup stranici Moje benzinske postaje (aanic)'),
(782, 15, 3, '2022-06-22 01:21:46', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(783, 15, 3, '2022-06-22 01:21:51', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(784, 15, 3, '2022-06-22 01:22:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(785, 15, 3, '2022-06-22 01:36:57', 'Pristup stranici Moje benzinske postaje (aanic)'),
(786, 15, 3, '2022-06-22 01:36:58', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(787, 15, 3, '2022-06-22 01:37:53', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(788, 15, 3, '2022-06-22 01:38:12', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(789, 15, 3, '2022-06-22 01:38:48', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(790, 15, 3, '2022-06-22 01:39:13', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(791, 15, 3, '2022-06-22 01:40:02', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(792, 15, 3, '2022-06-22 01:40:31', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(793, 15, 3, '2022-06-22 01:41:19', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(794, 15, 3, '2022-06-22 01:41:44', 'Pristup stranici Moje benzinske postaje (aanic)'),
(795, 15, 3, '2022-06-22 01:41:46', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(796, 15, 3, '2022-06-22 01:42:13', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(797, 15, 3, '2022-06-22 01:43:12', 'Pristup stranici Moje benzinske postaje (aanic)'),
(798, 15, 3, '2022-06-22 01:43:13', 'Pristup stranici Moje benzinske postaje (aanic)'),
(799, 15, 3, '2022-06-22 01:43:14', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(800, 15, 3, '2022-06-22 01:43:41', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(801, 15, 3, '2022-06-22 01:43:44', 'Pristup stranici Moje benzinske postaje (aanic)'),
(802, 15, 3, '2022-06-22 01:57:22', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(803, 15, 3, '2022-06-22 01:57:38', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(804, 15, 3, '2022-06-22 01:58:00', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(805, 15, 3, '2022-06-22 01:58:55', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(806, 15, 3, '2022-06-22 01:58:59', 'Pristup stranici Moje benzinske postaje (aanic)'),
(807, 15, 3, '2022-06-22 01:59:02', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(808, 15, 3, '2022-06-22 01:59:16', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(809, 15, 3, '2022-06-22 01:59:26', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(810, 15, 3, '2022-06-22 01:59:39', 'Pristup stranici Moje benzinske postaje (aanic)'),
(811, 15, 3, '2022-06-22 01:59:41', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(812, 15, 3, '2022-06-22 01:59:49', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(813, 15, 3, '2022-06-22 02:00:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(814, 15, 3, '2022-06-22 02:00:51', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(815, 15, 3, '2022-06-22 02:01:07', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(816, 15, 3, '2022-06-22 02:02:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(817, 15, 3, '2022-06-22 02:02:02', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(818, 15, 3, '2022-06-22 02:03:24', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(819, 15, 3, '2022-06-22 02:03:40', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(820, 15, 3, '2022-06-22 02:03:49', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(821, 15, 3, '2022-06-22 02:06:06', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(822, 15, 3, '2022-06-22 02:06:15', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(823, 15, 3, '2022-06-22 02:06:29', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(824, 15, 3, '2022-06-22 02:08:34', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(825, 15, 3, '2022-06-22 02:08:46', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(826, 15, 3, '2022-06-22 02:11:46', 'Pristup stranici Moje benzinske postaje (aanic)'),
(827, 15, 3, '2022-06-22 02:11:55', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(828, 15, 3, '2022-06-22 02:12:13', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(829, 15, 3, '2022-06-22 02:12:24', 'Pristup stranici Moje benzinske postaje (aanic)'),
(830, 15, 3, '2022-06-22 02:13:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(831, 15, 3, '2022-06-22 02:15:40', 'Pristup stranici Moje benzinske postaje (aanic)'),
(832, 15, 3, '2022-06-22 02:17:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(833, 15, 3, '2022-06-22 02:21:58', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(834, 15, 3, '2022-06-22 02:22:16', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(835, 15, 3, '2022-06-22 02:22:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(836, 15, 3, '2022-06-22 02:29:50', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(837, 15, 3, '2022-06-22 02:30:00', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(838, 15, 3, '2022-06-22 02:30:09', 'Pristup stranici Moje benzinske postaje (aanic)'),
(839, 15, 3, '2022-06-22 02:30:14', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(840, 15, 3, '2022-06-22 02:30:34', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(841, 15, 3, '2022-06-22 02:30:38', 'Pristup stranici Moje benzinske postaje (aanic)'),
(842, 15, 3, '2022-06-22 02:32:15', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(843, 15, 3, '2022-06-22 02:32:23', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(844, 15, 3, '2022-06-22 02:32:26', 'Pristup stranici Moje benzinske postaje (aanic)'),
(845, 15, 1, '2022-06-22 10:53:42', 'Uspjesna prijava'),
(846, 15, 3, '2022-06-22 10:53:47', 'Pristup stranici Moje benzinske postaje (aanic)'),
(847, 15, 3, '2022-06-22 10:59:45', 'Pristup stranici Moje benzinske postaje (aanic)'),
(848, 15, 3, '2022-06-22 11:00:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(849, NULL, 3, '2022-06-22 11:45:27', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(850, 15, 1, '2022-06-22 11:45:33', 'Uspjesna prijava'),
(851, 15, 3, '2022-06-22 11:46:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(852, 15, 3, '2022-06-22 12:03:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(853, 15, 3, '2022-06-22 12:04:42', 'Pristup stranici Moje benzinske postaje (aanic)'),
(854, 15, 3, '2022-06-22 12:06:40', 'Pristup stranici Moje benzinske postaje (aanic)'),
(855, 15, 3, '2022-06-22 12:17:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(856, 15, 3, '2022-06-22 12:21:56', 'Pristup stranici Moje benzinske postaje (aanic)'),
(857, 15, 3, '2022-06-22 12:23:36', 'Pristup stranici Moje benzinske postaje (aanic)'),
(858, 15, 3, '2022-06-22 12:24:04', 'Pristup stranici Moje benzinske postaje (aanic)'),
(859, 15, 3, '2022-06-22 12:24:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(860, 15, 3, '2022-06-22 12:26:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(861, 15, 3, '2022-06-22 12:28:35', 'Pristup stranici Moje benzinske postaje (aanic)'),
(862, 15, 3, '2022-06-22 12:29:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(863, 15, 3, '2022-06-22 12:30:21', 'Pristup stranici Moje benzinske postaje (aanic)'),
(864, 15, 3, '2022-06-22 12:31:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(865, 15, 3, '2022-06-22 12:32:22', 'Pristup stranici Moje benzinske postaje (aanic)'),
(866, 15, 3, '2022-06-22 12:32:48', 'Pristup stranici Moje benzinske postaje (aanic)'),
(867, 15, 3, '2022-06-22 12:33:32', 'Pristup stranici Moje benzinske postaje (aanic)'),
(868, 15, 3, '2022-06-22 12:33:53', 'Pristup stranici Moje benzinske postaje (aanic)'),
(869, 15, 3, '2022-06-22 12:34:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(870, 15, 3, '2022-06-22 12:35:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(871, 15, 3, '2022-06-22 12:37:45', 'Pristup stranici Moje benzinske postaje (aanic)'),
(872, 15, 3, '2022-06-22 12:38:07', 'Pristup stranici Moje benzinske postaje (aanic)'),
(873, 15, 3, '2022-06-22 12:38:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(874, 15, 3, '2022-06-22 12:57:44', 'Pristup stranici Moje benzinske postaje (aanic)'),
(875, 15, 3, '2022-06-22 13:00:11', 'Pristup stranici Moje benzinske postaje (aanic)'),
(876, 15, 3, '2022-06-22 13:06:37', 'Pristup stranici Moje benzinske postaje (aanic)'),
(877, 15, 3, '2022-06-22 13:06:40', 'Pristup stranici Moje benzinske postaje (aanic)'),
(878, 15, 3, '2022-06-22 13:06:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(879, 15, 3, '2022-06-22 13:11:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(880, 15, 3, '2022-06-22 13:12:22', 'Pristup stranici Moje benzinske postaje (aanic)'),
(881, 15, 3, '2022-06-22 13:12:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(882, 15, 3, '2022-06-22 13:14:06', 'Pristup stranici Moje benzinske postaje (aanic)'),
(883, 15, 3, '2022-06-22 13:14:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(884, NULL, 3, '2022-06-22 13:41:50', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(885, 15, 1, '2022-06-22 13:41:56', 'Uspjesna prijava'),
(886, 15, 3, '2022-06-22 13:42:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(887, 15, 3, '2022-06-22 13:42:11', 'Pristup stranici Moje benzinske postaje (aanic)'),
(888, 15, 3, '2022-06-22 13:42:57', 'Pristup stranici Moje benzinske postaje (aanic)'),
(889, 15, 3, '2022-06-22 13:42:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(890, 15, 3, '2022-06-22 13:43:03', 'Pristup stranici Moje benzinske postaje (aanic)'),
(891, 15, 3, '2022-06-22 13:43:04', 'Pristup stranici Moje benzinske postaje (aanic)'),
(892, 15, 3, '2022-06-22 13:43:06', 'Pristup stranici Moje benzinske postaje (aanic)'),
(893, 15, 3, '2022-06-22 13:43:07', 'Pristup stranici Moje benzinske postaje (aanic)'),
(894, 15, 3, '2022-06-22 13:43:08', 'Pristup stranici Moje benzinske postaje (aanic)'),
(895, 15, 3, '2022-06-22 13:43:11', 'Pristup stranici Moje benzinske postaje (aanic)'),
(896, 15, 3, '2022-06-22 13:43:12', 'Pristup stranici Moje benzinske postaje (aanic)'),
(897, 15, 3, '2022-06-22 13:43:13', 'Pristup stranici Moje benzinske postaje (aanic)'),
(898, 15, 3, '2022-06-22 13:43:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(899, 15, 3, '2022-06-22 13:43:49', 'Pristup stranici Moje benzinske postaje (aanic)'),
(900, 15, 3, '2022-06-22 13:44:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(901, 15, 3, '2022-06-22 13:55:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(902, 15, 3, '2022-06-22 13:55:46', 'Pristup stranici Moje benzinske postaje (aanic)'),
(903, 15, 3, '2022-06-22 13:55:49', 'Pristup stranici Moje benzinske postaje (aanic)'),
(904, 15, 3, '2022-06-22 13:59:32', 'Pristup stranici Moje benzinske postaje (aanic)'),
(905, 15, 3, '2022-06-22 14:00:29', 'Pristup stranici Moje benzinske postaje (aanic)'),
(906, 15, 3, '2022-06-22 14:00:42', 'Pristup stranici Moje benzinske postaje (aanic)'),
(907, 15, 3, '2022-06-22 14:13:56', 'Pristup stranici Moje benzinske postaje (aanic)'),
(908, 15, 3, '2022-06-22 14:14:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(909, 15, 3, '2022-06-22 14:17:16', 'Pristup stranici Moje benzinske postaje (aanic)'),
(910, 15, 3, '2022-06-22 14:17:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(911, 15, 3, '2022-06-22 14:17:21', 'Pristup stranici Moje benzinske postaje (aanic)'),
(912, 15, 3, '2022-06-22 14:17:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(913, 15, 3, '2022-06-22 14:17:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(914, 15, 3, '2022-06-22 14:17:34', 'Pristup stranici Moje benzinske postaje (aanic)'),
(915, 15, 3, '2022-06-22 14:18:52', 'Pristup stranici Moje benzinske postaje (aanic)'),
(916, 15, 3, '2022-06-22 14:18:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(917, 15, 3, '2022-06-22 14:27:27', 'Pristup stranici Moje benzinske postaje (aanic)'),
(918, 15, 3, '2022-06-22 14:27:34', 'Pristup stranici Moje benzinske postaje (aanic)'),
(919, 15, 3, '2022-06-22 14:27:49', 'Pristup stranici Moje benzinske postaje (aanic)'),
(920, 15, 3, '2022-06-22 14:27:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(921, 15, 3, '2022-06-22 14:27:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(922, 15, 3, '2022-06-22 14:28:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(923, 15, 3, '2022-06-22 14:28:05', 'Pristup stranici Moje benzinske postaje (aanic)'),
(924, 15, 3, '2022-06-22 14:28:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(925, 15, 3, '2022-06-22 14:28:29', 'Pristup stranici Moje benzinske postaje (aanic)'),
(926, 15, 3, '2022-06-22 14:31:45', 'Pristup stranici Moje benzinske postaje (aanic)'),
(927, 15, 3, '2022-06-22 14:34:38', 'Pristup stranici Moje benzinske postaje (aanic)'),
(928, 15, 3, '2022-06-22 14:34:43', 'Pristup stranici Moje benzinske postaje (aanic)'),
(929, 15, 3, '2022-06-22 14:34:47', 'Pristup stranici Moje benzinske postaje (aanic)'),
(930, 15, 3, '2022-06-22 14:34:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(931, 15, 3, '2022-06-22 14:34:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(932, 15, 3, '2022-06-22 14:37:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(933, 15, 3, '2022-06-22 14:37:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(934, 15, 3, '2022-06-22 14:37:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(935, 15, 3, '2022-06-22 14:38:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(936, 15, 3, '2022-06-22 14:54:03', 'Pristup stranici Moje benzinske postaje (aanic)'),
(937, 15, 3, '2022-06-22 15:07:42', 'Pristup stranici Moje benzinske postaje (aanic)'),
(938, 15, 3, '2022-06-22 15:09:36', 'Pristup stranici Moje benzinske postaje (aanic)'),
(939, 15, 3, '2022-06-22 15:09:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(940, NULL, 3, '2022-06-22 15:47:13', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(941, 15, 1, '2022-06-22 15:47:20', 'Uspjesna prijava'),
(942, 15, 3, '2022-06-22 15:47:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(943, 15, 3, '2022-06-22 15:47:30', 'Pristup stranici Moje benzinske postaje (aanic)'),
(944, 15, 3, '2022-06-22 15:54:39', 'Pristup stranici Moje benzinske postaje (aanic)'),
(945, 15, 3, '2022-06-22 15:54:41', 'Pristup stranici Moje benzinske postaje (aanic)'),
(946, 15, 3, '2022-06-22 15:54:44', 'Pristup stranici Moje benzinske postaje (aanic)'),
(947, 15, 3, '2022-06-22 15:54:46', 'Pristup stranici Moje benzinske postaje (aanic)'),
(948, 15, 3, '2022-06-22 15:54:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(949, 15, 3, '2022-06-22 15:55:03', 'Pristup stranici Moje benzinske postaje (aanic)'),
(950, 15, 3, '2022-06-22 15:55:06', 'Pristup stranici Moje benzinske postaje (aanic)'),
(951, 15, 3, '2022-06-22 15:55:08', 'Pristup stranici Moje benzinske postaje (aanic)'),
(952, 15, 3, '2022-06-22 15:55:09', 'Pristup stranici Moje benzinske postaje (aanic)'),
(953, 15, 3, '2022-06-22 15:55:10', 'Pristup stranici Moje benzinske postaje (aanic)'),
(954, 15, 3, '2022-06-22 15:55:13', 'Pristup stranici Moje benzinske postaje (aanic)'),
(955, 15, 3, '2022-06-22 15:56:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(956, 15, 3, '2022-06-22 15:58:51', 'Pristup stranici Moje benzinske postaje (aanic)'),
(957, 15, 3, '2022-06-22 15:58:57', 'Pristup stranici Moje benzinske postaje (aanic)'),
(958, 15, 3, '2022-06-22 15:58:59', 'Pristup stranici Moje benzinske postaje (aanic)'),
(959, 15, 3, '2022-06-22 15:59:01', 'Pristup stranici Moje benzinske postaje (aanic)'),
(960, 15, 3, '2022-06-22 15:59:04', 'Pristup stranici Moje benzinske postaje (aanic)'),
(961, 15, 3, '2022-06-22 15:59:07', 'Pristup stranici Moje benzinske postaje (aanic)'),
(962, 15, 3, '2022-06-22 16:12:16', 'Pristup stranici Moje benzinske postaje (aanic)'),
(963, 15, 3, '2022-06-22 16:12:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(964, 15, 3, '2022-06-22 16:12:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(965, 15, 3, '2022-06-22 16:12:47', 'Pristup stranici Moje benzinske postaje (aanic)'),
(966, 15, 3, '2022-06-22 16:12:51', 'Pristup stranici Moje benzinske postaje (aanic)'),
(967, 15, 3, '2022-06-22 16:13:30', 'Pristup stranici Moje benzinske postaje (aanic)'),
(968, 15, 3, '2022-06-22 16:13:32', 'Pristup stranici Moje benzinske postaje (aanic)'),
(969, 15, 3, '2022-06-22 16:13:34', 'Pristup stranici Moje benzinske postaje (aanic)'),
(970, 15, 3, '2022-06-22 16:14:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(971, 15, 3, '2022-06-22 16:14:17', 'Pristup stranici Moje benzinske postaje (aanic)'),
(972, 15, 3, '2022-06-22 16:14:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(973, 15, 3, '2022-06-22 16:14:22', 'Pristup stranici Moje benzinske postaje (aanic)'),
(974, 15, 3, '2022-06-22 16:14:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(975, 15, 3, '2022-06-22 16:14:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(976, 15, 3, '2022-06-22 16:14:28', 'Pristup stranici Moje benzinske postaje (aanic)'),
(977, 15, 3, '2022-06-22 16:14:30', 'Pristup stranici Moje benzinske postaje (aanic)'),
(978, 15, 3, '2022-06-22 16:15:11', 'Pristup stranici Moje benzinske postaje (aanic)'),
(979, 15, 3, '2022-06-22 16:15:16', 'Pristup stranici Moje benzinske postaje (aanic)'),
(980, 15, 3, '2022-06-22 16:15:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(981, 15, 3, '2022-06-22 16:16:12', 'Pristup stranici Moje benzinske postaje (aanic)'),
(982, 15, 3, '2022-06-22 16:16:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(983, 15, 3, '2022-06-22 16:16:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(984, 15, 3, '2022-06-22 16:16:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(985, 15, 3, '2022-06-22 16:17:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(986, 15, 3, '2022-06-22 16:18:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(987, 15, 3, '2022-06-22 16:18:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(988, 15, 3, '2022-06-22 16:19:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(989, 15, 3, '2022-06-22 16:19:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(990, 15, 3, '2022-06-22 16:19:46', 'Pristup stranici Moje benzinske postaje (aanic)'),
(991, 15, 3, '2022-06-22 16:19:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(992, 15, 3, '2022-06-22 16:30:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(993, 15, 3, '2022-06-22 16:30:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(994, 15, 3, '2022-06-22 16:31:07', 'Pristup stranici Moje benzinske postaje (aanic)'),
(995, 15, 3, '2022-06-22 16:32:35', 'Pristup stranici Moje benzinske postaje (aanic)'),
(996, 15, 3, '2022-06-22 16:32:37', 'Pristup stranici Moje benzinske postaje (aanic)'),
(997, 15, 3, '2022-06-22 16:33:11', 'Pristup stranici Moje benzinske postaje (aanic)'),
(998, 15, 3, '2022-06-22 16:33:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(999, 15, 3, '2022-06-22 16:34:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1000, 15, 3, '2022-06-22 16:34:53', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1001, 15, 3, '2022-06-22 16:34:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1002, 15, 3, '2022-06-22 16:34:56', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1003, 15, 3, '2022-06-22 16:36:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1004, 15, 3, '2022-06-22 16:36:27', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1005, 15, 3, '2022-06-22 16:36:29', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1006, 15, 3, '2022-06-22 16:36:32', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1007, 15, 3, '2022-06-22 16:36:37', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1008, 15, 3, '2022-06-22 16:37:24', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1009, 15, 3, '2022-06-22 16:41:30', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1010, 15, 3, '2022-06-22 16:41:32', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1011, 15, 3, '2022-06-22 16:45:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1012, 15, 3, '2022-06-22 16:45:53', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1013, 15, 3, '2022-06-22 16:46:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1014, 15, 3, '2022-06-22 16:46:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1015, 15, 3, '2022-06-22 16:47:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1016, 15, 3, '2022-06-22 16:47:38', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1017, 15, 3, '2022-06-22 17:11:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1018, 15, 3, '2022-06-22 17:11:31', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1019, 15, 3, '2022-06-22 17:13:01', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1020, 15, 3, '2022-06-22 17:14:36', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1021, NULL, 3, '2022-06-22 17:55:04', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(1022, 15, 1, '2022-06-22 17:55:09', 'Uspjesna prijava'),
(1023, 15, 3, '2022-06-22 17:56:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1024, 15, 3, '2022-06-22 17:56:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1025, 15, 3, '2022-06-22 17:56:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1026, 15, 3, '2022-06-22 17:57:21', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1027, 15, 3, '2022-06-22 17:57:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1028, 15, 3, '2022-06-22 17:58:02', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1029, 15, 3, '2022-06-22 18:02:45', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1030, 15, 3, '2022-06-22 18:02:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1031, 15, 3, '2022-06-22 18:03:13', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1032, 15, 3, '2022-06-22 18:03:54', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1033, 15, 3, '2022-06-22 18:03:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1034, 15, 3, '2022-06-22 18:04:41', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1035, 15, 3, '2022-06-22 18:06:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1036, 15, 3, '2022-06-22 18:06:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1037, 15, 3, '2022-06-22 18:06:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1038, 15, 3, '2022-06-22 18:07:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1039, 15, 3, '2022-06-22 18:07:31', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1040, 15, 3, '2022-06-22 18:07:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1041, NULL, 3, '2022-06-22 18:40:35', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(1042, 15, 1, '2022-06-22 18:40:42', 'Uspjesna prijava'),
(1043, 15, 3, '2022-06-22 18:40:46', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1044, 15, 3, '2022-06-22 18:41:08', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1045, 15, 3, '2022-06-22 18:41:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1046, 15, 3, '2022-06-22 18:41:27', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1047, 15, 3, '2022-06-22 18:41:30', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1048, 15, 3, '2022-06-22 18:41:40', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1049, 15, 3, '2022-06-22 18:41:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1050, 15, 3, '2022-06-22 18:42:03', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1051, 15, 3, '2022-06-22 18:43:57', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1052, 15, 3, '2022-06-22 18:44:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1053, 15, 3, '2022-06-22 18:44:04', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1054, 15, 3, '2022-06-22 18:44:08', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1055, 15, 3, '2022-06-22 18:44:11', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1056, 15, 3, '2022-06-22 18:44:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1057, NULL, 3, '2022-06-22 19:11:58', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(1058, 15, 1, '2022-06-22 19:12:03', 'Uspjesna prijava'),
(1059, 3, 1, '2022-06-22 20:13:30', 'Uspjesna prijava'),
(1060, 3, 3, '2022-06-22 20:13:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1061, 3, 3, '2022-06-22 20:13:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1062, 3, 3, '2022-06-22 20:13:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1063, 3, 3, '2022-06-22 20:13:52', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1064, NULL, 3, '2022-06-22 20:44:32', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(1065, 3, 1, '2022-06-22 20:44:39', 'Uspjesna prijava'),
(1066, 3, 3, '2022-06-22 20:44:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1067, 3, 3, '2022-06-22 20:44:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1068, 3, 3, '2022-06-22 20:44:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1069, 3, 3, '2022-06-22 20:44:49', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1070, 3, 3, '2022-06-22 20:44:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1071, 3, 3, '2022-06-22 20:44:58', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1072, 3, 3, '2022-06-22 20:50:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1073, 3, 3, '2022-06-22 20:51:42', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1074, 3, 3, '2022-06-22 20:51:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1075, 3, 3, '2022-06-22 20:53:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1076, 3, 3, '2022-06-22 20:54:00', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1077, 3, 3, '2022-06-22 20:54:17', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1078, 3, 3, '2022-06-22 20:54:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1079, 3, 3, '2022-06-22 20:54:22', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1080, 3, 3, '2022-06-22 20:54:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1081, 3, 3, '2022-06-22 20:54:25', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1082, 3, 3, '2022-06-22 20:55:31', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1083, 3, 3, '2022-06-22 20:55:55', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1084, 3, 3, '2022-06-22 20:57:32', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1085, 3, 3, '2022-06-22 20:58:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1086, 3, 3, '2022-06-22 20:58:19', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1087, 3, 3, '2022-06-22 20:58:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1088, 3, 3, '2022-06-22 20:58:59', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1089, 3, 3, '2022-06-22 21:01:04', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1090, 3, 3, '2022-06-22 21:02:33', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1091, 3, 3, '2022-06-22 21:02:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1092, 3, 3, '2022-06-22 21:02:37', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1093, 3, 3, '2022-06-22 21:02:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1094, 3, 3, '2022-06-22 21:02:41', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1095, 3, 3, '2022-06-22 21:02:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1096, 3, 3, '2022-06-22 21:02:46', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1097, 3, 3, '2022-06-22 21:02:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1098, 3, 3, '2022-06-22 21:02:58', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1099, 3, 3, '2022-06-22 21:03:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1100, 3, 3, '2022-06-22 21:03:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1101, 3, 3, '2022-06-22 21:03:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1102, 3, 3, '2022-06-22 21:03:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1103, 3, 3, '2022-06-22 21:03:28', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1104, 3, 3, '2022-06-22 21:03:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1105, 3, 3, '2022-06-22 21:03:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1106, 3, 3, '2022-06-22 21:03:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1107, 3, 3, '2022-06-22 21:03:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1108, 3, 3, '2022-06-22 21:04:01', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1109, 3, 3, '2022-06-22 21:04:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1110, 3, 3, '2022-06-22 21:05:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1111, 3, 3, '2022-06-22 21:05:20', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1112, 3, 3, '2022-06-22 21:05:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1113, 3, 3, '2022-06-22 21:05:24', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1114, 3, 3, '2022-06-22 21:05:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1115, 3, 3, '2022-06-22 21:05:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1116, 3, 3, '2022-06-22 21:05:36', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1117, 3, 3, '2022-06-22 21:05:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1118, 3, 3, '2022-06-22 21:05:39', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1119, 3, 3, '2022-06-22 21:05:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1120, 3, 3, '2022-06-22 21:05:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1121, 3, 3, '2022-06-22 21:05:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1122, 3, 3, '2022-06-22 21:05:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1123, 3, 3, '2022-06-22 21:05:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1124, 3, 3, '2022-06-22 21:05:50', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1125, 3, 3, '2022-06-22 21:05:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1126, 3, 3, '2022-06-22 21:07:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1127, 3, 3, '2022-06-22 21:07:10', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1128, 3, 3, '2022-06-22 21:08:09', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1129, 3, 3, '2022-06-22 21:13:21', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1130, 3, 3, '2022-06-22 21:13:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1131, 3, 3, '2022-06-22 21:13:29', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1132, 3, 3, '2022-06-22 21:13:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1133, 3, 3, '2022-06-22 21:13:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1134, 3, 3, '2022-06-22 21:13:33', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1135, 3, 3, '2022-06-22 21:13:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1136, 3, 3, '2022-06-22 21:13:38', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1137, 3, 3, '2022-06-22 21:13:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1138, 3, 3, '2022-06-22 21:27:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1139, 3, 3, '2022-06-22 21:28:25', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1140, 3, 3, '2022-06-22 21:28:39', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1141, 3, 3, '2022-06-22 21:29:55', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1142, 3, 3, '2022-06-22 21:29:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1143, 3, 3, '2022-06-22 21:30:00', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1144, 3, 3, '2022-06-22 21:30:06', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1145, 3, 3, '2022-06-22 21:32:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1146, 3, 3, '2022-06-22 21:32:51', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1147, 3, 3, '2022-06-22 21:32:57', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1148, 3, 3, '2022-06-22 21:33:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1149, 3, 3, '2022-06-22 21:35:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1150, 3, 3, '2022-06-22 21:37:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1151, 3, 3, '2022-06-22 21:37:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1152, 3, 3, '2022-06-22 21:38:07', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1153, 3, 3, '2022-06-22 21:38:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1154, 3, 3, '2022-06-22 21:40:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1155, 3, 3, '2022-06-22 21:42:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1156, 3, 3, '2022-06-22 21:54:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1157, 3, 3, '2022-06-22 21:54:24', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1158, 15, 1, '2022-06-22 22:15:28', 'Uspjesna prijava'),
(1159, 15, 3, '2022-06-22 22:15:32', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1160, 15, 3, '2022-06-22 22:15:36', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1161, 15, 3, '2022-06-22 22:19:09', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1162, 15, 3, '2022-06-22 22:19:26', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1163, 15, 3, '2022-06-22 22:32:42', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1164, 15, 1, '2022-06-22 22:40:52', 'Uspjesna prijava'),
(1165, 15, 3, '2022-06-22 22:41:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1166, 15, 3, '2022-06-22 22:41:09', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1167, 15, 3, '2022-06-22 22:41:16', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1168, 15, 3, '2022-06-22 22:41:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1169, 15, 3, '2022-06-22 22:41:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1170, 15, 3, '2022-06-22 22:41:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1171, 15, 3, '2022-06-22 22:41:24', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1172, 15, 3, '2022-06-22 22:41:35', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1173, 3, 1, '2022-06-22 22:42:07', 'Uspjesna prijava'),
(1174, 3, 3, '2022-06-22 22:42:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1175, 3, 3, '2022-06-22 22:42:32', 'Pristup stranici Moje benzinske postaje (pperic)');
INSERT INTO `dnevnik` (`id_dnevnik`, `id_korisnik`, `id_tip_radnje`, `vrijeme`, `zapis`) VALUES
(1176, 3, 3, '2022-06-22 22:42:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1177, 3, 3, '2022-06-22 22:42:42', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1178, 3, 3, '2022-06-22 22:42:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1179, 3, 3, '2022-06-22 22:42:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1180, 3, 3, '2022-06-22 22:42:57', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1181, 3, 3, '2022-06-22 22:43:00', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1182, 3, 3, '2022-06-22 22:43:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1183, 3, 3, '2022-06-22 22:43:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1184, 3, 3, '2022-06-22 22:43:09', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1185, 3, 3, '2022-06-22 22:43:12', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1186, 3, 3, '2022-06-22 22:43:13', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1187, 3, 3, '2022-06-22 22:44:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1188, 3, 3, '2022-06-22 22:44:06', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1189, 3, 3, '2022-06-22 22:44:09', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1190, 3, 3, '2022-06-22 22:44:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1191, 3, 3, '2022-06-22 22:44:20', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1192, 3, 3, '2022-06-22 22:44:23', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1193, 3, 3, '2022-06-22 22:46:26', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1194, 3, 3, '2022-06-22 22:46:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1195, 3, 3, '2022-06-22 22:46:30', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1196, 3, 3, '2022-06-22 22:46:36', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1197, 3, 3, '2022-06-22 22:47:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1198, 3, 3, '2022-06-22 22:47:52', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1199, 3, 3, '2022-06-22 22:47:54', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1200, 3, 3, '2022-06-22 22:48:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1201, 3, 3, '2022-06-22 22:48:35', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1202, 3, 3, '2022-06-22 22:48:37', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1203, 3, 3, '2022-06-22 22:48:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1204, 3, 3, '2022-06-22 22:48:57', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1205, 3, 3, '2022-06-22 22:48:59', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1206, 3, 3, '2022-06-22 22:49:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1207, 3, 3, '2022-06-22 22:49:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1208, 3, 3, '2022-06-22 22:49:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1209, 3, 3, '2022-06-22 22:49:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1210, 3, 3, '2022-06-22 22:49:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1211, 3, 3, '2022-06-22 22:49:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1212, 3, 3, '2022-06-22 22:49:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1213, 3, 3, '2022-06-22 22:49:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1214, 3, 3, '2022-06-22 22:49:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1215, 3, 3, '2022-06-22 22:50:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1216, 3, 3, '2022-06-22 22:50:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1217, 3, 3, '2022-06-22 22:50:14', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1218, 3, 3, '2022-06-22 22:50:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1219, 3, 3, '2022-06-22 22:50:25', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1220, 3, 3, '2022-06-22 22:50:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1221, 3, 3, '2022-06-22 22:50:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1222, 3, 3, '2022-06-22 22:50:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1223, 3, 3, '2022-06-22 22:50:32', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1224, 3, 3, '2022-06-22 22:50:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1225, 3, 3, '2022-06-22 22:50:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1226, 3, 3, '2022-06-22 22:50:36', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1227, 3, 3, '2022-06-22 22:50:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1228, 3, 3, '2022-06-22 22:51:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1229, 3, 3, '2022-06-22 22:51:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1230, 3, 3, '2022-06-22 22:51:10', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1231, 3, 3, '2022-06-22 22:51:11', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1232, 3, 3, '2022-06-22 22:51:29', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1233, 3, 3, '2022-06-22 22:53:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1234, 3, 3, '2022-06-22 22:53:25', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1235, 3, 3, '2022-06-22 22:53:39', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1236, 3, 3, '2022-06-22 22:53:46', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1237, 3, 3, '2022-06-22 22:53:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1238, 3, 3, '2022-06-22 22:53:55', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1239, 3, 3, '2022-06-22 22:54:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1240, 3, 3, '2022-06-22 22:54:04', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1241, 3, 3, '2022-06-22 22:54:22', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1242, 3, 3, '2022-06-22 22:54:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1243, 3, 3, '2022-06-22 22:54:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1244, 3, 3, '2022-06-22 22:54:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1245, 3, 3, '2022-06-22 22:54:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1246, 3, 3, '2022-06-22 22:54:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1247, 3, 3, '2022-06-22 22:54:45', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1248, 3, 3, '2022-06-22 22:54:50', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1249, 3, 3, '2022-06-22 22:55:23', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1250, 3, 3, '2022-06-22 22:55:25', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1251, 3, 3, '2022-06-22 22:55:29', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1252, 3, 3, '2022-06-22 22:55:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1253, 3, 3, '2022-06-22 22:55:44', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1254, 3, 3, '2022-06-22 22:55:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1255, 3, 3, '2022-06-22 22:55:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1256, 3, 3, '2022-06-22 22:55:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1257, 3, 3, '2022-06-22 22:55:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1258, 3, 3, '2022-06-22 22:56:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1259, 15, 1, '2022-06-22 22:56:44', 'Uspjesna prijava'),
(1260, 15, 3, '2022-06-22 22:56:49', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1261, 15, 3, '2022-06-22 22:56:52', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1262, 15, 3, '2022-06-22 22:56:57', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1263, 15, 3, '2022-06-22 22:56:58', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1264, 15, 3, '2022-06-22 22:57:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1265, 15, 3, '2022-06-22 22:57:02', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1266, 15, 3, '2022-06-22 22:57:03', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1267, 15, 3, '2022-06-22 22:58:02', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1268, 15, 3, '2022-06-22 22:58:09', 'Pristup stranici Rang lista  (aanic)'),
(1269, 15, 3, '2022-06-22 23:01:07', 'Pristup stranici Rang lista  (aanic)'),
(1270, 15, 3, '2022-06-22 23:10:19', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1271, 15, 3, '2022-06-22 23:10:21', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1272, 15, 3, '2022-06-22 23:10:27', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1273, 15, 3, '2022-06-22 23:10:49', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1274, 15, 3, '2022-06-22 23:11:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1275, 15, 3, '2022-06-22 23:11:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1276, 15, 3, '2022-06-22 23:11:22', 'Pristup stranici Rang lista  (aanic)'),
(1277, 15, 3, '2022-06-22 23:17:23', 'Pristup stranici Rang lista  (aanic)'),
(1278, 15, 3, '2022-06-22 23:40:54', 'Pristup stranici Rang lista  (aanic)'),
(1279, 15, 3, '2022-06-22 23:40:55', 'Pristup stranici Cijene goriva  (aanic)'),
(1280, 15, 3, '2022-06-22 23:41:50', 'Pristup stranici Cijene goriva  (aanic)'),
(1281, 15, 3, '2022-06-22 23:45:39', 'Pristup stranici Cijene goriva  (aanic)'),
(1282, 15, 3, '2022-06-22 23:47:27', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1283, 15, 3, '2022-06-22 23:47:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1284, 15, 3, '2022-06-22 23:47:39', 'Pristup stranici Rang lista  (aanic)'),
(1285, 15, 3, '2022-06-22 23:47:44', 'Pristup stranici Cijene goriva  (aanic)'),
(1286, 15, 3, '2022-06-22 23:48:47', 'Pristup stranici Rang lista  (aanic)'),
(1287, 15, 3, '2022-06-22 23:48:52', 'Pristup stranici Cijene goriva  (aanic)'),
(1288, 15, 3, '2022-06-22 23:48:53', 'Pristup stranici Rang lista  (aanic)'),
(1289, 3, 1, '2022-06-22 23:49:44', 'Uspjesna prijava'),
(1290, 3, 3, '2022-06-22 23:49:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1291, 3, 3, '2022-06-22 23:49:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1292, 3, 3, '2022-06-22 23:49:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1293, 3, 3, '2022-06-22 23:50:01', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1294, 3, 3, '2022-06-22 23:50:18', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1295, 3, 3, '2022-06-22 23:51:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1296, 3, 3, '2022-06-22 23:51:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1297, 3, 3, '2022-06-22 23:51:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1298, 3, 3, '2022-06-22 23:51:46', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1299, 3, 3, '2022-06-22 23:51:56', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1300, 3, 3, '2022-06-22 23:52:19', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1301, 3, 3, '2022-06-22 23:52:21', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1302, 3, 3, '2022-06-22 23:52:26', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1303, 3, 3, '2022-06-22 23:52:37', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1304, 3, 3, '2022-06-22 23:52:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1305, 3, 3, '2022-06-22 23:53:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1306, 3, 3, '2022-06-22 23:53:33', 'Pristup stranici Rang lista  (pperic)'),
(1307, 3, 3, '2022-06-22 23:53:36', 'Pristup stranici Cijene goriva  (pperic)'),
(1308, 3, 3, '2022-06-22 23:55:19', 'Pristup stranici Cijene goriva  (pperic)'),
(1309, 3, 3, '2022-06-22 23:55:25', 'Pristup stranici Rang lista  (pperic)'),
(1310, 3, 3, '2022-06-22 23:55:28', 'Pristup stranici Cijene goriva  (pperic)'),
(1311, 3, 3, '2022-06-23 00:12:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1312, 3, 3, '2022-06-23 00:13:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1313, 3, 3, '2022-06-23 00:28:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1314, 3, 3, '2022-06-23 00:29:16', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1315, 3, 3, '2022-06-23 00:29:26', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1316, 3, 3, '2022-06-23 00:29:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1317, 3, 3, '2022-06-23 00:41:35', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1318, 3, 3, '2022-06-23 00:42:19', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1319, 3, 3, '2022-06-23 00:42:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1320, 3, 3, '2022-06-23 00:43:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1321, 3, 3, '2022-06-23 00:43:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1322, 3, 3, '2022-06-23 00:49:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1323, 3, 3, '2022-06-23 00:49:39', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1324, 3, 3, '2022-06-23 00:49:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1325, 3, 3, '2022-06-23 00:49:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1326, 3, 3, '2022-06-23 00:49:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1327, 15, 1, '2022-06-23 00:50:17', 'Uspjesna prijava'),
(1328, 15, 3, '2022-06-23 00:50:21', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1329, 18, 1, '2022-06-23 00:51:18', 'Uspjesna prijava'),
(1330, 18, 3, '2022-06-23 00:51:23', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1331, 18, 3, '2022-06-23 00:51:24', 'Pristup stranici Uredivanje vrsta goriva (dduric)'),
(1332, 18, 3, '2022-06-23 00:53:24', 'Pristup stranici Uredivanje vrsta goriva (dduric)'),
(1333, 18, 3, '2022-06-23 00:53:29', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1334, 18, 3, '2022-06-23 00:53:37', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1335, 18, 3, '2022-06-23 00:53:44', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1336, 18, 3, '2022-06-23 00:53:50', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1337, 18, 3, '2022-06-23 00:53:56', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1338, 18, 3, '2022-06-23 00:53:58', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1339, 18, 3, '2022-06-23 00:54:22', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1340, 18, 3, '2022-06-23 00:54:24', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1341, 18, 3, '2022-06-23 00:54:30', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1342, 18, 3, '2022-06-23 00:54:34', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1343, 18, 3, '2022-06-23 00:54:37', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1344, 18, 3, '2022-06-23 00:54:42', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1345, 18, 3, '2022-06-23 00:54:47', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1346, 18, 3, '2022-06-23 00:54:50', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1347, 18, 3, '2022-06-23 00:55:46', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1348, 18, 3, '2022-06-23 00:55:49', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1349, 18, 3, '2022-06-23 00:55:52', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1350, 18, 3, '2022-06-23 00:55:54', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1351, 18, 3, '2022-06-23 00:55:56', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1352, 18, 3, '2022-06-23 00:55:58', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1353, 18, 3, '2022-06-23 00:57:19', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1354, 18, 3, '2022-06-23 00:58:23', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1355, 18, 3, '2022-06-23 00:58:26', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1356, 18, 3, '2022-06-23 00:58:31', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1357, 18, 3, '2022-06-23 00:58:47', 'Pristup stranici Moje benzinske postaje (dduric)'),
(1358, NULL, 3, '2022-06-23 01:45:20', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(1359, NULL, 3, '2022-06-23 01:45:25', 'Pokusaj pristupa stranici Moje benzinske postaje (gost)'),
(1360, 17, 1, '2022-06-23 01:46:30', 'Uspjesna prijava'),
(1361, 17, 3, '2022-06-23 01:46:49', 'Pristup stranici Dashboard (admin)'),
(1362, 17, 3, '2022-06-23 01:48:19', 'Pristup stranici Uredivanje racuna (admin)'),
(1363, 17, 3, '2022-06-23 01:50:43', 'Pristup stranici Uredivanje racuna (admin)'),
(1364, 17, 3, '2022-06-23 01:52:03', 'Pristup stranici Uredivanje racuna (admin)'),
(1365, 17, 3, '2022-06-23 01:52:09', 'Pristup stranici Uredivanje racuna (admin)'),
(1366, 17, 3, '2022-06-23 01:55:26', 'Pristup stranici Uredivanje racuna (admin)'),
(1367, 17, 3, '2022-06-23 01:55:28', 'Pristup stranici Uredivanje racuna (admin)'),
(1368, 17, 3, '2022-06-23 01:56:26', 'Pristup stranici Uredivanje racuna (admin)'),
(1369, 17, 3, '2022-06-23 01:56:30', 'Pristup stranici Uredivanje racuna (admin)'),
(1370, 17, 3, '2022-06-23 01:56:31', 'Pristup stranici Uredivanje racuna (admin)'),
(1371, 17, 3, '2022-06-23 01:56:41', 'Pristup stranici Uredivanje racuna (admin)'),
(1372, 17, 3, '2022-06-23 01:56:45', 'Pristup stranici Uredivanje racuna (admin)'),
(1373, 17, 3, '2022-06-23 02:00:58', 'Pristup stranici Uredivanje racuna (admin)'),
(1374, 17, 3, '2022-06-23 02:16:49', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1375, 17, 3, '2022-06-23 02:19:22', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1376, 17, 3, '2022-06-23 02:19:31', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1377, 17, 3, '2022-06-23 02:19:43', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1378, 17, 3, '2022-06-23 02:19:54', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1379, 17, 3, '2022-06-23 02:20:09', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1380, 17, 3, '2022-06-23 02:20:50', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1381, 17, 3, '2022-06-23 02:20:55', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1382, 17, 3, '2022-06-23 02:21:20', 'Pristup stranici Uredivanje goriva (admin)'),
(1383, 17, 3, '2022-06-23 02:21:27', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1384, 17, 1, '2022-06-23 09:27:15', 'Uspjesna prijava'),
(1385, 17, 3, '2022-06-23 09:27:19', 'Pristup stranici Dashboard (admin)'),
(1386, 17, 3, '2022-06-23 09:27:21', 'Pristup stranici Uredivanje racuna (admin)'),
(1387, 17, 3, '2022-06-23 09:28:10', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1388, 17, 3, '2022-06-23 09:28:29', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1389, 17, 3, '2022-06-23 09:29:05', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1390, 17, 3, '2022-06-23 09:29:59', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1391, 17, 3, '2022-06-23 09:30:03', 'Pristup stranici Uredivanje racuna (admin)'),
(1392, 17, 3, '2022-06-23 09:30:05', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1393, 17, 3, '2022-06-23 09:36:05', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1394, 17, 3, '2022-06-23 09:36:51', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1395, 17, 3, '2022-06-23 09:37:00', 'Pristup stranici Uredivanje moderatora (admin)'),
(1396, 17, 3, '2022-06-23 09:37:50', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1397, 17, 3, '2022-06-23 09:37:52', 'Pristup stranici Uredivanje goriva (admin)'),
(1398, 17, 3, '2022-06-23 09:37:58', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1399, 17, 3, '2022-06-23 09:38:00', 'Pristup stranici Uredivanje goriva (admin)'),
(1400, 17, 3, '2022-06-23 09:38:01', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1401, 17, 3, '2022-06-23 09:38:05', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1402, 17, 3, '2022-06-23 09:40:11', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1403, 17, 3, '2022-06-23 09:40:46', 'Pristup stranici Uredivanje moderatora (admin)'),
(1404, 17, 3, '2022-06-23 09:49:39', 'Pristup stranici Uredivanje moderatora (admin)'),
(1405, 17, 3, '2022-06-23 09:51:30', 'Pristup stranici Uredivanje moderatora (admin)'),
(1406, 17, 3, '2022-06-23 09:53:36', 'Pristup stranici Uredivanje moderatora (admin)'),
(1407, 17, 3, '2022-06-23 09:54:48', 'Pristup stranici Uredivanje moderatora (admin)'),
(1408, 17, 3, '2022-06-23 09:57:58', 'Pristup stranici Uredivanje moderatora (admin)'),
(1409, 17, 3, '2022-06-23 09:58:08', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1410, 17, 3, '2022-06-23 09:58:14', 'Pristup stranici Uredivanje moderatora (admin)'),
(1411, 17, 3, '2022-06-23 09:58:16', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1412, 17, 3, '2022-06-23 09:58:17', 'Pristup stranici Uredivanje moderatora (admin)'),
(1413, 17, 3, '2022-06-23 09:58:31', 'Pristup stranici Uredivanje moderatora (admin)'),
(1414, 17, 3, '2022-06-23 09:58:33', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1415, 17, 3, '2022-06-23 09:59:51', 'Pristup stranici Upravljanje lokacijama (admin)'),
(1416, 17, 3, '2022-06-23 09:59:57', 'Pristup stranici Uredivanje lokacija (admin)'),
(1417, 17, 3, '2022-06-23 09:59:58', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1418, 17, 3, '2022-06-23 10:00:01', 'Pristup stranici Uredivanje racuna (admin)'),
(1419, 3, 1, '2022-06-23 10:00:23', 'Uspjesna prijava'),
(1420, 3, 3, '2022-06-23 10:00:27', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1421, 3, 3, '2022-06-23 10:00:41', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1422, 3, 3, '2022-06-23 10:00:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1423, 3, 3, '2022-06-23 10:01:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1424, 3, 3, '2022-06-23 10:01:22', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1425, 3, 3, '2022-06-23 10:01:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1426, 3, 3, '2022-06-23 10:01:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1427, 3, 3, '2022-06-23 10:01:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1428, 3, 3, '2022-06-23 10:01:33', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1429, 3, 3, '2022-06-23 10:02:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1443, 17, 1, '2022-06-23 11:00:30', 'Uspjesna prijava'),
(1444, 17, 1, '2022-06-23 11:08:28', 'Uspjesna prijava'),
(1445, 17, 3, '2022-06-23 11:08:34', 'Pristup stranici Dashboard (admin)'),
(1446, 17, 3, '2022-06-23 11:08:37', 'Pristup stranici Uredivanje racuna (admin)'),
(1447, 17, 3, '2022-06-23 11:08:41', 'Pristup stranici Uredivanje racuna (admin)'),
(1448, 17, 3, '2022-06-23 11:08:47', 'Pristup stranici Uredivanje racuna (admin)'),
(1449, 17, 3, '2022-06-23 11:10:23', 'Pristup stranici Uredivanje racuna (admin)'),
(1450, 17, 3, '2022-06-23 11:10:26', 'Pristup stranici Uredivanje racuna (admin)'),
(1451, 17, 3, '2022-06-23 11:10:32', 'Pristup stranici Uredivanje racuna (admin)'),
(1452, 17, 3, '2022-06-23 11:13:30', 'Pristup stranici Uredivanje racuna (admin)'),
(1453, 17, 3, '2022-06-23 11:13:34', 'Pristup stranici Uredivanje racuna (admin)'),
(1454, 17, 3, '2022-06-23 11:13:50', 'Pristup stranici Uredivanje racuna (admin)'),
(1455, 17, 3, '2022-06-23 11:13:55', 'Pristup stranici Uredivanje racuna (admin)'),
(1456, 17, 3, '2022-06-23 11:13:57', 'Pristup stranici Uredivanje racuna (admin)'),
(1457, 17, 3, '2022-06-23 11:14:00', 'Pristup stranici Uredivanje racuna (admin)'),
(1458, 17, 3, '2022-06-23 11:14:03', 'Pristup stranici Uredivanje racuna (admin)'),
(1459, 17, 3, '2022-06-23 11:14:19', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1460, 17, 3, '2022-06-23 11:14:23', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1461, 17, 3, '2022-06-23 11:14:31', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1462, 17, 3, '2022-06-23 11:14:45', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1463, 17, 3, '2022-06-23 11:15:10', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1464, 17, 3, '2022-06-23 11:15:19', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1465, 17, 3, '2022-06-23 11:15:34', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1466, 17, 3, '2022-06-23 11:15:59', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1467, 17, 3, '2022-06-23 11:16:01', 'Pristup stranici Uredivanje moderatora (admin)'),
(1468, 17, 3, '2022-06-23 11:16:05', 'Pristup stranici Uredivanje moderatora (admin)'),
(1469, 17, 3, '2022-06-23 11:16:23', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1470, 17, 3, '2022-06-23 11:16:42', 'Pristup stranici Uredivanje moderatora (admin)'),
(1471, 17, 3, '2022-06-23 11:18:43', 'Pristup stranici Uredivanje moderatora (admin)'),
(1472, 17, 3, '2022-06-23 11:18:46', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1473, 17, 3, '2022-06-23 11:18:50', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1474, 17, 3, '2022-06-23 11:18:51', 'Pristup stranici Uredivanje moderatora (admin)'),
(1475, 17, 3, '2022-06-23 11:18:56', 'Pristup stranici Uredivanje moderatora (admin)'),
(1476, 17, 3, '2022-06-23 11:19:13', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1477, 17, 3, '2022-06-23 11:20:51', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1478, 17, 3, '2022-06-23 11:20:54', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1479, 17, 3, '2022-06-23 11:20:55', 'Pristup stranici Uredivanje moderatora (admin)'),
(1480, 17, 3, '2022-06-23 11:21:00', 'Pristup stranici Uredivanje moderatora (admin)'),
(1481, 17, 3, '2022-06-23 11:21:01', 'Pristup stranici Upravljanje moderatorima (admin)'),
(1482, 17, 3, '2022-06-23 11:24:37', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1483, 17, 3, '2022-06-23 11:24:44', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1484, 17, 3, '2022-06-23 11:24:49', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1485, 17, 3, '2022-06-23 11:27:41', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1486, 17, 3, '2022-06-23 11:27:42', 'Pristup stranici Uredivanje goriva (admin)'),
(1487, 17, 3, '2022-06-23 11:27:43', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1488, 17, 3, '2022-06-23 11:27:45', 'Pristup stranici Uredivanje goriva (admin)'),
(1489, 17, 3, '2022-06-23 11:27:47', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1490, 17, 3, '2022-06-23 11:27:59', 'Pristup stranici Upravljanje lokacijama (admin)'),
(1491, 17, 3, '2022-06-23 11:28:01', 'Pristup stranici Uredivanje lokacija (admin)'),
(1492, 17, 3, '2022-06-23 11:28:02', 'Pristup stranici Upravljanje lokacijama (admin)'),
(1493, 17, 3, '2022-06-23 11:28:03', 'Pristup stranici Uredivanje lokacija (admin)'),
(1494, 17, 3, '2022-06-23 11:28:05', 'Pristup stranici Upravljanje lokacijama (admin)'),
(1495, 3, 1, '2022-06-23 11:28:26', 'Uspjesna prijava'),
(1496, 3, 3, '2022-06-23 11:28:34', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1497, 3, 3, '2022-06-23 11:28:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1498, 3, 3, '2022-06-23 11:28:38', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1499, 3, 3, '2022-06-23 11:28:40', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1500, 3, 3, '2022-06-23 11:28:43', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1501, 3, 3, '2022-06-23 11:28:46', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1502, 3, 3, '2022-06-23 11:28:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1503, 3, 3, '2022-06-23 11:28:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1504, 3, 3, '2022-06-23 11:28:50', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1505, 3, 3, '2022-06-23 11:28:55', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1506, 3, 3, '2022-06-23 11:28:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1507, 3, 3, '2022-06-23 11:28:59', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1508, 3, 3, '2022-06-23 11:29:01', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1509, 3, 3, '2022-06-23 11:29:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1510, 3, 3, '2022-06-23 11:29:05', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1511, 3, 3, '2022-06-23 11:30:06', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1512, 3, 3, '2022-06-23 11:30:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1513, 3, 3, '2022-06-23 11:30:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1514, 3, 3, '2022-06-23 11:31:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1515, 3, 3, '2022-06-23 11:32:11', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1516, 3, 3, '2022-06-23 11:32:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1517, 3, 3, '2022-06-23 11:33:18', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1518, 3, 3, '2022-06-23 11:33:49', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1519, 3, 3, '2022-06-23 11:33:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1520, 3, 3, '2022-06-23 11:38:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1521, 3, 3, '2022-06-23 11:38:54', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1522, 3, 3, '2022-06-23 11:40:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1523, 15, 1, '2022-06-23 11:40:25', 'Uspjesna prijava'),
(1524, 15, 3, '2022-06-23 11:40:31', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1525, 15, 3, '2022-06-23 11:40:36', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1526, 15, 3, '2022-06-23 11:40:41', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1527, 15, 3, '2022-06-23 11:40:45', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1528, 15, 3, '2022-06-23 11:40:49', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1529, 15, 3, '2022-06-23 11:40:50', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1530, 15, 3, '2022-06-23 11:40:52', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1531, 15, 3, '2022-06-23 11:40:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1532, 15, 3, '2022-06-23 11:40:56', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1533, 15, 3, '2022-06-23 11:41:00', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1534, 15, 3, '2022-06-23 11:41:05', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1535, 15, 3, '2022-06-23 11:41:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1536, 15, 3, '2022-06-23 11:41:18', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1537, 15, 3, '2022-06-23 11:41:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1538, 15, 3, '2022-06-23 11:41:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1539, 15, 3, '2022-06-23 11:42:39', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1540, 15, 3, '2022-06-23 11:43:34', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1541, 15, 3, '2022-06-23 11:43:40', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1542, 15, 3, '2022-06-23 11:46:21', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1543, 15, 3, '2022-06-23 11:46:25', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1544, 15, 3, '2022-06-23 11:46:42', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1545, 15, 3, '2022-06-23 11:47:20', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1546, 15, 3, '2022-06-23 11:47:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1547, 15, 3, '2022-06-23 11:56:36', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1548, NULL, 2, '2022-06-23 12:20:46', 'Uspjesna registracija'),
(1549, 19, 1, '2022-06-23 12:23:12', 'Uspjesna prijava'),
(1550, NULL, 4, '', 'Zahtjev za novom lozinkom (liwamo3062@tagbert.com)'),
(1551, NULL, 4, '2022-06-23 12:27:07', 'Zahtjev za novom lozinkom (liwamo3062@tagbert.com)'),
(1552, 19, 1, '2022-06-23 12:27:48', 'Uspjesna prijava'),
(1558, 15, 1, '2022-06-23 12:34:34', 'Uspjesna prijava'),
(1559, 15, 3, '2022-06-23 12:34:41', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1560, 15, 3, '2022-06-23 12:35:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1561, 3, 1, '2022-06-23 12:37:35', 'Uspjesna prijava'),
(1562, 3, 3, '2022-06-23 12:37:37', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1563, 3, 3, '2022-06-23 12:37:40', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1564, 15, 1, '2022-06-23 12:38:10', 'Uspjesna prijava'),
(1565, 15, 3, '2022-06-23 12:38:14', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1566, 15, 3, '2022-06-23 12:38:20', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1567, 15, 3, '2022-06-23 12:38:22', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1568, 15, 3, '2022-06-23 12:57:56', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1569, 15, 3, '2022-06-23 12:58:27', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1570, 15, 3, '2022-06-23 12:59:47', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1571, 15, 3, '2022-06-23 12:59:47', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1572, 15, 3, '2022-06-23 13:22:17', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1573, 17, 1, '2022-06-23 13:34:02', 'Uspjesna prijava'),
(1574, 17, 3, '2022-06-23 13:34:26', 'Pristup stranici Dashboard (admin)'),
(1575, 17, 3, '2022-06-23 13:34:27', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1576, 17, 3, '2022-06-23 13:34:59', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1577, 17, 3, '2022-06-23 13:35:09', 'Pristup stranici Upravljanje vrstama goriva (admin)'),
(1578, 3, 1, '2022-06-23 13:35:55', 'Uspjesna prijava'),
(1579, 3, 3, '2022-06-23 13:36:02', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1580, 3, 3, '2022-06-23 13:36:15', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1581, 3, 3, '2022-06-23 13:36:24', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1582, 3, 3, '2022-06-23 13:36:32', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1583, 3, 3, '2022-06-23 13:36:55', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1584, 3, 3, '2022-06-23 13:36:57', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1585, 3, 3, '2022-06-23 13:37:30', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1586, 3, 3, '2022-06-23 13:37:39', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1587, 3, 3, '2022-06-23 13:37:48', 'Pristup stranici Uredivanje vrsta goriva (pperic)'),
(1588, 3, 3, '2022-06-23 13:37:50', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1589, 3, 3, '2022-06-23 13:37:58', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1590, 3, 3, '2022-06-23 13:38:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1591, 3, 3, '2022-06-23 13:38:09', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1592, 3, 3, '2022-06-23 13:38:20', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1593, 3, 3, '2022-06-23 13:38:45', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1594, 3, 3, '2022-06-23 13:38:47', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1595, 3, 3, '2022-06-23 13:39:00', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1596, 3, 3, '2022-06-23 13:40:17', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1597, 15, 1, '2022-06-23 13:41:19', 'Uspjesna prijava'),
(1598, 15, 3, '2022-06-23 13:41:23', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1599, 15, 3, '2022-06-23 13:41:33', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1600, 15, 3, '2022-06-23 13:41:40', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1601, 15, 3, '2022-06-23 13:41:54', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1602, 15, 3, '2022-06-23 13:41:57', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1603, 15, 3, '2022-06-23 13:42:56', 'Pristup stranici Uredivanje vrsta goriva (aanic)'),
(1604, 15, 3, '2022-06-23 13:43:01', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1605, 15, 3, '2022-06-23 13:43:12', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1606, 15, 3, '2022-06-23 13:43:13', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1607, 15, 3, '2022-06-23 13:43:15', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1608, 15, 3, '2022-06-23 13:43:55', 'Pristup stranici Moje benzinske postaje (aanic)'),
(1609, 3, 3, '2022-06-23 13:44:03', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1610, 3, 3, '2022-06-23 13:44:12', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1611, 3, 3, '2022-06-23 13:44:56', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1612, 3, 3, '2022-06-23 13:45:34', 'Pristup stranici Rang lista  (pperic)'),
(1613, 3, 3, '2022-06-23 13:45:45', 'Pristup stranici Cijene goriva  (pperic)'),
(1614, 3, 3, '2022-06-23 13:45:48', 'Pristup stranici Rang lista  (pperic)'),
(1615, 3, 3, '2022-06-23 13:45:49', 'Pristup stranici Cijene goriva  (pperic)'),
(1616, 3, 3, '2022-06-23 13:46:14', 'Pristup stranici Rang lista  (pperic)'),
(1617, 3, 3, '2022-06-23 13:46:31', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1618, 3, 3, '2022-06-23 13:46:48', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1619, 3, 3, '2022-06-23 13:46:53', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1620, 3, 3, '2022-06-23 13:47:01', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1621, 3, 3, '2022-06-23 13:51:28', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1622, 3, 3, '2022-06-23 13:51:51', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1623, 3, 3, '2022-06-23 13:51:52', 'Pristup stranici Moje benzinske postaje (pperic)'),
(1624, 3, 3, '2022-06-23 13:51:54', 'Pristup stranici Moje benzinske postaje (pperic)');

-- --------------------------------------------------------

--
-- Table structure for table `evidencija_tocenja`
--

CREATE TABLE `evidencija_tocenja` (
  `id_evidencija` int(11) NOT NULL,
  `id_vozilo` int(11) NOT NULL,
  `novo_stanje_km` int(11) NOT NULL,
  `potroseno_goriva` decimal(10,2) NOT NULL,
  `natoceno_goriva` decimal(10,2) NOT NULL,
  `datum_vrijeme` varchar(45) DEFAULT NULL,
  `id_benzinska_postaja` int(11) NOT NULL,
  `id_mvg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evidencija_tocenja`
--

INSERT INTO `evidencija_tocenja` (`id_evidencija`, `id_vozilo`, `novo_stanje_km`, `potroseno_goriva`, `natoceno_goriva`, `datum_vrijeme`, `id_benzinska_postaja`, `id_mvg`) VALUES
(1, 10, 325911, '5.00', '10.00', '2022-06-22 18:44:33', 1, 2),
(2, 10, 325945, '10.00', '20.00', '2022-06-22 22:58:02', 5, 14),
(3, 10, 325998, '20.00', '20.00', '2022-06-22 23:11:18', 1, 11),
(4, 14, 278346, '30.00', '60.00', '2022-06-23 13:43:55', 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnik` int(11) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `datum_rodenja` varchar(12) NOT NULL,
  `adresa` varchar(200) NOT NULL,
  `kontakt_broj` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `korisnicko_ime` varchar(45) NOT NULL,
  `lozinka` varchar(64) NOT NULL,
  `salt` varchar(64) NOT NULL,
  `lozinka_kriptirano` varchar(64) NOT NULL,
  `broj_neuspjesnih_prijava` int(11) DEFAULT '0',
  `uvjeti_koristenja` tinyint(4) DEFAULT '0',
  `aktivacijski_kod` varchar(32) NOT NULL,
  `potvrden` tinyint(4) DEFAULT '0',
  `blokiran` tinyint(4) DEFAULT '0',
  `datum_registracije` varchar(45) DEFAULT NULL,
  `id_tip_korisnika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `ime`, `prezime`, `datum_rodenja`, `adresa`, `kontakt_broj`, `email`, `korisnicko_ime`, `lozinka`, `salt`, `lozinka_kriptirano`, `broj_neuspjesnih_prijava`, `uvjeti_koristenja`, `aktivacijski_kod`, `potvrden`, `blokiran`, `datum_registracije`, `id_tip_korisnika`) VALUES
(3, 'Pero', 'Peric', '10.10.2000.', 'Perina 12', '+38599123456', 'pperic@example.com', 'pperic', 'Test123!', 'salt', 'b3399392a3d3ee9bffa9f41ef9190c6eb19a48b8b134992ccd879297a8cdf1fd', 0, 0, '94db02b3c44a51e91bd276a653b884cf', 1, 0, NULL, 3),
(12, 'Karan', 'Karanic', '10.10.2000.', 'Karanova 12', '+38599123456', 'marijan.kovac700@gmail.com', 'karan', 'BnpOb7Rj', 'salt', '0968ce700f09cc43c361a3d184decbcf4230d320fbab212e3d5d86c231466d1b', 0, 0, '4500a728d3be842dc4e8307237f6b2bc', 1, 0, '2022-06-11 15:00:00.000000', 3),
(14, 'Stevo', 'Stevic', '05.05.2000.', 'Stevina 33', '+38599123456', 'stevo@example.com', 'sstevic', 'Test123!', 'salt', '0bebde43e054273339205663173af791fa395551072dc58129bc5eaa5cf718dd', 0, 0, 'ab5e9176d85ca7a8ccbebead0b3449cb', 1, 0, '2022-06-11 20:18:20.000000', 2),
(15, 'Ana', 'Anic', '12.12.1992.', 'Anina 12', '+38599123456', 'aanic@example.com', 'aanic', 'Test123!', 'salt', '0bebde43e054273339205663173af791fa395551072dc58129bc5eaa5cf718dd', 0, 1, '9f880401df1c3dcdd932efc3c9f36ff8', 1, 0, '2022-06-12 17:45:31.000000', 2),
(17, 'Marijan', 'Kovac', '15.03.1995.', 'Julija Merlica 9 42000 Varazdin', '099123456', 'astennon.official@gmail.com', 'admin', 'admin', 'salt', 'admin', 0, 1, 'kod', 1, 0, NULL, 4),
(18, 'Duro', 'Duric', '16.12.2000.', 'Durina 41', '099123456', 'tihap57294@exoacre.com', 'dduric', 'Test123!', 'salt', '0bebde43e054273339205663173af791fa395551072dc58129bc5eaa5cf718dd', 0, 1, '4449877724b2ec02c896f887e0b79af9', 1, 0, '2022-06-18 20:02:19', 2),
(19, 'Liwamo', 'Liwamovski', '12.12.1999.', 'Liwamovska 22', '099123456', 'liwamo3062@tagbert.com', 'liwamo', 'lzickE2G', 'salt', '94f69cacded3fb46b13d71cbd4cef2653f2a0c0928cb5ad6b37d280cce7368fb', 0, 1, 'a807ba4d8968133e48c66b41c6762eb8', 1, 0, '2022-06-23 12:20:46', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `id_lokacija` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `oznaka` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokacija`
--

INSERT INTO `lokacija` (`id_lokacija`, `naziv`, `oznaka`) VALUES
(1, 'VARAZDIN', 'VZ'),
(2, 'CAKOVEC', 'CK'),
(3, 'ZAGREB', 'ZG');

-- --------------------------------------------------------

--
-- Table structure for table `mjesto`
--

CREATE TABLE `mjesto` (
  `id_mjesto` int(11) NOT NULL,
  `id_benzinska_postaja` int(11) NOT NULL,
  `id_status_mjesto` int(11) NOT NULL,
  `oznaka` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mjesto`
--

INSERT INTO `mjesto` (`id_mjesto`, `id_benzinska_postaja`, `id_status_mjesto`, `oznaka`) VALUES
(1, 1, 2, 'VZ-1-1'),
(2, 1, 2, 'VZ-1-2'),
(3, 2, 2, 'CK-1-1'),
(4, 3, 3, 'ZG-1-1'),
(5, 1, 4, 'VZ-1-3'),
(6, 1, 4, 'VZ-1-4'),
(7, 5, 4, 'VZ-2-1'),
(8, 1, 2, 'VZ-1-6');

-- --------------------------------------------------------

--
-- Table structure for table `mjesto_vrste_goriva`
--

CREATE TABLE `mjesto_vrste_goriva` (
  `id_mvg` int(11) NOT NULL,
  `id_mjesto` int(11) NOT NULL,
  `id_vrste_goriva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mjesto_vrste_goriva`
--

INSERT INTO `mjesto_vrste_goriva` (`id_mvg`, `id_mjesto`, `id_vrste_goriva`) VALUES
(2, 2, 1),
(11, 6, 1),
(4, 2, 2),
(5, 5, 2),
(13, 6, 2),
(14, 7, 2),
(1, 2, 3),
(6, 5, 3),
(12, 6, 3),
(8, 1, 4),
(10, 2, 4),
(7, 1, 5),
(9, 2, 5),
(15, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

CREATE TABLE `moderator` (
  `id_moderator` int(11) NOT NULL,
  `id_korisnik` int(11) NOT NULL,
  `id_benzinska_postaja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moderator`
--

INSERT INTO `moderator` (`id_moderator`, `id_korisnik`, `id_benzinska_postaja`) VALUES
(5, 3, 1),
(10, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `povijest_cijena`
--

CREATE TABLE `povijest_cijena` (
  `id_povijest_cijena` int(11) NOT NULL,
  `id_bpvg` int(11) NOT NULL,
  `datum_od` varchar(45) DEFAULT NULL,
  `datum_do` varchar(45) DEFAULT NULL,
  `iznos` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `povijest_cijena`
--

INSERT INTO `povijest_cijena` (`id_povijest_cijena`, `id_bpvg`, `datum_od`, `datum_do`, `iznos`) VALUES
(1, 1, '2022-06-20 11:42:34', NULL, '11.52'),
(2, 2, '2022-06-20 11:45:24', NULL, '12.69'),
(3, 4, '2022-06-20 11:48:56', NULL, '13.46'),
(4, 5, '2022-06-20 11:52:43', '2022-06-22 21:32:57', '16.43'),
(5, 5, '2022-06-22 21:32:57', NULL, '17.52'),
(6, 7, '2022-06-22 21:34:21', NULL, '15.64'),
(8, 9, '2022-06-22 23:52:37', NULL, '14.24'),
(9, 10, '2022-06-23 13:36:55', NULL, '14.15');

-- --------------------------------------------------------

--
-- Table structure for table `status_mjesto`
--

CREATE TABLE `status_mjesto` (
  `id_status_mjesto` int(11) NOT NULL,
  `oznaka` varchar(45) NOT NULL,
  `opis` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_mjesto`
--

INSERT INTO `status_mjesto` (`id_status_mjesto`, `oznaka`, `opis`) VALUES
(1, 'ZATVORENO', 'mjesto za tocenje ZATVORENO'),
(2, 'OTVORENO', 'mjesto za tocenje OTVORENO'),
(3, 'U KVARU', 'mjesto za tocenje U KVARU'),
(4, 'CEKA NAPLATU', 'mjesto za tocenje CEKA NAPLATU');

-- --------------------------------------------------------

--
-- Table structure for table `tip_korisnika`
--

CREATE TABLE `tip_korisnika` (
  `id_tip_korisnika` int(11) NOT NULL,
  `oznaka` varchar(45) NOT NULL,
  `opis` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tip_korisnika`
--

INSERT INTO `tip_korisnika` (`id_tip_korisnika`, `oznaka`, `opis`) VALUES
(2, 'REGISTRIRANI', 'tesni opis'),
(3, 'MODERATOR', 'testni opis'),
(4, 'ADMINISTRATOR', 'tesni opis');

-- --------------------------------------------------------

--
-- Table structure for table `tip_radnje`
--

CREATE TABLE `tip_radnje` (
  `id_tip_radnje` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `opis` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tip_radnje`
--

INSERT INTO `tip_radnje` (`id_tip_radnje`, `naziv`, `opis`) VALUES
(1, 'PRIJAVA', 'prijava u sustav'),
(2, 'REGISTRACIJA', 'registracija u sustav'),
(3, 'PRISTUP', 'pokusaj pristupa'),
(4, 'ZAHTJEV', 'promjena lozinke');

-- --------------------------------------------------------

--
-- Table structure for table `vozilo`
--

CREATE TABLE `vozilo` (
  `id_vozilo` int(11) NOT NULL,
  `registracija` varchar(45) NOT NULL,
  `marka` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `prijedeni_km` int(11) NOT NULL,
  `slika` varchar(1000) DEFAULT NULL,
  `id_korisnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vozilo`
--

INSERT INTO `vozilo` (`id_vozilo`, `registracija`, `marka`, `model`, `prijedeni_km`, `slika`, `id_korisnik`) VALUES
(10, 'BJ000AB', 'VOLKSWAGEN', 'GOLF IV', 325845, '../galerija/1200px-VW_Golf_IV_1.6_(1997–2003)_front_MJ.jpeg', 15),
(11, 'OS875HR', 'IMT', '547', 48126, '../galerija/img20200423171343-170820212111323278.jpg', 18),
(12, 'BJ123BJ', 'VOLKSWAGEN', 'PASSAT B6', 323564, '../galerija/passat-b6-2.jpg', 15),
(14, 'VZ123ZV', 'Citroen', 'Saxo', 284295, '../galerija/Citroen_Saxo_front_20071002.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `vrste_goriva`
--

CREATE TABLE `vrste_goriva` (
  `id_vrste_goriva` int(11) NOT NULL,
  `tip` varchar(45) NOT NULL,
  `naziv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vrste_goriva`
--

INSERT INTO `vrste_goriva` (`id_vrste_goriva`, `tip`, `naziv`) VALUES
(1, 'DIZEL', 'EURODIESEL'),
(2, 'DIZEL', 'EURODIESEL CLASS PLUS'),
(3, 'DIZEL', 'DIZEL PLAVI'),
(4, 'DIZEL', 'DIZEL ARKTIK'),
(5, 'BENZIN', 'EUROSUPER 95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benzinska_postaja`
--
ALTER TABLE `benzinska_postaja`
  ADD PRIMARY KEY (`id_benzinska_postaja`),
  ADD KEY `fk_benzinska_postaja_lokacija_idx` (`id_lokacija`);

--
-- Indexes for table `benzinska_postaja_vrste_goriva`
--
ALTER TABLE `benzinska_postaja_vrste_goriva`
  ADD PRIMARY KEY (`id_bpvg`,`id_benzinska_postaja`,`id_vrste_goriva`),
  ADD KEY `fk_benzinska_postaja_has_vrste_goriva_vrste_goriva1_idx` (`id_vrste_goriva`),
  ADD KEY `fk_benzinska_postaja_has_vrste_goriva_benzinska_postaja1_idx` (`id_benzinska_postaja`);

--
-- Indexes for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD PRIMARY KEY (`id_dnevnik`),
  ADD KEY `fk_dnevnik_korisnik1_idx` (`id_korisnik`),
  ADD KEY `fk_dnevnik_tip_radnje1_idx` (`id_tip_radnje`);

--
-- Indexes for table `evidencija_tocenja`
--
ALTER TABLE `evidencija_tocenja`
  ADD PRIMARY KEY (`id_evidencija`,`id_vozilo`),
  ADD KEY `fk_vozilo_has_mjesto_benzinska_vrste_goriva_vozilo1_idx` (`id_vozilo`),
  ADD KEY `fk_evidencija_tocenja_benzinska_postaja1_idx` (`id_benzinska_postaja`),
  ADD KEY `fk_evidencija_tocenja_mjesto_vrste_goriva1_idx` (`id_mvg`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnik`),
  ADD KEY `fk_korisnik_tip_korisnika1_idx` (`id_tip_korisnika`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`id_lokacija`);

--
-- Indexes for table `mjesto`
--
ALTER TABLE `mjesto`
  ADD PRIMARY KEY (`id_mjesto`),
  ADD KEY `fk_mjesto_benzinska_postaja1_idx` (`id_benzinska_postaja`),
  ADD KEY `fk_mjesto_status_mjesto1_idx` (`id_status_mjesto`);

--
-- Indexes for table `mjesto_vrste_goriva`
--
ALTER TABLE `mjesto_vrste_goriva`
  ADD PRIMARY KEY (`id_mvg`,`id_mjesto`,`id_vrste_goriva`),
  ADD KEY `fk_mjesto_has_vrste_goriva_vrste_goriva1_idx` (`id_vrste_goriva`),
  ADD KEY `fk_mjesto_has_vrste_goriva_mjesto1_idx` (`id_mjesto`);

--
-- Indexes for table `moderator`
--
ALTER TABLE `moderator`
  ADD PRIMARY KEY (`id_moderator`,`id_korisnik`,`id_benzinska_postaja`),
  ADD KEY `fk_korisnik_has_benzinska_postaja_benzinska_postaja1_idx` (`id_benzinska_postaja`),
  ADD KEY `fk_korisnik_has_benzinska_postaja_korisnik1_idx` (`id_korisnik`);

--
-- Indexes for table `povijest_cijena`
--
ALTER TABLE `povijest_cijena`
  ADD PRIMARY KEY (`id_povijest_cijena`),
  ADD KEY `fk_povijest_cijena_benzinska_postaja_vrste_goriva1_idx` (`id_bpvg`);

--
-- Indexes for table `status_mjesto`
--
ALTER TABLE `status_mjesto`
  ADD PRIMARY KEY (`id_status_mjesto`);

--
-- Indexes for table `tip_korisnika`
--
ALTER TABLE `tip_korisnika`
  ADD PRIMARY KEY (`id_tip_korisnika`);

--
-- Indexes for table `tip_radnje`
--
ALTER TABLE `tip_radnje`
  ADD PRIMARY KEY (`id_tip_radnje`);

--
-- Indexes for table `vozilo`
--
ALTER TABLE `vozilo`
  ADD PRIMARY KEY (`id_vozilo`),
  ADD KEY `fk_vozilo_korisnik1_idx` (`id_korisnik`);

--
-- Indexes for table `vrste_goriva`
--
ALTER TABLE `vrste_goriva`
  ADD PRIMARY KEY (`id_vrste_goriva`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benzinska_postaja`
--
ALTER TABLE `benzinska_postaja`
  MODIFY `id_benzinska_postaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `benzinska_postaja_vrste_goriva`
--
ALTER TABLE `benzinska_postaja_vrste_goriva`
  MODIFY `id_bpvg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dnevnik`
--
ALTER TABLE `dnevnik`
  MODIFY `id_dnevnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;
--
-- AUTO_INCREMENT for table `evidencija_tocenja`
--
ALTER TABLE `evidencija_tocenja`
  MODIFY `id_evidencija` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `id_lokacija` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mjesto`
--
ALTER TABLE `mjesto`
  MODIFY `id_mjesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mjesto_vrste_goriva`
--
ALTER TABLE `mjesto_vrste_goriva`
  MODIFY `id_mvg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `moderator`
--
ALTER TABLE `moderator`
  MODIFY `id_moderator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `povijest_cijena`
--
ALTER TABLE `povijest_cijena`
  MODIFY `id_povijest_cijena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vozilo`
--
ALTER TABLE `vozilo`
  MODIFY `id_vozilo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `vrste_goriva`
--
ALTER TABLE `vrste_goriva`
  MODIFY `id_vrste_goriva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `benzinska_postaja`
--
ALTER TABLE `benzinska_postaja`
  ADD CONSTRAINT `fk_benzinska_postaja_lokacija` FOREIGN KEY (`id_lokacija`) REFERENCES `lokacija` (`id_lokacija`);

--
-- Constraints for table `benzinska_postaja_vrste_goriva`
--
ALTER TABLE `benzinska_postaja_vrste_goriva`
  ADD CONSTRAINT `fk_benzinska_postaja_has_vrste_goriva_benzinska_postaja1` FOREIGN KEY (`id_benzinska_postaja`) REFERENCES `benzinska_postaja` (`id_benzinska_postaja`),
  ADD CONSTRAINT `fk_benzinska_postaja_has_vrste_goriva_vrste_goriva1` FOREIGN KEY (`id_vrste_goriva`) REFERENCES `vrste_goriva` (`id_vrste_goriva`);

--
-- Constraints for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD CONSTRAINT `fk_dnevnik_korisnik1` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`),
  ADD CONSTRAINT `fk_dnevnik_tip_radnje1` FOREIGN KEY (`id_tip_radnje`) REFERENCES `tip_radnje` (`id_tip_radnje`);

--
-- Constraints for table `evidencija_tocenja`
--
ALTER TABLE `evidencija_tocenja`
  ADD CONSTRAINT `fk_evidencija_tocenja_benzinska_postaja1` FOREIGN KEY (`id_benzinska_postaja`) REFERENCES `benzinska_postaja` (`id_benzinska_postaja`),
  ADD CONSTRAINT `fk_evidencija_tocenja_mjesto_vrste_goriva1` FOREIGN KEY (`id_mvg`) REFERENCES `mjesto_vrste_goriva` (`id_mvg`),
  ADD CONSTRAINT `fk_vozilo_has_mjesto_benzinska_vrste_goriva_vozilo1` FOREIGN KEY (`id_vozilo`) REFERENCES `vozilo` (`id_vozilo`);

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_korisnik_tip_korisnika1` FOREIGN KEY (`id_tip_korisnika`) REFERENCES `tip_korisnika` (`id_tip_korisnika`);

--
-- Constraints for table `mjesto`
--
ALTER TABLE `mjesto`
  ADD CONSTRAINT `fk_mjesto_benzinska_postaja1` FOREIGN KEY (`id_benzinska_postaja`) REFERENCES `benzinska_postaja` (`id_benzinska_postaja`),
  ADD CONSTRAINT `fk_mjesto_status_mjesto1` FOREIGN KEY (`id_status_mjesto`) REFERENCES `status_mjesto` (`id_status_mjesto`);

--
-- Constraints for table `mjesto_vrste_goriva`
--
ALTER TABLE `mjesto_vrste_goriva`
  ADD CONSTRAINT `fk_mjesto_has_vrste_goriva_mjesto1` FOREIGN KEY (`id_mjesto`) REFERENCES `mjesto` (`id_mjesto`),
  ADD CONSTRAINT `fk_mjesto_has_vrste_goriva_vrste_goriva1` FOREIGN KEY (`id_vrste_goriva`) REFERENCES `vrste_goriva` (`id_vrste_goriva`);

--
-- Constraints for table `moderator`
--
ALTER TABLE `moderator`
  ADD CONSTRAINT `fk_korisnik_has_benzinska_postaja_benzinska_postaja1` FOREIGN KEY (`id_benzinska_postaja`) REFERENCES `benzinska_postaja` (`id_benzinska_postaja`),
  ADD CONSTRAINT `fk_korisnik_has_benzinska_postaja_korisnik1` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`);

--
-- Constraints for table `povijest_cijena`
--
ALTER TABLE `povijest_cijena`
  ADD CONSTRAINT `fk_povijest_cijena_benzinska_postaja_vrste_goriva1` FOREIGN KEY (`id_bpvg`) REFERENCES `benzinska_postaja_vrste_goriva` (`id_bpvg`);

--
-- Constraints for table `vozilo`
--
ALTER TABLE `vozilo`
  ADD CONSTRAINT `fk_vozilo_korisnik1` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
