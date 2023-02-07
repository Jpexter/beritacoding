-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2015 at 04:27 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_master_sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(2) NOT NULL,
  `nama_admin` varchar(60) NOT NULL,
  `username_admin` varchar(10) NOT NULL,
  `password_admin` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`) VALUES
(1, 'Hikmat Kamalulloh', 'kmatz', '3530ri'),
(2, 'Hikmat Kamalulloh', 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alamat_member`
--

CREATE TABLE IF NOT EXISTS `tb_alamat_member` (
  `id_alamat_member` int(4) NOT NULL,
  `id_member` int(4) NOT NULL,
  `telepon_alamat_member` varchar(15) NOT NULL,
  `alamat_member` varchar(200) NOT NULL,
  `provinsi_alamat_member` varchar(50) NOT NULL,
  `kota_alamat_member` varchar(40) NOT NULL,
  `kodepos_alamat_member` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alamat_member`
--

INSERT INTO `tb_alamat_member` (`id_alamat_member`, `id_member`, `telepon_alamat_member`, `alamat_member`, `provinsi_alamat_member`, `kota_alamat_member`, `kodepos_alamat_member`) VALUES
(1, 1, '085724990419', 'jl cibolang kaler kota sukabumi', 'Jawa Barat', 'Sukabumi', 43152),
(2, 1, '085724990419', 'jl grogol kota jakarta', 'Jawa Barat', 'Jakarta', 1212),
(3, 1, '085724990419', 'sukabumi', 'Jawa Barat', 'Sukabumi', 43152),
(4, 0, '085724990419', 'bekasi jawa barat', 'Jawa Barat', 'Sukabumi', 43152),
(5, 0, '085724990419', 'tasikmalaya jawa barat', 'Jawa Barat', 'Tasikmalaya', 54543),
(6, 0, '085724990419', 'jampang kulon, sukabumi, jawa barat', 'Jawa Barat', 'Sukabumi', 43152),
(7, 2, '', '', '', '', 0),
(8, 3, '', '', '', '', 0),
(9, 4, '12345', 'hvhv', 'Jawa Barat', 'Bekasi', 657),
(10, 5, '', '', '', '', 0),
(11, 6, '12345', 'hhv', 'Jawa Barat', 'Bekasi', 57575),
(12, 7, '', '', '', '', 0),
(13, 8, '8787', 'hvh', 'Jawa Barat', 'Bekasi', 57575),
(14, 0, '4435', 'g', 'Jawa Barat', 'Bekasi', 4534),
(15, 1, '4435', 'xbxcbxb', 'Jawa Barat', 'Cianjur', 4534);

-- --------------------------------------------------------

--
-- Table structure for table `tb_konfirmasi`
--

CREATE TABLE IF NOT EXISTS `tb_konfirmasi` (
  `id_konfirmasi` int(5) NOT NULL,
  `jumlah_transfer_konfirmasi` int(12) NOT NULL,
  `tanggal_transfer_konfirmasi` varchar(15) NOT NULL,
  `gambar_bukti` varchar(200) NOT NULL,
  `status_pembayaran` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konfirmasi`
--

INSERT INTO `tb_konfirmasi` (`id_konfirmasi`, `jumlah_transfer_konfirmasi`, `tanggal_transfer_konfirmasi`, `gambar_bukti`, `status_pembayaran`) VALUES
(1, 210000, '28 agustus 2015', 'SLIP MANDIRI.png', 'Selesai'),
(2, 366000, '28 agustus 2015', 'SLIP MANDIRI.png', 'Selesai'),
(3, 0, '', '', 'Belum selesai'),
(4, 0, '', '', 'Belum selesai'),
(5, 210000, '28 agustus 2015', 'SLIP MANDIRI.png', 'Selesai'),
(6, 210000, '28 agustus 2015', 'SLIP MANDIRI.png', 'Selesai'),
(7, 0, '', '', 'Belum selesai'),
(8, 0, '', '', 'Belum selesai'),
(9, 0, '', '', 'Belum selesai'),
(10, 0, '', '', 'Belum selesai'),
(11, 0, '', '', 'Belum selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_member`
--

CREATE TABLE IF NOT EXISTS `tb_member` (
  `id_member` int(5) NOT NULL,
  `nama_member` varchar(60) NOT NULL,
  `email_member` varchar(60) NOT NULL,
  `username_member` varchar(20) NOT NULL,
  `password_member` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_member`
--

INSERT INTO `tb_member` (`id_member`, `nama_member`, `email_member`, `username_member`, `password_member`) VALUES
(1, 'hikmat kamalulloh', 'hikmatkmatz@gmail.com', 'kmatz', '3530ri'),
(2, 'dvv', '', '', ''),
(3, '', '', '', ''),
(4, '', 'hikmatkamalulloh@gmail.com', 'news', 'news'),
(5, '', '', '', ''),
(6, 'human', 'hikmatkamalulloh@gmail.com', 'khjkhk', 'news'),
(7, 'human', '', '', ''),
(8, 'humang', 'hikmatkamalulloh@gmail.com', 'musik', '655gg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nonmember`
--

CREATE TABLE IF NOT EXISTS `tb_nonmember` (
  `id_nonmember` int(5) NOT NULL,
  `nama_nonmember` varchar(30) NOT NULL,
  `email_nonmember` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nonmember`
--

INSERT INTO `tb_nonmember` (`id_nonmember`, `nama_nonmember`, `email_nonmember`) VALUES
(1, 'hikmat kamalulloh', 'hikmatkmatz@gmail.com'),
(2, 'hikmat andrian', 'andrian@gmail.com'),
(3, 'hasby dena', 'hasby@gmai.com'),
(4, 'ghfge', 'hikmatkamalulloh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `id_order` int(5) NOT NULL,
  `id_alamat_member` int(5) NOT NULL,
  `id_tarif_jne` int(5) NOT NULL,
  `id_konfirmasi` int(5) NOT NULL,
  `id_produk` varchar(100) NOT NULL,
  `id_nonmember` varchar(5) NOT NULL,
  `waktu` varchar(35) NOT NULL,
  `jasa_pengiriman` varchar(30) NOT NULL,
  `total` int(16) NOT NULL,
  `bank` varchar(15) NOT NULL,
  `norek` varchar(16) NOT NULL,
  `an` varchar(25) NOT NULL,
  `bukti_resi` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `id_alamat_member`, `id_tarif_jne`, `id_konfirmasi`, `id_produk`, `id_nonmember`, `waktu`, `jasa_pengiriman`, `total`, `bank`, `norek`, `an`, `bukti_resi`) VALUES
(1, 2, 5, 1, 'member|s:17:"hikmat kamalulloh";items|a:1:{i:7;i:1;}', '0', 'August-08-2015 (09:36)', 'JNE', 216000, 'Mandiri', '12800047931300', 'Hikmat Kamalulloh', 'resi.jpg'),
(2, 2, 5, 2, 'member|s:17:"hikmat kamalulloh";items|a:2:{i:7;i:1;i:2;i:1;}', '0', 'August-08-2015 (11:39)', 'JNE', 366000, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(3, 3, 6, 3, 'member|s:17:"hikmat kamalulloh";admin|s:17:"Hikmat Kamalulloh";items|a:4:{i:7;i:1;i:2;i:2;i:1;i:1;i:', '0', 'August-08-2015 (13:01)', 'JNE', 1042500, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(4, 4, 6, 4, 'items|a:2:{i:6;i:1;i:7;i:1;}', '1', 'August-08-2015 (13:04)', 'JNE', 415000, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(5, 5, 15, 5, 'items|a:2:{i:5;i:1;i:6;i:1;}', '2', 'August-08-2015 (13:06)', 'JNE', 470000, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(6, 6, 6, 6, 'items|a:2:{i:8;i:1;i:10;i:1;}', '3', 'August-08-2015 (13:09)', 'JNE', 545000, 'Mandiri', '12800047931300', 'Hikmat Kamalulloh', 'resi.jpg'),
(7, 2, 5, 7, 'items|a:1:{i:3;i:1;}member|s:17:"hikmat kamalulloh";', '0', 'October-10-2015 (07:21)', 'JNE', 191000, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(8, 14, 3, 8, 'admin|s:17:"Hikmat Kamalulloh";items|a:1:{i:3;i:2;}', '4', 'October-10-2015 (17:06)', 'JNE', 367000, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(9, 2, 5, 9, 'admin|s:17:"Hikmat Kamalulloh";member|s:17:"hikmat kamalulloh";items|a:1:{i:1;s:1:"7";}', '0', 'October-10-2015 (17:13)', 'JNE', 1923600, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(10, 15, 7, 10, 'admin|s:17:"Hikmat Kamalulloh";member|s:17:"hikmat kamalulloh";items|a:2:{i:5;i:1;i:6;i:1;}', '0', 'October-10-2015 (17:13)', 'JNE', 459000, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia'),
(11, 2, 5, 11, 'member|s:17:"hikmat kamalulloh";admin|s:17:"Hikmat Kamalulloh";items|a:2:{i:6;i:1;i:7;s:1:"3";}', '0', 'October-10-2015 (18:08)', 'JNE', 819200, 'BCA', '2821464986', 'Hikmat Kamalulloh', 'Belum Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `id_produk` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi_produk` varchar(300) NOT NULL,
  `gambar_produk` varchar(300) NOT NULL,
  `harga_produk` int(12) NOT NULL,
  `stok_produk` int(5) NOT NULL,
  `berat_produk` decimal(3,1) NOT NULL DEFAULT '0.0',
  `kategori_produk` varchar(20) NOT NULL,
  `waktu_produk` varchar(30) NOT NULL,
  `ukuran` int(2) NOT NULL,
  `warna` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `deskripsi_produk`, `gambar_produk`, `harga_produk`, `stok_produk`, `berat_produk`, `kategori_produk`, `waktu_produk`, `ukuran`, `warna`) VALUES
(1, 'Vans Authentic EVB for Unisex Size 38-43', 'Teman ngabuburit jual khusus game PC. Harga murah Pembelian kurang dari 10Gb = Rp.2000/Gb Pembelian 10-15Gb = Rp.1500/Gb Pembelian lebih dari 15Gb ', 'sp1.jpg', 270000, 1, '0.3', 'Adidas', '2015-06-03 09:46:17', 41, 'Hitam'),
(3, 'sp3', 'testt', 'sp1.jpg', 175000, 2, '0.3', 'Vans', '2015-06-18 12:38:14', 40, 'Hitam'),
(2, 'Vans Authentic EVB for Unisex Size 38-43', 'sepatu nike', 'sp2.jpg', 150000, 2, '0.3', 'Nike', '2015-06-03 09:46:17', 41, 'Biru'),
(5, 'test tambah produk', 'sepatu vans ukuran 40=41=42', '26-11-2012_vans_era_blueharris1.jpg', 250000, 12, '0.3', 'Vans', '0000-00-00 00:00:00', 40, 'Coklat'),
(6, 'sepatu ke 3', 'vans\r\n', '747.386_7b8f4222bc864e3d856d73df45a6ea11.png_348x348.jpg', 200000, 11, '0.3', 'Vans', '0000-00-00 00:00:00', 40, 'Coklat'),
(7, 'produk sepatu 4', 'nike', 'casual-adidas-hitam1.jpg', 200000, 8, '0.3', 'Nike', '0000-00-00 00:00:00', 41, 'Hitam'),
(8, 'produk sepatu ke 5', 'Khusus perempuan', '141441_6ae38548-3b22-11e4-a96c-8b8c4908a8c2.jpg', 300000, 14, '0.3', 'Adidas', '0000-00-00 00:00:00', 40, 'Pink'),
(10, 'produk sepatu 6', 'adidas', '4163970_450211ba-e711-11e3-8e56-325f2523fab8.jpg', 230000, 14, '0.3', 'Adidas', '0000-00-00 00:00:00', 41, 'Hitam'),
(11, 'Adidas Hitam Putih', 'test sepatu adidas berat 3.0', '5649906_20130913100700.jpg', 175000, 14, '0.3', 'Adidas', '0000-00-00 00:00:00', 41, 'Hitam'),
(37, 'test', 'test', '1 (3).jpg', 400000, 5, '0.9', 'Adidas', 'October-10-2015 (04:18)', 37, 'Abu - abu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tarif_jne`
--

CREATE TABLE IF NOT EXISTS `tb_tarif_jne` (
  `id_tarif_jne` int(5) NOT NULL,
  `kota_tarif_jne` varchar(60) NOT NULL,
  `harga_tarif_jne` int(12) NOT NULL,
  `provinsi_tarif_jne` varchar(60) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tarif_jne`
--

INSERT INTO `tb_tarif_jne` (`id_tarif_jne`, `kota_tarif_jne`, `harga_tarif_jne`, `provinsi_tarif_jne`) VALUES
(3, 'Bekasi', 17000, 'Jawa Barat'),
(5, 'Jakarta', 16000, 'Jawa Barat'),
(6, 'Sukabumi', 15000, 'Jawa Barat'),
(7, 'Cianjur', 9000, 'Jawa Barat'),
(15, 'Tasikmalaya', 20000, 'Jawa Barat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_alamat_member`
--
ALTER TABLE `tb_alamat_member`
  ADD PRIMARY KEY (`id_alamat_member`);

--
-- Indexes for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tb_nonmember`
--
ALTER TABLE `tb_nonmember`
  ADD PRIMARY KEY (`id_nonmember`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_tarif_jne`
--
ALTER TABLE `tb_tarif_jne`
  ADD PRIMARY KEY (`id_tarif_jne`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_alamat_member`
--
ALTER TABLE `tb_alamat_member`
  MODIFY `id_alamat_member` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  MODIFY `id_konfirmasi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `id_member` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_nonmember`
--
ALTER TABLE `tb_nonmember`
  MODIFY `id_nonmember` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tb_tarif_jne`
--
ALTER TABLE `tb_tarif_jne`
  MODIFY `id_tarif_jne` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
