-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 06.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shopping_cart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `OID` int(10) UNSIGNED NOT NULL,
  `ORDER_NO` varchar(45) NOT NULL DEFAULT '',
  `ORDER_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TOTAL_AMT` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `OID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PNAME` varchar(45) NOT NULL DEFAULT '',
  `PRICE` double(10,2) NOT NULL DEFAULT 0.00,
  `QTY` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TOTAL` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `PID` int(10) UNSIGNED NOT NULL,
  `PRODUCT` varchar(45) NOT NULL DEFAULT '',
  `PRICE` double(10,2) NOT NULL DEFAULT 0.00,
  `IMAGE` varchar(45) NOT NULL DEFAULT '',
  `DESCRIPTION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(22, 'OTAK OTAK', 13000.00, '1.jpg', 'Merupakan nama makanan khas Indonesia asal Sumatera, otak-otak dibuat dari daging ikan yang dicampur dengan tapioka dan bumbu yaitu: santan, garam, gula, lada, bawang putih, dan bawang merah. Otak-otak biasa disantap dengan saos kacang dan sambal.\r\n\r\nTerbuat dari daging ikan, nama makanan tradisional ini diambil dari tekstur dan warnanya yang mriip otak.'),
(23, 'AYAM TANGKAP', 20000.00, '2.jpg', 'Nama makanan khas Indonesia ini memang unik, tapi bukan didapat dari cara memasaknya. Keunikan ini didapat dari penyajiannya di mana ayam tangkap adalah ayam yang dimasak dengan bumbu rempah lalu cabai hijau, daun pandan, daun kunyit, serta daun kari digoreng dan ditaburkan di atas ayam tangkap.\r\n\r\nNah karena penyajiannya di mana ayam tertutupi atau terperangkap di daun kari ini maka disebutlah dengan ayam tangkap.'),
(24, 'SOTO MEDAN', 16000.00, '3.jpg', 'Dibandingkan dengan soto dari daerah lain, soto Medan memiliki ciri khas yakni kuash santan berwarna kuning pucat agak kehijauan dengan sedikti bumbu dan jintan. Soto Medan disajikan dengan potongan ayam atau sapi cincang, bihun, buncis. Tidak lupa juga telur rebus, tomat, bawang goreng, daun bawang, daun seledri dan kerupuk merah sebagai lauknya.'),
(25, 'KERAK TELOR', 13000.00, '4.jpg', 'Ngomongin kerak telor, kita langsung tahu dari mana asal daerah dari nama makanan khas ini. Kerak telor dibuat dari telur ayam atau bebek yang dimasak dengan ketan putih dan ebi sangrai. Yang menarik adalah cara memasaknya yakni telur yang dibalik ke arah arang saat adonan kerak telor sudah setengah matang.'),
(26, 'SEBLAK', 12000.00, '5.jpg', 'Seblak adalah makanan khas Jawa Barat yang terbuat dari kerupuk aci, makaroni, mie, sosis, bakso, telur, dan sawi, yang dibumbui dengan rempah-rempah gurih bercita rasa khas kencur dan cabai. Rasa pedas dan gurih menggoda.\r\n\r\nNggak hanya sebagai makanan tradisional Jawa Barat, kini seblak banyak digemari berbagai kalangan dan masyarakat di berbagai daerah, termasuk para pecinta pedas.'),
(27, 'LUMPIA', 10000.00, '6.jpg', 'Makanan khas Semarang, Jawa Tengah ini adalah perpaduan antara budaya Jawa dengan Tionghoa dan sudah ada selama ratusan tahun lamanya. Lumpia Semarang merupakan rolade dengan isian rebung dan tambahan daging ayam suwir atau telur yang dibumbui.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL DEFAULT '',
  `CONTACT` varchar(150) NOT NULL DEFAULT '',
  `ADDRESS` text DEFAULT NULL,
  `CITY` varchar(45) NOT NULL DEFAULT '',
  `PINCODE` varchar(45) NOT NULL DEFAULT '',
  `EMAIL` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `OID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `PID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
