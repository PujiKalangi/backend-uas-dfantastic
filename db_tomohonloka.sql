-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 03:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tomohonloka`
--

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `uuid`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'a90113a7-67dc-4ad3-be88-29a774e37810', 'destinasi', '2022-12-13 06:59:53', '2022-12-13 06:59:53'),
(2, '4458abb3-676c-49f0-b86c-4cddfe0bc648', 'restoran', '2022-12-13 06:59:55', '2022-12-13 06:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `tomohonloka`
--

CREATE TABLE `tomohonloka` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `desk` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `placeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tomohonloka`
--

INSERT INTO `tomohonloka` (`id`, `uuid`, `name`, `lokasi`, `desk`, `image`, `url`, `createdAt`, `updatedAt`, `placeId`) VALUES
(3, '713a9cb9-a830-4696-99f1-d9e6fb512473', 'Air Terjun Tumimperas', 'Pinaras, Kota Tomohon, Sulawesi Utara', 'Air Terjun Tumimperas menjadi tempat berlibur wajib bagi wisatawan yang berada di Sulawesi Utara', 'f27111dbaa6ab1e10ea3b8d5b41f9693.png', 'http://localhost:5007/images/f27111dbaa6ab1e10ea3b8d5b41f9693.png', '2022-12-13 07:39:12', '2022-12-13 07:39:12', 1),
(4, '3cc6466f-dd9a-4c90-8764-f0fd4aa13d45', 'Amphitheater Woloan', 'Woloan I Utara, Kota Tomohon, Sulawesi Utara', 'Amphitheater Woloan dibangun pada tahun 2004, tempat ini memiliki sebuah perpustakaan yang luas', 'bce855f7f5f08d84b5c664e11d1a2b33.png', 'http://localhost:5007/images/bce855f7f5f08d84b5c664e11d1a2b33.png', '2022-12-13 07:40:50', '2022-12-13 07:40:50', 1),
(5, '81abda7f-9407-4402-975e-24a738196b19', 'Bukit Doa', 'Kakaskasen 3, Kota Tomohon, Sulawesi Utara', 'Bukit Doa Tomohon merupakan salah satu objek wisata alam yang juga menjadi tempat wisata banyak dikunjungi', '4b022e8ab3e7e3612ebff39793fb78fa.png', 'http://localhost:5007/images/4b022e8ab3e7e3612ebff39793fb78fa.png', '2022-12-13 07:42:09', '2022-12-13 07:42:09', 1),
(6, 'efe6a229-c100-41d4-a360-09a48571191d', 'Cartens Hills Wawo', 'Matani 2, Kota Tomohon, Sulawesi Utara', 'Cartens Hills Wawo merupakan salah satu destinasi wisata baru yang pastinya wajib Anda kunjungi', 'aa1e8b8f3ab3c8301d0e70d1a61bb7d5.png', 'http://localhost:5007/images/aa1e8b8f3ab3c8301d0e70d1a61bb7d5.png', '2022-12-13 07:44:20', '2022-12-13 07:44:20', 1),
(7, '15a497b1-518d-4dba-82d8-dfcfa8947361', 'Danau Linow', 'Lahendong, Kota Tomohon, Sulawesi Utara', 'Kawasan Danau Linow memiliki udara sejuk dengan keindahan pemandangan alam di sekitarnya', 'e5cc2a91fcb9a518131dab9a5d6b5299.png', 'http://localhost:5007/images/e5cc2a91fcb9a518131dab9a5d6b5299.png', '2022-12-13 07:49:46', '2022-12-13 07:49:46', 1),
(8, '0c2f359b-aa99-4197-86e1-abd529f9df2a', 'Kai\'santi Garden', 'Jl. Woloan Kayawu, Kota Tomohon, Sulawesi Utara', 'Dari atas puncak bukit Kaisanti kamu dapat menyaksikan keindahan alam yang nyata', 'f95e4abc1059894c514c4bcb41c87031.png', 'http://localhost:5007/images/f95e4abc1059894c514c4bcb41c87031.png', '2022-12-13 07:52:19', '2022-12-13 07:52:19', 1),
(9, 'a47b6dc5-a065-4c76-8132-fc2ce1f5b782', 'Narwastu Hills', 'Jl. Wawo, Matani 3, Kota Tomohon, Sulawesi Utara', 'Narwastu hills merupakan wisata terbaru di Tomohon, Sulawesi Utara. Sebuah destinasi yang memiliki spot keren', 'c0bfd75a1fe7d2d7cf9834b532636ac4.png', 'http://localhost:5007/images/c0bfd75a1fe7d2d7cf9834b532636ac4.png', '2022-12-13 07:54:16', '2022-12-13 07:54:16', 1),
(10, 'e20885c1-785d-49c7-8b45-13e0434d4f5b', 'Pagoda Ekayana', 'Jl. Sunge No.57, Kota Tomohon, Sulawesi Utara', 'Berlokasi di Gunung Lokon, tepatnya satu kompleks dengan Vihara Buddhayana', 'f696947290b57d84ebc30e116964cbd6.png', 'http://localhost:5007/images/f696947290b57d84ebc30e116964cbd6.png', '2022-12-13 07:54:59', '2022-12-13 07:54:59', 1),
(11, 'b66027cf-0650-4ae6-b4c2-01143605888b', 'Puncak Melby\'Ls', 'Kumelembuay, Kota Tomohon, Sulawesi Utara', 'Puncak Melby’ls menjadi destinasi menarik untuk dikunjungi di Kota Tomohon', '92d7cc6d934ddd45e38d850e7193055c.png', 'http://localhost:5007/images/92d7cc6d934ddd45e38d850e7193055c.png', '2022-12-13 07:55:41', '2022-12-13 07:55:41', 1),
(12, '0ff09d73-2b65-4166-a859-184995606bc6', 'Puncak Temboan Rurukan', 'Rurukan I, Kota Tomohon, Sulawesi Utara', 'Bagi anda yang menyukai wisata alam, tempat wisata Rurukan menjadi tujuan yang tepat', '403bb6306826c3142bb63b9a16f7507c.png', 'http://localhost:5007/images/403bb6306826c3142bb63b9a16f7507c.png', '2022-12-13 07:57:38', '2022-12-13 07:57:38', 1),
(13, '6e1693c0-e3f0-4fc9-9fe4-463c07c093de', 'Alang Alang Cafe & Resto', 'Kakaskasen 3, Kota Tomohon, Sulawesi utara', 'Salah satu cafe dan resto di Tomohon yang direkomendasi untuk dikunjungi adalah cafe alang-alang', '0a6b01ee4c229bb3666ad9e097cca7ad.png', 'http://localhost:5007/images/0a6b01ee4c229bb3666ad9e097cca7ad.png', '2022-12-13 08:03:27', '2022-12-13 08:03:27', 2),
(14, 'da6a3adc-0f7a-45c2-b9ad-07122ddefc44', 'D-Linow Restaurant', 'Lahendong 7, Kota Tomohon, Sulawesi Utara', 'D-Linow Restaurant merupakan tempat kuliner di Tomohon yang paling indah dan hits', 'b007360993de184ebb19e00c2735f721.png', 'http://localhost:5007/images/b007360993de184ebb19e00c2735f721.png', '2022-12-13 08:05:39', '2022-12-13 08:05:39', 2),
(15, '93307673-0f83-4896-a8b4-4d5fc69eab97', 'Elmonts Coffee and Resto', 'Kolongan 1, Kota Tomohon, Sulawesi Utara', 'Tempat yang indah untuk minum kopi nikmat dari berbagai daerah tersedia', 'b82421022caf1ada8ff16129fdc66b9b.png', 'http://localhost:5007/images/b82421022caf1ada8ff16129fdc66b9b.png', '2022-12-13 08:07:02', '2022-12-13 08:07:02', 2),
(16, 'af78cffb-6215-48da-92d2-9826bccbff3e', 'Gardenia Restaurant', 'Jl.Kakaskasen 2, Kota Tomohon, Sulawesi Utara', 'Sesuai dengan namanya, Gardenia, restoran ini memang terletak di tengah kebun bunga yang indah', '5fdd43b3a647bc985c9b959aaec26bf6.png', 'http://localhost:5007/images/5fdd43b3a647bc985c9b959aaec26bf6.png', '2022-12-13 08:07:59', '2022-12-13 08:07:59', 2),
(17, 'f37f2469-4fc4-4b60-9b9d-29230e147384', 'Green Garden', 'Jl.Smp No.2, Kota Tomohon, Sulawesi Utara', 'Restoran ini menyediakan babi panggang yang enak. Selain itu, menu ikannya juga segar', 'e53b7413dfe2b43176ececd44515d80c.png', 'http://localhost:5007/images/e53b7413dfe2b43176ececd44515d80c.png', '2022-12-13 08:08:47', '2022-12-13 08:08:47', 2),
(18, 'bd098b74-4f72-460b-ade7-9e1fe7be9a00', 'House of Kitty', 'Kakaskasen 2, Kota Tomohon, Sulawesi Utara', 'Terletak di kota Tomohon dengan lokasi strategis, cafenya menampilkan tema Hello Kitty', 'd75f2a96c97b9e7b5ad1adb2bc1a724d.png', 'http://localhost:5007/images/d75f2a96c97b9e7b5ad1adb2bc1a724d.png', '2022-12-13 08:09:37', '2022-12-13 08:09:37', 2),
(19, '09e730dd-1fed-4024-9e05-d88e680508f0', 'Kelapa 17 Tomohon', 'Walian, Kota Tomohon, Sulawesi Utara', 'Rumah makan yang pertama kali menyajikan menu kepala babi crispy', 'cd18279aef1296c7d9e2541812d84d76.png', 'http://localhost:5007/images/cd18279aef1296c7d9e2541812d84d76.png', '2022-12-13 08:11:24', '2022-12-13 08:11:24', 2),
(20, '70b28a63-890a-44bd-8dcf-84e065c16308', 'Ohana Ikan Bakar Seafood', 'Paslaten Dua, Kota Tomohon, Sulawesi Utara', 'Restoran yang menyediakan banyak sekali menu seafood dan terkenal dengan ikan', '49911bf235fd2b810043d3ea8cd377c9.png', 'http://localhost:5007/images/49911bf235fd2b810043d3ea8cd377c9.png', '2022-12-13 08:13:27', '2022-12-13 08:13:27', 2),
(21, 'ee51fe80-3df0-4167-a634-ab3d1a5e0ed1', 'Sineleyan Restaurant', 'Talete 1, Kota Tomohon, Sulawesi Utara', 'Restoran halal yang menyajikan makanan dengan spesialisasi ikan air tawar', 'fc445329d613aaa930c640f9bfb279e8.png', 'http://localhost:5007/images/fc445329d613aaa930c640f9bfb279e8.png', '2022-12-13 08:15:00', '2022-12-13 08:15:00', 2),
(22, '0ee0a015-77ff-45c8-9705-9b3d943adf1e', 'Waroeng Mie Djakarta', 'Matani 3, Kota Tomohon, Sulawesi Utara', 'Jika Anda pencinta mie, maka Waroeng Mie Djakarta bisa menjadi pilihan yang cocok', 'b530fe14cfabb6a0099b9461dd4fa33e.png', 'http://localhost:5007/images/b530fe14cfabb6a0099b9461dd4fa33e.png', '2022-12-13 08:15:57', '2022-12-13 08:15:57', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tomohonloka`
--
ALTER TABLE `tomohonloka`
  ADD PRIMARY KEY (`id`),
  ADD KEY `placeId` (`placeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tomohonloka`
--
ALTER TABLE `tomohonloka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tomohonloka`
--
ALTER TABLE `tomohonloka`
  ADD CONSTRAINT `tomohonloka_ibfk_1` FOREIGN KEY (`placeId`) REFERENCES `place` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
