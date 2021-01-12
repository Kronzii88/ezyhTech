-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 02:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopme`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'banner1', 'banner1.png', 'index.php?page=detail&barang_id=2', 'on'),
(2, 'banner2', 'banner2.png', 'index.php?page=detail&barang_id=3', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(1, 1, 'Iphone 11', '<ol><li>Layar 5.8&quot;</li><li>RAM/ROM 4/256 GB</li><li>OS iOS 13</li><li>Kamera 12MP</li></ol>', 'Apple-iPhone-11-Pro-Max-Midnight-Green-frontimage-1024x768.png', 22800000, 5, 'on'),
(2, 1, 'Samsung A51', '<ol><li>Display layar 6.5&quot;</li><li>RAM/ROM 6/128 Gb</li><li>OS Android 10.0</li><li>Kamera 48MP, 12MP(Ultrawide), 32MP (Selfie Camera</li></ol>', 'samsung a51.png', 4660000, 5, 'on'),
(3, 1, 'Xiamo Mi10 Pro', '<ol><li>Display layar 6.67&quot;</li><li>RAM/ROM 8/256&nbsp;Gb</li><li>OS Android 10.0 MIUI 11</li><li>Kamera 108 MP</li></ol>', 'xiaomiMI-10-Pro-1024x768.png', 8000000, 7, 'on'),
(4, 1, 'Oppo F11 Pro', '<ol><li>Display 6.53&quot;</li><li>RAM/ROM 6/126GB</li><li>OS Android 9.0</li><li>Kamera 48 MP</li></ol><p>&nbsp;</p>', 'oppo f11pro.png', 2350000, 9, 'on'),
(5, 2, 'Lenovo Legion y740', '<ol><li>Layar 15.6&quot;</li><li>Processor Intel Core I7-9750</li><li>Grafis NVidia Geforce RTX 2060</li><li>HardDrive/RAM 1TB/16GB</li></ol>', 'lenovo.png', 28000000, 9, 'on'),
(6, 2, 'Asus ROG Zephyrus', '<ol><li>Layar 15.6&quot;</li><li>Processor Core I7</li><li>Grafis GeForce GTX 1080</li><li>HardDrive/RAM 512 GB&nbsp;SSD/8GB&nbsp;&nbsp;</li></ol>', 'asus ROG zephyrus .png', 31600000, 3, 'on'),
(7, 2, 'Apple Macbook Pro', '<ol><li>Layar 13&quot;</li><li>Processor Core I5</li><li>Mac OS v10.7 Lion</li><li>HardDrive/RAM 500GB/4GB&nbsp;</li></ol>', 'macbook-pro-laptop-macbook-air-png-favpng-AG0skfa3sPbhxNnfK4JeLQrSw.png', 13700000, 2, 'on'),
(8, 2, 'MSI Gp63 Leopard', '<ol><li>Layar 15.6&quot;</li><li>Processor Intel Core I7</li><li>Grafis NVidia GeForce GTX 1060</li><li>HardDrive/RAM 1TB/16GB&nbsp;</li></ol><p>&nbsp;</p>', 'MSI Gaming .png', 20500000, 8, 'on'),
(9, 3, 'Razer Kraken Pro', '<ol><li>Frequency Response 12Hz - 28 KHz</li><li>Sensitivity 118 dB</li><li>panjang kabel 1.3 m</li><li>designe for maximum comfort zero fatigue</li></ol>', 'razer kraken.png', 1210000, 9, 'on'),
(10, 3, 'Steelseries Apex Pro', '<ol><li>RGB Illumination&nbsp;</li><li>Premium Magnetic Wrist Rest</li><li>OLED Smart Display</li><li>Bahan Grade Alumunium Alloy</li></ol>', 'steelseries apex pro.png', 3220000, 6, 'on'),
(11, 3, 'Logitech Mouse G502', '<ol><li>weight and balance tuning</li><li>laser depth 5mm</li><li>connection wired</li><li>easily calibrate sensor</li></ol>', 'logitec g502.png', 1200000, 1, 'on'),
(12, 3, 'Joystick Logitech F310', '<ol><li>Tidak getar - Single</li><li>garansi 1 Tahun Resmi</li><li>Extensive Game Support</li><li>Works with Android, Windows</li></ol>', 'f310-gallery-1.png', 350000, 7, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Smartphone', 'on'),
(2, 'Laptop', 'on'),
(3, 'Accesories', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `total_pembayaran` int(10) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `total_pembayaran`, `tanggal_transfer`, `status`) VALUES
(1, 1, 'samiun', '0009992211', 0, '2020-04-25', 0),
(2, 2, 'pagebluk', '1111-2345-1231', 0, '2020-04-25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 27500, 'on'),
(2, 'Surabaya', 17500, 'on'),
(3, 'Semarang', 13500, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(1, 1, 6, 'samiun', '08293123', 'jl. xxxx', '2020-04-29 23:40:55', 1),
(2, 1, 1, 'pageblug', '012934123', 'jalan abcd', '2020-04-30 05:35:14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(1, 12, 1, 350000),
(1, 5, 1, 28000000),
(2, 4, 1, 2350000),
(2, 9, 1, 1210000),
(2, 5, 1, 28000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(1, 'customer', 'customer1', 'customer1@gmail.com', 'jalan aaa', '018293081', 'untukcustomer', 'on'),
(2, 'customer', 'customer7', 'customer7@gmail.com', 'jl. aaaa', '0812371238', 'untukcustomer', 'on'),
(5, 'customer', 'customer 9', 'customer9@gmail.com', 'jalan aaa', '0123732322', 'untukcustomer', 'on'),
(6, 'superadmin', 'admin', 'admin@gmail.com', 'jl. aaa', '0812738231', 'untukadmin', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
