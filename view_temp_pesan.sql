-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 09:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsia2`
--

-- --------------------------------------------------------

--
-- Structure for view `view_temp_pesan`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_temp_pesan`  AS SELECT `temp_pemesanan`.`kd_brg` AS `kd_brg`, concat(`barang`.`nm_brg`,`barang`.`harga`) AS `nm_brg`, `temp_pemesanan`.`qty_pesan` AS `qty_pesan`, `barang`.`harga`* `temp_pemesanan`.`qty_pesan` AS `sub_total` FROM (`temp_pemesanan` join `barang`) WHERE `temp_pemesanan`.`kd_brg` = `barang`.`kd_brg``kd_brg`  ;

--
-- VIEW `view_temp_pesan`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
