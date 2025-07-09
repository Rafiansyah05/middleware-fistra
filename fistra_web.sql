-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2025 at 12:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fistra_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `transaksi_id` int(8) UNSIGNED ZEROFILL NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipe_transaksi` varchar(255) NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `waktu_transaksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaksi_id`, `user_id`, `tipe_transaksi`, `jumlah`, `deskripsi`, `waktu_transaksi`) VALUES
(00000001, 73518240, 'Top Up', 1000.00, 'Transaksi top up oleh sukses', '2025-07-04 06:46:37'),
(00000002, 73518240, 'Top Up', 100000.00, 'Transaksi top up oleh sukses', '2025-07-04 06:52:50'),
(00000006, 73518240, 'Pembayaran', 5000.00, 'Transaksi via scanner', '2025-07-04 14:10:13'),
(00000007, 73518240, 'Pembayaran', 1000.00, 'Transaksi via scanner', '2025-07-04 14:10:57'),
(00000008, 73518240, 'Pembayaran', 5000.00, 'Transaksi via scanner', '2025-07-04 14:49:15'),
(00000009, 73518240, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-04 16:59:38'),
(00000010, 73518240, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-04 16:59:58'),
(00000011, 73518240, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-05 07:47:45'),
(00000012, 73518240, 'Pembayaran', 9000.00, 'Transaksi via scanner', '2025-07-05 07:47:53'),
(00000013, 75166506, 'Top Up', 100000.00, 'Transaksi top up sukses', '2025-07-05 09:03:34'),
(00000014, 75166506, 'Pembayaran', 5000.00, 'Transaksi via scanner', '2025-07-05 09:49:21'),
(00000015, 73518240, 'Pembayaran', 5000.00, 'Transaksi via scanner', '2025-07-05 09:49:53'),
(00000016, 73518240, 'Pembayaran', 50000.00, 'Transaksi via scanner', '2025-07-05 09:50:13'),
(00000017, 73518240, 'Pembayaran', 27000.00, 'Transaksi via scanner', '2025-07-05 09:50:24'),
(00000018, 40153995, 'Top Up', 1000000000.00, 'Transaksi top up sukses', '2025-07-05 16:12:25'),
(00000019, 40153995, 'Pembayaran', 27000.00, 'Transaksi via scanner', '2025-07-05 16:23:23'),
(00000020, 40153995, 'Pembayaran', 27000.00, 'Transaksi via scanner', '2025-07-05 16:23:58'),
(00000021, 40153995, 'Pembayaran', 27000.00, 'Transaksi via scanner', '2025-07-05 16:23:59'),
(00000022, 40153995, 'Pembayaran', 20000.00, 'Transaksi via scanner', '2025-07-05 16:29:05'),
(00000023, 75166506, 'Pembayaran', 36800.00, 'Transaksi via scanner', '2025-07-06 05:09:47'),
(00000024, 75166506, 'Pembayaran', 36800.00, 'Transaksi via scanner', '2025-07-06 05:10:32'),
(00000025, 75166506, 'Pembayaran', 100.00, 'Transaksi via scanner', '2025-07-06 05:11:12'),
(00000026, 40153995, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-06 17:19:12'),
(00000027, 75166506, 'Pembayaran', 10000.00, 'Transaksi via scanner', '2025-07-06 17:19:39'),
(00000028, 75166506, 'Pembayaran', 10000.00, 'Transaksi via scanner', '2025-07-06 17:19:43'),
(00000029, 40153995, 'Pembayaran', 100000000.00, 'Transaksi via scanner', '2025-07-06 17:20:08'),
(00000030, 40153995, 'Pembayaran', 100000000.00, 'Transaksi via scanner', '2025-07-06 17:20:13'),
(00000031, 40153995, 'Pembayaran', 100000000.00, 'Transaksi via scanner', '2025-07-06 17:20:22'),
(00000032, 40153995, 'Pembayaran', 100000000.00, 'Transaksi via scanner', '2025-07-06 17:20:23'),
(00000033, 40153995, 'Pembayaran', 100000000.00, 'Transaksi via scanner', '2025-07-06 17:20:24'),
(00000034, 75166506, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-06 17:58:47'),
(00000035, 75166506, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-06 18:09:10'),
(00000036, 75166506, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-07 05:06:02'),
(00000037, 75166506, 'Pembayaran', 1.00, 'Transaksi via scanner', '2025-07-07 05:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pin` char(6) NOT NULL,
  `sidik_jari` varchar(255) NOT NULL,
  `saldo` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama_lengkap`, `password`, `pin`, `sidik_jari`, `saldo`, `created_at`) VALUES
(40153995, 'ADRIAN', '$2y$10$h2jU2XKDkIR8oS5ZJdxnI..OBIu0bC35EeNM/Pn.N7dFKLFsY1d4O', '111111', 'rian123', 499898999.00, '2025-07-05 15:59:31'),
(73518240, 'AHMAD RAFIANSYAH', '$2y$10$Dlka/asNBR0csQspVPWcK.OLgv/3vJy3pfIq71IPi3Qwcsbtdo8Y6', '777777', 'sidikrafi123', 2997.00, '2025-07-03 15:58:03'),
(75166506, 'AHMAD TAUFIK', '$2y$10$pfSV4Ui8YHL7ed4DSxpsdetbwqX8xb0jpFRcmgbAb6yJp77jFWX0C', '000000', 'upik123', 1296.00, '2025-07-05 09:01:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `sidik_jari` (`sidik_jari`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `transaksi_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98310851;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
