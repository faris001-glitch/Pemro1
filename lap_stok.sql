-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 09:14 AM
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
-- Structure for view `lap_stok`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lap_stok`  AS   (select `barang`.`kd_brg` AS `kd_brg`,`barang`.`nm_brg` AS `nm_brg`,`barang`.`harga` AS `harga`,`barang`.`stok` AS `stok`,sum(`detail_pembelian`.`qty_beli`) AS `beli`,sum(`detail_retur`.`qty_retur`) AS `retur` from ((`barang` join `detail_retur`) join `detail_pembelian`) where `barang`.`kd_brg` = `detail_retur`.`kd_brg` and `barang`.`kd_brg` = `detail_pembelian`.`kd_brg` group by `barang`.`kd_brg`,`barang`.`nm_brg`,`barang`.`harga`,`barang`.`stok`)  ;

--
-- VIEW `lap_stok`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
