-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2023 pada 09.58
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sirajung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_angkatan`
--

CREATE TABLE `tb_angkatan` (
  `id_angkatan` int(11) NOT NULL,
  `angkatan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_angkatan`
--

INSERT INTO `tb_angkatan` (`id_angkatan`, `angkatan`) VALUES
(1, '1'),
(2, '2'),
(4, '3'),
(5, '4'),
(7, '5'),
(8, '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
(5, '1'),
(6, '2'),
(7, '3'),
(8, '4'),
(9, '5'),
(12, '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` enum('Administrator','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Adi Gunawan Ahmad', 'admin', 'admin', 'Administrator'),
(4, 'Eren Yeager', 'petugas', 'petugas', 'Petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(11) NOT NULL,
  `nama_sekolah` varchar(200) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `akreditasi` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `nama_sekolah`, `alamat`, `akreditasi`) VALUES
(1, 'SD POMOSDA', 'Jl. Wachid Hasyim No.305, Tanjung, Tanjunganom, Kec. Tanjunganom, Kabupaten Nganjuk, Jawa Timur 64482', 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` char(12) NOT NULL,
  `nama_siswa` varchar(40) NOT NULL,
  `jekel` enum('LK','PR') NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_angkatan` int(11) NOT NULL,
  `status` enum('Aktif','Lulus','Pindah') NOT NULL,
  `th_masuk` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `nama_siswa`, `jekel`, `id_kelas`, `id_angkatan`, `status`, `th_masuk`) VALUES
('0002', 'Ahmad Nugroho Bangun Santoso', 'LK', 9, 1, 'Aktif', 2018),
('0003', 'Alif Zia Ulhaq Muttaqien', 'LK', 9, 1, 'Aktif', 2018),
('0004', 'Aulia Zahra Mila Tsaqifa', 'PR', 9, 1, 'Aktif', 2018),
('0005', 'Aurelia Nanda Meisaroh', 'PR', 9, 1, 'Aktif', 2018),
('0006', 'Binti Nur Rohmah Aprilia', 'PR', 9, 1, 'Aktif', 2018),
('0007', 'Dahayu Lathifa Rabbani', 'PR', 9, 1, 'Aktif', 2018),
('0008', 'Fairuz Zahwa Mumtazah Az-Zaady', 'PR', 9, 1, 'Aktif', 2018),
('0009', 'Faiz Qolby Zoharo', 'LK', 9, 1, 'Aktif', 2018),
('0010', 'Fathia Nanaya Argya', 'PR', 9, 1, 'Aktif', 2018),
('0011', 'Fitrah Jauharul Ihfadzi', 'LK', 9, 1, 'Aktif', 2018),
('0012', 'Ilma Satriani Isma', 'LK', 9, 1, 'Aktif', 2018),
('0013', 'Ismah Sholihatul Abidah', 'PR', 9, 1, 'Aktif', 2018),
('0014', 'Muhammad Aufa Nurhan Wardhana', 'LK', 9, 1, 'Aktif', 2018),
('0015', 'Muhammad Azka Fadli Rahman', 'LK', 9, 1, 'Aktif', 2018),
('0016', 'Muhammad Khoirul Romadhoni', 'LK', 9, 1, 'Aktif', 2018),
('0017', 'Muhammad Novan Putra Ferdiansyah', 'LK', 9, 1, 'Aktif', 2018),
('0018', 'Muhammad Syahrul Arifin', 'LK', 9, 1, 'Aktif', 2018),
('0019', 'Nindy Amalia Nur Ahsani', 'PR', 9, 1, 'Aktif', 2018),
('0020', 'Nurin Natasya Aulia', 'PR', 9, 1, 'Aktif', 2018),
('0021', 'Siti Hamida Husna Sifatuillah', 'PR', 9, 1, 'Aktif', 2018),
('0022', 'Soraya Nurul Azizah', 'PR', 9, 1, 'Aktif', 2018),
('0036', 'Aulia Dinda Sekarsari', 'PR', 9, 1, 'Aktif', 2018),
('0052', 'Irlya Az Zikra Permatasari', 'PR', 9, 1, 'Aktif', 2018),
('0054', 'Rahmadani Koirul Fuad', 'LK', 9, 1, 'Aktif', 2018),
('0055', 'Muhamad Zulfa', 'LK', 9, 1, 'Aktif', 2018),
('0056', 'Fatimah Az Zahra', 'PR', 9, 1, 'Aktif', 2018),
('0076', 'Fika Lestari Arfia Putri', 'PR', 9, 1, 'Aktif', 2018),
('0078', 'Dewanta Yoga Prasetya', 'LK', 9, 1, 'Aktif', 2018),
('0080', 'Khofifah Husna Mahrunnisa', 'PR', 9, 1, 'Aktif', 2018),
('0084', 'Muhammad Gideon Adzkiya Hemadani', 'LK', 9, 1, 'Aktif', 2018);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tabungan`
--

CREATE TABLE `tb_tabungan` (
  `id_tabungan` int(11) NOT NULL,
  `nis` char(12) NOT NULL,
  `setor` int(11) NOT NULL,
  `tarik` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jenis` enum('ST','TR') NOT NULL,
  `petugas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tabungan`
--

INSERT INTO `tb_tabungan` (`id_tabungan`, `nis`, `setor`, `tarik`, `tgl`, `jenis`, `petugas`) VALUES
(83, '0019', 1000, 0, '2023-06-19', 'ST', 'Eren Yeager'),
(84, '0006', 2000, 0, '2023-06-19', 'ST', 'Eren Yeager'),
(85, '0004', 500000, 0, '2023-06-20', 'ST', 'Adi Gunawan Ahmad'),
(86, '0004', 0, 20000, '2023-06-20', 'TR', 'Adi Gunawan Ahmad');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_angkatan`
--
ALTER TABLE `tb_angkatan`
  ADD PRIMARY KEY (`id_angkatan`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_angkatan` (`id_angkatan`);

--
-- Indeks untuk tabel `tb_tabungan`
--
ALTER TABLE `tb_tabungan`
  ADD PRIMARY KEY (`id_tabungan`),
  ADD KEY `nis` (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_angkatan`
--
ALTER TABLE `tb_angkatan`
  MODIFY `id_angkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_tabungan`
--
ALTER TABLE `tb_tabungan`
  MODIFY `id_tabungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_tabungan`
--
ALTER TABLE `tb_tabungan`
  ADD CONSTRAINT `tb_tabungan_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
