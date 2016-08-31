-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Agu 2016 pada 08.55
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disdik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(25) NOT NULL,
  `nama_agenda` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `nama_agenda`, `isi`, `tgl`) VALUES
(1, 'Rapat tertutup', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;">Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti &quot;Bagian isi disini, bagian isi disini&quot;, sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat &quot;Lorem Ipsum&quot; akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</span></p>\r\n', '2016-07-28 14:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `waktu`, `edit_time`) VALUES
(1, 'Cahaya Bisa Menghasilkan Daya Angkat', '<p><b style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Cahaya</b><span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">&nbsp;difungsikan untuk menghasilkan tenaga yang sama yang membuat pesawat udara terbang, seperti yang ditunjukkan oleh studi baru.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Dengan desain yang tepat, aliran seragam cahaya mendorong obyek-obyek yang sangat kecil seperti halnya sayap pesawat terbang menaikkan tubuh pesawat ke udara.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Para peneliti telah lama mengetahui bahwa memukul sebuah obyek dengan cahaya dapat mendorong obyek tersebut. Itulah pemikiran di balik layar surya, yang memanfaatkan radiasi untuk tenaga pendorong di luar angkasa. &quot;Kemampuan cahaya untuk mendorong sesuatu sudah diketahui,&quot; tutur rekan peneliti Grover Swartzlander dari Institut Teknologi Rochester di New York, seperti yang dikutip&nbsp;</span><i style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Science News</i><span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">&nbsp;(05/12/10).</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Trik baru cahaya lebih menarik dari sebuah dorongan biasa: Hal itu menciptakan tenaga yang lebih rumit yang disebut&nbsp;</span><b style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">daya angkat</b><span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">, bukti ketika sebuah aliran pada satu arah menggerakkan sebuah obyek secara tegak lurus. Foil udara atau&nbsp;</span><i style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">airfoil</i><span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">&nbsp;menghasilkan daya angkat; ketika mesin memutar baling-baling dan menggerakkan pesawat ke depan, sayap-sayapnya yang dimiringkan menyebabkan pesawat itu naik</span><a href="http://sainspop.blogspot.com/" style="outline: none; text-decoration: none; color: rgb(0, 0, 255); font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" title="Sains Populer - Berita Sains | Berita Teknologi">.</a><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Foil cahaya tidak dimaksudkan untuk menjaga sebuah pesawat tetap berada di udara selama penerbangan dari satu bandara ke bandara lainnya. Namun kesatuan alat-alat yang sangat kecil tersebut boleh digunakan untuk mendayakan mesin-mesin mikro, mentransportasikan partikel-partikel yang sangat kecil atau bahkan membolehkan metode-metode sistem kemudi pada layar surya.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Daya angkat optik merupakan &quot;ide yang sangat rapi&quot;, kata fisikawan Miles Padgett dari Universitas Glasgow di Skotlandia, namun terlau dini untuk mengatakan bagaimana efek tersebut boleh dimanfaatkan. &quot;Mungkin berguna, mungkin tidak. Waktu yang akan membuktikan.&quot;</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Cahaya tersebut dapat memiliki daya angkat yang tak terduga ini dimulai dari sebuah pertanyaan yang sangat sederhana, Swartzlander mengatakan, &quot;Jika kita mempunyai sesuatu berbentuk sayap dan kita menyinarinya dengan cahaya, apa yang terjadi?&quot; Eksperimen-eksperimen pemodelan menunjukkan kepada para peneliti bahwa sebuah defleksi asimetris cahaya akan menciptakan sebuah daya angkat yang sangat stabil. &quot;Jadi kami pikir lebih baik melakukan satu eksperimen,&quot; kata Swartzlander&nbsp;</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Para peneliti membuat batangan-batangan sangat kecil berbentuk mirip sayap pesawat terbang, di satu sisi pipih dan di sisi lainnya berliku. Ketika foil-foil udara berukuran mikron ini dibenamkan ke dalam air dan dipukul dengan 130 miliwatt cahaya dari dasar wadah, foil-foil tersebut mulai bergerak ke atas, seperti yang diduga. Namun batangan-batangan tersebut juga mulai bergerak ke samping, arah tegak lurus terhadap cahaya yang datang. Bola-bola simetris sangat kecil tidak menunjukkan efek daya angkat ini, seperti yang ditemukan tim tersebut.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Daya angkat optik berbeda dari daya angkat aerodinamis dengan sebuah foil udara. Sebuah pesawat udara terbang karena udara yang mengalir lebih lambat di bawah sayap-sayapnya menggunakan tekanan lebih besar daripada udara yang mengalir lebih cepat di atas. Namun pada foil cahaya,daya angkat diciptakan di dalam obyek-obyek tersebut ketika sorotan sinar melaluinya. Bentuk foil udara transparan terebut menyebabkan cahaya dibiaskan berbeda-beda tergantung pada tempat cahaya itu lewat, yang menyebabkan pembengkokan sesui momentum sorotan yang menghasilkan daya angkat.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Sudut-sudut daya angkat foil-foil cahaya ini sekitar 60 derajat, menurut temuan tim tersebut. &quot;Kebanyakan benda-benda aerodinamis mengudara pada sudut-sudut yang sangat gradual, akan tetapi hal ini memiliki sudut daya angkat yang luar biasa dan sangat kuat,&quot; ujar Swartzlander. &quot;Anda bisa bayangkan apa yang akan terjadi jika pesawat anda mengudara pada 60 derajat -- perut anda akan berada di kaki.&quot;</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Ketika batangan-batangan itu terangkat, seharusnya tidak jatuh atau kehilangan daya angkat, seperti yang diprediksi. &quot;Sebenarnya benda tersebut bisa menstabilkan diri sendiri,&quot; kata Padgett.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Swartzlander mengatakan bahwa dia berharap pada akhirnya bisa menguji foil-foil cahaya tersebut di udara juga, dan mencoba berbagai bentuk serta material dengan berbagai sifat pembiasan. Dalam studi tersebut para penelit menggunakan cahaya infra merah untuk menghasilkan daya angkat tersebut, tapi jenis cahaya lainnya juga bisa, kata Swartzlander. &quot;Yang indah tentang hal ini ialah bahwa benda itu akan berfungsi selama anda memiliki cahaya.&quot;</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Studi tersebut dipublikasikan di&nbsp;</span><i style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Nature Photonics</i><span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">&nbsp;tanggal 5 Desember.</span><br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<br style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;" />\r\n<span style="font-family: ''Verdana,Trebuchet MS'', Trebuchet, Arial, sans-serif; line-height: 20.8px;">Semoga hal ini bisa diteliti lebih lanjut dan dikembangkan untuk kebaikan.</span></p>\r\n', 'Artikel-1.jpg', '2016-04-25 13:42:59', '2016-04-25 13:42:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(35) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `video` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `foto`, `video`) VALUES
(1, 'p2kgk jaktim2', NULL, '<iframe width="560" height="315" src="https://www.youtube.com/embed/agi-FWTLMh0" frameborder="0" allowfullscreen></iframe>					'),
(2, 'Jakarta Timur', NULL, '<iframe width="560" height="315" src="https://www.youtube.com/embed/hpe6Em_NpUE" frameborder="0" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongan`
--

CREATE TABLE `golongan` (
  `id_golongan` int(25) NOT NULL,
  `nama_golongan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `golongan`
--

INSERT INTO `golongan` (`id_golongan`, `nama_golongan`) VALUES
(1, 'Gol I'),
(2, 'Gol II'),
(3, 'Gol III'),
(4, 'Gol IV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ijazah`
--

CREATE TABLE `ijazah` (
  `id_ijazah` int(20) NOT NULL,
  `nama_ijazah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ijazah`
--

INSERT INTO `ijazah` (`id_ijazah`, `nama_ijazah`) VALUES
(1, 'SLTA'),
(2, 'PGSLP/D-1'),
(3, 'PGSLA/D-2'),
(4, 'Sarmud/D-3'),
(5, 'Sarjana/S-1'),
(6, 'Pasca Sarjana/S-2'),
(7, 'Doktor/S-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `tk` int(5) NOT NULL DEFAULT '0',
  `sd` int(5) NOT NULL DEFAULT '0',
  `smp` int(5) NOT NULL DEFAULT '0',
  `sma` int(5) NOT NULL DEFAULT '0',
  `smk` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `tk`, `sd`, `smp`, `sma`, `smk`) VALUES
(1, 'Kepala Sekolah', 1, 1, 1, 1, 1),
(2, 'Wakil Kepala Sekolah', 1, 1, 1, 1, 1),
(3, 'Guru Kelompok', 1, 0, 0, 0, 0),
(4, 'Guru Bidang Studi', 0, 1, 1, 1, 1),
(5, 'Guru BK', 0, 1, 1, 1, 1),
(6, 'Staf Wakil', 0, 1, 1, 1, 1),
(7, 'Wali Kelas', 0, 1, 1, 1, 1),
(8, 'Kepala Lab', 0, 0, 1, 0, 1),
(9, 'Kepala Bengkel', 0, 0, 0, 1, 1),
(10, 'Kepala UKS', 0, 1, 1, 1, 1),
(11, 'Ketua Jurusan', 0, 0, 0, 1, 1),
(12, 'Ketua Program Adaptif Normatif', 0, 1, 1, 1, 1),
(13, 'Pembina Ekskul', 0, 1, 1, 1, 1),
(14, 'Pembina OSIS', 0, 0, 1, 1, 1),
(15, 'Pembina Perpustakaan', 0, 1, 1, 1, 1),
(16, 'Penjab Lingkungan Hidup (PLH)', 0, 1, 1, 1, 1),
(17, 'Guru Agama Islam', 0, 1, 1, 1, 1),
(18, 'Guru Agama Kristen Protestan', 0, 1, 1, 1, 1),
(19, 'Guru Agama Kristen Katolik', 0, 1, 1, 1, 1),
(20, 'Guru Agama Budha', 0, 1, 1, 1, 1),
(21, 'Guru Agama Hindu', 0, 1, 1, 1, 1),
(22, 'Guru Agama Khonghucu', 0, 1, 1, 1, 1),
(23, 'Guru Penjaskes', 0, 1, 1, 1, 1),
(24, 'Guru Kelas', 0, 1, 0, 0, 0),
(25, 'Office Boy', 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(10) NOT NULL,
  `nama_kec` varchar(255) NOT NULL,
  `kode_wilayah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `nama_kec`, `kode_wilayah`) VALUES
(1, 'Cakung', 100),
(2, 'Cipayung', 200),
(3, 'Ciracas', 300),
(4, 'Duren Sawit', 400),
(5, 'Jatinegara', 500),
(6, 'Kramat Jati', 600),
(7, 'Makasar', 700),
(8, 'Matraman', 800),
(9, 'Pasar Rebo', 900),
(10, 'Pulo Gadung', 999);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `deskripsi`, `tlp`, `nama`, `email`, `tgl`) VALUES
(3, 'abcd', '2141352464', 'Reza Fauzan', 'reza.fauzan1991@gmail.com', '2016-07-03 04:34:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(10) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `jenis_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `jenis_sekolah`) VALUES
(1, 'Guru Kelompok', 'TK'),
(2, 'Pendidikan Agama Islam', 'SD'),
(3, 'Pendidikan Agama Protestan', 'SD'),
(4, 'Pendidikan Agama Katholik', 'SD'),
(5, 'Pendidikan Agama Budha', 'SD'),
(6, 'Pendidikan Agama Hindu', 'SD'),
(7, 'Pendidikan Agama Khonghucu', 'SD'),
(8, 'Kewarganegaraan', 'SD'),
(9, 'Bhs. Indonesia', 'SD'),
(10, 'Matematika', 'SD'),
(11, 'IPA', 'SD'),
(12, 'IPS', 'SD'),
(13, 'Seni Budaya', 'SD'),
(14, 'Penjaskes', 'SD'),
(15, 'KTK', 'SD'),
(16, 'PLKJ', 'SD'),
(17, 'Bhs. Inggris', 'SD'),
(18, 'Kesenian Jkt.', 'SD'),
(19, 'PLBJ', 'SD'),
(20, 'Guru Kelas', 'SD'),
(21, 'Bimbingan dan Konseling', 'SD'),
(22, 'Komputer', 'SD'),
(23, 'Sejarah Budaya', 'SD'),
(24, 'Kewarganegaraan', 'SMP'),
(25, 'Bhs. Indonesia', 'SMP'),
(26, 'Bhs. Inggris', 'SMP'),
(27, 'Matematika', 'SMP'),
(28, 'IPA', 'SMP'),
(29, 'IPS', 'SMP'),
(30, 'Seni Budaya', 'SMP'),
(31, 'KTK', 'SMP'),
(32, 'Tek. Inf. Kom.', 'SMP'),
(33, 'Tata Busana', 'SMP'),
(34, 'Tata Boga', 'SMP'),
(35, 'Tata Graha', 'SMP'),
(36, 'Elektronika', 'SMP'),
(37, 'Komputer', 'SMP'),
(38, 'PLKJ', 'SMP'),
(39, 'Bhs. Asing Lain', 'SMP'),
(40, 'Penjaskes', 'SMP'),
(41, 'Pendidikan Agama Islam', 'SMP'),
(42, 'Pendidkan Agama Protestan', 'SMP'),
(43, 'Pendidikan Agama Katholik', 'SMP'),
(44, 'Pendidikan Agama Budha', 'SMP'),
(45, 'Pendidikan Agama Hindu', 'SMP'),
(46, 'Pendidikan Agama Khonghucu', 'SMP'),
(47, 'Bimbingan dan Penyuluhan', 'SMP'),
(48, 'Sejarah Budaya', 'SMP'),
(49, 'PPKn', 'SMA'),
(50, 'Pendidikan Agama Islam', 'SMA'),
(51, 'Pendidkan Agama Protestan', 'SMA'),
(52, 'Pendidikan Agama Katholik', 'SMA'),
(53, 'Pendidikan Agama Budha', 'SMA'),
(54, 'Pendidikan Agama Hindu', 'SMA'),
(55, 'Pendidikan Agama Khonghucu', 'SMA'),
(56, 'Bahasa Sastra Indonesia', 'SMA'),
(57, 'Matematika', 'SMA'),
(58, 'Fisika', 'SMA'),
(59, 'Biologi', 'SMA'),
(60, 'Kimia', 'SMA'),
(61, 'Ekonomi', 'SMA'),
(62, 'Sosiologi', 'SMA'),
(63, 'Geografi', 'SMA'),
(64, 'Sejarah Budaya', 'SMA'),
(65, 'Tata Negara', 'SMA'),
(66, 'Antropologi', 'SMA'),
(67, 'Bhs. Inggris', 'SMA'),
(68, 'Bhs. Jepang', 'SMA'),
(69, 'Bhs. Jerman', 'SMA'),
(70, 'Bhs. Prancis', 'SMA'),
(71, 'Bhs. Mandarin', 'SMA'),
(72, 'Bhs. Arab', 'SMA'),
(73, 'Sejarah Nasional dan Umum', 'SMA'),
(74, 'Penjaskes', 'SMA'),
(75, 'Pendidikan Seni', 'SMA'),
(76, 'Bahasa Asing Lain', 'SMA'),
(77, 'Bimbingan dan Konseling', 'SMA'),
(78, 'Kerajinan Tangan dan Kesenian', 'SMA'),
(79, 'Komputer', 'SMA'),
(80, 'Tata Boga', 'SMA'),
(81, 'Tata Busana', 'SMA'),
(82, 'Akuntansi', 'SMA'),
(83, 'Seni Budaya', 'SMA'),
(84, 'Nasionalisme dan Budi Pekerti', 'SMA'),
(85, 'Prakarya dan Kewirausahaan', 'SMA'),
(86, 'PPKn', 'SMK'),
(87, 'Pendidikan Agama Islam', 'SMK'),
(88, 'Pendidkan Agama Protestan', 'SMK'),
(89, 'Pendidikan Agama Katholik', 'SMK'),
(90, 'Pendidikan Agama Budha', 'SMK'),
(91, 'Pendidikan Agama Hindu', 'SMK'),
(92, 'Pendidikan Agama Khonghucu', 'SMK'),
(93, 'Bahasa Indonesia', 'SMK'),
(94, 'Matematika', 'SMK'),
(95, 'Fisika', 'SMK'),
(96, 'Biologi', 'SMK'),
(97, 'Kimia', 'SMK'),
(98, 'Ekonomi', 'SMK'),
(99, 'IPA', 'SMK'),
(100, 'IPS', 'SMK'),
(101, 'Penjaskes', 'SMK'),
(102, 'Bhs. Inggris', 'SMK'),
(103, 'Komputer', 'SMK'),
(104, 'Kewirausahaan', 'SMK'),
(105, 'Administrasi Perkantoran', 'SMK'),
(106, 'Akuntansi', 'SMK'),
(107, 'Kearsipan', 'SMK'),
(108, 'Kesekretarisan', 'SMK'),
(109, 'Perbankan', 'SMK'),
(110, 'Penjualan', 'SMK'),
(111, 'Akomodasi Perhotelan', 'SMK'),
(112, 'Usaha Jasa Pariwisata', 'SMK'),
(113, 'Restoran', 'SMK'),
(114, 'Patiseri', 'SMK'),
(115, 'Tata Kecantikan Kulit', 'SMK'),
(116, 'Tata Busana', 'SMK'),
(117, 'Pekerjaan Sosial', 'SMK'),
(118, 'Multimedia', 'SMK'),
(119, 'Perabot Kayu', 'SMK'),
(120, 'Teknik Alat Berat', 'SMK'),
(121, 'Teknik Audio-Video', 'SMK'),
(122, 'Teknik Konstruksi Batu Beton', 'SMK'),
(123, 'Teknik Gambar Bangunan', 'SMK'),
(124, 'Teknik Komputer dan Jaringan', 'SMK'),
(125, 'Teknik Konstruksi Kayu', 'SMK'),
(126, 'Teknik Mekanik Otomotif', 'SMK'),
(127, 'Teknik Pemanfaatan Listrik', 'SMK'),
(128, 'Teknik Permesinan', 'SMK'),
(129, 'Nautika Kapal Niaga', 'SMK'),
(130, 'Seni Budaya', 'SMK'),
(131, 'Bimbingan dan Konseling', 'SMK'),
(132, 'Bhs. Jepang', 'SMK'),
(133, 'Bhs. Jerman', 'SMK'),
(134, 'Bhs. Prancis', 'SMK'),
(135, 'Bhs. Mandarin', 'SMK'),
(136, 'Bhs. Arab', 'SMK'),
(137, 'Psikologi', 'SMK'),
(138, 'Housekeeping', 'SMK'),
(139, 'Ticketing', 'SMK'),
(140, 'Pengantar Grafika', 'SMK'),
(141, 'Cetak Tinggi Mini Offset', 'SMK'),
(142, 'Cetak Offset', 'SMK'),
(143, 'Design Grafis', 'SMK'),
(144, 'Type Setting', 'SMK'),
(145, 'Kalkulasi', 'SMK'),
(146, 'Foto Reproduksi', 'SMK'),
(147, 'C T F (Cetak Fotografer)', 'SMK'),
(148, 'C T P (Cetak Produksi)', 'SMK'),
(149, 'Cetak Sablon', 'SMK'),
(150, 'Penjilidan', 'SMK'),
(151, 'Design Brief', 'SMK'),
(152, 'Cetak Intaglio', 'SMK'),
(153, 'Elektro', 'SMK'),
(154, 'KKPI (Ketram. Komp. dan Pengelolaan Inf.)', 'SMK'),
(155, 'Patologi', 'SMK'),
(156, 'Seni Gambar', 'SMK'),
(157, 'Komunikasi', 'SMK'),
(158, 'Hitung Dagang', 'SMK'),
(159, 'Bimbingan Karir', 'SMK'),
(160, 'Pemandu Wisata', 'SMK'),
(161, 'CTF dan CTP', 'SMK'),
(162, 'Teori Musik', 'SMK'),
(163, 'Solfesio', 'SMK'),
(164, 'Piano', 'SMK'),
(165, 'Gitar', 'SMK'),
(166, 'Terompet', 'SMK'),
(167, 'Biola', 'SMK'),
(168, 'Flute', 'SMK'),
(169, 'Cello', 'SMK'),
(170, 'Kontrabass', 'SMK'),
(171, 'Perkusi', 'SMK'),
(172, 'Klarinet', 'SMK'),
(173, 'Vokal', 'SMK'),
(174, 'Oboe', 'SMK'),
(175, 'Ilmu Bentuk Analisa', 'SMK'),
(176, 'Pabrikasi Logam', 'SMK'),
(177, 'Koperasi', 'SMK'),
(178, 'Ilmu Resep', 'SMK'),
(179, 'Farmakologi', 'SMK'),
(180, 'Farmakognosi', 'SMK'),
(181, 'Ilmu Kesehatan Masyarakat (IKM)', 'SMK'),
(182, 'Undang-undang Kesehatan (UUK)', 'SMK'),
(183, 'Manajemen Farmasi', 'SMK'),
(184, 'Tour Planning', 'SMK'),
(185, 'Etika Komunikasi', 'SMK'),
(186, 'Manajemen Website', 'SMK'),
(187, 'Meeting Insentive Convention Exibition', 'SMK'),
(188, 'Teknik Pendingin dan Tata Udara', 'SMK'),
(189, 'Tata Boga', 'SMK'),
(190, 'Agribisnis Perikanan', 'SMK'),
(191, 'Nautika Kapal Penangkap Ikan', 'SMK'),
(192, 'Teknik Kapal Penangkap Ikan', 'SMK'),
(193, 'Pendidikan Kewarganegaraan', 'SMK'),
(194, 'Hukum Maritim', 'SMK'),
(195, 'Bangunan dan Stabilitas Kapal', 'SMK'),
(196, 'Keselamatan dan Kesehatan Kerja (K3)', 'SMK'),
(197, 'Pencegahan Polusi Lingkungan Laut', 'SMK'),
(198, 'Prosedur Darurat dan SAR', 'SMK'),
(199, 'Pelayanan Medis', 'SMK'),
(200, 'Ilmu Pelayaran', 'SMK'),
(201, 'Peralatan Navigasi dan Radar', 'SMK'),
(202, 'Dinas Jaga di Kapal', 'SMK'),
(203, 'Kompas dan Sistem Kemudi', 'SMK'),
(204, 'Meteorologi', 'SMK'),
(205, 'Mengolah Gerak dan Mengendalikan Kapal', 'SMK'),
(206, 'Permesinan Kapal', 'SMK'),
(207, 'Isyarat Komunikasi', 'SMK'),
(208, 'Penanganan dan Pengaturan Muatan', 'SMK'),
(209, 'Bahasa Inggris Maritim', 'SMK'),
(210, 'Menggambar Teknik Mesin', 'SMK'),
(211, 'Mesin Penggerak  Utama Kapal', 'SMK'),
(212, 'Mesin Utama Diesel', 'SMK'),
(213, 'Mesin Utama Turbin', 'SMK'),
(214, 'Mesin Utama Katel', 'SMK'),
(215, 'Permesinan Bantu Kapal', 'SMK'),
(216, 'Teknik Listrik', 'SMK'),
(217, 'Elektronik', 'SMK'),
(218, 'Sistem Kontrol', 'SMK'),
(219, 'Perawatan dan Perbaikan Mesin', 'SMK'),
(220, 'Praktek Bengkel', 'SMK'),
(221, 'Teknologi Bahan', 'SMK'),
(222, 'Meteorologi dan Oceanografi', 'SMK'),
(223, 'Penanganan dan Penyimpanan Hasil Tangkapan', 'SMK'),
(224, 'Metode Penangkapan Ikan', 'SMK'),
(225, 'Manajemen Kapal Perikanan dan CCRF', 'SMK'),
(226, 'Perawatan Alat Tangkap', 'SMK'),
(227, 'Perpajakan', 'SMK'),
(228, 'Prakarya dan Kewirausahaan', 'SMK'),
(229, 'Seni Teater', 'SMK'),
(230, 'Sejarah Indonesia', 'SMK'),
(231, 'Agribisnis Tanaman Pangan dan Hortikultura', 'SMK'),
(232, 'Agribisnis Pembibitan dan Kultur Jaringan Tanaman', 'SMK'),
(233, 'Bimbingan dan Penyuluhan', 'SMK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_guru`
--

CREATE TABLE `master_guru` (
  `nip` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kec` int(10) NOT NULL,
  `tingkat_sekolah` varchar(5) NOT NULL,
  `nama_sekolah` varchar(20) NOT NULL,
  `jkelamin` varchar(5) NOT NULL,
  `mapel` int(10) NOT NULL,
  `status_sek` int(5) NOT NULL,
  `stat_peg` int(10) NOT NULL,
  `golruang` varchar(10) NOT NULL,
  `jabatan` int(10) NOT NULL,
  `pendidikan` int(10) NOT NULL,
  `thn_pendidikan` varchar(5) DEFAULT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_tugas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_guru`
--

INSERT INTO `master_guru` (`nip`, `nama_lengkap`, `no_tlp`, `alamat`, `email`, `password`, `foto`, `kec`, `tingkat_sekolah`, `nama_sekolah`, `jkelamin`, `mapel`, `status_sek`, `stat_peg`, `golruang`, `jabatan`, `pendidikan`, `thn_pendidikan`, `agama`, `tempat_lahir`, `tgl_lahir`, `alamat_tugas`) VALUES
('3300022212410100', 'Ivan', '', '', 'reza@icube.com', 'e3cc69fd552970fba65112340fecdb26', '', 4, 'SMP', '16440062200008', 'L', 40, 0, 0, '00', 20, 0, '', '', '', '0000-00-00', ''),
('330002221241051', 'Reza Fauzan', '2141352464', '12345', 'reza.fauzan1991@gmail.com', '84f27bdf00cedce8fc1a90bb67981b26', '330002221241051.jpg', 3, 'SMP', '16430062100004', 'L', 40, 1, 1, '33', 23, 5, '', 'islam', 'Jakarta', '2016-08-17', 'sadasdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_sekolah`
--

CREATE TABLE `master_sekolah` (
  `induk_sekolah` varchar(255) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` text,
  `kelurahan` varchar(255) DEFAULT NULL,
  `id_kecamatan` int(10) NOT NULL,
  `tingkat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_sekolah`
--

INSERT INTO `master_sekolah` (`induk_sekolah`, `nama_sekolah`, `alamat`, `kelurahan`, `id_kecamatan`, `tingkat`) VALUES
('16410060100001', 'TK NEGERI PENGGILINGAN', 'Jl. Penggilingan Komplek PIK', ' Penggilingan', 1, 'TK'),
('16410060200001', 'TK Ar Rafiqiah', 'Jl. Cakung Barat Rt. 01/05', ' Cakung Barat', 1, 'TK'),
('16410060200002', 'TK Islam Al Abror', 'Jl. Tipar Cakung Gg. Tebu', ' Cakung Barat', 1, 'TK'),
('16410060200003', 'TK Islam Al Hazmi', 'Jl. Tipar Cakung', ' Cakung Barat', 1, 'TK'),
('16410060200004', 'TK Islam Annajah', 'Jl. Tipar No. 3 Rt. 005/08', ' Cakung Barat', 1, 'TK'),
('16410060200005', 'TK Islam Darul Arqom', 'Jl. Tipar Cakung Kp. Baru gg', ' Cakung Barat', 1, 'TK'),
('16410060200006', 'TK Kartika Kencana', 'Jl. Raya Bekasi Km. 23', ' Cakung Barat', 1, 'TK'),
('16410060200007', 'TK Kartika VIII 18', 'Jl. Raya Bekai Km. 23', ' Cakung Barat', 1, 'TK'),
('16410060200008', 'TK Muhajirin', 'Jl. Raya Penggilingan', ' Cakung Barat', 1, 'TK'),
('16410060200009', 'TK Mutiara Pertiwi', 'Jl. SMP 144 Rt. 02/05', ' Cakung Barat', 1, 'TK'),
('16410060200010', 'TK Nurul Huda Cakung Barat', 'Jl. Tipar Cakung', ' Cakung Barat', 1, 'TK'),
('16410060200011', 'TK Pelita Insani', 'Jl. Baru Cakung Gg.Gapura V', ' Cakung Barat', 1, 'TK'),
('16410060200012', 'PAUD Trista Mandiri', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'TK'),
('16410060200013', 'TK Bina Cempaka', 'Jl. Kayu Tinggi Cakung Timur', ' Cakung Timur', 1, 'TK'),
('16410060200014', 'TK Islam Al Hanief', 'Jl. Kayu Tinggi No. 9', ' Cakung Timur', 1, 'TK'),
('16410060200015', 'TK Islam Ar Raihan', 'Jl. Tambun Selatan No. 69 Rt.0', ' Cakung Timur', 1, 'TK'),
('16410060200016', 'TK Islam Jauharotul Huda', 'Jl. Tambun Rengas', ' Cakung Timur', 1, 'TK'),
('16410060200017', 'TK Islam Rabbanee', 'Jl. Kavling Barokah', ' Cakung Timur', 1, 'TK'),
('16410060200018', 'TK IT Nur Rahman', 'Jl. Kayu Tinggi Gg. Kutilang N', ' Cakung Timur', 1, 'TK'),
('16410060200019', 'TK Nusa Indah', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'TK'),
('16410060200020', 'TK Rachmat Ibu', 'Jl. Rorotan 9 no.11', ' Cakung Timur', 1, 'TK'),
('16410060200021', 'TK Yakap Jaya', 'Jl. Raya Bekasi Gempol', ' Cakung Timur', 1, 'TK'),
('16410060200022', 'TKIT As Syifa', 'Jl. Kayu Tinggi No. 72', ' Cakung Timur', 1, 'TK'),
('16410060200023', 'PKBM PAUD Ajisaka', 'Jl. Raya Bekasi KM 17 Gg. RH I', ' Jatinegara', 1, 'TK'),
('16410060200024', 'TK Al Wathoniyah 8', 'Jl. DR. KRT. Radjiman WD.', ' Jatinegara', 1, 'TK'),
('16410060200025', 'TK Al Wathoniyah Pusat Putri', 'Jl. Raya Bekasi Km 17 PLN Klen', ' Jatinegara', 1, 'TK'),
('16410060200026', 'TK Bina Putera', 'Jl. Swadaya Pulo Jahe', ' Jatinegara', 1, 'TK'),
('16410060200027', 'TK Bintang Pancasila', 'Jl. Baru Pengarengan', ' Jatinegara', 1, 'TK'),
('16410060200028', 'TK Bunga Melati', 'Jl. Jatinegara Lio No. 40', ' Jatinegara', 1, 'TK'),
('16410060200029', 'TK Cahaya Bunda', 'Jl. Raya Bekasi Km. 17', ' Jatinegara', 1, 'TK'),
('16410060200030', 'TK Islam Al Farabi', 'Jl. Swadaya IV Kp. Pulo Jahe', ' Jatinegara', 1, 'TK'),
('16410060200031', 'TK Islam Bahrul Ulum', 'Jl. Waru Doyong 14/08', ' Jatinegara', 1, 'TK'),
('16410060200032', 'TK Islam Nuruzzaman', 'Jl. Raya Bekasi Km 17 Gg. Pusk', ' Jatinegara', 1, 'TK'),
('16410060200033', 'TK Islam Salafiyah', 'Jl. Swadaya PAM Rawa Badung', ' Jatinegara', 1, 'TK'),
('16410060200034', 'TK Nurul Huda', 'Jl. Raya Bekasi Km. 18', ' Jatinegara', 1, 'TK'),
('16410060200035', 'TK Nurul Islam', 'Jl. Swadaya IV 11/14 Pulo Jahe', ' Jatinegara', 1, 'TK'),
('16410060200036', 'TK Perintis I Pagi', 'Jl. PAM Rawa Badung No.14', ' Jatinegara', 1, 'TK'),
('16410060200037', 'TK Perintis II', 'Jl. Rawa Badung Rt. 06/13', ' Jatinegara', 1, 'TK'),
('16410060200038', 'TK Permata Ibu', 'Jl. Raya Bekasi Km. 17 Komplek', ' Jatinegara', 1, 'TK'),
('16410060200039', 'TK Widya Sarana', 'Jl. Raya Bekasi Km. 18', ' Jatinegara', 1, 'TK'),
('16410060200040', 'TK YPI Pulogadung', 'Jl. Raya Bekasi Km. 18', ' Jatinegara', 1, 'TK'),
('16410060200041', 'PAUD Putra Kusuma', 'Jl. Pendidikan', ' Penggilingan', 1, 'TK'),
('16410060200042', 'TK Aisyiyah', 'Jl. Pendidikan', ' Penggilingan', 1, 'TK'),
('16410060200043', 'TK Al Aziz', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'TK'),
('16410060200044', 'TK Al Ikhlas Sorkam', 'Jl. Kebon Mawar Taman Buaran I', ' Penggilingan', 1, 'TK'),
('16410060200045', 'TK Al Wathoniyah 9', 'Jl. Raya Penggilingan No. 99', ' Penggilingan', 1, 'TK'),
('16410060200046', 'TK Cinta Ananda', 'Kp. Pedaengan Rt. 02/08 No. 3', ' Penggilingan', 1, 'TK'),
('16410060200047', 'TK Dwi Warna', 'Jl. Dr. Sumarno. No. 29', ' Penggilingan', 1, 'TK'),
('16410060200048', 'TK Fahmi', 'Jl. Komarudin I No. 58', ' Penggilingan', 1, 'TK'),
('16410060200049', 'TK Harapan II', 'Jl. Jembatan No. 36 Rt.010/002', ' Penggilingan', 1, 'TK'),
('16410060200050', 'TK Harapan III', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'TK'),
('16410060200051', 'TK Islam Allyfya Rahman', 'Jl. Marzuki II Rt. 001/02', ' Penggilingan', 1, 'TK'),
('16410060200052', 'TK Islam Kartini', 'Perum Aneka Elok Blok A3/17', ' Penggilingan', 1, 'TK'),
('16410060200053', 'TK Kasih Ananda V', 'Jl. Aneka Elok', ' Penggilingan', 1, 'TK'),
('16410060200054', 'TK Nahdlatul Wathan', 'Jl. Raya Penggilingan Rt. 01/0', ' Penggilingan', 1, 'TK'),
('16410060200055', 'TK Nirwana', 'Jl. Makmur No. 40', ' Penggilingan', 1, 'TK'),
('16410060200056', 'TK Pembina', 'Jl. P. Komarudin II', ' Penggilingan', 1, 'TK'),
('16410060200057', 'TK Purnama', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'TK'),
('16410060200058', 'TK Sinar Bangsa', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'TK'),
('16410060200059', 'TK Wijaya Kusuma II', 'Jl. Kampung Jembatan', ' Penggilingan', 1, 'TK'),
('16410060200060', 'TK Yapenda', 'Kmp Jembatan', ' Penggilingan', 1, 'TK'),
('16410060200061', 'TKIT Al Istiqomah', 'Jl. Raya Penggilingan No. 34', ' Penggilingan', 1, 'TK'),
('16410060200062', 'TKIT Assyairiyah', 'Jl. Raya Penggilingan No. 2', ' Penggilingan', 1, 'TK'),
('16410060200063', 'PAUD SEMAR SAKTI', 'Jl. Raya Pulo Gebang No. 38', ' Pulo Gebang', 1, 'TK'),
('16410060200064', 'TK Aisyiyah', 'Jl. Rawa Kuning', ' Pulo Gebang', 1, 'TK'),
('16410060200065', 'TK Al Azhar 6', 'Jl. Sentra Primer Timur', ' Pulo Gebang', 1, 'TK'),
('16410060200066', 'TK Al Kahfi', 'Jl. Tanjakan No. 110', ' Pulo Gebang', 1, 'TK'),
('16410060200067', 'TK Al Manar', 'Jl. Raya Pulogebang', ' Pulo Gebang', 1, 'TK'),
('16410060200068', 'TK Al Muhajirin', 'Jl. Pulogebang Permai Blok F2', ' Pulo Gebang', 1, 'TK'),
('16410060200069', 'TK Ar Ridho', 'Komplek Pulogebang Permai Blok', ' Pulo Gebang', 1, 'TK'),
('16410060200070', 'TK Bakti Utama', 'Jl. Damai', ' Pulo Gebang', 1, 'TK'),
('16410060200071', 'TK Bina Siswa', 'Jl. Pulogebang', ' Pulo Gebang', 1, 'TK'),
('16410060200072', 'TK Budi Setya', 'Jl. Pulogebang Permai G4/21', ' Pulo Gebang', 1, 'TK'),
('16410060200073', 'TK Harapan Bunda', 'Jl. Pulogebang Permai', ' Pulo Gebang', 1, 'TK'),
('16410060200074', 'TK Hosana', 'Jl. Pulogebang Permai', ' Pulo Gebang', 1, 'TK'),
('16410060200075', 'TK Islam Abu Daud', 'Jl. Raya Rawa Kuning Rt. 11/02', ' Pulo Gebang', 1, 'TK'),
('16410060200076', 'TK Islam Al Ikhlas', 'Jl. H.Rikin 1, Rawa Kuning', ' Pulo Gebang', 1, 'TK'),
('16410060200077', 'TK Islam Al Ikhlas', 'Jl. Bulak Jaya 58A Rt. 017/08', ' Pulo Gebang', 1, 'TK'),
('16410060200078', 'TK Islam Ar Roudhoh', 'Jl. Rawa Kuning Rt. 04/16', ' Pulo Gebang', 1, 'TK'),
('16410060200079', 'TK Islam As Shiddiq', 'Jl. Rawa Kuning No. 16', ' Pulo Gebang', 1, 'TK'),
('16410060200080', 'TK Islam As Syifa', 'Jl. Rawa kuning', ' Pulo Gebang', 1, 'TK'),
('16410060200081', 'TK Islam Balqist', 'Jl. Raya Pulogebang No. 92B', ' Pulo Gebang', 1, 'TK'),
('16410060200082', 'TK Islam Izzatul Jannah', 'Jl. Pulogebang Permai Blok C 6', ' Pulo Gebang', 1, 'TK'),
('16410060200083', 'TK Islam Terpadu Al Banna', 'Jl. Raya Rawa Kuning No. 10 Rt', ' Pulo Gebang', 1, 'TK'),
('16410060200084', 'TK Kartika XI 22', 'Jl. Asrama Gupusmu No.3', ' Pulo Gebang', 1, 'TK'),
('16410060200085', 'TK Pelangi Kasih', 'Jl. Pelita Indah III No. 8', ' Pulo Gebang', 1, 'TK'),
('16410060200086', 'TK Putra Bangsa', 'Jl. Rawa Kuning Rt. 004/02 No.', ' Pulo Gebang', 1, 'TK'),
('16410060200087', 'TK Rahmatusy Syifa', 'Jl. Rawa Kuning', ' Pulo Gebang', 1, 'TK'),
('16410060200088', 'TK Safira', 'Jl. Swadaya 6 / 24', ' Pulo Gebang', 1, 'TK'),
('16410060200089', 'TK Sawung Galih', 'Jl. Raya Rawa Kuning', ' Pulo Gebang', 1, 'TK'),
('16410060200090', 'TK Islam Maryam', 'Jl. Pegangsaan I No. 54', ' Rawa Terate', 1, 'TK'),
('16410060200091', 'TK Islam Syarif Hidayatullah', 'Jl. Dr. KRT. Radjiman W. No. 3', ' Rawa Terate', 1, 'TK'),
('16410060200092', 'TK Al Hikmatuzzainiyah', 'Jl. Satria III', ' Ujung Menteng', 1, 'TK'),
('16410060200093', 'TK Al Hikmatuzzainiyyah', 'Jl. Satria III No. 96', ' Ujung Menteng', 1, 'TK'),
('16410060200094', 'TK Islam Al Muhajirin', 'Jl. Wijaya Kusuma Raya', ' Ujung Menteng', 1, 'TK'),
('16410060200095', 'TK Islam An Nur', 'Jl. Kelapa I', ' Ujung Menteng', 1, 'TK'),
('16410060200096', 'TK Islam Az zahro', 'Jl. Raya Pulogebang No. 17 Rt.', ' Ujung Menteng', 1, 'TK'),
('16410060200097', 'TK Kristen Cahaya Bangsa', 'Jl. Ujung Menteng', ' Ujung Menteng', 1, 'TK'),
('16410060200098', 'TK Lintang Harapan', 'Menteng Metropolitan Blok k2 N', ' Ujung Menteng', 1, 'TK'),
('16410060200099', 'TK Patra VI Pertamina', 'Jl. Komp. Pertamina', ' Ujung Menteng', 1, 'TK'),
('16410060200100', 'TK Sang Timur', 'Jl.Edelweis l Blok E1 No 9', ' Ujung Menteng', 1, 'TK'),
('16410060200101', 'TK Santo Yoseph', 'Menteng Metropolitan blok c 5/', ' Ujung Menteng', 1, 'TK'),
('16410060200102', 'TK Tunas Bangsa', 'Jl. Sultan Hamengkubuwono IX', ' Ujung Menteng', 1, 'TK'),
('16410061100001', 'SDN Cakung Barat 01 Pg.', 'Jl. Raya Bekasi Km. 23', ' Cakung Barat', 1, 'SD'),
('16410061100002', 'SDN Cakung Barat 02', 'Jl. Raya Bekasi Km. 23', ' Cakung Barat', 1, 'SD'),
('16410061100003', 'SDN Cakung Barat 03 Pg.', 'Jl. Raya Bekasi Km. 23', ' Cakung Barat', 1, 'SD'),
('16410061100004', 'SDN Cakung Barat 04 Pg.', 'Jl. Tipar Cakung', ' Cakung Barat', 1, 'SD'),
('16410061100005', 'SDN Cakung Barat 05 Pg.', 'Jl. Raya Bekasi Km. 23', ' Cakung Barat', 1, 'SD'),
('16410061100006', 'SDN Cakung Barat 06 Pg.', 'Jl. P. Komarudin Rt. 004/03', ' Cakung Barat', 1, 'SD'),
('16410061100007', 'SDN Cakung Barat 07 Pg.', 'Jl. P. Komarudin', ' Cakung Barat', 1, 'SD'),
('16410061100008', 'SDN Cakung Barat 08 Pg.', 'Jl. Tipar Cakung No. 77', ' Cakung Barat', 1, 'SD'),
('16410061100009', 'SDN Cakung Barat 15 Pg.', 'Jl. TIPAR CAKUNG KP.BARU', ' Cakung Barat', 1, 'SD'),
('16410061100010', 'SDN Cakung Barat 18 Pt.', 'Jl. Raya Bks Km. 23', ' Cakung Barat', 1, 'SD'),
('16410061100011', 'SDN Cakung Barat 22 Pt.', 'Jl. P. Komarudin', ' Cakung Barat', 1, 'SD'),
('16410061100012', 'PKBM Karya Mandiri Jaya', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SD'),
('16410061100013', 'SDN Cakung Timur 01 Pg.', 'Jl. Raya Bekasi KM 25', ' Cakung Timur', 1, 'SD'),
('16410061100014', 'SDN Cakung Timur 02 Pg.', 'Jl. Tambun Rengas Rt. 02/ 07', ' Cakung Timur', 1, 'SD'),
('16410061100015', 'SDN Cakung Timur 03 Pg.', 'Jl. KAYU TINGGI', ' Cakung Timur', 1, 'SD'),
('16410061100016', 'SDN Cakung Timur 04 Pg.', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SD'),
('16410061100017', 'SDN Cakung Timur 05 Pg.', 'Jl. Tambun Rengas', ' Cakung Timur', 1, 'SD'),
('16410061100018', 'SDN Cakung Timur 06 Pg.', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SD'),
('16410061100019', 'SDN Cakung Timur 09 Pg.', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SD'),
('16410061100020', 'SDN Jatinegara 01 Pg.', 'Jl. Swadaya IV Pulo Jahe', ' Jatinegara', 1, 'SD'),
('16410061100021', 'SDN Jatinegara 02 Pg.', 'Jl. Swadaya IV', ' Jatinegara', 1, 'SD'),
('16410061100022', 'SDN Jatinegara 03 Pg.', 'Jl. Raya Bekasi Km. 17', ' Jatinegara', 1, 'SD'),
('16410061100023', 'SDN Jatinegara 05 Pg.', 'Jl. Raya Bekasi KM. 17', ' Jatinegara', 1, 'SD'),
('16410061100024', 'SDN Jatinegara 06 Pg.', 'DR.KRT. Rajiman Widyodiningrat', ' Jatinegara', 1, 'SD'),
('16410061100025', 'SDN Jatinegara 08 Pg.', 'Jl. Buaran I', ' Jatinegara', 1, 'SD'),
('16410061100026', 'SDN Jatinegara 09 Pg.', 'Jl. Buaran I Rt. 006/08', ' Jatinegara', 1, 'SD'),
('16410061100027', 'SDN Jatinegara 10 Pg.', 'Jl. Raya Bekasi Km. 17', ' Jatinegara', 1, 'SD'),
('16410061100028', 'SDN Jatinegara 11 Pt.', 'Jl. Swadaya IV Kp. Pulo Jahe', ' Jatinegara', 1, 'SD'),
('16410061100029', 'SDN Jatinegara 12 Pt.', 'Jl. Radjiman Widyodiningrat Pu', ' Jatinegara', 1, 'SD'),
('16410061100030', 'SDN Jatinegara 14 Pt.', 'Kp. Buaran I', ' Jatinegara', 1, 'SD'),
('16410061100031', 'SDN Jatinegara 15 Pg.', 'Jl. DR.KRT.Radjiman Widyodinin', ' Jatinegara', 1, 'SD'),
('16410061100032', 'SDN Penggilingan 01 Pg.', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SD'),
('16410061100033', 'SDN Penggilingan 03 Pg.', 'Jl. Raya Penggilingan Kav. 23', ' Penggilingan', 1, 'SD'),
('16410061100034', 'SDN Penggilingan 04 Pt.', 'Jl. Raya Penggilingan Kav. 23 ', ' Penggilingan', 1, 'SD'),
('16410061100035', 'SDN Penggilingan 05 Pg.', 'Jl.Raya Penggilingan Komp. PIK', ' Penggilingan', 1, 'SD'),
('16410061100036', 'SDN Penggilingan 06 Pt.', 'Jln. Raya Penggilingan Komp. P', ' Penggilingan', 1, 'SD'),
('16410061100037', 'SDN Penggilingan 08 Pt.', 'Jln. Raya Penggilingan Komp. P', ' Penggilingan', 1, 'SD'),
('16410061100038', 'SDN Penggilingan 09 Pg.', 'Jln. Mentibu Komp. Aneka Elok', ' Penggilingan', 1, 'SD'),
('16410061100039', 'PKBM SEMAR SAKTI', 'Jl. Raya Pulo Gebang No. 38', ' Pulo Gebang', 1, 'SD'),
('16410061100040', 'SDN Pulogebang 01 Pg.', 'Jl. Raya Pulogebang Km 2', ' Pulo Gebang', 1, 'SD'),
('16410061100041', 'SDN Pulogebang 02 Pg.', 'Jl. Raya Pulo Gebang Km 2', ' Pulo Gebang', 1, 'SD'),
('16410061100042', 'SDN Pulogebang 03 Pg.', 'Jl. P. Komarudin', ' Pulo Gebang', 1, 'SD'),
('16410061100043', 'SDN Pulogebang 04 Pg.', 'Jl. Rawabebek', ' Pulo Gebang', 1, 'SD'),
('16410061100044', 'SDN Pulogebang 05 Pg.', 'Jl. Rawabebek', ' Pulo Gebang', 1, 'SD'),
('16410061100045', 'SDN Pulogebang 06 Pg.', 'Jln. P. Komaruddin Ujung Krawa', ' Pulo Gebang', 1, 'SD'),
('16410061100046', 'SDN Pulogebang 07 Pg.', 'Jln. Pendidikan', ' Pulo Gebang', 1, 'SD'),
('16410061100047', 'SDN Pulogebang 08 Pg.', 'P. Komarudin Rt 009/05', ' Pulo Gebang', 1, 'SD'),
('16410061100048', 'SDN Pulogebang 09 Pg.', 'Jl. P. Komarudin', ' Pulo Gebang', 1, 'SD'),
('16410061100049', 'SDN Pulogebang 11 Pg.', 'Jln. H. Hasan', ' Pulo Gebang', 1, 'SD'),
('16410061100050', 'SDN Pulogebang 13 Pg.', 'Jl. Rawa Kuning', ' Pulo Gebang', 1, 'SD'),
('16410061100051', 'SDN Pulogebang 17 Pt.', 'Jl. Palad Rawa Kuning', ' Pulo Gebang', 1, 'SD'),
('16410061100052', 'SDN Pulogebang 19 Pt.', 'Jln. Pendidikan Rt 009/05', ' Pulo Gebang', 1, 'SD'),
('16410061100053', 'SDN Pulogebang 20 Pg.', 'Jl. Palad Rawa Kuning', ' Pulo Gebang', 1, 'SD'),
('16410061100054', 'SDN Pulogebang 24 Pg.', 'Jl. RAYA RAWA KUNING', ' Pulo Gebang', 1, 'SD'),
('16410061100055', 'SDN Pulogebang 25 Pg.', 'Jl. Lingkar Walikota  Pulo Geb', ' Pulo Gebang', 1, 'SD'),
('16410061100056', 'SDN Rawaterate 01 Pg.', 'Jl. KRT. Widyodiningrat', ' Rawa Terate', 1, 'SD'),
('16410061100057', 'SDN Rawaterate 02 Pt.', 'Jl. KRT. Widyodiningrat', ' Rawa Terate', 1, 'SD'),
('16410061100058', 'SDN Rawaterate 03 Pt.', 'Jl. DR. KRT.Widyodiningrat', ' Rawa Terate', 1, 'SD'),
('16410061100059', 'SDN Ujung Menteng 01 Pg.', 'Jl. Irigasi', ' Ujung Menteng', 1, 'SD'),
('16410061100060', 'SDN Ujung Menteng 02', 'Jl. Irigasi, Ujung Menteng', ' Ujung Menteng', 1, 'SD'),
('16410061100061', 'SDN Ujung Menteng 03 Pg.', 'Jl. Irigasi Ujung Menteng', ' Ujung Menteng', 1, 'SD'),
('16410061100062', 'SDN Ujung Menteng 04 Pg.', 'Jl. Irigasi Ujung Menteng', ' Ujung Menteng', 1, 'SD'),
('16410061100063', 'SDN Ujung Menteng 06 Pt.', 'Jl. Irigasi', ' Ujung Menteng', 1, 'SD'),
('16410061100064', 'SDN Ujung Menteng 07 Pg.', 'Jl. Irigasi Ujung Menteng Rt.0', ' Ujung Menteng', 1, 'SD'),
('16410061200001', 'PKBM Universal Paket A', 'Jl. Raya Bekasi KM 23 No. 37', ' Cakung Barat', 1, 'SD'),
('16410061200002', 'SDS Darul Rohim', 'Jl. Tipar Cakung', ' Cakung Barat', 1, 'SD'),
('16410061200003', 'SDS Al Akhyar', 'Jl. Al Akhyar Kayu Tinggi', ' Cakung Timur', 1, 'SD'),
('16410061200004', 'SDS Al Qudwah', 'Jl. Kayu Tinggi No. 58', ' Cakung Timur', 1, 'SD'),
('16410061200005', 'SDS Islam Al Hilal', 'Jl. Raya Bekasi Km 25', ' Cakung Timur', 1, 'SD'),
('16410061200006', 'PKBM Ajisaka Paket A', 'Jl. Raya Bekasi KM 17 Gg. RH I', ' Jatinegara', 1, 'SD'),
('16410061200007', 'SD Juara', 'Jl. B Rawa Badung', ' Jatinegara', 1, 'SD'),
('16410061200008', 'SDS Nurul Islam', 'Jl. Swadaya IV, Pulojahe No.72', ' Jatinegara', 1, 'SD'),
('16410061200009', 'SDS Teladan I', 'Jl. Raya Bekasi Km. 18', ' Jatinegara', 1, 'SD'),
('16410061200010', 'PKBM Putra Kusuma Paket A', 'Manunggal Juang I Gg. H. Ma''ru', ' Penggilingan', 1, 'SD'),
('16410061200011', 'SDI Al Mushanifiyah', 'Jl. MARZUKI I KAMPUNGJEMBATAN', ' Penggilingan', 1, 'SD'),
('16410061200012', 'SDI Nahdlatul Wathan', 'KP. PISANGAN', ' Penggilingan', 1, 'SD'),
('16410061200013', 'SDS Al Aziz', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SD'),
('16410061200014', 'SDS Al Wathoniyah 9', 'Jl. Raya Penggilingan No. 99', ' Penggilingan', 1, 'SD'),
('16410061200015', 'SDS Kasih Ananda II', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SD'),
('16410061200016', 'PKBM Alfa Omega Pulo GebangPaket A', 'Jln. P. Komarudin Gang Bakti', ' Pulo Gebang', 1, 'SD'),
('16410061200017', 'SDIT Assalaamah', 'Jl. Rawa Kuning No. 29', ' Pulo Gebang', 1, 'SD'),
('16410061200018', 'SDS Bina Siswa', 'Jl. Raya Pulo Gebang', ' Pulo Gebang', 1, 'SD'),
('16410061200019', 'SDS Harapan Bunda', 'Jl. Blok B. Pulo Gebang Permai', ' Pulo Gebang', 1, 'SD'),
('16410061200020', 'SDS Islam Al Azhar 19', 'Jl. Sentra Primer Baru Timur', ' Pulo Gebang', 1, 'SD'),
('16410061200021', 'SDS Mentari Ar Ridho IslamicSchool', 'Jl. Anggrek Utara No. 4', ' Pulo Gebang', 1, 'SD'),
('16410061200022', 'SDS Nurul Ihsan', 'Jl. Raya Pulo Gebang No.99', ' Pulo Gebang', 1, 'SD'),
('16410061200023', 'PKBM Al Hikmatuzzainiyah PaketA', 'Jl. Satria III', ' Ujung Menteng', 1, 'SD'),
('16410061200024', 'SDS Al Hikmatuzzainiyah', 'Jl. Satria III', ' Ujung Menteng', 1, 'SD'),
('16410061200025', 'SDS Kristen Cahaya Bangsa', 'Jl. Kelurahan Ujung Menteng', ' Ujung Menteng', 1, 'SD'),
('16410061200026', 'SDS Sang Timur', 'Jl. Seruni Blok D I No.8A Tama', ' Ujung Menteng', 1, 'SD'),
('16410061200027', 'SDS Santo Yoseph', 'Perum Metland Menteng Blok F4', ' Ujung Menteng', 1, 'SD'),
('16410061200028', 'SDS Tunas Bangsa', 'Jl. Sultan Hamengkubuwono IX', ' Ujung Menteng', 1, 'SD'),
('16410062100001', 'SMP Negeri 144', 'Jl. Raya Bekasi Km. 23 Cakung', ' Cakung Barat', 1, 'SMP'),
('16410062100002', 'SMP Negeri 168', 'Jl. P. Komarudin Buaran Cakung', ' Cakung Barat', 1, 'SMP'),
('16410062100003', 'PKBM Karya Mandiri Jaya', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMP'),
('16410062100004', 'SMP Negeri 234', 'Jl. Kayu Tinggi Cakung Timur,', ' Cakung Timur', 1, 'SMP'),
('16410062100005', 'SMP Negeri 234 Terbuka', 'Jl. Raya Kayu Tinggi', ' Cakung Timur', 1, 'SMP'),
('16410062100006', 'SMP Negeri 256', 'Jl. Balai Rakyat Cakung Timur', ' Cakung Timur', 1, 'SMP'),
('16410062100007', 'SMP Negeri 262', 'Jl. Kayu Tinggi Cakung Timur', ' Cakung Timur', 1, 'SMP'),
('16410062100008', 'SMP Negeri 262 Terbuka', 'Jl. Kayu Tinggi Cakung', ' Cakung Timur', 1, 'SMP'),
('16410062100009', 'SMP Negeri 90', 'Jl. Raya Bekasi Km. 18', ' Jatinegara', 1, 'SMP'),
('16410062100010', 'SMP Negeri 236', 'Jl. Raya Penggilingan Komp. P', ' Penggilingan', 1, 'SMP'),
('16410062100011', 'PKBM SEMAR SAKTI', 'Jl. Raya Pulo Gebang No. 38', ' Pulo Gebang', 1, 'SMP'),
('16410062100012', 'SMP Negeri 138', 'Jl. Pahlawan Komarudin Cakung', ' Pulo Gebang', 1, 'SMP'),
('16410062100013', 'SMP Negeri 138 Terbuka', 'Jl. Pahlawan Komaruddin', ' Pulo Gebang', 1, 'SMP'),
('16410062100014', 'SMP Negeri 172', 'Jl. Stasiun Cakung', ' Pulo Gebang', 1, 'SMP'),
('16410062100015', 'SMP Negeri 284', 'Jl. Raya Rawa Bebek', ' Pulo Gebang', 1, 'SMP'),
('16410062100016', 'SMP Negeri 146', 'Jl. Balai Rakyat', ' Ujung Menteng', 1, 'SMP'),
('16410062100017', 'SMP Negeri 193', 'Jl. Irigasi', ' Ujung Menteng', 1, 'SMP'),
('16410062200001', 'PKBM Universal Paket B', 'Jl. Raya Bekasi KM 23 No. 37', ' Cakung Barat', 1, 'SMP'),
('16410062200002', 'SMP Imtaq Darurrahim', 'Jl. Tipar Cakung Kp. Baru', ' Cakung Barat', 1, 'SMP'),
('16410062200003', 'SMP Nurul Huda', 'Jl. Tipar Cakung Barat', ' Cakung Barat', 1, 'SMP'),
('16410062200004', 'SMP Al Akhyar', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMP'),
('16410062200005', 'SMP Diponegoro 2', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMP'),
('16410062200006', 'SMP Global Mandiri', 'Jl. Raya Bekasi KM 24', ' Cakung Timur', 1, 'SMP'),
('16410062200007', 'SMP PGRI 38', 'Jl. Raya Rawa Kuning No. 119 C', ' Cakung Timur', 1, 'SMP'),
('16410062200008', 'PKBM Ajisaka Paket B', 'Jl. Raya Bekasi KM 17 Gg. RH I', ' Jatinegara', 1, 'SMP'),
('16410062200009', 'SMP Al Karomiyah', 'Jl. Raya Bekasi Km. 17', ' Jatinegara', 1, 'SMP'),
('16410062200010', 'SMP IT Al Wathoniyah PusatPutri', 'Jl. Raya Bekasi Timur Km 17 Pl', ' Jatinegara', 1, 'SMP'),
('16410062200011', 'SMP Perintis Pembangunan', 'Jl. Raya KRT. Rajiman Cakung', ' Jatinegara', 1, 'SMP'),
('16410062200012', 'SMP YPI Pulogadung', 'Jl. Raya Bekasi Km. 18', ' Jatinegara', 1, 'SMP'),
('16410062200013', 'SMP YPIA Pengarengan', 'Jl. KRT. Rajiman Widyodiningra', ' Jatinegara', 1, 'SMP'),
('16410062200014', 'PKBM Putra Kusuma Paket B', 'Manunggal Juang I Gg. H. Ma''ru', ' Penggilingan', 1, 'SMP'),
('16410062200015', 'SMP Al Wathoniyah 9', 'Jl. Penggilingan Raya No.99', ' Penggilingan', 1, 'SMP'),
('16410062200016', 'SMP Attahiriyah', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SMP'),
('16410062200017', 'SMP Harapan I', 'Jl. I Gusti Ngurah Rai Kp. Jem', ' Penggilingan', 1, 'SMP'),
('16410062200018', 'SMP Muhammadiyah 30', 'Jl. Raya Penggilingan Cakung', ' Penggilingan', 1, 'SMP'),
('16410062200019', 'SMP Nadhatul Wathon', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SMP'),
('16410062200020', 'SMP PGRI 2', 'Jl. I Gusti Ngurah Rai No. 8', ' Penggilingan', 1, 'SMP'),
('16410062200021', 'PKBM Alfa Omega Pulo GebangPaket B', 'Jln. P. Komarudin sisi Tol Tim', ' Pulo Gebang', 1, 'SMP'),
('16410062200022', 'SMP Bhakti Mulia', 'Jl. Raya Pulogebang No. 49', ' Pulo Gebang', 1, 'SMP'),
('16410062200023', 'SMP Darus Syifa', 'Jl.Sawo Kecik No. 1', ' Pulo Gebang', 1, 'SMP'),
('16410062200024', 'SMP Harapan Bunda', 'Jl. Komp. Pulo Gebang Permai B', ' Pulo Gebang', 1, 'SMP'),
('16410062200025', 'SMP ISLAM AL AZHAR 22', 'Jl. Dr. Sumarno   Sentra Prime', ' Pulo Gebang', 1, 'SMP'),
('16410062200026', 'SMP Nurul Ihsan', 'Jl.Raya Pulo Gebang No.99', ' Pulo Gebang', 1, 'SMP'),
('16410062200027', 'SMP YP IPPI', 'Jl. Raya Penggilingan Komplek', ' Pulo Gebang', 1, 'SMP'),
('16410062200028', 'SMP Yaspia', 'Jl. KRT. Rajiman WRT', ' Rawa Terate', 1, 'SMP'),
('16410062200029', 'PKBM Al Hikmatuzzainiyah PaketB', 'Jl. Satria III', ' Ujung Menteng', 1, 'SMP'),
('16410062200030', 'SMP Al Fallah', 'Jl. Raya Bekasi Km. 26', ' Ujung Menteng', 1, 'SMP'),
('16410062200031', 'SMP Cahaya Bangsa', 'Jl. Kelurahan Ujung Menteng', ' Ujung Menteng', 1, 'SMP'),
('16410062200032', 'SMP KRISTEN TUNAS BANGSA', 'Jl. SULTAN HAMENGKU BUWONOIX 29385693', ' Ujung Menteng', 1, 'SMP'),
('16410062200033', 'SMP Santo Yosep', 'Komp. Menteng Metropolitan', ' Ujung Menteng', 1, 'SMP'),
('16410063100001', 'SMA Negeri 76', 'Jl. Tipar Cakung', ' Cakung Barat', 1, 'SMA'),
('16410063100002', 'PKBM Karya Mandiri Jaya', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMA'),
('16410063100003', 'SMA Negeri 102', 'Jl. Kayutinggi', ' Cakung Timur', 1, 'SMA'),
('16410063100004', 'SMA Negeri 89', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMA'),
('16410063100005', 'SMA Negeri 107', 'Jl. Kamp. Rawa Badung Timur', ' Jatinegara', 1, 'SMA'),
('16410063100006', 'PKBM SEMAR SAKTI', 'Jl. Raya Pulo Gebang No. 38', ' Pulo Gebang', 1, 'SMA'),
('16410063100007', 'SMA Negeri 11', 'Jl. P. Komarudin, Komp. Pendid   4802080', ' Pulo Gebang', 1, 'SMA'),
('16410063200001', 'PKBM Universal Paket C', 'Jl.Raya Bekasi KM.23 No.37', ' Cakung Barat', 1, 'SMA'),
('16410063200002', 'SMA Nurul Huda', 'Jl. Tipar Cakung Cakung Barat', ' Cakung Barat', 1, 'SMA'),
('16410063200003', 'SMA Al Qudwah', 'Jl.Kayu Tinggi No.58', ' Cakung Timur', 1, 'SMA'),
('16410063200004', 'SMA Diponegoro 2', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMA'),
('16410063200005', 'PKBM Ajisaka Paket C', 'Jl. Raya Bekasi KM 17 Gg. RH I  8563913', ' Jatinegara', 1, 'SMA'),
('16410063200006', 'SMA Pembangunan III YPI', 'Jl. Raya Bekasi Km 18', ' Jatinegara', 1, 'SMA'),
('16410063200007', 'SMA Nahdhatul Wathan', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SMA'),
('16410063200008', 'SMA YP IPPI', 'Jl. Raya Penggilingan Komp.An', ' Penggilingan', 1, 'SMA'),
('16410063200009', 'PKBM Alfa Omega PuloGebang Paket C', 'Jln. P. Komarudin Sisi Tol Tim', ' Pulo Gebang', 1, 'SMA'),
('16410063200010', 'SMA PGRI 10 Jakarta', 'Jl. Rawa Kuning Gg. Mushollah   4801932', ' Pulo Gebang', 1, 'SMA'),
('16410063200011', 'SMA Sapta Karisma', 'Jl. Raya Pulogebang No.99 ( Th   4808048', ' Pulo Gebang', 1, 'SMA'),
('16410063200012', 'SMA Santo Yoseph', 'Perumahan Metland Menteng', ' Ujung Menteng', 1, 'SMA'),
('16410064200001', 'SMK Global Cendekia', 'Jl. Raya Bekasi KM. 23', ' Cakung Barat', 1, 'SMK'),
('16410064200002', 'SMK Imtaq Darurrahim', 'Jl. TiparCakung, Gang Pelajar', ' Cakung Barat', 1, 'SMK'),
('16410064200003', 'SMK Kalpataru', 'Jl. Raya Tipar Cakung', ' Cakung Barat', 1, 'SMK'),
('16410064200004', 'SMK Nurul Huda', 'Jl. Tipar Cakung KM.01', ' Cakung Barat', 1, 'SMK'),
('16410064200005', 'SMK Wawasan Nusantara Jakarta', 'Jl. Raya Penggilingan No. 50', ' Cakung Barat', 1, 'SMK'),
('16410064200006', 'SMK Al Akhyar 1 Jakarta', 'Jl. Balai Rakyat Gempol 99', ' Cakung Timur', 1, 'SMK'),
('16410064200007', 'SMK Al Akhyar 2 Jakarta', 'Jl. Kayu Tinggi No. 25', ' Cakung Timur', 1, 'SMK'),
('16410064200008', 'SMK Diponegoro 2', 'Jl. Kayu Tinggi', ' Cakung Timur', 1, 'SMK'),
('16410064200009', 'SMK Jakarta Timur 2', 'Jl. Cempaka VI Kayu Tinggi', ' Cakung Timur', 1, 'SMK'),
('16410064200010', 'SMK Al Wathoniyah Jakarta', 'Jl. Raya Bekasi Timur Km. 17', ' Jatinegara', 1, 'SMK'),
('16410064200011', 'SMK Sriwijaya Jakarta', 'Jl. Dr. KRT. Radjiman Widyodin', ' Jatinegara', 1, 'SMK'),
('16410064200012', 'SMK Dinamika Pembangunan 1 Jakarta', 'Jl. Raya Penggilingan No. 99', ' Penggilingan', 1, 'SMK'),
('16410064200013', 'SMK Dinamika Pembangunan 2 Jakarta', 'Jl. Raya Penggilian No. 99', ' Penggilingan', 1, 'SMK'),
('16410064200014', 'SMK Harapan 1 Jakarta', 'Jl. I Gusti Ngurah Rai', ' Penggilingan', 1, 'SMK'),
('16410064200015', 'SMK PGRI 39 Jakarta', 'Jl. I Gusti Ngurah Rai', ' Penggilingan', 1, 'SMK'),
('16410064200016', 'SMK Ristek KIKIN', 'Jl. Raya Penggilingan', ' Penggilingan', 1, 'SMK'),
('16410064200017', 'SMK YP IPPI Jakarta', 'Jl. Raya Penggilingan Komplek', ' Penggilingan', 1, 'SMK'),
('16410064200018', 'SMK Caraka Nusantara', 'Kompleks Pulo Gebang Permai Bl', ' Pulo Gebang', 1, 'SMK'),
('16410064200019', 'SMK Citra Mandiri', 'Jl. Pahlawan Komaruddin Ujung', ' Pulo Gebang', 1, 'SMK'),
('16410064200020', 'SMK IPTEK Jakarta', 'Jl. Raya Pulo Gebang No 99', ' Pulo Gebang', 1, 'SMK'),
('16410064200021', 'SMK Karya EKOPIN', 'Jl. Raya Pulogebang No. 25', ' Pulo Gebang', 1, 'SMK'),
('16410064200022', 'SMK PGRI 40 Jakarta', 'Jl. Rawa Kuning No. 119', ' Pulo Gebang', 1, 'SMK'),
('16410064200023', 'SMK Yaspia 17', 'Jl. Pulo gebang', ' Pulo Gebang', 1, 'SMK'),
('16410064200024', 'SMK Bina Manajemen', 'Jl. Dr. KRT. Radjiman Widyodin', ' Rawa Terate', 1, 'SMK'),
('16410064200025', 'SMK Bina Karya Utama Jakarta', 'Jl. Raya Bekasi Km. 26', ' Ujung Menteng', 1, 'SMK'),
('16410064200026', 'SMK Bisnis Indonesia Jakarta', 'Jl. Irigasi Raya (Menteng Metr', ' Ujung Menteng', 1, 'SMK'),
('16410064200027', 'SMK Dharma Paramitha', 'Jl. Sultan Hamengkubuwono IX', ' Ujung Menteng', 1, 'SMK'),
('16410064200028', 'SMK Gita Wisata', 'Jl. Raya Bekasi Km. 26', ' Ujung Menteng', 1, 'SMK'),
('16410064200029', 'SMK Mercusuar', 'Jl. Raya Bks Km.26 No.51', ' Ujung Menteng', 1, 'SMK'),
('16410064200030', 'SMK Pelayaran Dewaruci', 'Jl. Raya Bekasi Km. 26', ' Ujung Menteng', 1, 'SMK'),
('16410064200031', 'SMK Perbankan Nasional Jakarta', 'Jl. Raya Bekasi Km. 26', ' Ujung Menteng', 1, 'SMK'),
('16410064200032', 'SMK Ristek JAYA', 'Jl. Raya Bekasi Km. 26 No. 50', ' Ujung Menteng', 1, 'SMK'),
('16410064200033', 'SMK YPIA Al Falah Jakarta', 'Jl. Raya Bekasi Km. 26 Ujung M', ' Ujung Menteng', 1, 'SMK'),
('16420060100001', 'PKBM Negeri 34 Cipayung TK', 'Jalan Raya Cipayung, Gang SMAN', ' Cilangkap', 2, 'TK'),
('16420060200001', 'PKBM PAUD Rizkyta', 'Jl. Raya Mabes Hankam No. 9', ' Bambu Apus', 2, 'TK'),
('16420060200002', 'TK Al Fajru', 'Jl. Kapuk Rt. 11/03', ' Bambu Apus', 2, 'TK'),
('16420060200003', 'TK Kenanga', 'Jl. Bambu Wulung No. 29', ' Bambu Apus', 2, 'TK'),
('16420060200004', 'TK Kristen Widya Putra BPKPerabur', 'Jl. Padepokan TMII', ' Bambu Apus', 2, 'TK'),
('16420060200005', 'TK Nurul Ikhlas', 'Jl. Bambu Hitam Rt. 05/05 No.', ' Bambu Apus', 2, 'TK'),
('16420060200006', 'TK Taman Sakti', 'Jl. Mini III', ' Bambu Apus', 2, 'TK'),
('16420060200007', 'TK Teratai Bhakti', 'Jl. kompleks PSBR', ' Bambu Apus', 2, 'TK'),
('16420060200008', 'TK Hikari Kids', 'Jl. Raya Gempol Kavling II No.', ' Ceger', 2, 'TK'),
('16420060200009', 'TK Islam Al Fathonah', 'Jl. SMP 160 Rt. 003/05 No. 52D', ' Ceger', 2, 'TK'),
('16420060200010', 'TK Islam Ar Rohman', 'Jl. Mangga No. 12', ' Ceger', 2, 'TK'),
('16420060200011', 'TK Islam AtTaufiq', 'Jl. Raya Gempol No. 10', ' Ceger', 2, 'TK'),
('16420060200012', 'TK Islam Berlian', 'Jl. Mandor Kasan no.34', ' Ceger', 2, 'TK'),
('16420060200013', 'TK Islam Bunayya', 'Jl. Raya Ceger No. 7', ' Ceger', 2, 'TK'),
('16420060200014', 'TK Islam Tsaqofah Islamiyyah', 'Jl. SMPN 160 No. 32', ' Ceger', 2, 'TK'),
('16420060200015', 'TK Kartika VIII 40', 'Jl. Raya Ceger No. 20 Puspom', ' Ceger', 2, 'TK'),
('16420060200016', 'TK Mekar Wangi', 'Jl. Angkasa No. 14', ' Ceger', 2, 'TK'),
('16420060200017', 'PAUD SALSABILA', '1', ' Cilangkap', 2, 'TK'),
('16420060200018', 'TK Arafah', 'Jl. Raya Cilangkap No. 3', ' Cilangkap', 2, 'TK'),
('16420060200019', 'TK Islam Mitra Amanah', 'Jl. Cilangkap Baru No. 01', ' Cilangkap', 2, 'TK'),
('16420060200020', 'TK Islam Riyadhotus Sholihat', 'Jl. As Syafi''yah No. 46', ' Cilangkap', 2, 'TK'),
('16420060200021', 'TK Nur Huda', 'Jl. Suralaya No. 30', ' Cilangkap', 2, 'TK'),
('16420060200022', 'TK Nurul Iman', 'Jl. Raya Cilangkap No. 1B', ' Cilangkap', 2, 'TK'),
('16420060200023', 'TK Aisyiyah Bustanul Athfal 86', 'Jl. Flamboyan B.P. No. 16 17', ' Cipayung', 2, 'TK'),
('16420060200024', 'TK Ar Rahman', 'Jl. Tengki No. 11', ' Cipayung', 2, 'TK'),
('16420060200025', 'TK Baitul Ilmi', 'Jl. Ali No. 21 Rt. 001/01', ' Cipayung', 2, 'TK'),
('16420060200026', 'TK Basma Aliifah', 'Komplek Perumahan Bina Marga N', ' Cipayung', 2, 'TK'),
('16420060200027', 'TK Katolik Nusa Melati', 'Jl. Raya Cipayung Setu No.6', ' Cipayung', 2, 'TK'),
('16420060200028', 'TK Nurlamora', 'Jl. Tengki No. 3', ' Cipayung', 2, 'TK'),
('16420060200029', 'TK Pelita', 'Jl. Raya Cipayung kav DKI,BLOK', ' Cipayung', 2, 'TK'),
('16420060200030', 'TK Theresa Bunda', 'Jl. SMU 64 No.72', ' Cipayung', 2, 'TK'),
('16420060200031', 'TK Al Ghazali', 'Jl. Gg. Langgar', ' Lubang Buaya', 2, 'TK'),
('16420060200032', 'TK Al Hakim', 'Jl. SPG 7 Rt. 007/009', ' Lubang Buaya', 2, 'TK'),
('16420060200033', 'TK Al Makiyyah', 'Jl. Gorda No 44', ' Lubang Buaya', 2, 'TK'),
('16420060200034', 'TK Al Qomar', 'Jl. Albaidho Gg. Karya No. 48', ' Lubang Buaya', 2, 'TK'),
('16420060200035', 'TK Al Umar', 'Jl. Masjid Al Umar', ' Lubang Buaya', 2, 'TK'),
('16420060200036', 'TK Bamadita Rahman', 'Jl. Makmur No. 54', ' Lubang Buaya', 2, 'TK'),
('16420060200037', 'TK Dinamika', 'Jl. Monumen Pancasila Sakti No', ' Lubang Buaya', 2, 'TK'),
('16420060200038', 'TK Gladi Siwi', 'Jl. Mundu Rt. 05/04 No. 42', ' Lubang Buaya', 2, 'TK'),
('16420060200039', 'TK Islam AlBaidlo', 'Jl. AlBaidloRaya No. 29', ' Lubang Buaya', 2, 'TK'),
('16420060200040', 'TK Nurul Huda', 'Jl. Asrama Zeni No. 38 Rt 05/0', ' Lubang Buaya', 2, 'TK'),
('16420060200041', 'TK Permata Bunda', 'Jl. Cengkeh No. 12', ' Lubang Buaya', 2, 'TK'),
('16420060200042', 'TK Santo Markus II', 'Jl. Raya Pondok Gede', ' Lubang Buaya', 2, 'TK'),
('16420060200043', 'TK Sarina Indah', 'Jl. SPG VII No. 4', ' Lubang Buaya', 2, 'TK'),
('16420060200044', 'TK Satu Atap Arinjanie', 'Jl. Raya Pondok Gede', ' Lubang Buaya', 2, 'TK'),
('16420060200045', 'TK Serumpun', 'Jl. TPA Lubang Buaya', ' Lubang Buaya', 2, 'TK'),
('16420060200046', 'TK Shaft Dirgantara', 'Jl. Gorda No. 14 A', ' Lubang Buaya', 2, 'TK'),
('16420060200047', 'TK Yusufiyah', 'Jl. Raya Pondok Gede No 36', ' Lubang Buaya', 2, 'TK'),
('16420060200048', 'TK Kemala Bhayangkari 26', 'Jl. Komp. POLRI', ' Munjul', 2, 'TK'),
('16420060200049', 'TK Mumma 4', 'Jl. Buni Rt.03/08 No. 49', ' Munjul', 2, 'TK'),
('16420060200050', 'TK Satu Atap SDN Munjul 02 Pg', 'Jl. Dalang', ' Munjul', 2, 'TK'),
('16420060200051', 'TK Arfanda', 'Jl. Buni No. 85', ' Munjul', 2, 'TK'),
('16420060200052', 'TK Al Jannah Islamic Fullday School', 'Jl. Jambore No. 4', ' Pondok Ranggon', 2, 'TK'),
('16420060200053', 'TK Al Munir', 'Jl. Raya Pondok Ranggon No 31', ' Pondok Ranggon', 2, 'TK'),
('16420060200054', 'TK Kupu kupu', 'Jl. Kupu kupu No. 12 A', ' Pondok Ranggon', 2, 'TK'),
('16420060200055', 'TK Putra Indonesia', 'Jl. Warga', ' Pondok Ranggon', 2, 'TK'),
('16420060200056', 'TK Terpadu Turfa', 'Jl. TPU Pondok Ranggon', ' Pondok Ranggon', 2, 'TK'),
('16420060200057', 'TK. ANUGERAH', 'Jl. Pondok Ranggon', ' Pondok Ranggon', 2, 'TK'),
('16420060200058', 'TK ACS JAKARTA', 'Jl. Bantar Jati', ' Setu', 2, 'TK'),
('16420060200059', 'TK Al Hidayah', 'Jl. Pagelarang Rt. 02/01', ' Setu', 2, 'TK'),
('16420060200060', 'TK Harapan', 'Jl. Banjar Jati Rt. 08/02', ' Setu', 2, 'TK'),
('16420060200061', 'TK Islam Assalam', 'Jl. Tileng Kp. Kramat', ' Setu', 2, 'TK'),
('16420060200062', 'TK Islam Nurul Zahrah', 'Jl. Damai No. 25', ' Setu', 2, 'TK'),
('16420060200063', 'TK Islam Tunas Kafah', 'Jl. Siung Kav. Kowilhan II Blo', ' Setu', 2, 'TK'),
('16420060200064', 'TK Mutiara', 'Jl. Puskesmas No. 27A', ' Setu', 2, 'TK'),
('16420060200065', 'TK Tiara Bangsa', 'Jl. Bantar Jati Rt. 007/02', ' Setu', 2, 'TK'),
('16420061100001', 'SDN Bambu Apus 01 Pg.', 'Jl. Bambu Apus Raya', 'Bambu Apus', 2, 'SD'),
('16420061100002', 'SDN Bambu Apus 02 Pg.', 'Jl. Bambu Apus Raya', 'Bambu Apus', 2, 'SD'),
('16420061100003', 'SDN Bambu Apus 03 Pg.', 'Jl. Bambu Hijau', 'Bambu Apus', 2, 'SD'),
('16420061100004', 'SDN Bambu Apus 04 Pg.', 'Jl. Laksamana VIII Padepokan T', 'Bambu Apus', 2, 'SD'),
('16420061100005', 'SDN Bambu Apus 05 Pg.', 'Jl. Laksamana VIII PAD TMII', 'Bambu Apus', 2, 'SD'),
('16420061100006', 'SDN Ceger 01 Pg.', 'Jl. SMP 222', 'Ceger', 2, 'SD'),
('16420061100007', 'SDN Ceger 02 Pg.', 'Jl. Masjid No. 10', 'Ceger', 2, 'SD'),
('16420061100008', 'PKBM Negeri 34 Cipayung Paket A', 'Jalan Raya Cipayung, Gang SMAN', ' Cilangkap', 2, 'SD'),
('16420061100009', 'SDN Cilangkap 01 Pg.', 'Jl. Mabes ABRI', ' Cilangkap', 2, 'SD'),
('16420061100010', 'SDN Cilangkap 03 Pg.', 'Jl. Mabes TNI , SEPAKAT 1', ' Cilangkap', 2, 'SD'),
('16420061100011', 'SDN Cilangkap 04 Pg.', 'Jl. Raya Munjul', ' Cilangkap', 2, 'SD'),
('16420061100012', 'SDN Cipayung 01 Pg.', 'Jl. Komp. Perwira TNI AD', ' Cipayung', 2, 'SD'),
('16420061100013', 'SDN Cipayung 02 Pg.', 'Jl. Komp. Perwira TNI AD', ' Cipayung', 2, 'SD'),
('16420061100014', 'SDN Cipayung 03 Pg.', 'Jl. Pelatnas PBSI', ' Cipayung', 2, 'SD'),
('16420061100015', 'SDN Cipayung 04 Pg.', 'Jl. SMAN 64', ' Cipayung', 2, 'SD'),
('16420061100016', 'SDN Cipayung 05 Pg.', 'Jl. Bambu Petung', ' Cipayung', 2, 'SD'),
('16420061100017', 'SDN Lubang Buaya 01', 'Jl. Yusufiah', ' Lubang Buaya', 2, 'SD'),
('16420061100018', 'SDN Lubang Buaya 03 Pg.', 'Jl. Rawa Binong Rt. 004/ 06', ' Lubang Buaya', 2, 'SD'),
('16420061100019', 'SDN Lubang Buaya 04 Pg.', 'Jl. Monumen Pancasila Sakti No', ' Lubang Buaya', 2, 'SD'),
('16420061100020', 'SDN Lubang Buaya 05 Pg.', 'Jl. Yusufiah Rt. 0010/ 01', ' Lubang Buaya', 2, 'SD'),
('16420061100021', 'SDN Lubang Buaya 06 Pg.', 'Jl. Kramat IV', ' Lubang Buaya', 2, 'SD'),
('16420061100022', 'SDN Lubang Buaya 07 Pg.', 'Jl. KRAMAT IV', ' Lubang Buaya', 2, 'SD'),
('16420061100023', 'SDN Lubang Buaya 08 Pg.', 'Jl. SPG 7', ' Lubang Buaya', 2, 'SD'),
('16420061100024', 'SDN Lubang Buaya 09 Pg.', 'Jl. SPG VII', ' Lubang Buaya', 2, 'SD'),
('16420061100025', 'SDN Lubang Buaya 11 Pg.', 'Jl. Al Baidho Rt. 006/ 06', ' Lubang Buaya', 2, 'SD'),
('16420061100026', 'SDN Lubang Buaya 12 Pg.', 'Jl. Albaidho II', ' Lubang Buaya', 2, 'SD'),
('16420061100027', 'SDN Lubang Buaya 13', 'Jl. Raya Pondok Gede', ' Lubang Buaya', 2, 'SD'),
('16420061100028', 'SDS Global Kids School', 'Jl. Lubang Buaya No. 6 B', ' Lubang Buaya', 2, 'SD'),
('16420061100029', 'SDN Munjul 01 Pg.', 'Jl. Dalang', ' Munjul', 2, 'SD'),
('16420061100030', 'SDN Munjul 02 Pg.', 'Jl. Dalang', ' Munjul', 2, 'SD'),
('16420061100031', 'SDN Pondok Ranggon 01 Pg.', 'Jl. Kramat Ganceng Rt.05/01', ' Pondok Ranggon', 2, 'SD'),
('16420061100032', 'SDN Pondok Ranggon 02 Pg.', 'Jl. Raya Pondok Ranggon', ' Pondok Ranggon', 2, 'SD'),
('16420061100033', 'SDN Pondok Ranggon 03 Pg.', 'Jl. Raya TPU Rt. 001/ 02', ' Pondok Ranggon', 2, 'SD'),
('16420061100034', 'SDN Pondok Ranggon 04 Pg.', 'Jl. Masjid Al Akbar', ' Pondok Ranggon', 2, 'SD'),
('16420061100035', 'SDN Pondok Ranggon 05 Pg.', 'Jl.MASJID AL AKBAR', ' Pondok Ranggon', 2, 'SD'),
('16420061100036', 'SDN Setu 01 Pg.', 'Jl. Rukun', ' Setu', 2, 'SD'),
('16420061100037', 'SDN Setu 02 Pg.', 'Jl. Rukun Setu', ' Setu', 2, 'SD'),
('16420061200001', 'PKBM Citra Dharma Paket A Bambu Apus', NULL, NULL, 2, 'SD'),
('16420061200002', 'PKBM Rizkyta Paket A', 'Jl. Raya Mabes Hankam No. 9', ' Bambu Apus', 2, 'SD'),
('16420061200003', 'PKBM Santika', 'Jl. Bambu Wulung No. 2', ' Bambu Apus', 2, 'SD'),
('16420061200004', 'SDS Nizamia Andalusia', 'Jl. Raya mabes hankam No. 15 1', ' Bambu Apus', 2, 'SD'),
('16420061200005', 'SDS Santa Anna', 'Jl. Angkasa No.14', ' Ceger', 2, 'SD'),
('16420061200006', 'SDS As Syafi''iyah 03', 'Jl. As Syafi''iyah Rt. 004/ 03', ' Cilangkap', 2, 'SD'),
('16420061200007', 'PKBM Arafah Paket A', 'Jl. Raya Cilangkap No. 3', ' Cipayung', 2, 'SD'),
('16420061200008', 'SD Islam An Najah', 'Jl. SMA 64', ' Cipayung', 2, 'SD'),
('16420061200009', 'SDIT Hidayatullah', 'Jl. Cilangkap Baru No. 99', ' Cipayung', 2, 'SD'),
('16420061200010', 'SDK Taruna Harapan Bangsa', 'Jl. Tugu No. 7', ' Cipayung', 2, 'SD'),
('16420061200011', 'SDS Budi Murni', 'Jl. Budi Murni No. 10', ' Cipayung', 2, 'SD'),
('16420061200012', 'SDS Nusa Melati', 'Jl. Raya Cipayung Setu (Hankam', ' Cipayung', 2, 'SD'),
('16420061200013', 'SDS Putik Indonesia', 'Jl. Binamarga no. 45 A', ' Cipayung', 2, 'SD'),
('16420061200014', 'PKBM AL FATAH PAKET A', 'Jl. Gorda No. 76 A', ' Lubang Buaya', 2, 'SD'),
('16420061200015', 'SDIT Buahati Islamic School 2', 'Jl. Gorda No.74', ' Lubang Buaya', 2, 'SD'),
('16420061200016', 'SDS Nurul Huda', 'Jl. Asrama Zeni AD Rt. 005/07', ' Lubang Buaya', 2, 'SD'),
('16420061200017', 'SDS Santo Markus II', 'Jl. Raya Pondok Gede', ' Lubang Buaya', 2, 'SD'),
('16420061200018', 'SDS Islam Ibnu Hajar', 'Jl. Raya Munjul Gg. Musholah N', ' Munjul', 2, 'SD'),
('16420061200019', 'SDS Al Jannah Islamic FulldaySchool', 'Jl. Jambore No. 4', ' Pondok Ranggon', 2, 'SD'),
('16420061200020', 'SDS I Hidayatul Islamiyah', 'Jl. Sapi perah Gg.Madrasah', ' Pondok Ranggon', 2, 'SD'),
('16420061200021', 'PKBM Cahaya Insan MuliaPaket A', NULL, ' Setu', 2, 'SD'),
('16420061200022', 'SD ACS JAKARTA', 'Jl. Bantar Jati', ' Setu', 2, 'SD'),
('16420061200023', 'SDS Tiara Bangsa', 'Jl. Bantarjati', ' Setu', 2, 'SD'),
('16420062100001', 'SMP Negeri 180', 'Jl. Bambu Wulung', ' Bambu Apus', 2, 'SMP'),
('16420062100002', 'SMP Negeri 237', 'Jl. Bambu Petung', ' Bambu Apus', 2, 'SMP'),
('16420062100003', 'SMP Negeri 259', 'Jl. Laksmana VIII Komplek Kary', ' Bambu Apus', 2, 'SMP'),
('16420062100004', 'SMP Negeri 283', 'Jl. Bambu Hitam', ' Bambu Apus', 2, 'SMP'),
('16420062100005', 'SMP Negeri 160', 'Jl. SMP 160 TMII', ' Ceger', 2, 'SMP'),
('16420062100006', 'SMP Negeri 222', 'Jl. Raya Ceger TMII', ' Ceger', 2, 'SMP'),
('16420062100007', 'PKBM Negeri 34 Cipayung Paket B', 'Jalan Raya Cipayung, Gang SMAN', ' Cilangkap', 2, 'SMP'),
('16420062100008', 'SMP Negeri 157', 'Jl. Al Baidho I', ' Lubang Buaya', 2, 'SMP'),
('16420062100009', 'SMP Negeri 192', 'Jl. Kramat IV No.100', ' Lubang Buaya', 2, 'SMP'),
('16420062100010', 'SMP Negeri 246', 'Jl. SPG 7', ' Lubang Buaya', 2, 'SMP'),
('16420062100011', 'SMP Negeri 272', 'Jl. AL BAIDHO 1', ' Lubang Buaya', 2, 'SMP'),
('16420062100012', 'SMP Negeri 81', 'Jl. Monumen Pancasila', ' Lubang Buaya', 2, 'SMP'),
('16420062100013', 'SMP Negeri 196', 'Jl. Mabes TNI', ' Pondok Ranggon', 2, 'SMP'),
('16420062100014', 'SMP Negeri 230', 'Jl. TPU   Pondok Ranggon', ' Pondok Ranggon', 2, 'SMP'),
('16420062200001', 'PKBM Citra Dharma Paket B Bambu Apus', NULL, NULL, 2, 'SMP'),
('16420062200002', 'PKBM Rizkyta Paket B', 'Jl. Raya Mabes Hankam No. 9', ' Bambu Apus', 2, 'SMP'),
('16420062200003', 'PKBM Santika', 'Jl. Bambu Wulung No. 2', ' Bambu Apus', 2, 'SMP'),
('16420062200004', 'SMP Al Mu''min', 'Jl. Raya Hankam TMII No. 47 Ge', ' Bambu Apus', 2, 'SMP'),
('16420062200005', 'SMP Citra Darma', 'Jl. Swadaya I   Bambu Apus', ' Bambu Apus', 2, 'SMP'),
('16420062200006', 'SMP Handayani', 'Jl. PPA Bambu Apus', ' Bambu Apus', 2, 'SMP'),
('16420062200007', 'SMP Katolik Nusa Melati', 'Jl. Raya Cipayung Setu (Hankam)', ' Cipayung', 2, 'SMP'),
('16420062200008', 'SMP PGRI 9', 'Jl. Raya Cipayung', ' Cipayung', 2, 'SMP'),
('16420062200009', 'SMP Taruna Harapan Bangsa', 'Jl TUGU NO. 07', ' Cipayung', 2, 'SMP'),
('16420062200010', 'PKBM AL FATAH PAKET B', 'Jl. Gorda No. 76 A', ' Lubang Buaya', 2, 'SMP'),
('16420062200011', 'SMP Islam Al Makiyah', 'Jl. Gorda', ' Lubang Buaya', 2, 'SMP'),
('16420062200012', 'SMP Nurul Huda', 'Jl. Zeni AD', ' Lubang Buaya', 2, 'SMP'),
('16420062200013', 'SMP PGRI 30', 'Jl. SMPN 157 No. 33 Lubang   B', ' Lubang Buaya', 2, 'SMP'),
('16420062200014', 'SMP Santa Markus II', 'Jl. Raya Pondok Gede', ' Lubang Buaya', 2, 'SMP'),
('16420062200015', 'SMP TriSastra', 'Jl. SLTPN 157   L. Buaya', ' Lubang Buaya', 2, 'SMP'),
('16420062200016', 'SMP Ibnu Hajar Boarding School', 'Jl. Raya Munjul, Gg. Mushallah', ' Munjul', 2, 'SMP'),
('16420062200017', 'SMP AL Jannah', 'Jl.pondok ranggon no.4', ' Pondok Ranggon', 2, 'SMP'),
('16420062200018', 'PKBM Cahaya Insan Mulia Paket B', ' ', ' Setu', 2, 'SMP'),
('16420062200019', 'SMP ACS Jakarta', 'Jl. Bantar Jati', ' Setu', 2, 'SMP'),
('16420062200020', 'SMP Cikal Amri', 'Jl. Raya Setu No. 3', ' Setu', 2, 'SMP'),
('16420062200021', 'SMP Tiara Bangsa', 'Jl. Bantarjati', ' Setu', 2, 'SMP'),
('16420063100001', 'SMA Negeri Unggulan M. H. Thamrin', 'Jl.Bambu Wulung', ' Bambu Apus', 2, 'SMA'),
('16420063100002', 'PKBM Negeri 34 Cipayung Paket C', 'Jl.Raya Cipayung,Gg. SMAN 64', ' Cilangkap', 2, 'SMA'),
('16420063100003', 'SMA Negeri 64', 'Jl. Raya Cipayung', ' Cipayung', 2, 'SMA'),
('16420063100004', 'SMA Negeri 113', 'Jl. Albaidho I,Monumen Pancas', ' Lubang Buaya', 2, 'SMA'),
('16420063200001', 'PKBM Citra Dharma Paket C', NULL, ' Bambu Apus', 2, 'SMA'),
('16420063200002', 'PKBM Rizkyta Paket C', 'Jl. Raya Mabes Hankam No. 9', ' Bambu Apus', 2, 'SMA'),
('16420063200003', 'PKBM Santika', 'Jl. Bambu Wulung No. 2', ' Bambu Apus', 2, 'SMA'),
('16420063200004', 'SMA ACS Jakarta', 'Jl. Bantar Jati Setu', ' Bambu Apus', 2, 'SMA'),
('16420063200005', 'SMA Santika', 'Jl. Bambu Wulung No. 2', ' Bambu Apus', 2, 'SMA'),
('16420063200006', 'PKBM Tsaqofah Islamiyah Paket C', 'Jl. SMP 160 No. 32', ' Ceger', 2, 'SMA'),
('16420063200007', 'PKBM SALSABILA', 'Jl. Spakat V No. 78', ' Cilangkap', 2, 'SMA'),
('16420063200008', 'PKBM Arafah Paket C', 'Jl. Raya Cilangkap No. 3', ' Cipayung', 2, 'SMA'),
('16420063200009', 'SMA Katolik Nusa Melati', 'Jl. Raya Cipayung Setu  No.6', ' Cipayung', 2, 'SMA'),
('16420063200010', 'SMA PGRI 4 Jakarta', 'Jl. Raya Cipayung No. 8', ' Cipayung', 2, 'SMA'),
('16420063200011', 'SMA Jakarta Raya', 'Jl. Raya Pondok Gede  No. 36', ' Lubang Buaya', 2, 'SMA'),
('16420063200012', 'SMA PGRI 24', 'Jl. SMP 157 No. 33', ' Lubang Buaya', 2, 'SMA'),
('16420063200013', 'SMA ACS Jakarta', 'Jl. Bantar Jati', ' Setu', 2, 'SMA'),
('16420064100001', 'SMK Negeri 24', 'Jl. Bambu Hitam', ' Bambu Apus', 2, 'SMK'),
('16420064100002', 'SMK Negeri 51', 'Jl. SMEA 33   SMIK', ' Bambu Apus', 2, 'SMK'),
('16420064100003', 'SMK Negeri 58', 'Jl. SMIK Bambu Apus', ' Bambu Apus', 2, 'SMK'),
('16420064200001', 'SMK Cagar Budaya 1 Jakarta', 'Jl. Raya Hankam TMII. Gempol N', ' Bambu Apus', 2, 'SMK'),
('16420064200002', 'SMK Citra Dharma Jakarta', 'Jl. Swadaya I', ' Bambu Apus', 2, 'SMK'),
('16420064200003', 'SMK Insan Mulia Informatika', 'Jl. Kapuk', ' Bambu Apus', 2, 'SMK'),
('16420064200004', 'SMK As Syafi''iyah 2', 'Jl. As Syafi''iyah No.37', ' Cilangkap', 2, 'SMK'),
('16420064200005', 'SMK Bina Medika', 'Jl. As Syafi''iyah No.121', ' Cilangkap', 2, 'SMK'),
('16420064200006', 'SMK Budi Murni 5 Jakarta', 'Jl. Budi Murni no. 10', ' Cilangkap', 2, 'SMK'),
('16420064200007', 'SMK Mitra Wisata', 'Jl. Giri Kencana No. 31', ' Cilangkap', 2, 'SMK'),
('16420064200008', 'SMK Prestasi Prima', 'Jl. Hamkam Raya No. 89', ' Cilangkap', 2, 'SMK'),
('16420064200009', 'SMK Budi Murni 4 Jakarta', 'Jl. Budi Murni No. 10', ' Cipayung', 2, 'SMK'),
('16420064200010', 'SMK PGRI 16 Jakarta', 'Jl. SMAN 64', ' Cipayung', 2, 'SMK'),
('16420064200011', 'SMK Tunas Medika', 'Jl. Setu Raya No. 67 Pinang', ' Cipayung', 2, 'SMK'),
('16420064200012', 'SMK Ar Raisiyah Husada', 'Jl. Al Baidlo Raya No. 29', ' Lubang Buaya', 2, 'SMK'),
('16420064200013', 'SMK Islam Al Makiyyah', 'Jl. Raya Pondok Gede Gg.Gorda', ' Lubang Buaya', 2, 'SMK'),
('16420064200014', 'SMK Jakarta Raya 1', 'Jl. Raya Pondok Gede No. 36', ' Lubang Buaya', 2, 'SMK'),
('16420064200015', 'SMK Jakarta Raya 2', 'Jl. Raya Pondok Gede No. 36', ' Lubang Buaya', 2, 'SMK'),
('16420064200016', 'SMK Tri Sastra 1 Jakarta', 'Jl. SMP 157', ' Lubang Buaya', 2, 'SMK'),
('16420064200017', 'SMK Tri Sastra 2 Jakarta', 'Jl. SMPN 157', ' Lubang Buaya', 2, 'SMK'),
('16420064200018', 'SMK Analis Kesehatan DITKESAD', 'Jl. Buntu Munjul', ' Munjul', 2, 'SMK'),
('16420064200019', 'SMK Medical High School', 'Jl. Raya Munjul No. 2', ' Munjul', 2, 'SMK'),
('16430060200001', 'TK Adinda', 'Jl. SMU 99 No. 139', ' Cibubur', 3, 'TK'),
('16430060200002', 'TK Adinda Kita', 'Jl. Cibubur I', ' Cibubur', 3, 'TK'),
('16430060200003', 'TK Al Azhar', 'Jl. Jambore Raya No. 9A', ' Cibubur', 3, 'TK'),
('16430060200004', 'TK Al Hidayah', 'Jl. Jambore', ' Cibubur', 3, 'TK'),
('16430060200005', 'TK Aulia', 'Jl. Cibubur VII', ' Cibubur', 3, 'TK'),
('16430060200006', 'TK Bina Warga', 'Jl. Cibubur II', ' Cibubur', 3, 'TK'),
('16430060200007', 'TK Cahaya Mughni', 'Jl. Lapangan Tembak Gg Rukun I', ' Cibubur', 3, 'TK'),
('16430060200008', 'TK Islam Adinda', 'Jl. SMU 99', ' Cibubur', 3, 'TK'),
('16430060200009', 'TK Islam Amaryllis', 'Jl. Abd. Rachman No. 5B', ' Cibubur', 3, 'TK'),
('16430060200010', 'TK Islam Ananda', 'Jl. Lapangan Tembak No. 11', ' Cibubur', 3, 'TK'),
('16430060200011', 'TK Islam Miftahul Jannah', 'Jl. H. Abdurrahman No. 74', ' Cibubur', 3, 'TK'),
('16430060200012', 'TK Islam Nabila', 'Jl. Masjid H. Shobirin No. 11', ' Cibubur', 3, 'TK'),
('16430060200013', 'TK Kancil II', 'Jl. Cibubur VI', ' Cibubur', 3, 'TK'),
('16430060200014', 'TK Kartika X 13', 'Jl. Temu Lawak IV KPAD', ' Cibubur', 3, 'TK'),
('16430060200015', 'TK Kartika X 3', 'Jl. Temu Ireng KPAD Cibubur', ' Cibubur', 3, 'TK'),
('16430060200016', 'TK Kartini', 'Jl. Mualim Aminudin No. 7', ' Cibubur', 3, 'TK'),
('16430060200017', 'TK Lakeside Montessori School', 'Villa Cibubur Indah UI No. 16', ' Cibubur', 3, 'TK'),
('16430060200018', 'TK Nommensen', 'Jalan Raya Kiwi No. 65', ' Cibubur', 3, 'TK'),
('16430060200019', 'TK Pertiwi', 'Jl. Culak Ringin No.83', ' Cibubur', 3, 'TK'),
('16430060200020', 'TK Sarinah', 'Jl. Taruna Jaya', ' Cibubur', 3, 'TK'),
('16430060200021', 'TK SOS Desa Taruna', 'Jl. Karya Bhakti No. 1', ' Cibubur', 3, 'TK'),
('16430060200022', 'TK Tunas Islam', 'Jl. Cibubur IV No. 29', ' Cibubur', 3, 'TK'),
('16430060200023', 'TK Advent XV Ciracas', 'Jl. Raya Bogor KM 26 No. 15', ' Ciracas', 3, 'TK'),
('16430060200024', 'TK Aisyiyah Bustaanul Athfaal', 'Jl. Centex Raya Gang Masjid 5', ' Ciracas', 3, 'TK'),
('16430060200025', 'TK Al Rahman', 'Jl. Komplek Polri', ' Ciracas', 3, 'TK'),
('16430060200026', 'TK Assyadiyah Attahiriyah', 'Jl. Raya Ciracas No. 7', ' Ciracas', 3, 'TK'),
('16430060200027', 'TK Batu Karang', 'Jl. Raya Ciracas No. 10', ' Ciracas', 3, 'TK'),
('16430060200028', 'TK Bina Putra', 'Jl. H. Baping No. 54', ' Ciracas', 3, 'TK'),
('16430060200029', 'TK Bustanul Haq', 'Jl. Raya Centex No. 28', ' Ciracas', 3, 'TK'),
('16430060200030', 'TK Dian Pratama', 'Jl. Pengaten Ali No. 7', ' Ciracas', 3, 'TK'),
('16430060200031', 'TK Eka Dharma Santi', 'Jl. Raya Bogor Km. 23', ' Ciracas', 3, 'TK'),
('16430060200032', 'TK Islam Babussalam', 'Jl. Raya Centex gg. H. Hanafi', ' Ciracas', 3, 'TK'),
('16430060200033', 'TK Islam Baiturrahman', 'Jl. Komplek POLRI No. 3', ' Ciracas', 3, 'TK'),
('16430060200034', 'TK Islam PKP Jakarta IslamicSchool', 'Jl. Raya PKP', ' Ciracas', 3, 'TK'),
('16430060200035', 'TK Islam Wahyu Bhakti', 'Jl. Centex No. 28', ' Ciracas', 3, 'TK'),
('16430060200036', 'TK Kancil I', 'Jl. Centex', ' Ciracas', 3, 'TK'),
('16430060200037', 'TK Marsudi Luhur', 'Jl. Centex No. 1', ' Ciracas', 3, 'TK'),
('16430060200038', 'TK Melati', 'Jl. Kramat Kedongdong', ' Ciracas', 3, 'TK'),
('16430060200039', 'TK Taman Harapan I', 'Jl. Raya Ciracas', ' Ciracas', 3, 'TK'),
('16430060200040', 'TK Taman Harapan II', 'Jl. H.MARJUKI No 62', ' Ciracas', 3, 'TK'),
('16430060200041', 'TK Tunas Muda III', 'Jl. Salak No. 1 Komp. Dephanka', ' Ciracas', 3, 'TK'),
('16430060200042', 'TK Yunita', 'Jl. Dewa Rt. 004/02', ' Ciracas', 3, 'TK'),
('16430060200043', 'TK Al Falah', 'Jl. Malaka Raya No. 1 D', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200044', 'TK Al Fajar', 'Jl. Masjid Nurul Hidayah', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200045', 'TK Aliria', 'Jl. Raya PKP No. 34', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200046', 'TK Ar rahmah', 'Jl. Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200047', 'TK Duta Kasih Nasional Plus', 'Jl. Malaka No. 8', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200048', 'TK Hubaya I', 'Jl. Raya PKP No. 25', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200049', 'TK Islam Al Ma''ruf', 'Jl. Lapangan Tembak', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200050', 'TK Islam Gugus Bintang', 'Jl. Masjid At Taufik', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200051', 'TK Kristen Teratai', 'Jl. H. Bain', ' Kelapa Dua Wetan', 3, 'TK');
INSERT INTO `master_sekolah` (`induk_sekolah`, `nama_sekolah`, `alamat`, `kelurahan`, `id_kecamatan`, `tingkat`) VALUES
('16430060200052', 'TK Monika', 'Jl. Raya Malaka No.1A', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200053', 'TK Rose', 'Jl. Mesjid Nurul Hidayah No. 6', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200054', 'TK Tunas Bangsa', 'Jl. Mesjid At Taufiq No. 26', ' Kelapa Dua Wetan', 3, 'TK'),
('16430060200055', 'TK Al Ummahatush Sholihat', 'Jl. Gudang Air No. 1', ' Rambutan', 3, 'TK'),
('16430060200056', 'TK Islam Al Abror', 'Jl. Tanah Merdeka No18', ' Rambutan', 3, 'TK'),
('16430060200057', 'TK Islam Rambutan', 'Jl. Gudang Air No. 28', ' Rambutan', 3, 'TK'),
('16430060200058', 'TK Kemala Bhayangkari 14', 'Jalan Raya Bogor Km. 21', ' Rambutan', 3, 'TK'),
('16430060200059', 'TK Ratna Kusuma', 'Jl. Tanah Merdeka No. 31', ' Rambutan', 3, 'TK'),
('16430060200060', 'TK Teratai', 'Jl. Tanah Merdeka I.A', ' Rambutan', 3, 'TK'),
('16430060200061', 'TK Wilima''s Panen', 'Jl. smp 188', ' Rambutan', 3, 'TK'),
('16430060200062', 'PAUD Al Muhajirin Anshor', 'Jln. H. Saibun No.18', ' Susukan', 3, 'TK'),
('16430060200063', 'TK Anyelir', 'Jl. H. Baping Gg. Pertiwi', ' Susukan', 3, 'TK'),
('16430060200064', 'TK Bougenville', 'Jl. Regalia', ' Susukan', 3, 'TK'),
('16430060200065', 'TK Cempaka', 'Jl. H. Jusin No. 21', ' Susukan', 3, 'TK'),
('16430060200066', 'TK Fatahillah', 'Jl. H. Jusin Rt. 05/01', ' Susukan', 3, 'TK'),
('16430060200067', 'TK Islam Raudhatul Arifin', 'Jl. Mesjid No. 47', ' Susukan', 3, 'TK'),
('16430060200068', 'TK Islam Suci', 'Jl. Suci', ' Susukan', 3, 'TK'),
('16430060200069', 'TK Khaudul Ulum', 'Jl. Tanah Merdeka', ' Susukan', 3, 'TK'),
('16430060200070', 'TK Mawar', 'Jl. Saibun', ' Susukan', 3, 'TK'),
('16430060200071', 'TK Melati Suci', 'Jl. Tanah Merdeka No. 75', ' Susukan', 3, 'TK'),
('16430060200072', 'TK Rilfa', 'Jl. Makmur', ' Susukan', 3, 'TK'),
('16430060200073', 'TK Sakura', 'Jl. Subur', ' Susukan', 3, 'TK'),
('16430060200074', 'TK Sutera', 'Jl. Supriyadi', ' Susukan', 3, 'TK'),
('16430061100001', 'SDN Cibubur 01 Pg.', 'Jl. Masjid Fathul Gofur', ' Cibubur', 3, 'SD'),
('16430061100002', 'SDN Cibubur 03 Pg.', 'Jl. Cibubur I', ' Cibubur', 3, 'SD'),
('16430061100003', 'SDN Cibubur 04 Pg.', 'Jl. Cibubur I', ' Cibubur', 3, 'SD'),
('16430061100004', 'SDN Cibubur 05 Pg.', 'Jl. Taruna Jaya Cibubur', ' Cibubur', 3, 'SD'),
('16430061100005', 'SDN Cibubur 09 Pg.', 'Jl. Bulak Ringin', ' Cibubur', 3, 'SD'),
('16430061100006', 'SDN Cibubur 10 Pg.', 'Jl. Bulak Ringin Rt. 06/ 03 No', ' Cibubur', 3, 'SD'),
('16430061100007', 'SDN Cibubur 11 Pg.', 'Jl. Cibubur I', ' Cibubur', 3, 'SD'),
('16430061100008', 'SDN Cibubur 13 Pt.', 'Jl. Bulak Ringin', ' Cibubur', 3, 'SD'),
('16430061100009', 'SDN Ciracas 01 Pg.', 'Jl. Raya Bogor Km. 25', ' Ciracas', 3, 'SD'),
('16430061100010', 'SDN Ciracas 03 Pg.', 'Jl. Raya Centex', ' Ciracas', 3, 'SD'),
('16430061100011', 'SDN Ciracas 04 Pg.', 'Jl. Raya Centex No 1', ' Ciracas', 3, 'SD'),
('16430061100012', 'SDN Ciracas 05 Pg.', 'Jl. H. Hanafi No. 35', ' Ciracas', 3, 'SD'),
('16430061100013', 'SDN Ciracas 06 Pg.', 'Jl. H. Hanafi No. 36', ' Ciracas', 3, 'SD'),
('16430061100014', 'SDN Ciracas 07 Pg.', 'Jl. Raya Centex Gg. Kramat', ' Ciracas', 3, 'SD'),
('16430061100015', 'SDN Ciracas 09 Pg.', 'Jl. Centex Rt. 010/ 03', ' Ciracas', 3, 'SD'),
('16430061100016', 'SDN Ciracas 10 Pg.', 'Jl. Raya Ciracas', ' Ciracas', 3, 'SD'),
('16430061100017', 'SDN Ciracas 11 Pg.', 'Jl. Penganten Ali No. 40', ' Ciracas', 3, 'SD'),
('16430061100018', 'SDN Ciracas 13 Pg.', 'Jl. Poncol Gg. Asem No. 3', ' Ciracas', 3, 'SD'),
('16430061100019', 'SDN Ciracas 14 Pg.', 'Jl. Poncol Gg. Asem', ' Ciracas', 3, 'SD'),
('16430061100020', 'SDN Ciracas 15 Pg.', 'Jl. Pengantin Ali No. 40', ' Ciracas', 3, 'SD'),
('16430061100021', 'PKBM Prima Indo Paket A', 'Jl. Darussalam No. 49', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100022', 'SDN Kelapa Dua Wetan 01 Pg.', 'Jl. Raya Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100023', 'SDN Kelapa Dua Wetan 02 Pg.', 'Jl. Raya Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100024', 'SDN Kelapa Dua Wetan 03 Pg.', 'Jl. Nurul Hidayah', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100025', 'SDN Kelapa Dua Wetan 04 Pg.', 'Jl. Raya Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100026', 'SDN Kelapa Dua Wetan 05 Pt.', 'Jl. Raya Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100027', 'SDN Kelapa Dua Wetan 06 Pt.', 'Jl. Masjid Nurul Hidayah', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061100028', 'SDN Rambutan 01 Pg.', 'Jl. H. M. Sabar No. 49', ' Rambutan', 3, 'SD'),
('16430061100029', 'SDN Rambutan 02 Pg.', 'Jl. Tanah Merdeka', ' Rambutan', 3, 'SD'),
('16430061100030', 'SDN Rambutan 03 Pg.', 'Jl. SD Inpres No. 1 2', ' Rambutan', 3, 'SD'),
('16430061100031', 'SDN Rambutan 05 Pg.', 'Jl. SMP 188', ' Rambutan', 3, 'SD'),
('16430061100032', 'SDN Rambutan 06 Pg.', 'Jl. Bungur', ' Rambutan', 3, 'SD'),
('16430061100033', 'PKBM Teladan Paket A', 'Jl. Madrasah No. 53', ' Susukan', 3, 'SD'),
('16430061100034', 'SDN Susukan 01 Pg.', 'Jl. Makmur IV', ' Susukan', 3, 'SD'),
('16430061100035', 'SDN Susukan 02 Pg.', 'Jl. Makmur IV Rt. 009/ 02', ' Susukan', 3, 'SD'),
('16430061100036', 'SDN Susukan 03 Pg.', 'Jl. H. Baping Rt. 010/06', ' Susukan', 3, 'SD'),
('16430061100037', 'SDN Susukan 04 Pg.', 'Jl. H. Baping', ' Susukan', 3, 'SD'),
('16430061100038', 'SDN Susukan 05 Pg.', 'Jl. H. Baping', ' Susukan', 3, 'SD'),
('16430061100039', 'SDN Susukan 06 Pg.', 'Jl. Tanah Merdeka', ' Susukan', 3, 'SD'),
('16430061100040', 'SDN Susukan 07 Pg.', 'Jl. Tanah Merdeka', ' Susukan', 3, 'SD'),
('16430061100041', 'SDN Susukan 08 Pg.', 'Jl. H. Baping Rt. 010/ 06', ' Susukan', 3, 'SD'),
('16430061100042', 'SDN Susukan 09 Pg.', 'Jl. Tanah Merdeka No. 20', ' Susukan', 3, 'SD'),
('16430061200001', 'PKBM Mitra Insan CendekiaPaket A', 'Manunggal II no.39', ' Cibubur', 3, 'SD'),
('16430061200002', 'SDS Al Azhar 20', 'Jl. Abdul Rahman No. 9', ' Cibubur', 3, 'SD'),
('16430061200003', 'SDS Amaryllis', 'Jl. Abdul Rahman No. 7', ' Cibubur', 3, 'SD'),
('16430061200004', 'SDS Kartika X 4', 'Jl. Temulawak IV KPAD', ' Cibubur', 3, 'SD'),
('16430061200005', 'SDS Lakeside MontessoriSchool', 'Villa Cibubur Indah Blok UI No', ' Cibubur', 3, 'SD'),
('16430061200006', 'SDS Advent Ciracas', 'Jl. Raya Bogor Km. 26 No. 15', ' Ciracas', 3, 'SD'),
('16430061200007', 'SDS Baiturrahman', 'Jl. Komplek Polri No. 3', ' Ciracas', 3, 'SD'),
('16430061200008', 'SDS Batu Karang', 'Jl. Raya Ciracas No. 10', ' Ciracas', 3, 'SD'),
('16430061200009', 'PKBM Asia Paket A', 'H.Ba''in No.21 23', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061200010', 'PKBM B One Education PaketA', 'Jl. Raya PKP No. 25', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061200011', 'SDS Al Falah', 'Jl. Kelapa Dua Wetan No. 4', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061200012', 'SDS Al Ma''ruf', 'Jl. Raya Lapangan Tembak   Cib', ' Kelapa Dua Wetan', 3, 'SD'),
('16430061200013', 'PKBM Al Amiria Paket A', 'Jl. Bungur III No.31', ' Rambutan', 3, 'SD'),
('16430061200014', 'PKBM Tanda Genap Paket A', NULL, ' Rambutan', 3, 'SD'),
('16430061200015', 'SDS Al Kahfi', 'Jl. H. Muhayang no.39 C', ' Rambutan', 3, 'SD'),
('16430061200016', 'PKBM Al Muhajirin AnshorPaket A', 'Jln. H. Saibun No.18', ' Susukan', 3, 'SD'),
('16430061200017', 'PKBM Up Rilfa Paket A', 'Jl. Makmur 4', ' Susukan', 3, 'SD'),
('16430061200018', 'SDS Teladan Suci', 'Jl. Suci', ' Susukan', 3, 'SD'),
('16430062100001', 'SMP Negeri 147', 'Jl. Jambore Cibubur', ' Cibubur', 3, 'SMP'),
('16430062100002', 'SMP Negeri 233', 'Jl. H. Abdur Rachman No. 68', ' Cibubur', 3, 'SMP'),
('16430062100003', 'SMP Negeri 258', 'Jl. Cibubur II Blok Duku', ' Cibubur', 3, 'SMP'),
('16430062100004', 'SMP Negeri 106', 'Jl. H. Baping No. 28', ' Ciracas', 3, 'SMP'),
('16430062100005', 'SMP Negeri 208', 'Jl. Raya Centex', ' Ciracas', 3, 'SMP'),
('16430062100006', 'SMP Negeri 210', 'Jl. Raya Centex', ' Ciracas', 3, 'SMP'),
('16430062100007', 'PKBM Prima Indo Paket B', 'Jl. Darussalam No. 49', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062100008', 'SMP Negeri 9', 'Jl. Usman No. 6 Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062100009', 'SMP Negeri 171', 'Jl. H. Baping', ' Rambutan', 3, 'SMP'),
('16430062100010', 'SMP Negeri 188', 'Jl. Tanah Merdeka', ' Rambutan', 3, 'SMP'),
('16430062100011', 'SMP Negeri 257', 'Jl. Kelurahan Rambutan', ' Rambutan', 3, 'SMP'),
('16430062100012', 'SMP Negeri 257 Terbuka', 'Jl. Kelurahan Rambutan', ' Rambutan', 3, 'SMP'),
('16430062100013', 'PKBM Teladan Paket B', 'Jl. Madrasah No. 53', ' Susukan', 3, 'SMP'),
('16430062100014', 'SMP Negeri 174', 'Jl. H. Baping', ' Susukan', 3, 'SMP'),
('16430062200001', 'PKBM Mitra Insan Cendekia PaketB', 'Manunggal II No.39', ' Cibubur', 3, 'SMP'),
('16430062200002', 'SMP Islam Al Azhar 19 Cibubur', 'Jl. Jambora Raya No. 9A', ' Cibubur', 3, 'SMP'),
('16430062200003', 'SMP Lakeside Montessori School', 'Jl. Villa Cibubur Indah Blok U', ' Cibubur', 3, 'SMP'),
('16430062200004', 'SMP Advent', 'Jl. Raya Bogor Km.26 No .15', ' Ciracas', 3, 'SMP'),
('16430062200005', 'SMP Bina Dharma', 'Jl. Raya Ciracas no. 39', ' Ciracas', 3, 'SMP'),
('16430062200006', 'PKBM Asia Paket B', NULL, ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062200007', 'PKBM B One Education Paket B', 'Jl. Raya PKP No. 25', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062200008', 'SMP Al Ma''ruf', 'Jl. Lapangan Tembak', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062200009', 'SMP Al Falah', 'Jl. Raya Kelapa Dua Wetan', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062200010', 'SMP Era Pemb. Umat', 'Jl. Usman No 71', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062200011', 'SMP Global Asia', 'Jl. H. Ba''in No. 21 23', ' Kelapa Dua Wetan', 3, 'SMP'),
('16430062200012', 'PKBM Al Amiria Paket B', 'Jl. Raya Bungur III No. 31', ' Rambutan', 3, 'SMP'),
('16430062200013', 'PKBM Tanda Genap Paket B', NULL, ' Rambutan', 3, 'SMP'),
('16430062200014', 'SMP Kuntum Wijaya Kusuma', 'Jl. Mujahidin No.17 A', ' Rambutan', 3, 'SMP'),
('16430062200015', 'SMP KWK', 'Jl. Mujahidin No. 17A', ' Rambutan', 3, 'SMP'),
('16430062200016', 'SMP Widya Manggala', 'Jl. Mudjahidin No. 17', ' Rambutan', 3, 'SMP'),
('16430062200017', 'PKBM Al Muhajirin Anshor Paket B', 'Jln. H. Saibun No.18', ' Susukan', 3, 'SMP'),
('16430062200018', 'PKBM Up Rilfa Paket B', 'Jl. Makmur 4', ' Susukan', 3, 'SMP'),
('16430063100001', 'SMA Negeri 99', 'Jl. Cibubur II', ' Cibubur', 3, 'SMA'),
('16430063100002', 'SMA Negeri 58', 'Jl. Raya Ciracas No. 2', ' Ciracas', 3, 'SMA'),
('16430063100003', 'PKBM Prima Indo Paket C', 'Jl. Darussalam No. 49', ' Kelapa Dua Wetan', 3, 'SMA'),
('16430063100004', 'SMA Negeri 105', 'Jl. Usman', ' Kelapa Dua Wetan', 3, 'SMA'),
('16430063100005', 'PKBM Teladan Paket C', 'Jl. Madrasah No. 53', ' Susukan', 3, 'SMA'),
('16430063200001', 'PKBM Mitra Insan Cendekia Paket C', 'Manunggal II No.39', ' Cibubur', 3, 'SMA'),
('16430063200002', 'SMA Bina Dharma', 'Jl. Raya Ciracas No. 39 Rt. 5/', ' Ciracas', 3, 'SMA'),
('16430063200003', 'SMA PKP', 'Jl. Raya PKP, Kelapa Dua Wetan', ' Ciracas', 3, 'SMA'),
('16430063200004', 'PKBM B One Education Paket C', 'Jl. Raya PKP No. 25', ' Kelapa Dua Wetan', 3, 'SMA'),
('16430063200005', 'SMA Chartar Buana', 'Jl. Rawa Bola No. 49', ' Kelapa Dua Wetan', 3, 'SMA'),
('16430063200006', 'SMA Islam Al Ma''ruf', 'Jl. Raya Lapangan Tembak', ' Kelapa Dua Wetan', 3, 'SMA'),
('16430063200007', 'SMA Pratama', 'Jl. H. Usman No. 71', ' Kelapa Dua Wetan', 3, 'SMA'),
('16430063200008', 'PKBM Al Amiria Paket C', 'Jl. Raya Bungur III No. 31', ' Rambutan', 3, 'SMA'),
('16430063200009', 'SMA Widya Manggala', 'Jl. Mujahidin Rt. 5/2 No. 17', ' Rambutan', 3, 'SMA'),
('16430063200010', 'SMA Wijayakusuma', 'Jl. Mujahidin No. 17A', ' Rambutan', 3, 'SMA'),
('16430063200011', 'PKBM Al Muhajirin Anshor Paket C', 'Jln. H. Saibun No.18', ' Susukan', 3, 'SMA'),
('16430063200012', 'PKBM Up Rilfa Paket C', 'Jl. Makmur 4', ' Susukan', 3, 'SMA'),
('16430063200013', 'SMA Teladan I', 'Jl. Madrasah No. 49', ' Susukan', 3, 'SMA'),
('16430064100001', 'SMK Negeri 52', 'Jl. Taruna Jaya', ' Cibubur', 3, 'SMK'),
('16430064200001', 'SMK Al Wahyu Jakarta', 'Jl. Madrasah No. 24', ' Cibubur', 3, 'SMK'),
('16430064200002', 'SMK Eka Paksi Jakarta', 'Jl. Mualim Aminudin', ' Cibubur', 3, 'SMK'),
('16430064200003', 'SMK Insan Teknologi Jakarta', 'Jl. Cibubur IV No. 29', ' Cibubur', 3, 'SMK'),
('16430064200004', 'SMK PGRI 20 Jakarta', 'Jl. H. Abdurahman No. 54', ' Cibubur', 3, 'SMK'),
('16430064200005', 'SMK Bina Dharma', 'Jl. Raya Ciracas No. 39', ' Ciracas', 3, 'SMK'),
('16430064200006', 'SMK Bina Nusa Mandiri', 'Jl. Raya Ciracas No. 1', ' Ciracas', 3, 'SMK'),
('16430064200007', 'SMK Era Pembangunan Umat Jakarta', 'Jl. Usman No. 71', ' Ciracas', 3, 'SMK'),
('16430064200008', 'SMK Mahadhika 1', 'Jl.Raya Centex No. 29 31', ' Ciracas', 3, 'SMK'),
('16430064200009', 'SMK Mahadhika 3', 'Jl.Manunggal II', ' Ciracas', 3, 'SMK'),
('16430064200010', 'SMK Otomindo', 'Jl. Rawa Bola No. 49', ' Kelapa Dua Wetan', 3, 'SMK'),
('16430064200011', 'SMK PKP 1', 'Jl. Raya PKP', ' Kelapa Dua Wetan', 3, 'SMK'),
('16430064200012', 'SMK PKP 2 Jakarta', 'Jl. Raya PKP', ' Kelapa Dua Wetan', 3, 'SMK'),
('16430064200013', 'SMK Karya Wijaya Kusuma', 'Jl. Mujahidin No. 17A Tanah Me', ' Rambutan', 3, 'SMK'),
('16430064200014', 'SMK Kawula Jakarta', 'Jl Bungur No.29', ' Rambutan', 3, 'SMK'),
('16430064200015', 'SMK Pelayaran Pembangunan Jakarta', 'Jl. Manunggal II No. 67', ' Rambutan', 3, 'SMK'),
('16430064200016', 'SMK Widya Manggala Jakarta', 'Jl. Mujahidin No. 17', ' Rambutan', 3, 'SMK'),
('16430064200017', 'SMK Sahid Jakarta', 'Jl. Haji Baping Kav 42 43', ' Susukan', 3, 'SMK'),
('16440060100001', 'PKBM Negeri 32 Paudni', 'Jl. Madrasah 2', ' Duren Sawit', 4, 'TK'),
('16440060100002', 'PKBM Negeri 14 Klender TK', 'Jl. Balai Rakyat no. 53', ' Klender', 4, 'TK'),
('16440060100003', 'PKBM Negeri 33 Malaka TK', 'Jl. Teratai Putih II Perumnas', ' Malaka Sari', 4, 'TK'),
('16440060100004', 'TK Negeri Pembina DKI Jakarta', 'Jl. Bambu Duri X', ' Pondok Bambu', 4, 'TK'),
('16440060100005', '(P3PAUDNI) SKB Jakarta Timur TK', 'Komplek Perumkar DKI Blok B9', ' Pondok Kelapa', 4, 'TK'),
('16440060200001', 'TK Aisyiyah 76', 'Jl. SMU 71 Duren Sawit', ' Duren Sawit', 4, 'TK'),
('16440060200002', 'TK Al Karimah', 'Jl Swadaya No. 41', ' Duren Sawit', 4, 'TK'),
('16440060200003', 'TK Budhaya II St. Agustinus', 'Jl. Raya Perumnas Buaran', ' Duren Sawit', 4, 'TK'),
('16440060200004', 'TK Doctorabbit', 'Taman Duren Sawit Blok E 1/9', ' Duren Sawit', 4, 'TK'),
('16440060200005', 'TK Embun Pagi', 'Jl. Raya Kalimalang No. 39', ' Duren Sawit', 4, 'TK'),
('16440060200006', 'TK Indah Dahlia', 'Jl. Abadi No. 27 blok i', ' Duren Sawit', 4, 'TK'),
('16440060200007', 'TK Islam Al Kalam', 'Jl. Swadaya I No. 11 Rt. 002/0', ' Duren Sawit', 4, 'TK'),
('16440060200008', 'TK Islam Al Wathoniyah 2', 'Jl. H. Sidin 1 Rawa Domba', ' Duren Sawit', 4, 'TK'),
('16440060200009', 'TK Islam Al Hikmah', 'Jl. Teluk Bereau Kav.AL Blok C', ' Duren Sawit', 4, 'TK'),
('16440060200010', 'TK Islam Baiturrahim', 'Jl. Kecubung V/6', ' Duren Sawit', 4, 'TK'),
('16440060200011', 'TK Islam Bunga Amalia', 'Jl. Raden Inten II Komp. Kimia', ' Duren Sawit', 4, 'TK'),
('16440060200012', 'TK Islam Terpadu Assalaam', 'Jl. Nakula Raya Blok Q/3', ' Duren Sawit', 4, 'TK'),
('16440060200013', 'TK Islam Tunas Mekar', 'Jl. Lingkar', ' Duren Sawit', 4, 'TK'),
('16440060200014', 'TK Kinderfield', 'Jl. Raya Rawa Domba No.88', ' Duren Sawit', 4, 'TK'),
('16440060200015', 'TK Mathlaul Ulum', 'Jl. Bangun Jaya Blok D', ' Duren Sawit', 4, 'TK'),
('16440060200016', 'TK Permata Bunda', 'Jl. Pendidikan Raya VII', ' Duren Sawit', 4, 'TK'),
('16440060200017', 'TK Persiapan', 'Jl. Nakula Raya No. 10', ' Duren Sawit', 4, 'TK'),
('16440060200018', 'TK Puspita Mekar', 'Jl. Delima II/44', ' Duren Sawit', 4, 'TK'),
('16440060200019', 'TK Ruhul Islam', 'Jl. Ekonomi Raya No. 28', ' Duren Sawit', 4, 'TK'),
('16440060200020', 'TK Satu Atap SDN Duren Sawit 13Pg', 'Jl. Lapangan Statistik', ' Duren Sawit', 4, 'TK'),
('16440060200021', 'TK Sawitri', 'Jl. Pendidikan Raya', ' Duren Sawit', 4, 'TK'),
('16440060200022', 'TK Segar Amanah', 'Jl. Naga Raya No. 20', ' Duren Sawit', 4, 'TK'),
('16440060200023', 'TK Strada Santa Anna', 'Jl. Laut Arafuru', ' Duren Sawit', 4, 'TK'),
('16440060200024', 'TK Budaya', 'Jl. Kavling Bulak Raya', ' Klender', 4, 'TK'),
('16440060200025', 'TK Hamong Putra', 'Jl. Tanah 80 No. 18', ' Klender', 4, 'TK'),
('16440060200026', 'TK Harapan Bangsa', 'Jl. Madrasah Tanah 80 No. 31', ' Klender', 4, 'TK'),
('16440060200027', 'TK Harapan Nusa', 'Jl. Kapuk II Klender', ' Klender', 4, 'TK'),
('16440060200028', 'TK Islam As Salimah', 'Jl. Pertanian Tengah No. 7', ' Klender', 4, 'TK'),
('16440060200029', 'TK Islam Fithria Assyahara', 'Jl. Buaran II No. 1', ' Klender', 4, 'TK'),
('16440060200030', 'TK Islam Pandu Anak Bangsa', 'Jl. Dermaga Baru No. 56 A', ' Klender', 4, 'TK'),
('16440060200031', 'TK Kristen Pelita Kasih', 'Jl. Pahlawan Revolusi No. 12', ' Klender', 4, 'TK'),
('16440060200032', 'TK Nurul Ihsan', 'Jl. I Gusti Ngurah Rai Buaran', ' Klender', 4, 'TK'),
('16440060200033', 'TK Pelita', 'Jl. Pertanian Tengah No. 9', ' Klender', 4, 'TK'),
('16440060200034', 'TK Sumber Harapan', 'Jl. Duren Sawit Raya Blok H1 N', ' Klender', 4, 'TK'),
('16440060200035', 'TK Teratai III', 'Jl. Cipinang Muara III No. 64', ' Klender', 4, 'TK'),
('16440060200036', 'TK Tunas Sandang', 'Jl. I Gusti Ngurah Rai', ' Klender', 4, 'TK'),
('16440060200037', 'TK Aisyiyah 71', 'Jl. Bunga Rampai X', ' Malaka Jaya', 4, 'TK'),
('16440060200038', 'TK BPS&K V', 'Jl. Bunga Rampai III No. 22', ' Malaka Jaya', 4, 'TK'),
('16440060200039', 'TK Islam Al Muhajirin', 'Jl. Taman Malaka Utara No. 12', ' Malaka Jaya', 4, 'TK'),
('16440060200040', 'TK Islam Daar El Muhajirin', 'Jl. Nusa Indah V No. 19', ' Malaka Jaya', 4, 'TK'),
('16440060200041', 'TK Islam Nur Indah', 'Jl. Nusa Indah IV No. 37', ' Malaka Jaya', 4, 'TK'),
('16440060200042', 'TK IT Ibnu Sina', 'Jl. Bunga Rampai IX No.50', ' Malaka Jaya', 4, 'TK'),
('16440060200043', 'TK Kristen Cikoumene', 'Jl. Bunga Rampai X', ' Malaka Jaya', 4, 'TK'),
('16440060200044', 'TK Nur Cahya IV', 'Jl. Mawar Merah III No. 36', ' Malaka Jaya', 4, 'TK'),
('16440060200045', 'TK PUTRA AMANAH', 'Jl. RAYA NUSA INDAH BLOK D 40', ' Malaka Jaya', 4, 'TK'),
('16440060200046', 'TK Santo Yohanes Rasul', 'Jl. Nusa Indah No. 4', ' Malaka Jaya', 4, 'TK'),
('16440060200047', 'TK Tanah Air', 'Jl. Mawar Merah VII No. 46', ' Malaka Jaya', 4, 'TK'),
('16440060200048', 'TK Al Hikmah', 'Jl. Delima V Blok VI', ' Malaka Sari', 4, 'TK'),
('16440060200049', 'TK Islam Hifzhul Amanah', 'Jl. Delima III Blok IX', ' Malaka Sari', 4, 'TK'),
('16440060200050', 'TK Islam Sabilia', 'Jl. Malaka Raya No. 67', ' Malaka Sari', 4, 'TK'),
('16440060200051', 'TK Kencana', 'Jl. Taman Malaka Selatan Blok', ' Malaka Sari', 4, 'TK'),
('16440060200052', 'TK Marga Laksana', 'Jl. Malaka II', ' Malaka Sari', 4, 'TK'),
('16440060200053', 'TK Melati', 'Jl. Malaka IV No. 16', ' Malaka Sari', 4, 'TK'),
('16440060200054', 'TK Setya', 'Jl. Delima II Blok 13', ' Malaka Sari', 4, 'TK'),
('16440060200055', 'TK Tadika Puri', 'Jl. Malaka I/ 207 Perum. Klend', ' Malaka Sari', 4, 'TK'),
('16440060200056', 'TK Trilili', 'Jl. Raya Perumnas IX No. 6', ' Malaka Sari', 4, 'TK'),
('16440060200057', 'TK Trisula Perwari 8', 'Jl. Malaka II', ' Malaka Sari', 4, 'TK'),
('16440060200058', 'TK Al Kautsar', 'Jl. Gotong Royong Rt. 002/02 N', ' Pondok Bambu', 4, 'TK'),
('16440060200059', 'TK Bahtera Cipta', 'Jl. K. Belawan No. 31 Bea Cuka', ' Pondok Bambu', 4, 'TK'),
('16440060200060', 'TK Bunga Rafflesia', 'Jl. H. Kamad No. 38', ' Pondok Bambu', 4, 'TK'),
('16440060200061', 'TK Islam Al Abidin', 'Jl. H. Hanafi Pondok Bambu', ' Pondok Bambu', 4, 'TK'),
('16440060200062', 'TK Islam Al Huda', 'Jl. Bambu Apus Raya No. 85', ' Pondok Bambu', 4, 'TK'),
('16440060200063', 'TK Islam Al Humaid', 'Jl. Pahlawan Revolusi No. 1', ' Pondok Bambu', 4, 'TK'),
('16440060200064', 'TK Islam Al Hidayah', 'Jl. Pondok Bambu Asri No. 10', ' Pondok Bambu', 4, 'TK'),
('16440060200065', 'TK Islam Asy Syaakirin', 'Jl. Gading Raya', ' Pondok Bambu', 4, 'TK'),
('16440060200066', 'TK Islam Darussa`adah', 'Jl. Inspeksi Saluran Kalimalan', ' Pondok Bambu', 4, 'TK'),
('16440060200067', 'TK Islam Nurul Iman', 'Jl. Kesehatan No. 7', ' Pondok Bambu', 4, 'TK'),
('16440060200068', 'TK Islam Shalina', 'Jl. Amal Triananda No. 35', ' Pondok Bambu', 4, 'TK'),
('16440060200069', 'TK Kristen 3 Penabur', 'Jl. Tarum Barat Blok KK', ' Pondok Bambu', 4, 'TK'),
('16440060200070', 'TK Kuncup Kencana', 'Jl. Pahlawan Revolusi', ' Pondok Bambu', 4, 'TK'),
('16440060200071', 'TK Nirwana 2', 'Jl. Talang Irigasi No. 6', ' Pondok Bambu', 4, 'TK'),
('16440060200072', 'TK Perintis I', 'Jl. Cipinang Muara I', ' Pondok Bambu', 4, 'TK'),
('16440060200073', 'TK Roudhotul Jannah', 'Jl. Kemakmuran', ' Pondok Bambu', 4, 'TK'),
('16440060200074', 'TK Satu Atap SDN Pondok Bambu04 Pg', 'Jl. Cipinang Muara II', ' Pondok Bambu', 4, 'TK'),
('16440060200075', 'TK Tunas Cemerlang', 'Jl. Kejaksaan G 201 202', ' Pondok Bambu', 4, 'TK'),
('16440060200076', 'TK Tunas Mitra', 'Jl. Cipinang Muara II No. 12', ' Pondok Bambu', 4, 'TK'),
('16440060200077', 'TK Al Musanifiah', 'Jl. Delima Raya', ' Pondok Kelapa', 4, 'TK'),
('16440060200078', 'TK Assa`adah', 'Jl. Swakarsa IB No. 40', ' Pondok Kelapa', 4, 'TK'),
('16440060200079', 'TK Curug Indah', 'Jl. Curug Raya', ' Pondok Kelapa', 4, 'TK'),
('16440060200080', 'TK Islam Al Manar', 'Jl. Pondok Kelapa Selatan No.', ' Pondok Kelapa', 4, 'TK'),
('16440060200081', 'TK Islam Al Muhajirin', 'Jl. Kelapa Kuning Raya', ' Pondok Kelapa', 4, 'TK'),
('16440060200082', 'TK Islam Al Wardah', 'Jl. H. Naman No. 22', ' Pondok Kelapa', 4, 'TK'),
('16440060200083', 'TK Islam An Nuur', 'Masjid An Nuur Perumahan Perma', ' Pondok Kelapa', 4, 'TK'),
('16440060200084', 'TK Islam Baitul Mujahirin', 'Jl. Lembah Pinang Blok I 1', ' Pondok Kelapa', 4, 'TK'),
('16440060200085', 'TK Islam Baitussalam', 'Jl. Komp. Billy Moon', ' Pondok Kelapa', 4, 'TK'),
('16440060200086', 'TK Islam Pelangi', 'Jl. Pondok Kelapa Selatan', ' Pondok Kelapa', 4, 'TK'),
('16440060200087', 'TK Islam Terpadu Ar Ridho', 'Jl. Pondok Kelapa XII Blok G I', ' Pondok Kelapa', 4, 'TK'),
('16440060200088', 'TK Jakarta Islamic School', 'Jl. Inspeksi No. 1 Curug Kalim', ' Pondok Kelapa', 4, 'TK'),
('16440060200089', 'TK Mutiara Indonesia', 'Komplek dki blok r3 no 16', ' Pondok Kelapa', 4, 'TK'),
('16440060200090', 'TK Noor Lela', 'Jl. Lembah Nyiur III Blok L6 N', ' Pondok Kelapa', 4, 'TK'),
('16440060200091', 'TK Permata Kasih Ind School', 'Jl. Perum Permata Timur', ' Pondok Kelapa', 4, 'TK'),
('16440060200092', 'TK Swakarsa', 'Jl. Swakarsa V No. 25 Komplek', ' Pondok Kelapa', 4, 'TK'),
('16440060200093', 'TK Tiara School', 'Komplek Perumahan DKI Blok P 6', ' Pondok Kelapa', 4, 'TK'),
('16440060200094', 'TKIT DARUL MA''ARIF', 'JL. LEMBAH AREN BLOK K3 NO 1 P', ' Pondok Kelapa', 4, 'TK'),
('16440060200095', 'TK Citra', 'Jl. PONDOK KOPI BLOK T7 NO.8', ' Pondok Kopi', 4, 'TK'),
('16440060200096', 'TK Dian Pertiwi', 'Jl. Malaka Baru II No. 55', ' Pondok Kopi', 4, 'TK'),
('16440060200097', 'TK Islam Al Mujahirin', 'Jl. Pondok Kopi Raya Blok E2', ' Pondok Kopi', 4, 'TK'),
('16440060200098', 'TK Islam Al Halimiyah', 'Jl. Robusta Raya No. 31', ' Pondok Kopi', 4, 'TK'),
('16440060200099', 'TK Laboratorium', 'Jl. Rawajaya No. 37', ' Pondok Kopi', 4, 'TK'),
('16440060200100', 'TK Nurul Islam', 'Jl. Raya Pondok Kopi Blok Y11', ' Pondok Kopi', 4, 'TK'),
('16440060200101', 'TK Tiranus', 'Jl. Raya Pondok Kopi Blok W 1', ' Pondok Kopi', 4, 'TK'),
('16440061100001', 'PKBM Negeri 32 Paket A', 'Jl. Madrasah 2', ' Duren Sawit', 4, 'SD'),
('16440061100002', 'SDN Duren Sawit 01 Pg.', 'Jl. Kelurahan I', ' Duren Sawit', 4, 'SD'),
('16440061100003', 'SDN Duren Sawit 02 Pg.', 'Jl. Lingkar Timur', ' Duren Sawit', 4, 'SD'),
('16440061100004', 'SDN Duren Sawit 03 Pg.', 'Jl. Kelurahan I', ' Duren Sawit', 4, 'SD'),
('16440061100005', 'SDN Duren Sawit 05 Pg.', 'Jl Pendidikan IX Komplek IKIP', ' Duren Sawit', 4, 'SD'),
('16440061100006', 'SDN Duren Sawit 06 Pg.', 'Jl. Bulu Perindu Raya No. 1', ' Duren Sawit', 4, 'SD'),
('16440061100007', 'SDN Duren Sawit 07 Pg.', 'Jl. Kavling Agraria', ' Duren Sawit', 4, 'SD'),
('16440061100008', 'SDN Duren Sawit 08 Pg.', 'Jl. Inspeksi Saluran No.39 A', ' Duren Sawit', 4, 'SD'),
('16440061100009', 'SDN Duren Sawit 09 Pg.', 'Jl. Komplek. IKIP No. 26', ' Duren Sawit', 4, 'SD'),
('16440061100010', 'SDN Duren Sawit 10 Pg.', 'Jl. Madrasah II Cilungup', ' Duren Sawit', 4, 'SD'),
('16440061100011', 'SDN Duren Sawit 13 Pg.', 'Jl. Lapangan Statistik', ' Duren Sawit', 4, 'SD'),
('16440061100012', 'SDN Duren Sawit 14 Pg.', 'Jl. Madrasah II', ' Duren Sawit', 4, 'SD'),
('16440061100013', 'SDN Duren Sawit 15 Pt.', 'Jl. Buluh Perindu Raya No.1', ' Duren Sawit', 4, 'SD'),
('16440061100014', 'SDN Duren Sawit 16 Pg.', 'Jl. Masjid Al Fallah', ' Duren Sawit', 4, 'SD'),
('16440061100015', 'SDN Duren Sawit 17 Pg.', 'Jl. Masjid Al Fallah', ' Duren Sawit', 4, 'SD'),
('16440061100016', 'SDN Duren Sawit 18 Pg.', 'Jl. Lingkar Duren Sawit Tim.', ' Duren Sawit', 4, 'SD'),
('16440061100017', 'PKBM Awwaliyah Rohiim Paket A', 'Jl. Pertanian Tengah No. 5', ' Klender', 4, 'SD'),
('16440061100018', 'PKBM Negeri 14 Klender Paket A', 'Jl. Balai Rakyat no. 53 A', ' Klender', 4, 'SD'),
('16440061100019', 'SDN Klender 01 Pg.', 'Jl. Pertanian', ' Klender', 4, 'SD'),
('16440061100020', 'SDN Klender 03 Pg.', 'Jl. Raden Inten II Buaran', ' Klender', 4, 'SD'),
('16440061100021', 'SDN Klender 04 Pg.', 'Jl. Duren Sawit Barat III A', ' Klender', 4, 'SD'),
('16440061100022', 'SDN Klender 06 Pg.', 'Jl. Pertanian Timur', ' Klender', 4, 'SD'),
('16440061100023', 'SDN Klender 07 Pg.', 'Jl. Pertanian Timur', ' Klender', 4, 'SD'),
('16440061100024', 'SDN Klender 10 Pg.', 'Jl. Raden Inten II Buaran', ' Klender', 4, 'SD'),
('16440061100025', 'SDN Klender 12 Pg.', 'Jl. Pertanian Utara RT.004/01', ' Klender', 4, 'SD'),
('16440061100026', 'SDN Klender 13 Pg.', 'Jl. Bulak Timur I/ 9', ' Klender', 4, 'SD'),
('16440061100027', 'SDN Klender 14 Pg.', 'Jl. Dermaga Baru', ' Klender', 4, 'SD'),
('16440061100028', 'SDN Klender 15 Pg.', 'Jl. Dermaga Baru I', ' Klender', 4, 'SD'),
('16440061100029', 'SDN Klender 16 Pg.', 'Jl. Dermaga Baru', ' Klender', 4, 'SD'),
('16440061100030', 'SDN Klender 20 Pg.', 'Jl. Dermaga Baru I', ' Klender', 4, 'SD'),
('16440061100031', 'SDN Klender 21 Pg.', 'Jl. Bulak Timur I/ 9', ' Klender', 4, 'SD'),
('16440061100032', 'SDN Klender 22 Pg.', 'Jl. Buaran II No. 49', ' Klender', 4, 'SD'),
('16440061100033', 'SDN Malaka Jaya 01 Pg.', 'Jl. Bunga Rampai Raya', ' Malaka Jaya', 4, 'SD'),
('16440061100034', 'SDN Malaka Jaya 04 Pg.', 'Jl. Mawar Merah VI', ' Malaka Jaya', 4, 'SD'),
('16440061100035', 'SDN Malaka Jaya 05 Pg.', 'Jl. Mawar Merah VI', ' Malaka Jaya', 4, 'SD'),
('16440061100036', 'SDN Malaka Jaya 06 Pg.', 'Jl. Bunga Rampai VII', ' Malaka Jaya', 4, 'SD'),
('16440061100037', 'SDN Malaka Jaya 07 Pg.', 'Jl. Mawar Merah VI', ' Malaka Jaya', 4, 'SD'),
('16440061100038', 'SDN Malaka Jaya 08 Pg.', 'Jl. Mawar Merah VII No. 45', ' Malaka Jaya', 4, 'SD'),
('16440061100039', 'SDN Malaka Jaya 09', 'Jl. Raya Bunga Rampai', ' Malaka Jaya', 4, 'SD'),
('16440061100040', 'SDN Malaka Jaya 10 Pg.', 'Jl. Nusa Indah III', ' Malaka Jaya', 4, 'SD'),
('16440061100041', 'SDN Malaka Jaya 11', 'Jl. Nusa Indah IV No. 20', ' Malaka Jaya', 4, 'SD'),
('16440061100042', 'SDN Malaka Jaya 12 Pg.', 'Jl. Nusa Indah IV No. 40 41', ' Malaka Jaya', 4, 'SD'),
('16440061100043', 'PKBM Negeri 33 Malaka Paket A', 'Jl. Teratai Putih II Perumnas', ' Malaka Sari', 4, 'SD'),
('16440061100044', 'SDN Malaka Sari 01 Pg.', 'Jl. Malaka III', ' Malaka Sari', 4, 'SD'),
('16440061100045', 'SDN Malaka Sari 02 Pg.', 'Jl. Malaka II', ' Malaka Sari', 4, 'SD'),
('16440061100046', 'SDN Malaka Sari 03 Pg.', 'Jl. Delima II No. 47', ' Malaka Sari', 4, 'SD'),
('16440061100047', 'SDN Malaka Sari 04 Pg.', 'Jl. Malaka III', ' Malaka Sari', 4, 'SD'),
('16440061100048', 'SDN Malaka Sari 05 Pg.', 'Jl. Delima II No. 39 Perumnas', ' Malaka Sari', 4, 'SD'),
('16440061100049', 'SDN Malaka Sari 09 Pt.', 'Jl. Delima II No. 39', ' Malaka Sari', 4, 'SD'),
('16440061100050', 'SDN Malaka Sari 13', 'Jl. Delima I A', ' Malaka Sari', 4, 'SD'),
('16440061100051', 'SDN Pondok Bambu 01 Pg.', 'Jl. Gading Raya', ' Pondok Bambu', 4, 'SD'),
('16440061100052', 'SDN Pondok Bambu 02 Pg.', 'Jl. Pahlawan Revolusi', ' Pondok Bambu', 4, 'SD'),
('16440061100053', 'SDN Pondok Bambu 03 Pg.', 'Jl. Pahlawan Revolusi', ' Pondok Bambu', 4, 'SD'),
('16440061100054', 'SDN Pondok Bambu 04', 'Jl. Cipinang Muara II', ' Pondok Bambu', 4, 'SD'),
('16440061100055', 'SDN Pondok Bambu 06', 'Jl. Pahlawan Revolusi', ' Pondok Bambu', 4, 'SD'),
('16440061100056', 'SDN Pondok Bambu 07 Pg.', 'Jl. Ori Raya', ' Pondok Bambu', 4, 'SD'),
('16440061100057', 'SDN Pondok Bambu 08 Pg.', 'Jl. Ori Raya no. 1 3', ' Pondok Bambu', 4, 'SD'),
('16440061100058', 'SDN Pondok Bambu 10 Pg.', 'Jl. Buluh Perindu Raya No. 25', ' Pondok Bambu', 4, 'SD'),
('16440061100059', 'SDN Pondok Bambu 11 Pg.', 'Jl. Taruna Pahlawan Revolusi', ' Pondok Bambu', 4, 'SD'),
('16440061100060', 'SDN Pondok Bambu 13 Pg.', 'Jl. Balai Rakyat III', ' Pondok Bambu', 4, 'SD'),
('16440061100061', 'SDN Pondok Bambu 14 Pg.', 'Jl. Balai Rakyat III No. 14', ' Pondok Bambu', 4, 'SD'),
('16440061100062', 'SDN Pondok Bambu 15 Pg.', 'Jl. Balai Rakyat III No. 15', ' Pondok Bambu', 4, 'SD'),
('16440061100063', 'SDN Pondok Kelapa 01 Pg.', 'Jl. Tipar Kavling DKI Pondok K', ' Pondok Kelapa', 4, 'SD'),
('16440061100064', 'SDN Pondok Kelapa 02 Pt.', 'Jl. Tipar Kav DKI Pondok Kelap', ' Pondok Kelapa', 4, 'SD'),
('16440061100065', 'SDN Pondok Kelapa 03 Pg.', 'Jl. Tipar Kav DKI', ' Pondok Kelapa', 4, 'SD'),
('16440061100066', 'SDN Pondok Kelapa 04 Pg.', 'Jl. Tipar Kav DKI', ' Pondok Kelapa', 4, 'SD'),
('16440061100067', 'SDN Pondok Kelapa 05 Pg.', 'Jl. Haji Naman No. 77', ' Pondok Kelapa', 4, 'SD'),
('16440061100068', 'SDN Pondok Kelapa 06 Pg.', 'Jl. AD. Lampiri Raya', ' Pondok Kelapa', 4, 'SD'),
('16440061100069', 'SDN Pondok Kelapa 07', 'Komp. Perum Karyawan DKI Pondo', ' Pondok Kelapa', 4, 'SD'),
('16440061100070', 'SDN Pondok Kelapa 09 Pg.', 'Komp. Perum Karyawan DKI', ' Pondok Kelapa', 4, 'SD'),
('16440061100071', 'SDN Pondok Kelapa 10 Pg.', 'Jl. Raya Pondok Kelapa Jaya Ga', ' Pondok Kelapa', 4, 'SD'),
('16440061100072', 'SKB Jakarta Timur Paket A', 'Komplek Perumkar DKI Blok B9', ' Pondok Kelapa', 4, 'SD'),
('16440061100073', 'SDN Pondok Kopi 01 Pg.', 'Jl. Bina Karya Rt. 005/ 03', ' Pondok Kopi', 4, 'SD'),
('16440061100074', 'SDN Pondok Kopi 02 Pg.', 'Jl. Rawa Jaya', ' Pondok Kopi', 4, 'SD'),
('16440061100075', 'SDN Pondok Kopi 03 Pg.', 'Jl. Rawa Jaya', ' Pondok Kopi', 4, 'SD'),
('16440061100076', 'SDN Pondok Kopi 04 Pg.', 'Jl. Robusta Raya', ' Pondok Kopi', 4, 'SD'),
('16440061100077', 'SDN Pondok Kopi 07 Pg.', 'Jl. Bina Karya I', ' Pondok Kopi', 4, 'SD'),
('16440061100078', 'SDN Pondok Kopi 08 Pg.', 'Jl. ROBUSTA RAYA BLOK P.5', ' Pondok Kopi', 4, 'SD'),
('16440061200001', 'SD Muhammadiyah 09 Plus', 'Jl SMAN 71 NO. 18', ' Duren Sawit', 4, 'SD'),
('16440061200002', 'SDIT AL KARIMAH', 'Jln. Kelurahan V', ' Duren Sawit', 4, 'SD'),
('16440061200003', 'SDIT Segar Amanah', 'Jl. Naga Raya No. 20', ' Duren Sawit', 4, 'SD'),
('16440061200004', 'SDS Budhaya St. Agustinus II', 'Jl. Perumnas Raya Buaran', ' Duren Sawit', 4, 'SD'),
('16440061200005', 'SDS Ibnu Sina', 'Jl. Madrasah II No.10', ' Duren Sawit', 4, 'SD'),
('16440061200006', 'SDS Kinderfield', 'Jl. Raya Rawa Domba No.88', ' Duren Sawit', 4, 'SD'),
('16440061200007', 'SDS Strada Van Lith II', 'Jl. Laut Arafuru', ' Duren Sawit', 4, 'SD'),
('16440061200008', 'PKBM AZ ZIYADAH', 'Jl. Madrasah Tanah 80, No. 1', ' Klender', 4, 'SD'),
('16440061200009', 'PKBM Cipta Karya Intelektual PaketA', 'Jl. Raden Inten 2', ' Klender', 4, 'SD'),
('16440061200010', 'SDIT Arrahmah Jakarta', 'Jln Duren Sawit Barat II No.2', ' Klender', 4, 'SD'),
('16440061200011', 'SDS Strada Dipamarga', 'Jl. Dermaga No. 22', ' Klender', 4, 'SD'),
('16440061200012', 'SDS BPS & K V Malaka', 'Jl. Bunga Rampai III/ 22', ' Malaka Jaya', 4, 'SD'),
('16440061200013', 'SDS Muhammadiyah 08 Plus', 'Jl. Bunga Rampai X', ' Malaka Jaya', 4, 'SD'),
('16440061200014', 'SDS Oikoumene', 'Jl. Bunga Rampai X', ' Malaka Jaya', 4, 'SD'),
('16440061200015', 'SDS Tadika Puri', 'Jl. Malaka I no.207', ' Malaka Sari', 4, 'SD'),
('16440061200016', 'SDS Al Abidin', 'Jl. H. Hanafi', ' Pondok Bambu', 4, 'SD'),
('16440061200017', 'SDS Al Humaid', 'Jl. Pahlawan Revolusi No. 1', ' Pondok Bambu', 4, 'SD'),
('16440061200018', 'SDS I. T. Asy. Syakiriin', 'Jl. Betung VIII / No. 326', ' Pondok Bambu', 4, 'SD'),
('16440061200019', 'SDS Kristen 4 BPK Penabur', 'Jl. Tarum Barat Cipinang Indah', ' Pondok Bambu', 4, 'SD'),
('16440061200020', 'SDS Nurul Iman', 'Jl. Kesehatan No. 7 Pondok Bam', ' Pondok Bambu', 4, 'SD'),
('16440061200021', 'SDS Pelita Kasih', 'Jl. Pahlawan Revolusi No.12', ' Pondok Bambu', 4, 'SD'),
('16440061200022', 'SDS Perguruan Rakyat 4', 'Jl. Pahlawan Revolusi No.12', ' Pondok Bambu', 4, 'SD'),
('16440061200023', 'SDS St. Maria Imaculata', 'Jl. Amal No.2', ' Pondok Bambu', 4, 'SD'),
('16440061200024', 'SDS Tunas Cemerlang', 'Jl. Kejaksaan No. 201 202', ' Pondok Bambu', 4, 'SD'),
('16440061200025', 'SD Embun Pagi', 'Jl. Raya Kapin No. 8', ' Pondok Kelapa', 4, 'SD'),
('16440061200026', 'SDIT Al Falah', 'Jl. Komplek Pemda DKI Blok M', ' Pondok Kelapa', 4, 'SD'),
('16440061200027', 'SDIT Cahaya Ilmu', 'Jl. H. Naman No. 44', ' Pondok Kelapa', 4, 'SD'),
('16440061200028', 'SDS Al Musanifiah', 'Jl. Delima Raya No. 29', ' Pondok Kelapa', 4, 'SD'),
('16440061200029', 'SDS As Sa''adah', 'Jl. Swakarsa IB No. 40', ' Pondok Kelapa', 4, 'SD'),
('16440061200030', 'SDS I. T. Al Manar', 'Jl. Pd. Kelapa Selatan', ' Pondok Kelapa', 4, 'SD'),
('16440061200031', 'SDS IT Darul Ma''Arif Islamic School', 'Jl. Padat karya', ' Pondok Kelapa', 4, 'SD'),
('16440061200032', 'SDS Permata Kasih', 'Jl. Komp. Permata Timur', ' Pondok Kelapa', 4, 'SD'),
('16440061200033', 'SDS Terpadu Ar. Ridho', 'Jl. Pondok Kelapa XII Blok G.4', ' Pondok Kelapa', 4, 'SD'),
('16440061200034', 'SDS Tiara School', 'Komp. Perumahan DKI Blok P6 No', ' Pondok Kelapa', 4, 'SD'),
('16440061200035', 'SDIT Al Halimiyah', 'Jl. Robusta Raya No. 31', ' Pondok Kopi', 4, 'SD'),
('16440061200036', 'SDIT Al Muhajirin', 'Jl. Raya Pondok Kopi Blok E', ' Pondok Kopi', 4, 'SD'),
('16440061200037', 'SDIT Daqta', 'Jl. Malaka Hijau No. 45 Malaka', ' Pondok Kopi', 4, 'SD'),
('16440061200038', 'SDS Kristen Tiranus', 'Jl. Pondok Kopi Timur Blok W.I', ' Pondok Kopi', 4, 'SD'),
('16440061200039', 'SDS Laboratorium Jakarta', 'Jl. Rawa Jaya Rt. 008/ 04 No.', ' Pondok Kopi', 4, 'SD'),
('16440061200040', 'SDS Nurul Islam', 'Jl. Raya Pondok Kopi Blok Y 11', ' Pondok Kopi', 4, 'SD'),
('16440062100001', 'PKBM Negeri 32 Paket B', 'Jl. Madrasah 2', ' Duren Sawit', 4, 'SMP'),
('16440062100002', 'SMP Negeri 167', 'Jl. Lingkar Duren Sawit', ' Duren Sawit', 4, 'SMP'),
('16440062100003', 'SMP Negeri 194', 'Jl. Pendidikan Komp. IKIP IX', ' Duren Sawit', 4, 'SMP'),
('16440062100004', 'SMP Negeri 195', 'Jl. Sawah Barat Duren Sawit 48', ' Duren Sawit', 4, 'SMP'),
('16440062100005', 'SMP Negeri 202', 'Jl. Buluh Perindu IV/I', ' Duren Sawit', 4, 'SMP'),
('16440062100006', 'SMP Negeri 252 Terbuka', 'Jl. H.Naman Pondok Kelapa', ' Duren Sawit', 4, 'SMP'),
('16440062100007', 'SMP Negeri 255', 'Jl. Radin Inten II Duren Sawit', ' Duren Sawit', 4, 'SMP'),
('16440062100008', 'SMP Negeri 27', 'Jl. LINGKAR KOMP.PTB Duren Sawit', ' Duren Sawit', 4, 'SMP'),
('16440062100009', 'PKBM Awwaliyah Rohiim Paket B', 'Jl. Pertanian Tengah No. 5', ' Klender', 4, 'SMP'),
('16440062100010', 'PKBM Negeri 14 Klender Paket B', 'Jl. Balai Rakyat no. 53 A', ' Klender', 4, 'SMP'),
('16440062100011', 'SMP Negeri 198', 'Jl. Pertanian Klender', ' Klender', 4, 'SMP'),
('16440062100012', 'SMP Negeri 6', 'Jl. Bulak Timur I/7 Klender D', ' Klender', 4, 'SMP'),
('16440062100013', 'SMP Negeri 139', 'Jl. Bunga Rampai X', ' Malaka Jaya', 4, 'SMP'),
('16440062100014', 'PKBM Negeri 33 Malaka Paket B', 'Jl. Teratai Putih II Perumnas', ' Malaka Sari', 4, 'SMP'),
('16440062100015', 'SMP Negeri 213', 'Jl. Malaka I Perlum. Klender', ' Malaka Sari', 4, 'SMP'),
('16440062100016', 'SMP Negeri 117', 'Jl. Pahlawan Revolusi', ' Pondok Bambu', 4, 'SMP'),
('16440062100017', 'SMP Negeri 135', 'Jl. Teluk Palu No. 35', ' Pondok Bambu', 4, 'SMP'),
('16440062100018', 'SMP Negeri 165', 'Jl. Balai Rakyat III No.16', ' Pondok Bambu', 4, 'SMP'),
('16440062100019', 'SMP Negeri 51', 'Jl. Kejaksaan Kav. Pd. Bambu', ' Pondok Bambu', 4, 'SMP'),
('16440062100020', 'SMP Negeri 51 Terbuka', 'Jl. Kejaksaan Kavling', ' Pondok Bambu', 4, 'SMP'),
('16440062100021', 'SKB Jakarta Timur Paket B', 'Komplek Perumkar DKI Blok B9', ' Pondok Kelapa', 4, 'SMP'),
('16440062100022', 'SMP Negeri 252', 'Jl. H. Naman Pondok Kelapa', ' Pondok Kelapa', 4, 'SMP'),
('16440062100023', 'SMP Negeri 199', 'Jl. Arabika VIII Blok AC3', ' Pondok Kopi', 4, 'SMP'),
('16440062200001', 'SMP Budhaya III St. Agustinus', 'Jl. Perumnas Raya Buaran', ' Duren Sawit', 4, 'SMP'),
('16440062200002', 'SMP Strada Santa Anna', 'Jl. Laut Arafuru Kav. AL, Pon', ' Duren Sawit', 4, 'SMP'),
('16440062200003', 'SMP Swadaya', 'Jl. Kecubung V, Duren Sawit', ' Duren Sawit', 4, 'SMP'),
('16440062200004', 'SMPS Highfield', 'Jl. Raya Rawa Domba No.88', ' Duren Sawit', 4, 'SMP'),
('16440062200005', 'PKBM AZ ZIYADAH', 'Jl. Madrasah Tanah 80, No. 1', ' Klender', 4, 'SMP'),
('16440062200006', 'PKBM Cipta Karya IntelektualPaket B', 'Jl. Raden Inten 2', ' Klender', 4, 'SMP'),
('16440062200007', 'SMP Budaya', 'Jl. Dermaga Baru Klender', ' Klender', 4, 'SMP'),
('16440062200008', 'SMP Bayu Persada', 'Jl. Bunga Rampai XI / 1 No.47', ' Malaka Jaya', 4, 'SMP'),
('16440062200009', 'SMP Nuris', 'Jl. Mawar Merah Raya No. 1', ' Malaka Jaya', 4, 'SMP'),
('16440062200010', 'SMP Muhammadiyah 50', 'Jl. Delima II Blok C Perumnas', ' Malaka Sari', 4, 'SMP'),
('16440062200011', 'SMP BPK V Penabur', 'Jl. Tarum Barat Blok KK. Cipin', ' Pondok Bambu', 4, 'SMP'),
('16440062200012', 'SMP Perguruan Rakyat 3', 'Jl. Pahlawan Revolusi No. 12', ' Pondok Bambu', 4, 'SMP'),
('16440062200013', 'SMP PGRI 20', 'Jl. Cipinang Muara I Pd. Bambu', ' Pondok Bambu', 4, 'SMP'),
('16440062200014', 'SMP Putra I', 'Jl. Inspeksi Saluran Kalimalan', ' Pondok Bambu', 4, 'SMP'),
('16440062200015', 'SMP Santa Bona Fentura', 'Jl. Amal No. 2', ' Pondok Bambu', 4, 'SMP'),
('16440062200016', 'SMPK Pelita Kasih', 'Jl. Pahlawan Revolusi No. 12', ' Pondok Bambu', 4, 'SMP'),
('16440062200017', 'SMP As Sa''adah', 'Jl. Swakarsa I Pd. Kelapa', ' Pondok Kelapa', 4, 'SMP'),
('16440062200018', 'SMP Darul Ma''Arif IslamicSchool', 'Jl. Padat Karya II No. 27', ' Pondok Kelapa', 4, 'SMP'),
('16440062200019', 'SMP Islam Terpadu Ar Rudho', 'Jl. Pandan No. 3 Palem Indah', ' Pondok Kelapa', 4, 'SMP'),
('16440062200020', 'SMP Kapin', 'Jl. Raya Kalimalang Pd. Kelapa', ' Pondok Kelapa', 4, 'SMP'),
('16440062200021', 'SMP Pami Jaya', 'Jl. Raya Kalimalang Pd. Klp.', ' Pondok Kelapa', 4, 'SMP'),
('16440062200022', 'SMP Permata Kasih IndonesiaSchool', 'Jl. Curug Raya No. 14 Perum. P', ' Pondok Kelapa', 4, 'SMP'),
('16440062200023', 'SMP Petri Jaya', 'Jl. Curug Raya Pd. Kelapa', ' Pondok Kelapa', 4, 'SMP'),
('16440062200024', 'SMP BPSK 2', 'Jl. Bina Karya Pondok Kopi', ' Pondok Kopi', 4, 'SMP'),
('16440062200025', 'SMP Budi Mulia Utama', 'Jl. Rawa Jaya No.35 Jakarta Ti', ' Pondok Kopi', 4, 'SMP'),
('16440062200026', 'SMP Corpatarin', 'Jl. Raya Pondok Kopi', ' Pondok Kopi', 4, 'SMP'),
('16440062200027', 'SMP IT Al Halimiyah', 'Jl. Robusta Raya No. 31 Pondok 86601447', ' Pondok Kopi', 4, 'SMP'),
('16440062200028', 'SMP Laboratorium Jakarta', 'Jl. Rawajaya No. 37', ' Pondok Kopi', 4, 'SMP'),
('16440062200029', 'SMPIT Daqta', 'Jl. Malaka Hijau No. 45 Malaka', ' Pondok Kopi', 4, 'SMP'),
('16440063100001', 'PKBM Negeri 32 Paket C', 'Jl. Madrasah 2', ' Duren Sawit', 4, 'SMA'),
('16440063100002', 'SMA Negeri 103', 'Jl. Mawar Merah Perumnas Klend', ' Duren Sawit', 4, 'SMA'),
('16440063100003', 'SMA Negeri 71', 'Jl. H. Dogol Kav. TNI AL Duren', ' Duren Sawit', 4, 'SMA'),
('16440063100004', 'PKBM Awwaliyah Rohiim Paket C', 'Jl. Pertanian Tengah No. 5', ' Klender', 4, 'SMA'),
('16440063100005', 'PKBM Negeri 14 Klender Paket C', 'Jl. Balai Rakyat no. 53 A', ' Klender', 4, 'SMA'),
('16440063100006', 'SMA Negeri 12', 'Jl. Pertanian', ' Klender', 4, 'SMA'),
('16440063100007', 'SMA Negeri 59', 'Jl. Bulak Timur I No.10 11', ' Klender', 4, 'SMA'),
('16440063100008', 'PKBM Negeri 33 Malaka Paket C', 'Jl. Teratai Putih II Perumnas', ' Malaka Sari', 4, 'SMA'),
('16440063100009', 'SMA Negeri 44', 'Jl. Delima IV Perum Klender', ' Malaka Sari', 4, 'SMA'),
('16440063100010', 'SMA Negeri 61', 'Jl. Taruna Pahlawan Revolusi', ' Pondok Bambu', 4, 'SMA'),
('16440063100011', 'SKB Jakarta Timur Paket C', 'Komplek Perumkar DKI Blok B9', ' Pondok Kelapa', 4, 'SMA'),
('16440063100012', 'SMA Negeri 91', 'Jl. Lembah Lontar', ' Pondok Kelapa', 4, 'SMA'),
('16440063200001', 'SMA Budhaya II St. Agustinus', 'Jl. Raya Radin Inten II', ' Duren Sawit', 4, 'SMA'),
('16440063200002', 'PKBM Cipta Karya Intelektual Paket C', 'Jl. Raden Inten 2', ' Klender', 4, 'SMA'),
('16440063200003', 'SMA Budaya', 'Jl. Dermaga Baru Klender', ' Klender', 4, 'SMA'),
('16440063200004', 'PKBM Amanah', 'Jl. Delima III Blok 9', ' Malaka Sari', 4, 'SMA'),
('16440063200005', 'SMA Muhammadiyah 23', 'Jl. Delima II Blok C Perumnas', ' Malaka Sari', 4, 'SMA'),
('16440063200006', 'SMA K7 BPK Penabur', 'Jl. Cipinang Indah 2', ' Pondok Bambu', 4, 'SMA'),
('16440063200007', 'SMA Perguruan Rakyat 3', 'Jl. Pahlawan Revolusi No. 12', ' Pondok Bambu', 4, 'SMA'),
('16440063200008', 'SMA PGRI 1', 'Jl. Cipinang Muara I', ' Pondok Bambu', 4, 'SMA'),
('16440063200009', 'SMA Pusaka I', 'Jl. Taruna Pahlawan Revolusi', ' Pondok Bambu', 4, 'SMA'),
('16440063200010', 'SMA St. Alexius', 'Jl. Amal No. 2', ' Pondok Bambu', 4, 'SMA'),
('16440063200011', 'SMA Corpatarin', 'Jalan Raya Pondok kopi No.87', ' Pondok Kelapa', 4, 'SMA'),
('16440063200012', 'SMA KAPIN', 'Jl. Raya Kalimalang', ' Pondok Kelapa', 4, 'SMA'),
('16440063200013', 'SMA Perguruan Rakyat 2', 'Jl. AD. Lampiri Raya', ' Pondok Kelapa', 4, 'SMA'),
('16440063200014', 'SMA BPS & K', 'Jl. Bina Karya No. 2', ' Pondok Kopi', 4, 'SMA'),
('16440063200015', 'SMA Budi Mulia Utama', 'Jl. Rawa Jaya No. 35', ' Pondok Kopi', 4, 'SMA'),
('16440063200016', 'SMA IT Al Halimiyah', 'Jl. Robusta Raya No. 31', ' Pondok Kopi', 4, 'SMA'),
('16440063200017', 'SMA PRIMA NUSANTARA', 'Jl. PANGLIMA POLIM II/51 A', ' Pondok Kopi', 4, 'SMA'),
('16440064100001', 'SMK Negeri 48', 'Jl. Raden Inten II No. 3', ' Klender', 4, 'SMK'),
('16440064200001', 'SMK Budi Murni 1 Jakarta', 'Jl. Sawah Barat', ' Duren Sawit', 4, 'SMK'),
('16440064200002', 'SMK Budi Murni 3 Jakarta', 'Jl. Sawah Barat', ' Duren Sawit', 4, 'SMK'),
('16440064200003', 'SMK Gema Nusantara', 'Jl. DUA SEMBILAN NO.18', ' Duren Sawit', 4, 'SMK'),
('16440064200004', 'SMK Petri Jaya', 'Jl. Curug Raya 7', ' Duren Sawit', 4, 'SMK'),
('16440064200005', 'SMK Swadaya Global School', 'Jl. Kecubung V', ' Duren Sawit', 4, 'SMK'),
('16440064200006', 'SMK Budaya Jakarta', 'Jl. Dermaga Baru No. 48', ' Klender', 4, 'SMK'),
('16440064200007', 'SMK Farmasi IKIFA', 'Jl. Buaran II No. 30A  I Gusti', ' Klender', 4, 'SMK'),
('16440064200008', 'SMK Jayakarta', 'Jl. Bunga Rampai XI/1 No. 47', ' Malaka Jaya', 4, 'SMK'),
('16440064200009', 'SMK Mitra Kencana', 'Jl. Mawar Merah Raya No. 1', ' Malaka Jaya', 4, 'SMK'),
('16440064200010', 'SMK Nurul Islam Jakarta', 'Jl. Mawar Merah Raya No.1', ' Malaka Jaya', 4, 'SMK'),
('16440064200011', 'SMK Teratai Putih Jakarta', 'Jl. Nusa Indah IVA Perumnas Kl', ' Malaka Jaya', 4, 'SMK'),
('16440064200012', 'SMK Tadika Puri Jakarta', 'Jl. Malaka I/207', ' Malaka Sari', 4, 'SMK'),
('16440064200013', 'SMK Bhakti 3', 'Jl. Kalimalang No.40A', ' Pondok Bambu', 4, 'SMK'),
('16440064200014', 'SMK PGRI 8 Jakarta', 'Jl. Cipinang Muara I', ' Pondok Bambu', 4, 'SMK'),
('16440064200015', 'SMK Pusaka 1 Jakarta', 'Jl. Taruna Pahlawan Revolusi N', ' Pondok Bambu', 4, 'SMK'),
('16440064200016', 'SMK St. Bonaventura Jakarta', 'Jl. Amal No. 2', ' Pondok Bambu', 4, 'SMK'),
('16440064200017', 'SMK As Saadah', 'Jl.Swakarsa IB No.40', ' Pondok Kelapa', 4, 'SMK'),
('16440064200018', 'SMK KAPIN', 'Jl. Raya Kalimalang', ' Pondok Kelapa', 4, 'SMK'),
('16440064200019', 'SMK Kapin 2', 'Jl. Raya Kalimalang', ' Pondok Kelapa', 4, 'SMK'),
('16440064200020', 'SMK Kawula Indonesia Jakarta', 'Jl. Raya Kalimalang', ' Pondok Kelapa', 4, 'SMK'),
('16440064200021', 'SMK Paramitha', 'Jl. Raya Kalimalang', ' Pondok Kelapa', 4, 'SMK'),
('16440064200022', 'SMK Perguruan Rakyat 2', 'Jl. AD lampiri Raya No. 28', ' Pondok Kelapa', 4, 'SMK'),
('16440064200023', 'SMK BPS&K 1 Jakarta', 'Jl. Bina Karya No. 2', ' Pondok Kopi', 4, 'SMK'),
('16440064200024', 'SMK BPS&K 2 Jakarta', 'Jl. Bina Karya No. 2', ' Pondok Kopi', 4, 'SMK'),
('16440064200025', 'SMK Budi Mulia Utama', 'Jl. Rawa Jaya No. 35', ' Pondok Kopi', 4, 'SMK'),
('16440064200026', 'SMK Corpatarin 01', 'Jl. Raya Pondok Kopi', ' Pondok Kopi', 4, 'SMK'),
('16440064200027', 'SMK Corpatarin 2 Jakarta', 'Jl. Pondok Kopi Raya No. 87', ' Pondok Kopi', 4, 'SMK'),
('16440064200028', 'SMK Jakarta 1', 'Jl. Raya Pondok Kopi No. 75', ' Pondok Kopi', 4, 'SMK'),
('16440064200029', 'SMK Laboratorium', 'Jl. Rawa Jaya No.37 Pondok Kop', ' Pondok Kopi', 4, 'SMK'),
('16440064200030', 'SMK Malaka Jakarta', 'Jl. Raya Mawar Merah No. 23', ' Pondok Kopi', 4, 'SMK'),
('16440064200031', 'SMK PAMI Jaya', 'Jl. Raya Kalimalang No. 29', ' Pondok Kopi', 4, 'SMK'),
('16450060200001', 'PKBM Fizar TK', 'Jl. Wedana Dalam No. 7', ' Bali Mester', 5, 'TK'),
('16450060200002', 'TK Cahaya Sakti', 'Jl. Otista I/11', ' Bali Mester', 5, 'TK'),
('16450060200003', 'TK Kristen Berkat', 'Jl. Jatinegara Timur No. 89', ' Bali Mester', 5, 'TK'),
('16450060200004', 'TK Santa Bernadette', 'Jl. Jatinegara Timur No. 74', ' Bali Mester', 5, 'TK'),
('16450060200005', 'TK An Ilmiyah', 'Jl. Ayub No. 5', ' Bidara Cina', 5, 'TK'),
('16450060200006', 'TK As Saadah', 'Jl. Tanjung Lengkong', ' Bidara Cina', 5, 'TK'),
('16450060200007', 'TK Kartini Otista', 'Jl. Otista Gg. Sensus I/3', ' Bidara Cina', 5, 'TK'),
('16450060200008', 'TK Kemala Bhayangkari 13', 'Jl. Otista No. 18', ' Bidara Cina', 5, 'TK'),
('16450060200009', 'TK Krishna', 'Jl. Otista II/25', ' Bidara Cina', 5, 'TK'),
('16450060200010', 'TK Riyadhush Shalihin', 'Jl. Tanjung Lengkong No. 15', ' Bidara Cina', 5, 'TK'),
('16450060200011', 'TK Santo Vincetius', 'Jl. Otista No. 17', ' Bidara Cina', 5, 'TK'),
('16450060200012', 'TKIT Fathan Mubina', 'Jl. Otista Raya No. 448/449', ' Bidara Cina', 5, 'TK'),
('16450060200013', 'TK Al Iman', 'Jl. Cipinang Jaya LL', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200014', 'TK BPS & K Pembangunan III', 'Jl. Cipinang Jaya No. 44', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200015', 'TK Cempaka', 'Jl. Panca Warga II/2', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200016', 'TK Darul Hikmah', 'Jl. Panca Warga II/38', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200017', 'TK ISLAM AL IHSAN ATTAHIRIYAH', 'Jl. Cipinang Jaya CC/DD', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200018', 'TK IT Mishbahul Amal', 'Jl. Cipinang Jaya IIE', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200019', 'TK Mansyaatul Islamiyah', 'Jl. Cipinang Besar Rt. 002/10', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200020', 'TK Persiapan', 'Jl. PANCAWARGA IV', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200021', 'TK Putra I', 'Jl. Inspeksi Saluran', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200022', 'TK Silaparamita', 'Jl. Raya Cipinang Jaya No. 1A', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200023', 'TK Tunas Peni', 'Jl. Panca Warga III', ' Cipinang Besar Selatan', 5, 'TK'),
('16450060200024', 'PKBM Paksi Safa Kawijayan', 'Cipinang Pulo Maja No. 28', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200025', 'PKBM Pemuda Creative PrimaPAUD', 'Jl. DI Panjaitan Gang Remaja I', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200026', 'TK Al Amin', 'Jl. Cipinang Besar Utara', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200027', 'TK Bhakti III', 'Jl. Bekasi Timur IV Ujung', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200028', 'TK Darul Arqom', 'Jl. Bekasi Timur IV', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200029', 'TK Dwi Cakti Bhakti', 'Jl. Bekasi Timur IV/ 15', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200030', 'TK Harapan Bangsa', 'Jl. Cipinang Pulo No. 15', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200031', 'TK Islam Aththalibiyah II', 'Jl. Cipinang Pulo Rt. 007/012', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200032', 'TK ISLAM BAKTI III', 'Jl. Bekasi Timur IV Ujung', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200033', 'TK Kartini Majasari', 'Jl. Cipinang Pulo Maja No. 24', ' Cipinang Besar Utara', 5, 'TK'),
('16450060200034', 'TK Grasia', 'Jl. Komp. Cip. Cempedak II/4', ' Cipinang Cempedak', 5, 'TK'),
('16450060200035', 'TK Indriana', 'Jl. Taman Berdikari No. 283', ' Cipinang Cempedak', 5, 'TK'),
('16450060200036', 'TK Islam Al Barokah', 'Jl. Cipinang Cempedak IV/42', ' Cipinang Cempedak', 5, 'TK'),
('16450060200037', 'TK Islam Al Hasanah', 'Jl. Tanah Manisan No.10', ' Cipinang Cempedak', 5, 'TK'),
('16450060200038', 'TK Islam Annuriyyah', 'Jl. Kebon Nanas Selatan II/39', ' Cipinang Cempedak', 5, 'TK'),
('16450060200039', 'TK Kristen 8', 'Jl. Biru Laut Raya No. 18', ' Cipinang Cempedak', 5, 'TK'),
('16450060200040', 'TKIF Assalafy', 'Jl. Kebon Nanas Utara II/3', ' Cipinang Cempedak', 5, 'TK'),
('16450060200041', 'TK Al Akhbar', 'Jl. Majalah No. 26 A Kom. PWI', ' Cipinang Muara', 5, 'TK'),
('16450060200042', 'TK Bentara Indonesia I', 'Jl. Mulya Jaya No. 6', ' Cipinang Muara', 5, 'TK'),
('16450060200043', 'TK Bestari', 'Jl. Baru Cipinang Muara No. 22', ' Cipinang Muara', 5, 'TK'),
('16450060200044', 'TK Budi Darma I', 'Jl. Cipinang Muara No. 11', ' Cipinang Muara', 5, 'TK'),
('16450060200045', 'TK Griya Wartawan', 'Jl. Majalah Blok B No.9A', ' Cipinang Muara', 5, 'TK'),
('16450060200046', 'TK Hanniek Hikmah', 'Jl. BB No. 53', ' Cipinang Muara', 5, 'TK'),
('16450060200047', 'TK Islam Al Husna', 'Jl. Pinang Merah Cipinang Inda', ' Cipinang Muara', 5, 'TK'),
('16450060200048', 'TK Islam Bakti II', 'Jl. Mulya Jaya No. 37', ' Cipinang Muara', 5, 'TK'),
('16450060200049', 'TK Islam Ikhwanus Shafa', 'Jl. Cipinang Muara III', ' Cipinang Muara', 5, 'TK'),
('16450060200050', 'TK Kartini Cipinang Muara', 'Jl. Kesadaran IV No. 17', ' Cipinang Muara', 5, 'TK'),
('16450060200051', 'TK Kristen Regency Cipinang', 'Jl. Cipinang Elok II Blok AV N', ' Cipinang Muara', 5, 'TK'),
('16450060200052', 'TK Kuncup Mawar', 'Jl. Cipinang Muara Raya No.12', ' Cipinang Muara', 5, 'TK'),
('16450060200053', 'TK Mini Pak Kasur', 'Jl. Nusa Indah I Cipinang Inda', ' Cipinang Muara', 5, 'TK');
INSERT INTO `master_sekolah` (`induk_sekolah`, `nama_sekolah`, `alamat`, `kelurahan`, `id_kecamatan`, `tingkat`) VALUES
('16450060200054', 'TK Nurusy Syifa', 'Jl. T No. 50 Cipinang Muara II', ' Cipinang Muara', 5, 'TK'),
('16450060200055', 'TK Taman Indah', 'Jl. KESADARAN III', ' Cipinang Muara', 5, 'TK'),
('16450060200056', 'Paud Ceria Bunga Pala', 'Jl. Kebon Pala I Tanah Rendah', ' Kampung Melayu', 5, 'TK'),
('16450060200057', 'TK ALFALAH', 'Jl. Kp. Pulo', ' Kampung Melayu', 5, 'TK'),
('16450060200058', 'TK Islam Mufti Mulyani', 'Jl. Kebon Pala Tanah Rendah No', ' Kampung Melayu', 5, 'TK'),
('16450060200059', 'TK Islam Nurul Jannah', 'Jl. Keb. Pala Tanah Rendah Gg.', ' Kampung Melayu', 5, 'TK'),
('16450060200060', 'TK Ksatria Bangsa', 'Jl. Matraman Raya No. 200', ' Kampung Melayu', 5, 'TK'),
('16450060200061', 'TK Santa Maria Fatima', 'Jl. Jatinegara Barat No. 122', ' Kampung Melayu', 5, 'TK'),
('16450060200062', 'TK Regency', 'Jl. JATINEGARA TIMUR II/11', ' Rawa Bunga', 5, 'TK'),
('16450060200063', 'TK BUDI', 'Jl. Jatinegara Timur I No. 4', ' Rawa Bunga', 5, 'TK'),
('16450060200064', 'TK Islam Rawabunga', 'Jl. Masjid II No. 99', ' Rawa Bunga', 5, 'TK'),
('16450060200065', 'TK Uswatun Hasanah', 'Jl. Pedati Timur Dalam No. 13', ' Rawa Bunga', 5, 'TK'),
('16450061100001', 'PKBM Fizar Paket A', 'Jl. Wedana Dalam No. 7', ' Bali Mester', 5, 'SD'),
('16450061100002', 'SDN Balimester 01 Pg.', 'Jl. Matraman Raya No. 226', ' Bali Mester', 5, 'SD'),
('16450061100003', 'SDN Balimester 03 Pt.', 'Jl. Matraman Raya No. 177', ' Bali Mester', 5, 'SD'),
('16450061100004', 'SDN Balimester 06', 'Jl. Jatinegara Barat IV/ 12', ' Bali Mester', 5, 'SD'),
('16450061100005', 'SDN Bidaracina 01 Pg.', 'Jl. Sensus Raya II No.02', ' Bidara Cina', 5, 'SD'),
('16450061100006', 'SDN Bidaracina 03 Pg.', 'Jl. Setia No. 10', ' Bidara Cina', 5, 'SD'),
('16450061100007', 'SDN Bidaracina 05 Pg.', 'Jl. Tanjung Lengkong No.51', ' Bidara Cina', 5, 'SD'),
('16450061100008', 'SDN Cipinang Besar Selatan 01Pg.', 'Jl. IPN Cipinang Besar Selatan', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100009', 'SDN Cipinang Besar Selatan 02Pg.', 'Jl. IPN Kp. Jembatan', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100010', 'SDN Cipinang Besar Selatan 03Pg.', 'Jl. Cipinang Jaya II/ 1', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100011', 'SDN Cipinang Besar Selatan 04Pg.', 'Jl. Cipinang Jaya II/ 1', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100012', 'SDN Cipinang Besar Selatan 05Pg.', 'Jl. Pancawarga IV No.10', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100013', 'SDN Cipinang Besar Selatan 07Pg.', 'Jl. Raya Jend. Basuki Rahmat N', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100014', 'SDN Cipinang Besar Selatan 08Pg.', 'Jl. Pancawarga IV', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100015', 'SDN Cipinang Besar Selatan 12Pg.', 'Jl. TPU Kb. Nanas Rt. 01/ 05', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100016', 'SDN Cipinang Besar Selatan 13Pg.', 'Jl. Persatuan II', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100017', 'SDN Cipinang Besar Selatan 15Pg.', 'Jl. Cipinang Jaya GG Ujung No.', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100018', 'SDN Cipinang Besar Selatan 16Pg.', 'Jl. Pancawarga IV/ 8', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100019', 'SDN Cipinang Besar Selatan 17Pg.', 'Jl. Pancawarga IV/ Gg. VIII', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100020', 'SDN Cipinang Besar Selatan 18Pg.', 'Jl. Griya Wartawan PWI', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100021', 'SDN Cipinang Besar Selatan 19Pg.', 'Jl. Pancawarga I Gg. 16', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100022', 'SDN Cipinang Besar Selatan 20Pg.', 'Jl. Pancawarga I Gg. 16', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061100023', 'PKBM Paksi Safa Kawijayan PaketA', 'Cipinang Pulo Maja No. 28', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100024', 'PKBM Pandu Pelajar Mandiri PaketA', 'Jl. Raya Bekasi Timur No. 170', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100025', 'PKBM Pemuda Creative PrimaPaket A', 'Jl. DI Panjaitan Gang Remaja I', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100026', 'SDN Cipinang Besar Utara 01 Pg.', 'Jl. Bekasi Timur IV No. 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100027', 'SDN Cipinang Besar Utara 02 Pt.', 'Jl. Bekasi Timur IV No. 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100028', 'SDN Cipinang Besar Utara 03 Pg.', 'Jl. Bekasi Timur IV No. 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100029', 'SDN Cipinang Besar Utara 04 Pt.', 'Jl. Bekasi Timur IV No. 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100030', 'SDN Cipinang Besar Utara 05 Pg.', 'Jl. Cipinang Latihan Rt. 03/ 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100031', 'SDN Cipinang Besar Utara 06 Pt.', 'Jl. Cipinang Latihan', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100032', 'SDN Cipinang Besar Utara 07 Pt.', 'Jl. Cipinang Latihan Rt. 03/ 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100033', 'SDN Cipinang Besar Utara 08 Pg.', 'Jl. Cipinang Latihan Rt. 03/ 1', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100034', 'SDN Cipinang Besar Utara 09 Pg.', 'Jl. Cipinang Latihan No. 6', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100035', 'SDN Cipinang Besar Utara 10 Pg.', 'Jl. Perumpung Tengah', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100036', 'SDN Cipinang Besar Utara 11 Pg.', 'Jl. Perumpung Tengah', ' Cipinang Besar Utara', 5, 'SD'),
('16450061100037', 'SDN Cipinang Cempedak 01 Pg.', 'Jl. Otista III', ' Cipinang Cempedak', 5, 'SD'),
('16450061100038', 'SDN Cipinang Cempedak 02 Pg.', 'Jl. Otista III', ' Cipinang Cempedak', 5, 'SD'),
('16450061100039', 'SDN Cipinang Cempedak 04 Pg.', 'Jl. Pedati Dalam', ' Cipinang Cempedak', 5, 'SD'),
('16450061100040', 'SDN Cipinang Cempedak 05 Pg.', 'Jl. Bhineka IV Cawang Kavling', ' Cipinang Cempedak', 5, 'SD'),
('16450061100041', 'SDN Cipinang Cempedak 06 Pg.', 'Jl. Bhineka IV Cawang Kavling', ' Cipinang Cempedak', 5, 'SD'),
('16450061100042', 'SDN Cipinang Cempedak 07 Pg.', 'Jl. Pedati Dalam', ' Cipinang Cempedak', 5, 'SD'),
('16450061100043', 'SDN Cipinang Cempedak 09 Pg.', 'Jl. SD Inpres No. 2', ' Cipinang Cempedak', 5, 'SD'),
('16450061100044', 'PKBM Asah Asih Asuh (A3) PaketA', 'Jl. Pembina I No. 2', ' Cipinang Muara', 5, 'SD'),
('16450061100045', 'PKBM Sumbangsih Untuk Negeri', 'Jl. Mawar I E No. 14', ' Cipinang Muara', 5, 'SD'),
('16450061100046', 'SDN Cipinang Muara 01 Pg.', 'Jl. Cipinang Lontar Indah No.', ' Cipinang Muara', 5, 'SD'),
('16450061100047', 'SDN Cipinang Muara 02 Pg.', 'Jl. Raya Cipinang Muara', ' Cipinang Muara', 5, 'SD'),
('16450061100048', 'SDN Cipinang Muara 04 Pg.', 'Jl. BB I Cipinang Muara', ' Cipinang Muara', 5, 'SD'),
('16450061100049', 'SDN Cipinang Muara 05 Pg.', 'Jl. Buletin Komp. PWI', ' Cipinang Muara', 5, 'SD'),
('16450061100050', 'SDN Cipinang Muara 06 Pg.', 'Jl. Komplek Cipinang Elok I/II', ' Cipinang Muara', 5, 'SD'),
('16450061100051', 'SDN Cipinang Muara 07 Pg.', 'Jl. Komplek Cipinang Elok II B', ' Cipinang Muara', 5, 'SD'),
('16450061100052', 'SDN Cipinang Muara 12 Pg.', 'Jl. Cipinang Lontar Indah No.3', ' Cipinang Muara', 5, 'SD'),
('16450061100053', 'SDN Cipinang Muara 14 Pg.', 'Jl. Cipinang Muara III', ' Cipinang Muara', 5, 'SD'),
('16450061100054', 'SDN Cipinang Muara 15 Pg.', 'Jl. Cipinang Muara III', ' Cipinang Muara', 5, 'SD'),
('16450061100055', 'SDN Cipinang Muara 16 Pg.', 'Jl. Cipinang Muara III', ' Cipinang Muara', 5, 'SD'),
('16450061100056', 'SDN Cipinang Muara 17 Pg.', 'Jl. Cipinang Muara III', ' Cipinang Muara', 5, 'SD'),
('16450061100057', 'SDN Cipinang Muara 18 Pg.', 'Jl. D. Komplek Cipinang Indah', ' Cipinang Muara', 5, 'SD'),
('16450061100058', 'SDN Cipinang Muara 19 Pg.', 'Jl. Cipinang Indah Raya 51', ' Cipinang Muara', 5, 'SD'),
('16450061100059', 'SDN Cipinang Muara 20 Pg.', 'Jl. Cipinang Indah Raya 50', ' Cipinang Muara', 5, 'SD'),
('16450061100060', 'SDN Cipinang Muara 21 Pg.', 'Jl. D Komplek Cipinang Indah', ' Cipinang Muara', 5, 'SD'),
('16450061100061', 'SDN Kampung Melayu 01 Pg.', 'Jl. Kb. Pala I/ 34', ' Kampung Melayu', 5, 'SD'),
('16450061100062', 'SDN Kampung Melayu 02 Pt.', 'Jl. Kebon Pala I/ 34 Jatinegar', ' Kampung Melayu', 5, 'SD'),
('16450061100063', 'SDN Rawa Bunga 01 Pg.', 'Jl. Bekasi Timur IX No. 4', ' Rawa Bunga', 5, 'SD'),
('16450061100064', 'SDN Rawa Bunga 11 Pg.', 'Jl. Jatinegara Timur IV', ' Rawa Bunga', 5, 'SD'),
('16450061100065', 'SDN Rawa Bunga 12 Pg.', 'Jl. Jatinegara Timur IV', ' Rawa Bunga', 5, 'SD'),
('16450061200001', 'SDS Cahaya Sakti', 'Jl. Otto Iskandardinata I No.', ' Bali Mester', 5, 'SD'),
('16450061200002', 'SDS Kartika X 1', 'Jl. Jend. Urip Sumohardjo No.1', ' Bali Mester', 5, 'SD'),
('16450061200003', 'SDS Kristen Berkat', 'Jl. Raya Jatinegara Timur No.', ' Bali Mester', 5, 'SD'),
('16450061200004', 'SDS Islam Assa''adah', 'Jl. Tanjung Lengkong No.21', ' Bidara Cina', 5, 'SD'),
('16450061200005', 'SDS Krishna', 'Jl. O. Iskandardinata II No.25', ' Bidara Cina', 5, 'SD'),
('16450061200006', 'SDS Muhammadiyah 11', 'Jl. Tanjung Lengkong No. 04', ' Bidara Cina', 5, 'SD'),
('16450061200007', 'SDS Santo Antonius I', 'Jl. Otto Iskandardinata No. 76', ' Bidara Cina', 5, 'SD'),
('16450061200008', 'SDS Santo Vincentius', 'Jl. Otto Iskandardinata No. 76', ' Bidara Cina', 5, 'SD'),
('16450061200009', 'PKBM JATINEGARA', 'Jl. Panca Warga 6', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061200010', 'SDIT Darul Hikmah', 'Jl. Pancawarga II No. 38', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061200011', 'SDS BPS & K Pembangunan III', 'Jl. Cipinang Jaya CC No.44', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061200012', 'SDS Buddhis Silaparamita', 'Jl. Raya Cipinang Jaya I A', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061200013', 'SDS Putra I', 'Jl. Inspeksi Saluran No. 1', ' Cipinang Besar Selatan', 5, 'SD'),
('16450061200014', 'SDS DCB Palad', 'Jl. Bekasi Timur IV No.15', ' Cipinang Besar Utara', 5, 'SD'),
('16450061200015', 'SDS Nurul Yaqin', 'Jl. Bekasi Timur IV Dalam', ' Cipinang Besar Utara', 5, 'SD'),
('16450061200016', 'SDS YPBK', 'Jl. Kb. Jeruk Timur', ' Cipinang Besar Utara', 5, 'SD'),
('16450061200017', 'SDS Assalafy', 'Jl. Kb. Nanas Utara II No. 3', ' Cipinang Cempedak', 5, 'SD'),
('16450061200018', 'SDS Assalam Jaya', 'Jl. Kebon Nanas Selatan II/5', ' Cipinang Cempedak', 5, 'SD'),
('16450061200019', 'SDS Kristen VIII Penabur', 'Jl. Taman Hijau Daun No. 24', ' Cipinang Cempedak', 5, 'SD'),
('16450061200020', 'KBM Jauharul Wathon Paket A', 'Jl.T. No.4', ' Cipinang Muara', 5, 'SD'),
('16450061200021', 'PKBM Khalifah Paket A', NULL, ' Cipinang Muara', 5, 'SD'),
('16450061200022', 'SDIT Al Iman', 'Jl. Cipinang Elok II', ' Cipinang Muara', 5, 'SD'),
('16450061200023', 'PKBM Bunga Pala Paket A', 'Jl. Kebon Pala I Tanah Rendah', ' Kampung Melayu', 5, 'SD'),
('16450061200024', 'SDS Baitul Khair', 'Jl. Kebon Pala I', ' Kampung Melayu', 5, 'SD'),
('16450061200025', 'SDS Ksatria Bangsa', 'Jl. Matraman Raya No. 198 202', ' Kampung Melayu', 5, 'SD'),
('16450061200026', 'SDS Perguruan Advent 6', 'Jl. Jatinegara Barat No. 142 B', ' Kampung Melayu', 5, 'SD'),
('16450061200027', 'SDS Santa Maria Fatima', 'Jl. Jatinegara Barat No.122', ' Kampung Melayu', 5, 'SD'),
('16450062100001', 'PKBM Fizar Paket B', 'Jl. Wedana Dalam No. 7', ' Bali Mester', 5, 'SMP'),
('16450062100002', 'SMP Negeri 14', 'Jl. Matrman Raya No. 177', ' Bali Mester', 5, 'SMP'),
('16450062100003', 'SMP Negeri 149', 'Jl. Cipinang Besar Selatan', ' Cipinang Besar Selatan', 5, 'SMP'),
('16450062100004', 'PKBM Paksi Safa Kawijayan Paket B', 'Cipinang Pulo Maja No. 28', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062100005', 'PKBM Pandu Pelajar Mandiri Paket B', 'Jl. Raya Bekasi Timur No. 170', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062100006', 'PKBM Pemuda Creative Prima Paket B', 'Jl. DI Panjaitan Gang Remaja I', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062100007', 'PKBM Warga Mandiri Paket B', 'Jl. Raya Bekasi Timur No. 170', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062100008', 'SMP Negeri 243', 'Jl. Cipinang Jaya II', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062100009', 'SMP Negeri 36', 'Jl. Pedati', ' Cipinang Cempedak', 5, 'SMP'),
('16450062100010', 'PKBM Asah Asih Asuh (A3) Paket B', 'Jl. Pembina I No. 2', ' Cipinang Muara', 5, 'SMP'),
('16450062100011', 'PKBM Sumbangsih Untuk Negeri', 'Jl. Mawar I E No. 14', ' Cipinang Muara', 5, 'SMP'),
('16450062100012', 'SMP Negeri 148', 'Jl. BB. I. Cipinang Muara', ' Cipinang Muara', 5, 'SMP'),
('16450062100013', 'SMP Negeri 25', 'Jl. BB. I. Cipinang Muara', ' Cipinang Muara', 5, 'SMP'),
('16450062100014', 'SMP Negeri 52', 'Jl. Cipinang Elok', ' Cipinang Muara', 5, 'SMP'),
('16450062100015', 'SMP Negeri 26', 'Jl. Kebon Pala I', ' Kampung Melayu', 5, 'SMP'),
('16450062100016', 'SMP Negeri 62', 'Jl. Jatinegara Timur IV', ' Rawa Bunga', 5, 'SMP'),
('16450062100017', 'SMP Negeri 62 Terbuka', 'Jl. Jatinegara Timur IV', ' Rawa Bunga', 5, 'SMP'),
('16450062200001', 'SMP Cahaya Sakti', 'Jl. Otista I No. 11', ' Bali Mester', 5, 'SMP'),
('16450062200002', 'SMP Kartika X 1', 'Jl. Urip Soemoharjo 12', ' Bali Mester', 5, 'SMP'),
('16450062200003', 'SMP Karya 66', 'Jl. Jatinegara Timur 61 65', ' Bali Mester', 5, 'SMP'),
('16450062200004', 'SMP Kristen Berkat', 'Jl. Raya Jatinegara Timur 89', ' Bali Mester', 5, 'SMP'),
('16450062200005', 'SMP St. Vincentius', 'Jl. Otto Iskandardinata No. 76', ' Bidara Cina', 5, 'SMP'),
('16450062200006', 'PKBM JATINEGARA', 'Jl. Panca Warga 6', ' Cipinang Besar Selatan', 5, 'SMP'),
('16450062200007', 'SMP Budhis Silaparamita', 'Jl. Raya Cipinang Jaya No. I A', ' Cipinang Besar Selatan', 5, 'SMP'),
('16450062200008', 'SMP Darul Arqon', 'Jl. Bekasi Timur VI', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062200009', 'SMP Darul Mukminin', 'Jl. Matraman Raya No. 177', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062200010', 'SMP DCB Palad', 'Jl. Bekasi Timur IV/5', ' Cipinang Besar Utara', 5, 'SMP'),
('16450062200011', 'SMP Assalafy', 'Jl. Kebon Nanas Utara II', ' Cipinang Cempedak', 5, 'SMP'),
('16450062200012', 'SMP Cawang Baru', 'Jl. Cawang Baru No. 543', ' Cipinang Cempedak', 5, 'SMP'),
('16450062200013', 'SMP Cipta Karya', 'Jl. Cawang Baru No. 71', ' Cipinang Cempedak', 5, 'SMP'),
('16450062200014', 'SMP Dewi Sartika', 'Jl. Kebon Nanas Utara II/23', ' Cipinang Cempedak', 5, 'SMP'),
('16450062200015', 'SMP Integral Al Qalam', 'Jl. Cipinang Cempedak I No.14', ' Cipinang Cempedak', 5, 'SMP'),
('16450062200016', 'SMP Islam Annuriyyah', 'Jl. Kebon Nanas Selatan II Rt.', ' Cipinang Cempedak', 5, 'SMP'),
('16450062200017', 'PKBM Jauharul Wathon Paket B', 'Jl.T. No.4', ' Cipinang Muara', 5, 'SMP'),
('16450062200018', 'PKBM Khalifah Paket B', NULL, ' Cipinang Muara', 5, 'SMP'),
('16450062200019', 'SMP Muara Indonesia', 'Jl. Cipinang Muara III', ' Cipinang Muara', 5, 'SMP'),
('16450062200020', 'SMP Pandawa', 'Jl. Cipinang Muara 12', ' Cipinang Muara', 5, 'SMP'),
('16450062200021', 'PKBM Bunga Pala Paket B', 'Jl. Kebon Pala I Tanah Rendah', ' Kampung Melayu', 5, 'SMP'),
('16450062200022', 'SMP Advent VI', 'Jl. Jatinegara Barat 142 B', ' Kampung Melayu', 5, 'SMP'),
('16450062200023', 'SMP St. Maria Fatimah', 'Jl. Jatinegara Barat 122', ' Kampung Melayu', 5, 'SMP'),
('16450062200024', 'SMP St. Antonius', 'Jalan Panjaitan Kav. 46', ' Rawa Bunga', 5, 'SMP'),
('16450062200025', 'SMP YPMII', 'Jl. Masjid II no. 17 A Rawabun', ' Rawa Bunga', 5, 'SMP'),
('16450063100001', 'PKBM Fizar Paket C', 'Jl. Wedana Dalam No. 7', ' Bali Mester', 5, 'SMA'),
('16450063100002', 'SMA Negeri 100', 'Jl. Persatuan 2', ' Cipinang Besar Selatan', 5, 'SMA'),
('16450063100003', 'SMA Negeri 53', 'Jl. Cipinang Jaya 2b', ' Cipinang Besar Selatan', 5, 'SMA'),
('16450063100004', 'PKBM Pandu Pelajar Mandiri Paket C', 'Jl. Raya Bekasi Timur No. 170', ' Cipinang Besar Utara', 5, 'SMA'),
('16450063100005', 'PKBM Warga Mandiri Paket C', 'Jl. Raya Bekasi Timur No. 170', ' Cipinang Besar Utara', 5, 'SMA'),
('16450063100006', 'PKBM Asah Asih Asuh (A3) Paket C', 'Jl. Pembina I No. 2', ' Cipinang Muara', 5, 'SMA'),
('16450063100007', 'PKBM Sumbangsih Untuk Negeri', 'Jl. Mawar I E No. 14', ' Cipinang Muara', 5, 'SMA'),
('16450063100008', 'SMA Negeri 50', 'Jl. PLN CIPINANG MUARA 3', ' Cipinang Muara', 5, 'SMA'),
('16450063100009', 'SMA Negeri 54', 'Jl. Jatinegara Timur IV', ' Rawa Bunga', 5, 'SMA'),
('16450063200001', 'SMA Cahaya Sakti', 'Jl. Otista I No. 11', ' Bali Mester', 5, 'SMA'),
('16450063200002', 'SMA Kristen Berkat', 'Jl. Jatinegara Timur No. 89', ' Bali Mester', 5, 'SMA'),
('16450063200003', 'PKBM JATINEGARA', 'Jl. Panca Warga 6', ' Cipinang Besar Selatan', 5, 'SMA'),
('16450063200004', 'PKBM Paksi Safa Kawijayan Paket C', 'Cipinang Pulo Maja No. 28', ' Cipinang Besar Utara', 5, 'SMA'),
('16450063200005', 'PKBM Pemuda Creative Prima PaketC', 'Jl. DI Panjaitan Gang Remaja I', ' Cipinang Besar Utara', 5, 'SMA'),
('16450063200006', 'SMA Dewi Sartika YBW', 'Jl. Kebon Nanas Utara II/23', ' Cipinang Cempedak', 5, 'SMA'),
('16450063200007', 'SMA I Cawang Baru', 'Jl. Cawang Baru No. 543', ' Cipinang Cempedak', 5, 'SMA'),
('16450063200008', 'PKBM Bunga Pala Paket C', 'Jl. Kebon Pala I Tanah Rendah', ' Kampung Melayu', 5, 'SMA'),
('16450063200009', 'SMA Santo Antonius', 'Jl. DI. Panjaitan Kav. 46', ' Rawa Bunga', 5, 'SMA'),
('16450063200010', 'SMA Yake', 'Jl.Raya Jatinegara Timur No. 6', ' Rawa Bunga', 5, 'SMA'),
('16450064100001', 'SMK Negeri 46', 'Jl. B7 Cipinang Pulo', ' Cipinang Besar Utara', 5, 'SMK'),
('16450064100002', 'SMK Negeri 50', 'Jl. Cipinang Muara No. 1', ' Cipinang Muara', 5, 'SMK'),
('16450064200001', 'SMK Bhakti Pertiwi Jakarta', 'Jl. Bekasi Timur VI Cipinang B', ' Bali Mester', 5, 'SMK'),
('16450064200002', 'SMK Cahaya Sakti Jakarta', 'Jl. Otista 1 No. 11', ' Bali Mester', 5, 'SMK'),
('16450064200003', 'SMK YP Darul Mukminin Jakarta', 'Jl. Matraman Raya No. 177', ' Bali Mester', 5, 'SMK'),
('16450064200004', 'SMK Berlian Jakarta', 'Jl. Berlian No. 9A', ' Bidara Cina', 5, 'SMK'),
('16450064200005', 'SMK Hatawana Jakarta', 'Jl. Cipinang Besar Selatan No.', ' Cipinang Besar Selatan', 5, 'SMK'),
('16450064200006', 'SMK Multimedia Nusantara Jakarta', 'Jl. Cipinang Besar No. 2', ' Cipinang Besar Selatan', 5, 'SMK'),
('16450064200007', 'SMK Cawang Jakarta', 'Jl. Cawang Baru No. 71', ' Cipinang Cempedak', 5, 'SMK'),
('16450064200008', 'SMK Dewi Sartika', 'Jl. Kebon Nanas Utara II/23', ' Cipinang Cempedak', 5, 'SMK'),
('16450064200009', 'SMK Jakarta Timur 1', 'Jl. Cawang Baru No. 543', ' Cipinang Cempedak', 5, 'SMK'),
('16450064200010', 'SMK Pelayaran Bima Sakti', 'Jl. Cipinang Besar No. 2 Jatin', ' Cipinang Cempedak', 5, 'SMK'),
('16450064200011', 'SMK Muara Indonesia Jakarta', 'Jl. Cipinang Muara III Kav PLN', ' Cipinang Muara', 5, 'SMK'),
('16450064200012', 'SMK Pandawa Jakarta', 'Jl. Raya Cipinang Muara No. 12', ' Cipinang Muara', 5, 'SMK'),
('16460060100001', 'PAUD MEKAR CERIA PKBMNEGERI 12 TENGAH', 'Jl. Merpati I No. 1A Komplek P', ' Kampung Tengah', 6, 'TK'),
('16460060200001', 'TK Al Islamiyah', 'Jl. Balekambang Rt. 3/3 No. 1', ' Bale Kembang', 6, 'TK'),
('16460060200002', 'TK Rozy Islamic School', 'Jl. Raya Condet No. 5', ' Bale Kembang', 6, 'TK'),
('16460060200003', 'TK An Nur', 'Jl. M. Sarbini No. 61', ' Bale Kembang', 6, 'TK'),
('16460060200004', 'TK Babul Ilmi', 'Jl. Jembatan III No. 32', ' Bale Kembang', 6, 'TK'),
('16460060200005', 'TK Balekambang', 'Jl. Mesjid Al Mabruk Rt. 0012/', ' Bale Kembang', 6, 'TK'),
('16460060200006', 'TK Islam Amalia', 'Jl. Kayu Manis No.8', ' Bale Kembang', 6, 'TK'),
('16460060200007', 'TK Islam Baituth Tholibin', 'Jl. Kayu Manis Gg. Astawana No', ' Bale Kembang', 6, 'TK'),
('16460060200008', 'TK Nurul Hasanah', 'Jl. Raya Condet No. 5', ' Bale Kembang', 6, 'TK'),
('16460060200009', 'TK Al Ikhlas', 'Jl. Raya Tengah', ' Batu Ampar', 6, 'TK'),
('16460060200010', 'TK Al Mujahidin', 'Jl. Batu Ampar V', ' Batu Ampar', 6, 'TK'),
('16460060200011', 'TK Alkhairaat', 'Jl. Masjid Condet Rt.15/03', ' Batu Ampar', 6, 'TK'),
('16460060200012', 'TK Dwi Kartika', 'Jl. Batu Ampar III/24A', ' Batu Ampar', 6, 'TK'),
('16460060200013', 'TK Islam Al Faizin', 'Jl. Damiri No. 158', ' Batu Ampar', 6, 'TK'),
('16460060200014', 'TK Karunia', 'Jl. Duri Bulan', ' Batu Ampar', 6, 'TK'),
('16460060200015', 'TK Ratna Kusuma', 'Jl. Batu Ampar II No. 28', ' Batu Ampar', 6, 'TK'),
('16460060200016', 'TK Raudhatur Rahma', 'Jl. Batu Ampar I', ' Batu Ampar', 6, 'TK'),
('16460060200017', 'TK Si Mungil', 'Jl. Batu Ratna No. 32', ' Batu Ampar', 6, 'TK'),
('16460060200018', 'TK Harapan', 'Jl. Dewi Sartika No. 200', ' Cawang', 6, 'TK'),
('16460060200019', 'TK Raudhatul Jannah', 'Jl. Dewi Sartika Gg. Waru No.', ' Cawang', 6, 'TK'),
('16460060200020', 'TK Sartika', 'Jl. SMA 14 No. 31 Rt. 008/05', ' Cawang', 6, 'TK'),
('16460060200021', 'TKI Amanah', 'Jl. Dewi Sartika Rt. 07/6', ' Cawang', 6, 'TK'),
('16460060200022', 'TKI Mungil Sejahtera', 'Jl. Dewi Sartika No. 188', ' Cawang', 6, 'TK'),
('16460060200023', 'TK As Saadah', 'Jl. Raya Condet', ' Cililitan', 6, 'TK'),
('16460060200024', 'TK Bhakti Ibu', 'Jl. SMA XIV No. 22', ' Cililitan', 6, 'TK'),
('16460060200025', 'TK Bunda', 'Jl. SMA 114 Swadaya I No. 8', ' Cililitan', 6, 'TK'),
('16460060200026', 'TK Islam An Nashiriyah', 'Jl. Dewi Sartika No. 39', ' Cililitan', 6, 'TK'),
('16460060200027', 'TK Kartika XI 36', 'Jl. Komp. DiTKes AD', ' Cililitan', 6, 'TK'),
('16460060200028', 'TK Mambaul Ula', 'Jl. Dewi Sartika No. 7', ' Cililitan', 6, 'TK'),
('16460060200029', 'TK Mutiara', 'Jl. Cililitan Kecil Rt. 09/07', ' Cililitan', 6, 'TK'),
('16460060200030', 'TK Nurul Yaqin', 'Jl. Budaya', ' Cililitan', 6, 'TK'),
('16460060200031', 'TK Satu Atap Cililitan 01 Pg', 'Jl. Kumbang', ' Cililitan', 6, 'TK'),
('16460060200032', 'TK Trikari', 'Jl. Cililitan Besar I/13 Komp.', ' Cililitan', 6, 'TK'),
('16460060200033', 'TK Tunas Muda Islam', 'Jl. Olah Raga II No. 1', ' Cililitan', 6, 'TK'),
('16460060200034', 'TK Zsahara', 'Jl. Ciliwung Ujung No. 47', ' Cililitan', 6, 'TK'),
('16460060200035', 'TK Asah Pra Sekolah', 'Jl. Dukuh V Rt. 9/05', ' Dukuh', 6, 'TK'),
('16460060200036', 'TK Kuntum Suci I', 'Jl. Dukuh MAN VI', ' Dukuh', 6, 'TK'),
('16460060200037', 'TK Kuntum Suci II', 'Jl. Dukuh V Rt. 06/02', ' Dukuh', 6, 'TK'),
('16460060200038', 'TKI Riadhus Shalihin', 'Jl. Dukuh V/49 Kp. Dukuh', ' Dukuh', 6, 'TK'),
('16460060200039', 'PKBM Citra Nusa Bangsa', 'Jl. H. Ali I No. 53', ' Kampung Tengah', 6, 'TK'),
('16460060200040', 'TK Dirgahayu', 'Jl. Elang', ' Kampung Tengah', 6, 'TK'),
('16460060200041', 'TK Faturrachman', 'Jl. Karya', ' Kampung Tengah', 6, 'TK'),
('16460060200042', 'TK Islam Al Mawaddah', 'Jl. Mesjid Al Bariyah', ' Kampung Tengah', 6, 'TK'),
('16460060200043', 'TK islam Arrasis', 'Jl. Trikora 4 No. 246', ' Kampung Tengah', 6, 'TK'),
('16460060200044', 'TK Islam Permata Bunda', 'Jl. Tengah Gg. Pelita', ' Kampung Tengah', 6, 'TK'),
('16460060200045', 'TK Islam Terpadu Al Mudzaakarah', 'Jl. H. Baing No. 80', ' Kampung Tengah', 6, 'TK'),
('16460060200046', 'TK IT Ridwan', 'Jl. Gang Gading No.12', ' Kampung Tengah', 6, 'TK'),
('16460060200047', 'TK Kartika VIII 2', 'Jl. Rantai Mas Bulak Rantai', ' Kampung Tengah', 6, 'TK'),
('16460060200048', 'TK Mekar', 'Jl. Raya Bogor Km. 19', ' Kampung Tengah', 6, 'TK'),
('16460060200049', 'TK Permata', 'Jl. H. Taiman Ujung', ' Kampung Tengah', 6, 'TK'),
('16460060200050', 'TK Tunas Asih', 'Jl. Raya Inpres No. 1', ' Kampung Tengah', 6, 'TK'),
('16460060200051', 'TKI Al Hidayah', 'Jl. H. Naning', ' Kampung Tengah', 6, 'TK'),
('16460060200052', 'PKBM As Syifa PAUD', 'Jl. Raya Bogor KM. 20 No. 38', ' Kramat Jati', 6, 'TK'),
('16460060200053', 'TK Santo Markus', 'Jl. Kelapa Gading III/38', ' Kramat Jati', 6, 'TK'),
('16460060200054', 'TK Al Khairiyah Islamic Pre School', 'Jl. Batu Kinyang III No. 100', ' Kramat Jati', 6, 'TK'),
('16460060200055', 'TK Al Mukriyah', 'Jl. Nusa I No. 5', ' Kramat Jati', 6, 'TK'),
('16460060200056', 'TK Ananda', 'Jl. Cililitan Besar No.36', ' Kramat Jati', 6, 'TK'),
('16460060200057', 'TK Harapan I', 'Jl. Raya Bogor Km. 20', ' Kramat Jati', 6, 'TK'),
('16460060200058', 'TK Kartika X 18', 'Jl. Kodam Jaya Cililitan II', ' Kramat Jati', 6, 'TK'),
('16460060200059', 'TK Kartika X 12', 'Jl. Kompleks Pusdikes', ' Kramat Jati', 6, 'TK'),
('16460060200060', 'TK Kristina', 'Jl. Amil Wahab Rt. 08/09', ' Kramat Jati', 6, 'TK'),
('16460060200061', 'TK Permata Bunda', 'Jl. Al Amin No. 1', ' Kramat Jati', 6, 'TK'),
('16460060200062', 'TK Swasta Satu Atap Kramat Jati 25Pagi', 'Jl. Dato Tonggara V/1 Kramatja', ' Kramat Jati', 6, 'TK'),
('16460061100001', 'SDN Bale Kambang 01 Pg.', 'Jl. Munggang Gg. Rawa Elok', ' Bale Kembang', 6, 'SD'),
('16460061100002', 'SDN Bale Kambang 03 Pg.', 'Jl. Gardu Rt. 001/ 02', ' Bale Kembang', 6, 'SD'),
('16460061100003', 'SDN Batu Ampar 01 Pg.', 'Jl. Raya Bogor', ' Batu Ampar', 6, 'SD'),
('16460061100004', 'SDN Batu Ampar 02 Pg.', 'Jl. Batu Ampar III No.2', ' Batu Ampar', 6, 'SD'),
('16460061100005', 'SDN Batu Ampar 03 Pg.', 'Jl. Batu Ampar III', ' Batu Ampar', 6, 'SD'),
('16460061100006', 'SDN Batu Ampar 05 Pg.', 'Jl. SMPN 126', ' Batu Ampar', 6, 'SD'),
('16460061100007', 'SDN Batu Ampar 06 Pg.', 'Jl. Batu Jamrut', ' Batu Ampar', 6, 'SD'),
('16460061100008', 'SDN Batu Ampar 07 Pg.', 'Jl. SMPN 126', ' Batu Ampar', 6, 'SD'),
('16460061100009', 'SDN Batu Ampar 08 Pg.', 'Jl. Damai Rt. 007/ 03 No. 60', ' Batu Ampar', 6, 'SD'),
('16460061100010', 'SDN Batu Ampar 09 Pg.', 'Jl. Damai Rt. 007/ 03 No. 60', ' Batu Ampar', 6, 'SD'),
('16460061100011', 'SDN Batu Ampar 10 Pg.', 'Jl. SMPN 126', ' Batu Ampar', 6, 'SD'),
('16460061100012', 'SDN Batu Ampar 11 Pg.', 'Jl. Batu Ampar II No. 88', ' Batu Ampar', 6, 'SD'),
('16460061100013', 'SDN Batu Ampar 12 Pg.', 'Jl. Batu Ampar III', ' Batu Ampar', 6, 'SD'),
('16460061100014', 'SDN Batu Ampar 13 Pg.', 'Jl. Masjid Condet', ' Batu Ampar', 6, 'SD'),
('16460061100015', 'SDN Cawang 01 Pg.', 'Jl. Dewi Sartika No. 200', ' Cawang', 6, 'SD'),
('16460061100016', 'SDN Cawang 03 Pg.', 'Jl. TAMAN HARAPAN', ' Cawang', 6, 'SD'),
('16460061100017', 'SDN Cawang 04 Pg.', 'Jl. Jaani Nasir', ' Cawang', 6, 'SD'),
('16460061100018', 'SDN Cawang 05 Pg.', 'Jl. Dewi Sartika No. 200', ' Cawang', 6, 'SD'),
('16460061100019', 'SDN Cawang 07 Pg.', 'Jl. Ja''ani Nasir', ' Cawang', 6, 'SD'),
('16460061100020', 'SDN Cawang 08 Pg.', 'Jl. Ja''ani Nasir', ' Cawang', 6, 'SD'),
('16460061100021', 'SDN Cawang 09 Pg.', 'Jl. Mesjid Bendungan III', ' Cawang', 6, 'SD'),
('16460061100022', 'SDN Cawang 10 Pg.', 'Jl. Mesjid Bendungan', ' Cawang', 6, 'SD'),
('16460061100023', 'SDN Cawang 11 Pg.', 'Jl. Cawang III', ' Cawang', 6, 'SD'),
('16460061100024', 'SDN Cawang 12 Pg.', 'Cawang III', ' Cawang', 6, 'SD'),
('16460061100025', 'SDN Cawang 13 Pg.', 'Jl. Ja''ani Nasir', ' Cawang', 6, 'SD'),
('16460061100026', 'SDN Cawang 14 Pg.', 'Jln. Jaani Nasir', ' Cawang', 6, 'SD'),
('16460061100027', 'SDN Cililitan 01 Pg.', 'Jl. Kumbang No. 57', ' Cililitan', 6, 'SD'),
('16460061100028', 'SDN Cililitan 02 Pg.', 'Jl. Raya Condet Gg. Anggrek No', ' Cililitan', 6, 'SD'),
('16460061100029', 'SDN Cililitan 03 Pg.', 'Jl. Ciliwung Rt. 08/ 016', ' Cililitan', 6, 'SD'),
('16460061100030', 'SDN Dukuh 01 Pg.', 'Jl. Raya Pondok Gede', ' Dukuh', 6, 'SD'),
('16460061100031', 'SDN Dukuh 03 Pg.', 'Jl. Raya Pondok Gede Rt. 001/', ' Dukuh', 6, 'SD'),
('16460061100032', 'SDN Dukuh 04 Pg.', 'Jl. Dukuh V', ' Dukuh', 6, 'SD'),
('16460061100033', 'SDN Dukuh 05 Pg.', 'Jl. Dukuh V RT. 008/ 04', ' Dukuh', 6, 'SD'),
('16460061100034', 'SDN Dukuh 08 Pg.', 'Jl. Penggilingan Baru I', ' Dukuh', 6, 'SD'),
('16460061100035', 'SDN Dukuh 09 Pg.', 'Komp. BHP Rt. 005/ 06', ' Dukuh', 6, 'SD'),
('16460061100036', 'PKBM Citra Nusa BangsaPaket A', 'Jl. H. Ali I No. 53', ' Kampung Tengah', 6, 'SD'),
('16460061100037', 'PKBM NEGERI 12 TENGAH', 'Jl. Merpati I No. 1A Komplek P', ' Kampung Tengah', 6, 'SD'),
('16460061100038', 'SDN Kampung Tengah 01 Pg.', 'Jl. Inpres No. 64', ' Kampung Tengah', 6, 'SD'),
('16460061100039', 'SDN Kampung Tengah 02 Pg.', 'Jl. Inpres No. 64', ' Kampung Tengah', 6, 'SD'),
('16460061100040', 'SDN Kampung Tengah 03 Pg.', 'Jl. Rantai Perak Rt. 004/05', ' Kampung Tengah', 6, 'SD'),
('16460061100041', 'SDN Kampung Tengah 05 Pg.', 'Jl. Pelita', ' Kampung Tengah', 6, 'SD'),
('16460061100042', 'SDN Kampung Tengah 06 Pg.', 'Jl. Haji Ali', ' Kampung Tengah', 6, 'SD'),
('16460061100043', 'SDN Kampung Tengah 07 Pg.', 'Jl. Trikora IV', ' Kampung Tengah', 6, 'SD'),
('16460061100044', 'SDN Kampung Tengah 08 Pg.', 'Jl. Pasar Induk', ' Kampung Tengah', 6, 'SD'),
('16460061100045', 'SDN Kampung Tengah 09 Pg.', 'Jl. Haji Ali', ' Kampung Tengah', 6, 'SD'),
('16460061100046', 'SDN Kramat Jati 01 Pg.', 'Jl. Mesjid Al Amin', ' Kramat Jati', 6, 'SD'),
('16460061100047', 'SDN Kramat Jati 02 Pg.', 'Jl. Batu Tumbuh', ' Kramat Jati', 6, 'SD'),
('16460061100048', 'SDN Kramat Jati 03 Pg.', 'Jl. Masjid Al Ihsan', ' Kramat Jati', 6, 'SD'),
('16460061100049', 'SDN Kramat Jati 07 Pg.', 'Jl. R. S. Polri Sukanto', ' Kramat Jati', 6, 'SD'),
('16460061100050', 'SDN Kramat Jati 09 Pg.', 'Jl. Mesjid Al Ikhsan', ' Kramat Jati', 6, 'SD'),
('16460061100051', 'SDN Kramat Jati 11 Pg.', 'Jl. Nusa I', ' Kramat Jati', 6, 'SD'),
('16460061100052', 'SDN Kramat Jati 12 Pg.', 'Jl. Nusa I', ' Kramat Jati', 6, 'SD'),
('16460061100053', 'SDN Kramat Jati 13 Pg.', 'Jl. R.S. Polri Sukanto', ' Kramat Jati', 6, 'SD'),
('16460061100054', 'SDN Kramat Jati 16 Pg.', 'Jl. Langgar', ' Kramat Jati', 6, 'SD'),
('16460061100055', 'SDN Kramat Jati 18 Pg.', 'Jl. Langgar Rt. 008/ 010', ' Kramat Jati', 6, 'SD'),
('16460061100056', 'SDN Kramat Jati 19 Pg.', 'Jl. BB Pasar Hek', ' Kramat Jati', 6, 'SD'),
('16460061100057', 'SDN Kramat Jati 24 Pg.', 'Jl. Kerja Bakti', ' Kramat Jati', 6, 'SD'),
('16460061100058', 'SDN Kramat Jati 25 Pg.', 'Jl. Dato Tonggara', ' Kramat Jati', 6, 'SD'),
('16460061100059', 'SDN Kramat Jati 27 Pg.', 'Jl. Kerja Bakti', ' Kramat Jati', 6, 'SD'),
('16460061200001', 'PKBM Gema Prestasi Paket A Bale Kembang', NULL, NULL, 6, 'SD'),
('16460061200002', 'SDS Al Fathiyah', 'Jl. Pucung No. 14 A', ' Bale Kembang', 6, 'SD'),
('16460061200003', 'SDS Global Islamic School', 'Jl. Raya Condet No. 5', ' Bale Kembang', 6, 'SD'),
('16460061200004', 'SDS Hudatul K.', 'Jl. Mesjid Al Mabruk', ' Bale Kembang', 6, 'SD'),
('16460061200005', 'SDIT Al Khairaat', 'Jl. Mesjid Condet', ' Batu Ampar', 6, 'SD'),
('16460061200006', 'SDS Teladan YPKUI Pg.', 'Jl. Raya Condet No. 28', ' Batu Ampar', 6, 'SD'),
('16460061200007', 'SDS Al Ikhlash', 'Jl. Dewi Sartika No. 200', ' Cawang', 6, 'SD'),
('16460061200008', 'SDS Harapan Prestasi', 'Jl. Dewi Sartika No. 293A', ' Cawang', 6, 'SD'),
('16460061200009', 'SDIT As Sa''adah Condet', 'Jl. Raya Condet No.63', ' Cililitan', 6, 'SD'),
('16460061200010', 'SDS Islam Mambaul Ulum', 'Jl. Dewi Sartika No. 07', ' Cililitan', 6, 'SD'),
('16460061200011', 'SDS Kresna', 'Jl. Mandala V Rt. 007/ 03', ' Cililitan', 6, 'SD'),
('16460061200012', 'SDS Muhammadiyah 4', 'Jl. Dewi Sartika 316.A', ' Cililitan', 6, 'SD'),
('16460061200013', 'SDS Nurul Yaqin', 'Jalan Budaya', ' Cililitan', 6, 'SD'),
('16460061200014', 'SDS Tunas Muda Islam', 'Jl. Olah Raga II No. 1', ' Cililitan', 6, 'SD'),
('16460061200015', 'SDIT Buah Hati', 'Jl. H. Baing No. 99 Rt. 11/04', ' Kampung Tengah', 6, 'SD'),
('16460061200016', 'SDS Kartika VIII 2', 'Jl. Rantai Emas Bulak Rantai', ' Kampung Tengah', 6, 'SD'),
('16460061200017', 'PKBM Al Amin Paket A', 'Jl. Batu Tumbuh No. 67', ' Kramat Jati', 6, 'SD'),
('16460061200018', 'PKBM As Syifa Paket A', 'Jl. Raya Bogor KM. 20 No. 38', ' Kramat Jati', 6, 'SD'),
('16460061200019', 'SDS Santo Markus', 'Jl. Kelapa Gading III/38', ' Kramat Jati', 6, 'SD'),
('16460062100001', 'SMP Negeri 35', 'Jl.Kayu Manis Gg.Kh.Raiman 71B', ' Bale Kembang', 6, 'SMP'),
('16460062100002', 'SMP Negeri 126', 'Jl. SMP 126', ' Batu Ampar', 6, 'SMP'),
('16460062100003', 'SMP Negeri 24', 'Jl. Dukuh V', ' Dukuh', 6, 'SMP'),
('16460062100004', 'SMP Negeri 263', 'Jl. Dukuh V', ' Dukuh', 6, 'SMP'),
('16460062100005', 'PKBM Citra Nusa Bangsa PaketB', 'Jl. H. Ali I No. 53', ' Kampung Tengah', 6, 'SMP'),
('16460062100006', 'PKBM NEGERI 12 TENGAH', 'Jl. Merpati I No. 1A Komplek P', ' Kampung Tengah', 6, 'SMP'),
('16460062100007', 'SMP Negeri 20 Terbuka', 'Jl. Rantai Mas KPAD Bulak Rant', ' Kampung Tengah', 6, 'SMP'),
('16460062100008', 'SMP Negeri 209', 'Jl. Pelita', ' Kampung Tengah', 6, 'SMP'),
('16460062100009', 'SMP Negeri 150', 'Jl. Batu Tumbuh VII', ' Kramat Jati', 6, 'SMP'),
('16460062100010', 'SMP Negeri 20', 'Jl. Komp. Bulak Rantai', ' Kramat Jati', 6, 'SMP'),
('16460062100011', 'SMP Negeri 281', 'Jl. Kerja Bakti No. 1', ' Kramat Jati', 6, 'SMP'),
('16460062100012', 'SMP Negeri 49', 'Jl. Raya Bogor Km. 20', ' Kramat Jati', 6, 'SMP'),
('16460062100013', 'SMP Negeri 50', 'Jl. Nusa I', ' Kramat Jati', 6, 'SMP'),
('16460062200001', 'PKBM Gema Prestasi Paket B Bale Kembang', NULL, NULL, 6, 'SMP'),
('16460062200002', 'SMP Alfathiyah', 'Jl. Pucung No. 14', ' Bale Kembang', 6, 'SMP'),
('16460062200003', 'SMP Global Islamic School', 'Jl.Condet Raya No.5', ' Bale Kembang', 6, 'SMP'),
('16460062200004', 'SMP Al Khairaat', 'Jl. Masjid Al Khairaat N0. 44', ' Batu Ampar', 6, 'SMP'),
('16460062200005', 'SMP YPKUI', 'Jl. Raya Condet No.28', ' Batu Ampar', 6, 'SMP'),
('16460062200006', 'SMP Marsudirini', 'Jl.Dewi Sartika No.186 A', ' Cawang', 6, 'SMP'),
('16460062200007', 'SMP Muhamadiyah 4', 'Jl. Dewi Sartika No. 316', ' Cawang', 6, 'SMP'),
('16460062200008', 'SMP Nasional', 'Jl. smea 6 no. 53', ' Cawang', 6, 'SMP'),
('16460062200009', 'SMP Taman Harapan', 'Jl. Dewi Sartika No.200', ' Cawang', 6, 'SMP'),
('16460062200010', 'SMP Trampil', 'Jl. Olah Raga II', ' Cililitan', 6, 'SMP'),
('16460062200011', 'SMP Trisoko', 'Jl. Raya Pondok Gede', ' Dukuh', 6, 'SMP'),
('16460062200012', 'PKBM Al Amin Paket B', 'Jl. Batu Tumbuh No. 67', ' Kramat Jati', 6, 'SMP'),
('16460062200013', 'PKBM As Syifa Paket B', 'Jl. Raya Bogor KM. 20 No. 38', ' Kramat Jati', 6, 'SMP'),
('16460062200014', 'SMP Budi Warman', 'Jl. Langgar', ' Kramat Jati', 6, 'SMP'),
('16460062200015', 'SMP Santo Markus', 'Jl. Kelapa Gading III', ' Kramat Jati', 6, 'SMP'),
('16460063100001', 'SMA Negeri 51', 'Jl. Batu Ampar III', ' Batu Ampar', 6, 'SMA'),
('16460063100002', 'SMA Negeri 14', 'Jl. SMA Barat', ' Cililitan', 6, 'SMA'),
('16460063100003', 'PKBM Citra Nusa Bangsa Paket C', 'Jl. H. Ali I No. 53', ' Kampung Tengah', 6, 'SMA'),
('16460063100004', 'PKBM NEGERI 12 TENGAH', 'Jl. Merpati I No. 1A Komplek P', ' Kampung Tengah', 6, 'SMA'),
('16460063100005', 'SMA Negeri 93', 'Jl. Raya Bogor Komplek Paspamp', ' Kampung Tengah', 6, 'SMA'),
('16460063100006', 'SMA Negeri 62', 'Jl. Raya Bogor Km. 20', ' Kramat Jati', 6, 'SMA'),
('16460063200001', 'SMA Adi Luhur', 'Jl. Condet Raya No.4', ' Bale Kembang', 6, 'SMA'),
('16460063200002', 'SMA Global Islamic School', 'Jl Condet Raya No 5', ' Bale Kembang', 6, 'SMA'),
('16460063200003', 'SMA Muhammadiyah 4', 'Jl. Dewi Sartika No.316a', ' Cawang', 6, 'SMA'),
('16460063200004', 'SMA Trampil II', 'Jl. Olahraga 2 Condet', ' Cililitan', 6, 'SMA'),
('16460063200005', 'SMA Trisoko', 'Jl. Raya Pondok Gede', ' Dukuh', 6, 'SMA'),
('16460063200006', 'PKBM Al Amin Paket C', 'Jl. Batu Tumbuh No. 67', ' Kramat Jati', 6, 'SMA'),
('16460063200007', 'PKBM As Syifa Paket C', 'Jl. Raya Bogor KM. 20 No. 38', ' Kramat Jati', 6, 'SMA'),
('16460063200008', 'SMA Budhi Warman 1', 'Jl. Raya Bogor Km.19', ' Kramat Jati', 6, 'SMA'),
('16460064100001', 'SMK Negeri 10', 'Jl. SMEA 6 Mayjend Sutoyo', ' Cawang', 6, 'SMK'),
('16460064200001', 'SMK Adi Luhur 1 (Pariwisata)', 'Jl. Raya Condet No. 4', ' Bale Kembang', 6, 'SMK'),
('16460064200002', 'SMK Adi Luhur 2 Jakarta', 'Jl. Raya Condet No. 4', ' Bale Kembang', 6, 'SMK'),
('16460064200003', 'SMK Al Fathiyah Jakarta', 'Jl. Manunggal 13 No. 28', ' Bale Kembang', 6, 'SMK'),
('16460064200004', 'SMK Bina Prestasi', 'Jl. Raya Condet No. 28', ' Batu Ampar', 6, 'SMK'),
('16460064200005', 'SMK Rahayu Mulyo', 'Jl. Raya Bogor', ' Batu Ampar', 6, 'SMK'),
('16460064200006', 'SMK Nasional', 'Jl. SMEA 6 No. 53', ' Cawang', 6, 'SMK'),
('16460064200007', 'SMK Pelayaran Santa Lusiana', 'Jl. Dewi Sartika Gang Masjid B', ' Cawang', 6, 'SMK'),
('16460064200008', 'SMK Mardhika', 'Jl. Raya Condet No.63', ' Cililitan', 6, 'SMK'),
('16460064200009', 'SMK Trampil', 'Jl. Olah Raga 2', ' Cililitan', 6, 'SMK'),
('16460064200010', 'SMK KRAMAT JATI', 'Jl.Dukuh V No.1A', ' Dukuh', 6, 'SMK'),
('16460064200011', 'SMK Mahadhika 2', 'Jl. Penggilingan Baru I No.39', ' Dukuh', 6, 'SMK'),
('16460064200012', 'SMK Nasional Alfan', 'Jl. Dukuh V No.1A', ' Dukuh', 6, 'SMK'),
('16460064200013', 'SMK Nusantara Wisata Respati', 'Jl. Raya Inpres', ' Kampung Tengah', 6, 'SMK'),
('16460064200014', 'SMK Respati I', 'Jl. Inpres', ' Kampung Tengah', 6, 'SMK'),
('16460064200015', 'SMK Respati II', 'Jl. Inpres', ' Kampung Tengah', 6, 'SMK'),
('16460064200016', 'SMK Budhi Warman 1 Jakarta', 'Jl. Raya Bogor Km. 19', ' Kramat Jati', 6, 'SMK'),
('16460064200017', 'SMK Teknik 10 Nopember', 'Jl. Raya Bogor No. 1', ' Kramat Jati', 6, 'SMK'),
('16470060100001', 'PAUD KUNTUM MEKAR PKBM 28', 'Jl. Jengki Raya No. 11', ' Kebon Pala', 7, 'TK'),
('16470060100002', 'PKBM Negeri 22 Makasar PAUD', 'Jln. PLK II No. 24', ' Makasar', 7, 'TK'),
('16470060200001', 'TK Al Ikhsan', 'Jl. Seulawah Raya P.6 Komp War', ' Cipinang Melayu', 7, 'TK'),
('16470060200002', 'TK Budi Bakti', 'Jl. Nurul Kena Iman', ' Cipinang Melayu', 7, 'TK'),
('16470060200003', 'TK Budi Harapan', 'Jl. Kesenian', ' Cipinang Melayu', 7, 'TK'),
('16470060200004', 'TK Islam Baiturrahim', 'Jl. Pangkalan Jati I/12', ' Cipinang Melayu', 7, 'TK'),
('16470060200005', 'TK Islam Bakti IV', 'Jl. Cipinang Melayu No.36', ' Cipinang Melayu', 7, 'TK'),
('16470060200006', 'TK Islam Kartini', 'Jl. Sulaiman No. 41', ' Cipinang Melayu', 7, 'TK'),
('16470060200007', 'TK Islam Salsabila', 'Jalan Jagur 1 No. 10', ' Cipinang Melayu', 7, 'TK'),
('16470060200008', 'TK Islam Sartika', 'Jl. Manunggal Raya', ' Cipinang Melayu', 7, 'TK'),
('16470060200009', 'TK Kartika X 17', 'Jl. Bazoka', ' Cipinang Melayu', 7, 'TK'),
('16470060200010', 'TK Nurhuda', 'Jl. Harapan V/1', ' Cipinang Melayu', 7, 'TK'),
('16470060200011', 'TK Nurul Komar', 'Jl. Pangkalan Jati VII', ' Cipinang Melayu', 7, 'TK'),
('16470060200012', 'TK Pilar Bangsa', 'Jl. Jatiwaringin Raya No. 8', ' Cipinang Melayu', 7, 'TK'),
('16470060200013', 'TK Angkasa 2', 'Jl. Elang Komp. Rajawali', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200014', 'TK Angkasa 3', 'Jl. Mustang No 1 komp Skadron', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200015', 'TK Angkasa 4', 'Jl. Suhadi', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200016', 'TK Angkasa 5', 'Jl. Angkasa I No. 109', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200017', 'TK Angkasa 6', 'Jl. Permadi Dirgantara I', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200018', 'TK Angkasa 7', 'Jl. Banowati', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200019', 'TK Angkasa 8', 'Jl. Raya Pondok Gede', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200020', 'TK Angkasa I', 'Jl. Rajawali Raya', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200021', 'TK Asri', 'Jl. Asri No. 41', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200022', 'TK Ceria', 'Jl. Komodor Udara Halim PK', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200023', 'TK Hidayatul Firdaus', 'Jl. Komodor No. 1', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200024', 'TK Islam Ar Rahman', 'Jl. Skadron No. 57', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200025', 'TK Mekar Indah', 'Jl. Skadron N0. 14', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200026', 'TK Mitra', 'Jl. Skadron No.16', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200027', 'TK Nurul Ikhwan', 'Jl. Asri No. 6', ' Halim Perdana Kusumah', 7, 'TK'),
('16470060200028', 'TK Citra', 'Jl. Udayana No. 1', ' Kebon Pala', 7, 'TK'),
('16470060200029', 'TK Islam Al Badriyah', 'Jl. Raya Komodor Udara Halim P', ' Kebon Pala', 7, 'TK'),
('16470060200030', 'TK Islam Insan Madani', 'Jl. Perindustrian V No. 43', ' Kebon Pala', 7, 'TK'),
('16470060200031', 'TK Islam Sahabat', 'Jln.Sahabat No.32', ' Kebon Pala', 7, 'TK'),
('16470060200032', 'TK Melati', 'Jl. Melati', ' Kebon Pala', 7, 'TK'),
('16470060200033', 'TK Pelita', 'Jl. Permata No. 20', ' Kebon Pala', 7, 'TK'),
('16470060200034', 'TK An Nuriyah', 'Jl. Pinang Ranti No.22', ' Makasar', 7, 'TK'),
('16470060200035', 'TK Islam Al Amanah', 'Jl. Pusdiklat Depnaker Rt. 010', ' Makasar', 7, 'TK'),
('16470060200036', 'TK Islam Asy Syifa', 'Jl. Cililitan Besar No. 2', ' Makasar', 7, 'TK'),
('16470060200037', 'TK Islam At Taqwa', 'Jl. KOMODOR UDARA HALIM GG.MAW', ' Makasar', 7, 'TK'),
('16470060200038', 'TK Lebah Kecil', 'Jl. AMD XII Rt. 004/02', ' Makasar', 7, 'TK'),
('16470060200039', 'TK Mutiara', 'Jl. Pusdiklat Depnaker No. 27', ' Makasar', 7, 'TK'),
('16470060200040', 'TK Purwarini', 'Jl. Kudin No. 25 A', ' Makasar', 7, 'TK'),
('16470060200041', 'TK Yudha', 'Jl. Kerja Bakti No. 30', ' Makasar', 7, 'TK'),
('16470060200042', 'TK Ar Rahmah', 'Jl. SMA Negeri 48', ' Pinang Ranti', 7, 'TK'),
('16470060200043', 'TK Ar Rini', 'Jl. Raya Pondok Gede No. 24', ' Pinang Ranti', 7, 'TK'),
('16470060200044', 'TK Baitul Rahim', 'Jl. Kp. Pulo', ' Pinang Ranti', 7, 'TK'),
('16470061100001', 'SDN Cipinang Melayu 01 Pg.', 'Jl. Trikora III Halim Perdana', ' Cipinang Melayu', 7, 'SD'),
('16470061100002', 'SDN Cipinang Melayu 03 Pg.', 'Jl. Kartika Eka PAksi KPAD KOD', ' Cipinang Melayu', 7, 'SD'),
('16470061100003', 'SDN Cipinang Melayu 04 Pg.', 'Jl. KARTIKA EKA PAKSI', ' Cipinang Melayu', 7, 'SD'),
('16470061100004', 'SDN Cipinang Melayu 05 Pg.', 'Jl. INSPEKSI TARUM BARAT', ' Cipinang Melayu', 7, 'SD'),
('16470061100005', 'SDN Cipinang Melayu 07 Pg.', 'Jl. Inspeksi Tarum Barat no.11', ' Cipinang Melayu', 7, 'SD'),
('16470061100006', 'SDN Cipinang Melayu 08 Pg.', 'Jl. Inspeksi Tarum Barat No.11', ' Cipinang Melayu', 7, 'SD'),
('16470061100007', 'SDN Cipinang Melayu 09 Pg.', 'Jl. Elang Thainesia Komp. Auri', ' Cipinang Melayu', 7, 'SD'),
('16470061100008', 'SDN Cipinang Melayu 10 Pg.', 'Jl. Elang Thainesia', ' Cipinang Melayu', 7, 'SD'),
('16470061100009', 'SDN Cipinang Melayu 12 Pt.', 'Jl. KARTIKA EKA PAKSI', ' Cipinang Melayu', 7, 'SD'),
('16470061100010', 'SDN Halim 01 Pg.', 'Jl. Halim Golf Kp. Baru', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061100011', 'PKBM NEGERI 28 KEBON PALA', 'Jl. Jengki Raya No. 11', ' Kebon Pala', 7, 'SD'),
('16470061100012', 'SDN Kebon Pala 01 Pg.', 'Jl. Cakrawala No. 1', ' Kebon Pala', 7, 'SD'),
('16470061100013', 'SDN Kebon Pala 02 Pg.', 'Jl. CAKRAWALA NO. 1', ' Kebon Pala', 7, 'SD'),
('16470061100014', 'SDN Kebon Pala 03 Pg.', 'Jl. Jengki Cipinang Asem, No.', ' Kebon Pala', 7, 'SD'),
('16470061100015', 'SDN Kebon Pala 04 Pg.', 'Jl. Jengki No. 4 Cipinang Asem', ' Kebon Pala', 7, 'SD'),
('16470061100016', 'SDN Kebon Pala 05 Pg.', 'Jl. JENGKI CIPINANG ASEM NO. 2', ' Kebon Pala', 7, 'SD'),
('16470061100017', 'SDN Kebon Pala 06 Pt.', 'Jl. Jengki No. 3 Cipinang Asem', ' Kebon Pala', 7, 'SD'),
('16470061100018', 'SDN Kebon Pala 07 Pg.', 'Jl. Permata Gg. Sami', ' Kebon Pala', 7, 'SD'),
('16470061100019', 'SDN Kebon Pala 09 Pg.', 'Jl. Permata Gg. Sami', ' Kebon Pala', 7, 'SD'),
('16470061100020', 'SDN Kebon Pala 11 Pg.', 'Jl. SD Inpres No.28', ' Kebon Pala', 7, 'SD'),
('16470061100021', 'SDN Kebon Pala 12 Pg.', 'Jl. SD Inpres No.48', ' Kebon Pala', 7, 'SD'),
('16470061100022', 'SDN Kebon Pala 13 Pg.', 'Jl. SD Inpres No.28', ' Kebon Pala', 7, 'SD'),
('16470061100023', 'SDN Kebon Pala 14 Pg.', 'Jl. SD Inpres', ' Kebon Pala', 7, 'SD'),
('16470061100024', 'SDN Kebon Pala 15 Pg.', 'Jl. SD Inpres', ' Kebon Pala', 7, 'SD'),
('16470061100025', 'PKBM Negeri 22 Makasar Paket A', 'Jln. PLK II No. 24', ' Makasar', 7, 'SD'),
('16470061100026', 'SDN Makasar 01 Pg.', 'Jl. Kerja Bakti', ' Makasar', 7, 'SD'),
('16470061100027', 'SDN Makasar 02 Pt.', 'Jl. Kerja Bakti', ' Makasar', 7, 'SD'),
('16470061100028', 'SDN Makasar 03 Pg.', 'Jl. Kerja Bakti', ' Makasar', 7, 'SD'),
('16470061100029', 'SDN Makasar 05 Pg.', 'Jl. Depnaker Rt. 10/ 05', ' Makasar', 7, 'SD'),
('16470061100030', 'SDN Makasar 06 Pg.', 'Jl. Pusdiklat Depnaker No. 1', ' Makasar', 7, 'SD'),
('16470061100031', 'SDN Makasar 07 Pg.', 'Jl. Pusdik Depnaker', ' Makasar', 7, 'SD'),
('16470061100032', 'SDN Makasar 08 Pg.', 'Jl. Masjid Al Munir', ' Makasar', 7, 'SD'),
('16470061100033', 'SDN Makasar 09 Pg.', 'Jl. Masjid Al Munir', ' Makasar', 7, 'SD'),
('16470061100034', 'SDN Pinang Ranti 01 Pg.', 'Jl. Taman Mini Pintu II', ' Pinang Ranti', 7, 'SD'),
('16470061100035', 'SDN Pinang Ranti 02 Pg.', 'Jl. Pinang Ranti I', ' Pinang Ranti', 7, 'SD'),
('16470061100036', 'SDN Pinang Ranti 03 Pt.', 'Jl. Asem Nirbaya', ' Pinang Ranti', 7, 'SD'),
('16470061100037', 'SDN Pinang Ranti 04 Pg.', 'Jl. Kelurahan Pinang Ranti', ' Pinang Ranti', 7, 'SD'),
('16470061100038', 'SDN Pinang Ranti 05 Pg.', 'Jl. Pinang Ranti II', ' Pinang Ranti', 7, 'SD'),
('16470061100039', 'SDN Pinang Ranti 07 Pg.', 'Jl. Pinang Ranti II', ' Pinang Ranti', 7, 'SD'),
('16470061100040', 'SDN Pinang Ranti 08 Pg.', 'Jl. Pinang Ranti II', ' Pinang Ranti', 7, 'SD'),
('16470061100041', 'SDN Pinang Ranti 09 Pg.', 'Kp. Pulo', ' Pinang Ranti', 7, 'SD'),
('16470061200001', 'PKBM Bina Madya Paket A', 'Jln. Pangkalan Jati IV No. 47', ' Cipinang Melayu', 7, 'SD'),
('16470061200002', 'SDI Ar Rofi''iyyah', 'Jl. H. Sulaiman No. 40', ' Cipinang Melayu', 7, 'SD'),
('16470061200003', 'SDS Al Hayati Diniyah', 'Jl. Masjid Al Muqarrobin', ' Cipinang Melayu', 7, 'SD'),
('16470061200004', 'SDS Jakarta Islamic School', 'Jl. Manunggal I No.17', ' Cipinang Melayu', 7, 'SD'),
('16470061200005', 'SDS Kartika X 7', 'KPADJl. Pomad No.1', ' Cipinang Melayu', 7, 'SD'),
('16470061200006', 'SDS Pilar Bangsa', 'Jl. Jatiwaringin Raya No. 8', ' Cipinang Melayu', 7, 'SD'),
('16470061200007', 'SDS Yayasan Budi Harapan', 'Jl. Budi Harapan 11 13', ' Cipinang Melayu', 7, 'SD'),
('16470061200008', 'SDS Angkasa 1', 'Jl. Raya Rajawali', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200009', 'SDS Angkasa 10', 'Jl. Cendrawasih Komplek Rajawa', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200010', 'SDS Angkasa 12', 'Jl. Gatot Kaca Dirgantara II', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200011', 'SDS Angkasa 3', 'Jl. Mustang Komp. Skadron', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200012', 'SDS Angkasa 4', 'Jl. Gatot Kaca Dirgantara II', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200013', 'SDS Angkasa 5', 'Jl. Marsma Hardadi MS. Halim P', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200014', 'SDS Angkasa 7', 'Jl. Kayatun Komp. Trikora', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200015', 'SDS Angkasa 9', 'Jl. Gatot Kaca Dirgantara II', ' Halim Perdana Kusumah', 7, 'SD'),
('16470061200016', 'SDS Cililitan II', 'Jl. Cililitan Besar', ' Kebon Pala', 7, 'SD'),
('16470061200017', 'SDS Panca Bhakti', 'Jl. Kerja Bakti No. 30', ' Makasar', 7, 'SD'),
('16470061200018', 'SDS Pelita', 'Jl. Permata No. 19', ' Makasar', 7, 'SD'),
('16470062100001', 'SMP Negeri 109', 'Jl. Kesehatan No.105', ' Cipinang Melayu', 7, 'SMP'),
('16470062100002', 'SMP Negeri 128', 'Jl. Herkules Komplek Skadron', ' Halim PerdanaKusumah', 7, 'SMP'),
('16470062100003', 'SMP Negeri 214', 'Jl. Rajawali', ' Halim PerdanaKusumah', 7, 'SMP'),
('16470062100004', 'SMP Negeri 80', 'Jl. Kayatun Kayatun Trikora Ha', ' Halim PerdanaKusumah', 7, 'SMP'),
('16470062100005', 'PKBM NEGERI 28 KEBONPALA', 'Jl. Jengki Raya No. 11', ' Kebon Pala', 7, 'SMP'),
('16470062100006', 'SMP Negeri 268', 'Jl. SD Inpres', ' Kebon Pala', 7, 'SMP'),
('16470062100007', 'SMP Negeri 275', 'Jl. Jengki Cipinang Asem', ' Kebon Pala', 7, 'SMP'),
('16470062100008', 'PKBM Negeri 22 MakasarPaket B', 'Jln. PLK II No. 24', ' Makasar', 7, 'SMP'),
('16470062100009', 'SMP Negeri 287', 'Jl. Sarbini I', ' Pinang Ranti', 7, 'SMP'),
('16470062100010', 'SMP Putera Jaya Plus', 'Jl. Damai No. 54', ' Pinang Ranti', 7, 'SMP'),
('16470062200001', 'PKBM Bina Madya Paket B', 'Jln. Pangkalan Jati IV No. 47', ' Cipinang Melayu', 7, 'SMP'),
('16470062200002', 'SMP Budi Harapan', 'Jl. BUDI HARAPAN NO 11 13', ' Cipinang Melayu', 7, 'SMP'),
('16470062200003', 'SMP Dharma Surya', 'Jl. Pangkalan Jati IV No.47', ' Cipinang Melayu', 7, 'SMP'),
('16470062200004', 'SMP Jakarta Islamic School', 'Jl. Manunggal I Kodam Kalimala', ' Cipinang Melayu', 7, 'SMP'),
('16470062200005', 'SMP PGRI 45', 'Jl. Inspeksi Taruna Barat', ' Cipinang Melayu', 7, 'SMP'),
('16470062200006', 'SMP Pilar Bangsa', 'Jl. Jatiwaringin Raya No. 8', ' Cipinang Melayu', 7, 'SMP'),
('16470062200007', 'SMP Angkasa', 'Jl. Surtikanti', ' Halim PerdanaKusumah', 7, 'SMP'),
('16470062200008', 'SMP Bhakti', 'Jl. Perindustrian No.7 Cawang', ' Kebon Pala', 7, 'SMP'),
('16470062200009', 'SMP Perdana kusuma', 'Jl. Halim Perdana Kusuma No. 1', ' Kebon Pala', 7, 'SMP'),
('16470062200010', 'SMP PGRI 48', 'Jl. Komodor Halim', ' Kebon Pala', 7, 'SMP'),
('16470062200011', 'SMP Yamas', 'Jl. Pusdiklat Depnaker', ' Makasar', 7, 'SMP'),
('16470062200012', 'SMP Uswatun Hasanah', 'Jl. Raya Depnaker no 2', ' Pinang Ranti', 7, 'SMP'),
('16470063100001', 'SMA Negeri 81', 'Jl. Kartika Eka Paksi KPAD Ja', ' Cipinang Melayu', 7, 'SMA'),
('16470063100002', 'SMA Negeri 42', 'Jl. Rajawali', ' Halim Perdana Kusumah', 7, 'SMA'),
('16470063100003', 'SMA Negeri 67', 'Jl. Skadron Halim Perdanakusum', ' Halim Perdana Kusumah', 7, 'SMA'),
('16470063100004', 'PKBM NEGERI 28 KEBON PALA', 'Jl. Jengki Raya No. 11', ' Kebon Pala', 7, 'SMA'),
('16470063100005', 'SMA Negeri 9', 'Jl. SMU Negeri 9', ' Kebon Pala', 7, 'SMA'),
('16470063100006', 'PKBM Negeri 22 Makasar Paket C', 'Jln. PLK II No. 24', ' Makasar', 7, 'SMA'),
('16470063100007', 'SMA Negeri 48', 'Jl. Pinang Ranti II No.1', ' Pinang Ranti', 7, 'SMA'),
('16470063200001', 'SMA Jakarta Islamic School', 'Jl. Manunggal I komplek Kodam', ' Cipinang Melayu', 7, 'SMA'),
('16470063200002', 'SMA Angkasa 2', 'Jl. Avia Komp. Skadron', ' Halim Perdana Kusumah', 7, 'SMA'),
('16470063200003', 'SMA Angkasa I', 'Jl. Trikora Raya', ' Halim Perdana Kusumah', 7, 'SMA'),
('16470063200004', 'SMA Trampil I', 'Jl. Cililitan Besar', ' Kebon Pala', 7, 'SMA'),
('16470063200005', 'SMA Uswatun Hasanah', 'Jl. Depnaker No.2', ' Pinang Ranti', 7, 'SMA'),
('16470064200001', 'SMK Dharma Surya', 'Jl. Pangkalan Jati IV No. 47', ' Cipinang Melayu', 7, 'SMK'),
('16470064200002', 'SMK Jayawisata 2 Jakarta', 'Jl. Pangkalan Jati II No. 19', ' Cipinang Melayu', 7, 'SMK'),
('16470064200003', 'SMK Tridaya Jakarta', 'Jl. Pangkalan Jati II No. 19', ' Cipinang Melayu', 7, 'SMK'),
('16470064200004', 'SMK Angkasa 1 Jakarta', 'Jl. Rajawali Raya', ' Halim Perdana Kusumah', 7, 'SMK'),
('16470064200005', 'SMK Angkasa 2 Jakarta', 'Jl. Rajawali Raya', ' Halim Perdana Kusumah', 7, 'SMK'),
('16470064200006', 'SMK Bhakti   1 Jakarta', 'Jl. Perindustrian No. 7', ' Kebon Pala', 7, 'SMK'),
('16470064200007', 'SMK Bhakti   2 Jakarta', 'Jl. Perindustrian No. 7', ' Kebon Pala', 7, 'SMK'),
('16470064200008', 'SMK Gutama Jakarta', 'Jl. Permata No. 17', ' Kebon Pala', 7, 'SMK'),
('16470064200009', 'SMK Perdana Kusuma', 'Jl. Halim Perdana Kusuma', ' Kebon Pala', 7, 'SMK');
INSERT INTO `master_sekolah` (`induk_sekolah`, `nama_sekolah`, `alamat`, `kelurahan`, `id_kecamatan`, `tingkat`) VALUES
('16470064200010', 'SMK PGRI 1 Jakarta', 'Jl. PLK 2 No. 25', ' Makasar', 7, 'SMK'),
('16470064200011', 'SMK Yamas Jakarta', 'Jl. Pusdiklat Depnaker', ' Makasar', 7, 'SMK'),
('16470064200012', 'SMK Uswatun Hasanah', 'Jl. Raya Depnaker No. 2', ' Pinang Ranti', 7, 'SMK'),
('16480060200001', 'TK Aisyiyah 27', 'Jl. KH. A. Dahlan No. 20', ' Kayu Manis', 8, 'TK'),
('16480060200002', 'TK Fajar', 'Jl. Kayu Manis Timur No. 52D', ' Kayu Manis', 8, 'TK'),
('16480060200003', 'TK Mawar', 'Jl. Kayumanis VI No. 161', ' Kayu Manis', 8, 'TK'),
('16480060200004', 'TK Mentari', 'Jl. Sengon VI No. 31', ' Kayu Manis', 8, 'TK'),
('16480060200005', 'TK Kartika VIII 29', 'Jl. Kesatriaan X', ' Kebon Manggis', 8, 'TK'),
('16480060200006', 'TK Kartika VIII 5', 'Jl. Kesatrian Raya No. 2A', ' Kebon Manggis', 8, 'TK'),
('16480060200007', 'TK Kartika VIII 7', 'Jl. Kesatriaan II No. 1', ' Kebon Manggis', 8, 'TK'),
('16480060200008', 'TK Kartika X 4', 'Jl. Kesatriaan IX Rt. 017/03', ' Kebon Manggis', 8, 'TK'),
('16480060200009', 'TK Kwitang PSKD III', 'Jl. Slamet Riyadi No. 3', ' Kebon Manggis', 8, 'TK'),
('16480060200010', 'TK Al Furgon', 'Jl. Penegak II / 1', ' Pal Meriem', 8, 'TK'),
('16480060200011', 'TK Antonius', 'Jl. Matraman Raya 119', ' Pal Meriem', 8, 'TK'),
('16480060200012', 'TK Cor. Ipsu Marsudirini', 'Jl. Matraman Raya 129', ' Pal Meriem', 8, 'TK'),
('16480060200013', 'TK Hikmah', 'Jl. Tegalan 1 H / 309', ' Pal Meriem', 8, 'TK'),
('16480060200014', 'PAUD Flamboyan', 'Kp. Pulo Rusunawa', ' Pisangan Baru', 8, 'TK'),
('16480060200015', 'TK Anindia', 'Jl. Pisangan Baru I No. 28', ' Pisangan Baru', 8, 'TK'),
('16480060200016', 'TK Kurnia', 'Jl. Gg. Pisangan Baru Rt. 002/', ' Pisangan Baru', 8, 'TK'),
('16480060200017', 'TK Nurul Iman', 'Jl. Pisangan Baru Timur No. 4A', ' Pisangan Baru', 8, 'TK'),
('16480060200018', 'TK Sabilal Muhtadin', 'Jl. Pisangan Baru II/C', ' Pisangan Baru', 8, 'TK'),
('16480060200019', 'TK Tunas Harapan', 'Jl. Pisangan Baru Utara No. 1', ' Pisangan Baru', 8, 'TK'),
('16480060200020', 'TKIT Ibnu Sabil', 'Jl. Pisangan Baru Tengah No. 3', ' Pisangan Baru', 8, 'TK'),
('16480060200021', 'TK An Nursiyah', 'Jl. Galur Sari Raya No. 19 A', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200022', 'TK Dian Pertiwi', 'Jl. Galur Sari Timur', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200023', 'TK Harapan Utama', 'Jl. Kelapa Sawit Raya 29', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200024', 'TK Islam At Taubah', 'Jl. Kebon Kelapa', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200025', 'TK Islam Budi Mulia', 'Jl. Rasamala No. 13', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200026', 'TK Mutiara Indah', 'Jl. Kemuning III Rt. 007/04 No', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200027', 'TK Nurul Huda', 'Jl. Moncokerto II Gg. Mesjid', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200028', 'TK Puspa Sari', 'Jl. Kebon Kelapa Tinggi No. 44', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200029', 'TK Raudhotul Jannah', 'Jl. Kebon Kelapa Raya No.9', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200030', 'TK Santi Bhakti', 'Jl. Kb.Kelapa Gg. Cengkir', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200031', 'TK Sendang Kencana', 'Jl. Galur Sari Barat No. 7', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200032', 'TK Taman Cendikia Islamic preschool', 'Jl. galur Sari IX Blok L No. 3', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200033', 'TKIT PERMATA BUNDA', 'Jl. Galur Sari Raya Blok J No.', ' Utan Kayu Selatan', 8, 'TK'),
('16480060200034', 'TK Aisyiyah 23', 'Jl. Jeruk No. 9 Rt.12/06', ' Utan Kayu Utara', 8, 'TK'),
('16480060200035', 'TK Al Barra', 'Jl. Pengayoman 3/44', ' Utan Kayu Utara', 8, 'TK'),
('16480060200036', 'TK Ayu Andika', 'Jl. Pramuka Jaya VI/1', ' Utan Kayu Utara', 8, 'TK'),
('16480060200037', 'TK Da''wah Islam', 'Jl. Waringin No. 25', ' Utan Kayu Utara', 8, 'TK'),
('16480060200038', 'TK Handayani', 'Jl. Kemuning No. 3', ' Utan Kayu Utara', 8, 'TK'),
('16480060200039', 'TK Perguruan Rakyat', 'Jl. Waringin No. 14', ' Utan Kayu Utara', 8, 'TK'),
('16480061100001', 'SDN Kayumanis 01 Pg.', 'Jl. Kayumanis IV No. 20', ' Kayu Manis', 8, 'SD'),
('16480061100002', 'SDN Kayumanis 02 Pt.', 'Jl. Kayumanis IV Baru No.20', ' Kayu Manis', 8, 'SD'),
('16480061100003', 'SDN Kayumanis 03 Pg.', 'Jl. Kayumanis IV Baru No.20', ' Kayu Manis', 8, 'SD'),
('16480061100004', 'SDN Kayumanis 04 Pt.', 'Jl. Kayumanis IV No. 20', ' Kayu Manis', 8, 'SD'),
('16480061100005', 'SDN Kebon Manggis 01 Pg.', 'Jl. Slamet Riyadi II/ 7B', ' Kebon Manggis', 8, 'SD'),
('16480061100006', 'SDN Kebon Manggis 03 Pg.', 'Jl. Slamet Riyadi II / 7B', ' Kebon Manggis', 8, 'SD'),
('16480061100007', 'SDN Kebon Manggis 05 Pg.', 'Jl. Slamet Riyadi II/ 7B', ' Kebon Manggis', 8, 'SD'),
('16480061100008', 'SDN Kebon Manggis 08 Pg.', 'Jl. Kebon Manggis I / 28', ' Kebon Manggis', 8, 'SD'),
('16480061100009', 'SDN Kebon Manggis 11 Pg.', 'Jl. Kesatrian VIII No. 28 H', ' Kebon Manggis', 8, 'SD'),
('16480061100010', 'SDN Kebon Manggis 12 Pt.', 'Jl. Kesatrian VIII No. 28 H', ' Kebon Manggis', 8, 'SD'),
('16480061100011', 'SDN Kebon Manggis 13 Pg.', 'Jl. Slamet Riyadi II/ 7B', ' Kebon Manggis', 8, 'SD'),
('16480061100012', 'SDN Kebon Manggis 14 Pg.', 'Jl. Slamet Riyadi II/ 7B', ' Kebon Manggis', 8, 'SD'),
('16480061100013', 'SDN Palmeriam 01 Pg.', 'Jl. Kayumanis I Lama', ' Pal Meriem', 8, 'SD'),
('16480061100014', 'SDN Palmeriam 02 Pt.', 'Jl. Kayumanis I Lama', ' Pal Meriem', 8, 'SD'),
('16480061100015', 'SDN Palmeriam 03 Pg.', 'Jl. Kayumanis I Lama', ' Pal Meriem', 8, 'SD'),
('16480061100016', 'PKBM Flamboyan Paket A', 'Kp. Pulo Rusunawa', ' Pisangan Baru', 8, 'SD'),
('16480061100017', 'SDN Pisangan Baru 01', 'Jl. Jendral Ahmad Yani No.30', ' Pisangan Baru', 8, 'SD'),
('16480061100018', 'SDN Pisangan Baru 05 Pg.', 'Jl. Pisangan Baru Tengah', ' Pisangan Baru', 8, 'SD'),
('16480061100019', 'SDN Pisangan Baru 07 Pg.', 'Jl. Pisangan Baru Tengah', ' Pisangan Baru', 8, 'SD'),
('16480061100020', 'SDN Pisangan Baru 09 Pg.', 'Jl. Pisangan Baru I', ' Pisangan Baru', 8, 'SD'),
('16480061100021', 'SDN Pisangan Baru 10 Pt.', 'Jl. Pisangan Baru I', ' Pisangan Baru', 8, 'SD'),
('16480061100022', 'SDN Pisangan Baru 11 Pg.', 'Jl. Pisangan Baru I', ' Pisangan Baru', 8, 'SD'),
('16480061100023', 'SDN Pisangan Baru 13 Pg.', 'Jl. Pisangan Baru Utara', ' Pisangan Baru', 8, 'SD'),
('16480061100024', 'SDN Utan Kayu Selatan 01 Pg.', 'Jl. Pandan Raya No. I', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100025', 'SDN Utan Kayu Selatan 02 Pt.', 'Jl. Pandan Raya', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100026', 'SDN Utan Kayu Selatan 03 Pg.', 'Jl. Pandan Raya I', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100027', 'SDN Utan Kayu Selatan 04 Pt.', 'Jl. Pandan Raya I', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100028', 'SDN Utan Kayu Selatan 05', 'Jl. Kramat Asem Raya No.64', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100029', 'SDN Utan Kayu Selatan 09 Pg.', 'Jl. Skip Ujung', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100030', 'SDN Utan Kayu Selatan 11 Pg.', 'Jl. Skip Ujung', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100031', 'SDN Utan Kayu Selatan 13 Pg.', 'Jl. Galur Sari Timur', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100032', 'SDN Utan Kayu Selatan 14 Pg.', 'Jl. Galur Sari Timur', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100033', 'SDN Utan Kayu Selatan 16 Pg.', 'Jl. Galur Sari Timur', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100034', 'SDN Utan Kayu Selatan 17 Pg.', 'Jl. Kayu Manis Timur No. 19', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100035', 'SDN Utan Kayu Selatan 18 Pg.', 'Jl. Kelapa Hijau', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100036', 'SDN Utan Kayu Selatan 19 Pt.', 'Jl. Kelapa Hijau', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100037', 'SDN Utan Kayu Selatan 20 Pg.', 'Jl. Galur Sari Timur No. 38', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100038', 'SDN Utan Kayu Selatan 21 Pg.', 'Jl. Galur Sari VIII', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100039', 'SDN Utan Kayu Selatan 23 Pg.', 'Jl. Kramat Asem Raya No. 46', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100040', 'SDN Utan Kayu Selatan 25 Pg.', 'Jl. Galur Sari Timur', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100041', 'SDN Utan Kayu Selatan 27 Pg.', 'Jl. Skip Ujung', ' Utan Kayu Selatan', 8, 'SD'),
('16480061100042', 'SDN Utan Kayu Utara 01 Pg.', 'Jl. Utan Kayu Utara No. 107', ' Utan Kayu Utara', 8, 'SD'),
('16480061100043', 'SDN Utan Kayu Utara 07 Pg.', 'Jl. Galur Sari', ' Utan Kayu Utara', 8, 'SD'),
('16480061100044', 'SDN Utan Kayu Utara 08 Pg.', 'Jl. Galur Sari Rt. 003/07', ' Utan Kayu Utara', 8, 'SD'),
('16480061100045', 'SDN Utan Kayu Utara 11 Pg.', 'Jl. Balai Rakyat Raya No. 11', ' Utan Kayu Utara', 8, 'SD'),
('16480061200001', 'SDS Muhammadiyah 3', 'Jl. KH.Ahmad Dahlan No. 20 Mat', ' Kayu Manis', 8, 'SD'),
('16480061200002', 'SDIT Harapan Ummat', 'Jl. Kesatrian X Rt. 014/003', ' Kebon Manggis', 8, 'SD'),
('16480061200003', 'SDS Kwitang III PSKD', 'Jl. Slamet Riyadi No. 3', ' Kebon Manggis', 8, 'SD'),
('16480061200004', 'SDS Kartika XI 4', 'Jl. Kesatrian V No. 1', ' Pal Meriem', 8, 'SD'),
('16480061200005', 'SDS Marsudirini I', 'Jl. Matraman Raya No. 129', ' Pal Meriem', 8, 'SD'),
('16480061200006', 'SDS Nurul Hikmah', 'Jl. Salemba Tegalan I H/12', ' Pal Meriem', 8, 'SD'),
('16480061200007', 'SDS St. Antonius', 'Jl. Matraman Raya No. 119', ' Pal Meriem', 8, 'SD'),
('16480061200008', 'PKBM HARMONIS', 'Jl. Kebon Kelapa No. 33', ' Utan Kayu Selatan', 8, 'SD'),
('16480061200009', 'SDS Al Barra', 'Jalan Pengayoman III no 44', ' Utan Kayu Utara', 8, 'SD'),
('16480061200010', 'SDS Indonesia Persada Gemilang', 'Jl. Utan Kayu No. 20', ' Utan Kayu Utara', 8, 'SD'),
('16480061200011', 'SDS Muhammadiyah 23', 'Jl. Rambutan No. 4', ' Utan Kayu Utara', 8, 'SD'),
('16480061200012', 'SDS Perguruan Rakyat III', 'Jl. Waringin No. 14', ' Utan Kayu Utara', 8, 'SD'),
('16480062100001', 'PKBM Flamboyan Paket B', 'Kp. Pulo Rusunawa', ' Pisangan Baru', 8, 'SMP'),
('16480062100002', 'SMP Negeri 97', 'Jl. Galur Sari Raya', ' Utan Kayu Selatan', 8, 'SMP'),
('16480062100003', 'SMP Negeri 7', 'Jl. Balai Rayat Utan Kayu Utar', ' Utan Kayu Utara', 8, 'SMP'),
('16480062100004', 'SMP Negeri 7 Terbuka', 'Jl. Balai Rayat Utan Kayu Utar', ' Utan Kayu Utara', 8, 'SMP'),
('16480062200001', 'SMP Al Washiliyah', 'Jl. Kayumanis IV/41', ' Kayu Manis', 8, 'SMP'),
('16480062200002', 'SMP Bhakti Nusantara', 'Jl. Kayumanis Barat NO.99', ' Kayu Manis', 8, 'SMP'),
('16480062200003', 'SMP Mahasiswa', 'Jl. Kh. A. Dahlan No. 18', ' Kayu Manis', 8, 'SMP'),
('16480062200004', 'SMP Muhammadiyah 5', 'Jl. KH. A. Dahlan No. 20', ' Kayu Manis', 8, 'SMP'),
('16480062200005', 'SMP Kartika XI 3', 'Jl. Kesatrian V Matraman', ' Kebon Manggis', 8, 'SMP'),
('16480062200006', 'SMP PSKD 3', 'Jl. Slamet Riyadi 3 N0. 3', ' Kebon Manggis', 8, 'SMP'),
('16480062200007', 'SMP Nurul Iman', 'Jl. Pisangan Baru Timur No. 4A', ' Pisangan Baru', 8, 'SMP'),
('16480062200008', 'KBM HARMONIS', 'Jl. Kebon Kelapa No. 33', ' Utan Kayu Selatan', 8, 'SMP'),
('16480062200009', 'SMP Bina Pangudi Luhur', 'Jl. Kramat Asem Raya No. 54', ' Utan Kayu Selatan', 8, 'SMP'),
('16480062200010', 'SMP Islam Terpadu Nurul Hikmah', 'Jl. Kelapa Hijau 33B', ' Utan Kayu Selatan', 8, 'SMP'),
('16480062200011', 'SMP Sunan Giri', 'Jl. Kramat Asem Raya', ' Utan Kayu Selatan', 8, 'SMP'),
('16480062200012', 'SMP Pembangunan', 'Jl. Pengayoman III no. 95', ' Utan Kayu Utara', 8, 'SMP'),
('16480062200013', 'SMP Tirta Sari Surya', 'Jl. Nanas I Utan Kayu Utara', ' Utan Kayu Utara', 8, 'SMP'),
('16480063100001', 'PKBM Flamboyan Paket C', 'Kp. Pulo Rusunawa', ' Pisangan Baru', 8, 'SMA'),
('16480063100002', 'SMA Negeri 22', 'Jl. Kramat Asem', ' Utan Kayu Selatan', 8, 'SMA'),
('16480063100003', 'SMA Negeri 31', 'Jl. Kayu Manis Timur', ' Utan Kayu Selatan', 8, 'SMA'),
('16480063200001', 'SMA Muhammadiyah 12', 'Jl. KH. Ahmad Dahlan No. 20', ' Kayu Manis', 8, 'SMA'),
('16480063200002', 'SMA PSKD 2', 'Jl. Slamet Riyadi No.3', ' Kebon Manggis', 8, 'SMA'),
('16480063200003', 'SMA Fons Vitae 1', 'Jalan Matraman Raya 129', ' Pal Meriem', 8, 'SMA'),
('16480063200004', 'SMA Arena Siswa II', 'Jl. Kramat Asem Raya No.46', ' Utan Kayu Selatan', 8, 'SMA'),
('16480063200005', 'SMA Bina Pangudi Luhur', 'Jl. Kramat Asem Raya No.45', ' Utan Kayu Selatan', 8, 'SMA'),
('16480064100001', 'SMK Negeri 5', 'Jl. Pisangan Timur VII', ' Pisangan Baru', 8, 'SMK'),
('16480064100002', 'SMK Negeri 40', 'Jl. Nanas II Utan Kayu Utara', ' Utan Kayu Selatan', 8, 'SMK'),
('16480064200001', 'SMK Cipta Karya', 'Jl. Kayu Manis Timur No. 52 D', ' Kayu Manis', 8, 'SMK'),
('16480064200002', 'SMK Muhammadiyah 6', 'Jl. KH. Ahmad Dahlan No. 20', ' Kayu Manis', 8, 'SMK'),
('16480064200003', 'SMK Pancasila Jakarta', 'Jl. Kayu Manis Barat No.99', ' Kayu Manis', 8, 'SMK'),
('16480064200004', 'SMK Satya Bhakti I', 'Jl. Slamet Riyadi III', ' Kebon Manggis', 8, 'SMK'),
('16480064200005', 'SMK Satya Bhakti II', 'Jl. Slamet Riyadi III', ' Kebon Manggis', 8, 'SMK'),
('16480064200006', 'SMK Nurul Iman', 'Jl. Pisangan Timur No. 4A', ' Pisangan Baru', 8, 'SMK'),
('16480064200007', 'SMK Bina Pangudi Luhur', 'Jl. Kramat Asem Raya No. 54', ' Utan Kayu Selatan', 8, 'SMK'),
('16480064200008', 'SMK Pemuda', 'Jl. Skip Ujung', ' Utan Kayu Selatan', 8, 'SMK'),
('16480064200009', 'SMK Pembangunan', 'Jl. Pengayoman III No. 95', ' Utan Kayu Utara', 8, 'SMK'),
('16480064200010', 'SMK Tirta Sari Surya', 'Jl. Nanas I Utan Kayu Utara', ' Utan Kayu Utara', 8, 'SMK'),
('16490060200001', 'PAUD RAMBUTAN', 'Jln. Rambutan', ' Baru', 9, 'TK'),
('16490060200002', 'TK Islam Amar Ma''ruf', 'Jl. Rambutan No. 2', ' Baru', 9, 'TK'),
('16490060200003', 'TK Islam Budi Mulia', 'Jl. H. Moong Rt. 006/02', ' Baru', 9, 'TK'),
('16490060200004', 'TK Islam Tsabitah', 'Jl. A. Latif', ' Baru', 9, 'TK'),
('16490060200005', 'TK Kartika X 12', 'Jl. Yon Kav 7', ' Baru', 9, 'TK'),
('16490060200006', 'TK Kartika XV 1', 'Jl. Candraca Cijantung III', ' Baru', 9, 'TK'),
('16490060200007', 'TK Kartika XV 6', 'Jl. Satya 4 no.1 Kopassus', ' Baru', 9, 'TK'),
('16490060200008', 'TK Ar Rahmah', 'Jl. Raya Bogor Km.26 No. 2A', ' Cijantung', 9, 'TK'),
('16490060200009', 'TK Arimbi', 'Jl. Pedati Utara No. 5', ' Cijantung', 9, 'TK'),
('16490060200010', 'TK Dharma Bakti', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'TK'),
('16490060200011', 'TK Ignatius Slamet Riyadi', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'TK'),
('16490060200012', 'TK Islam Darul Husna', 'Jl. Pertengahan No. 1', ' Cijantung', 9, 'TK'),
('16490060200013', 'TK Islam Muklisin', 'Jl. Asem No. 53', ' Cijantung', 9, 'TK'),
('16490060200014', 'TK Kartika X 19', 'Jl. Pendidikan II Asrama DENZI', ' Cijantung', 9, 'TK'),
('16490060200015', 'TK Mekar Sari', 'Jl. Belly ,Gg. Mekar VII, no.1', ' Cijantung', 9, 'TK'),
('16490060200016', 'TK PB. Sudirman', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'TK'),
('16490060200017', 'TK Buah Hati', 'Jl. H. Taiman No. 23', ' Gedong', 9, 'TK'),
('16490060200018', 'TK Igel', 'Jl. H. Thaiman Raya II/19', ' Gedong', 9, 'TK'),
('16490060200019', 'TK Islam An nur', 'Jl. Raya Tengah Gg. Surilang', ' Gedong', 9, 'TK'),
('16490060200020', 'TK Islam An nuriyah', 'Jl. Raya Tengah Gg Remaja II', ' Gedong', 9, 'TK'),
('16490060200021', 'TK Islam Bakti VII', 'Jl. Taiman Barat I No. 50', ' Gedong', 9, 'TK'),
('16490060200022', 'TK Kartika VIII 1', 'Jl. Anyelir Cijantung II', ' Gedong', 9, 'TK'),
('16490060200023', 'TK Kartika X 5', 'Jl. Raya Condet No. 55', ' Gedong', 9, 'TK'),
('16490060200024', 'TK Kemala Bhayangkari 21', 'Jl. Tanjung Timur ASPOL', ' Gedong', 9, 'TK'),
('16490060200025', 'TK Satu Atap Gedong 04 Pagi', 'Jl. Raya Condet', ' Gedong', 9, 'TK'),
('16490060200026', 'TK Satu Atap Gedong 08 pagi', 'Jl. Trikora No. 74', ' Gedong', 9, 'TK'),
('16490060200027', 'TK Satu Atap Gedong 10 Pagi', 'Jl. Taiman Barat', ' Gedong', 9, 'TK'),
('16490060200028', 'TK Tat Twam Asi', 'Jl. Komp. Depsos Pasar Rebo', ' Gedong', 9, 'TK'),
('16490060200029', 'TK Insan Cemerlang', 'Jl. Tegal Sari No. 20', ' Kalisari', 9, 'TK'),
('16490060200030', 'TK Islam Al Mu''minun', 'Jl. Kenanga 1', ' Kalisari', 9, 'TK'),
('16490060200031', 'TK Islam At Taqwa', 'Jl. Radar Raya Komp. MADIT HUB', ' Kalisari', 9, 'TK'),
('16490060200032', 'TK Islam Az Zahra', 'Jl. Kenanga 2 No. 3', ' Kalisari', 9, 'TK'),
('16490060200033', 'TK IT As Sa''adah', 'Jl. Kirai Indah Rt. 06/10 No.', ' Kalisari', 9, 'TK'),
('16490060200034', 'TK Kartika IX 18', 'Jl. Suratmo Asrama Yonkav 1', ' Kalisari', 9, 'TK'),
('16490060200035', 'TK Kartika X 6', 'Jl JAYASAKTI II KOMPLEK BRIGIF', ' Kalisari', 9, 'TK'),
('16490060200036', 'TK Noah', 'Jl. Kalisari Raya II', ' Kalisari', 9, 'TK'),
('16490060200037', 'TK Panca Putra', 'Jl. Kenanga II Dolang I No. 64', ' Kalisari', 9, 'TK'),
('16490060200038', 'TK Putra Indonesia', 'Jl. Tirtasari II No. 24', ' Kalisari', 9, 'TK'),
('16490060200039', 'TK Ade Tia', 'Jl. Raya Bogor Km. 29', ' Pekayon', 9, 'TK'),
('16490060200040', 'TK Ar Ridwan', 'Jl. Raya Bogor', ' Pekayon', 9, 'TK'),
('16490060200041', 'TK Islam Darul Qur''an', 'Jl. Lewa No. 101', ' Pekayon', 9, 'TK'),
('16490060200042', 'TK Islam Ibnu Sina', 'Jl. Gandaria III', ' Pekayon', 9, 'TK'),
('16490060200043', 'TK Islam Toledo', 'Jl. Lapan No. 25', ' Pekayon', 9, 'TK'),
('16490060200044', 'TK Islam Udzri', 'Jl. Telaga III No.45', ' Pekayon', 9, 'TK'),
('16490060200045', 'TK Kartika VIII 8', 'Jl. Raya Bogor Km. 27', ' Pekayon', 9, 'TK'),
('16490060200046', 'TK Kartika X 7', 'Jl. RAYA BOGOR KM 28, GANDARIA', ' Pekayon', 9, 'TK'),
('16490060200047', 'TK SATU ATAP PEKAYON 10 PAGI', 'Jl. LAPAN RT. 004/09', ' Pekayon', 9, 'TK'),
('16490060200048', 'TK Satu Atap Pekayon 15 Pagi', 'Jl. Telaga', ' Pekayon', 9, 'TK'),
('16490060200049', 'TK Syarifatunisa', 'Jl. Belly No. 24', ' Pekayon', 9, 'TK'),
('16490060200050', 'TK Tunas Insani', 'Jl. Gandaria I', ' Pekayon', 9, 'TK'),
('16490061100001', 'SDN Baru 01 Pg.', 'Jl. R.A. Fadillah', ' Baru', 9, 'SD'),
('16490061100002', 'SDN Baru 02 Pg.', 'Jl. R.A. Fadillah Cijantung II', ' Baru', 9, 'SD'),
('16490061100003', 'SDN Baru 03 Pg.', 'Jl. Gotong Royong', ' Baru', 9, 'SD'),
('16490061100004', 'SDN Baru 05 Pg.', 'Jl. Puskesmas No. 34', ' Baru', 9, 'SD'),
('16490061100005', 'SDN Baru 06 Pg.', 'Jl. Puskesmas', ' Baru', 9, 'SD'),
('16490061100006', 'SDN Baru 07 Pg.', 'Jl. RA. Fadillah Cijantung III', ' Baru', 9, 'SD'),
('16490061100007', 'SDN Baru 08 Pg.', 'Jl. Sawo', ' Baru', 9, 'SD'),
('16490061100008', 'SDN Cijantung 01 Pg.', 'Jl. Pertengahan', ' Cijantung', 9, 'SD'),
('16490061100009', 'SDN Cijantung 02 Pg.', 'Jl. Pertengahan Gg. Kramat I', ' Cijantung', 9, 'SD'),
('16490061100010', 'SDN Cijantung 03 Pg.', 'Jl. R.A. Fadillah No. 1', ' Cijantung', 9, 'SD'),
('16490061100011', 'SDN Cijantung 05 Pg.', 'Jl. Pertengahan N0 4', ' Cijantung', 9, 'SD'),
('16490061100012', 'SDN Cijantung 06 Pg.', 'Jl. Gongseng Raya RT010/01', ' Cijantung', 9, 'SD'),
('16490061100013', 'SDN Cijantung 07 Pg.', 'Jl. Gongseng Raya', ' Cijantung', 9, 'SD'),
('16490061100014', 'SDN Cijantung 09 Pt.', 'Jl. Gongseng Raya', ' Cijantung', 9, 'SD'),
('16490061100015', 'SDN Cijantung 11 Pt.', 'Jl. Pertengahan No.1 Rt.06/07', ' Cijantung', 9, 'SD'),
('16490061100016', 'SDN Gedong 01 Pg.', 'Jl. Trikora No. 67', ' Gedong', 9, 'SD'),
('16490061100017', 'SDN Gedong 03 Pg.', 'Jl. Raya Condet', ' Gedong', 9, 'SD'),
('16490061100018', 'SDN Gedong 05 Pg.', 'Jl. Surilang No. 8', ' Gedong', 9, 'SD'),
('16490061100019', 'SDN Gedong 08 Pg.', 'Jl. Trikora No. 74', ' Gedong', 9, 'SD'),
('16490061100020', 'SDN Gedong 10 Pg.', 'Jl. Taiman Barat II No. 8', ' Gedong', 9, 'SD'),
('16490061100021', 'SDN Gedong 11 Pg.', 'Jl. H. Taiman Barat II', ' Gedong', 9, 'SD'),
('16490061100022', 'SDN Gedong 12 Pg.', 'Jl. Raya Condet', ' Gedong', 9, 'SD'),
('16490061100023', 'SDN Kalisari 01 Pg.', 'Jl. Raya Kalisari No. 3', ' Kalisari', 9, 'SD'),
('16490061100024', 'SDN Kalisari 02 Pg.', 'Jl. Raya Cijantung IV', ' Kalisari', 9, 'SD'),
('16490061100025', 'SDN Kalisari 03 Pg.', 'As. Yon. Kav. I Tank Cijantung', ' Kalisari', 9, 'SD'),
('16490061100026', 'SDN Kalisari 04 Pg.', 'Jl. Raya Kalisari', ' Kalisari', 9, 'SD'),
('16490061100027', 'SDN Kalisari 05 Pg.', 'Jl. Raya Kalisari', ' Kalisari', 9, 'SD'),
('16490061100028', 'SDN Kalisari 06 Pt', ' Asrama Yon Kav I Cijantung IV', ' Kalisari', 9, 'SD'),
('16490061100029', 'SDN Kalisari 08 Pt.', 'Jl. Raya Kalisari', ' Kalisari', 9, 'SD'),
('16490061100030', 'SDN Pekayon 01 Pg.', 'Jl. Raya Bogor Km. 27', ' Pekayon', 9, 'SD'),
('16490061100031', 'SDN Pekayon 03 Pg.', 'Jl. Gandaria I', ' Pekayon', 9, 'SD'),
('16490061100032', 'SDN Pekayon 04 Pt.', 'Jl. Gandaria I', ' Pekayon', 9, 'SD'),
('16490061100033', 'SDN Pekayon 05 Pg.', 'Komp.Asrama Mekanis Yonif201', ' Pekayon', 9, 'SD'),
('16490061100034', 'SDN Pekayon 07 Pg.', 'Jl. Raya Bogor Km. 27', ' Pekayon', 9, 'SD'),
('16490061100035', 'SDN Pekayon 09 Pg.', 'Jl. Pendidikan', ' Pekayon', 9, 'SD'),
('16490061100036', 'SDN Pekayon 10 Pg.', 'Jl. LAPAN', ' Pekayon', 9, 'SD'),
('16490061100037', 'SDN Pekayon 11 Pg.', 'Jl. Gandaria I', ' Pekayon', 9, 'SD'),
('16490061100038', 'SDN Pekayon 12 Pg.', 'Jl. Raya Bogor Km.28,5', ' Pekayon', 9, 'SD'),
('16490061100039', 'SDN Pekayon 14 Pt.', 'Jl. Pendidikan', ' Pekayon', 9, 'SD'),
('16490061100040', 'SDN Pekayon 15 Pg.', 'Jl. Telaga', ' Pekayon', 9, 'SD'),
('16490061100041', 'SDN Pekayon 16 Pg.', 'Jl. Swadaya', ' Pekayon', 9, 'SD'),
('16490061100042', 'SDN Pekayon 18 Pg.', 'Jl. Tipar . 66', ' Pekayon', 9, 'SD'),
('16490061200001', 'PKBM Rambutan Paket A', 'Jl. Rambutan', ' Baru', 9, 'SD'),
('16490061200002', 'SDS Dharma Bakti', 'Jl. Raya Bogor', ' Cijantung', 9, 'SD'),
('16490061200003', 'SDS Pangudi Rahayu', 'Jl. Raya Bogor Km. 24,5', ' Cijantung', 9, 'SD'),
('16490061200004', 'SDS PB Sudirman', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SD'),
('16490061200005', 'SDS Slamet Riyadi I', 'Jl. Raya Bogor Km.24', ' Cijantung', 9, 'SD'),
('16490061200006', 'SDS Slamet Riyadi II', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SD'),
('16490061200007', 'SDS Kartika VIII  1', 'Jl. Anyelir Cijantung II', ' Gedong', 9, 'SD'),
('16490061200008', 'SDIT ASY SYAFII', 'Jl. Puskesmas Gang H. Imih', ' Kalisari', 9, 'SD'),
('16490061200009', 'SDS IT. As Sa''adah', 'Jl. Jaha No. 17', ' Kalisari', 9, 'SD'),
('16490061200010', 'SDS Noah', 'Jl. Kalisari Raya II No. 11', ' Kalisari', 9, 'SD'),
('16490061200011', 'PKBM Fortuna Paket A', 'Jalan Madrasah No. 6', ' Pekayon', 9, 'SD'),
('16490061200012', 'SDS Islam Teladan Yasmin', 'Jl. Raya Bogor Km. 27', ' Pekayon', 9, 'SD'),
('16490062100001', 'SMP Negeri 217', 'Jl. Gongseng Raya', ' Baru', 9, 'SMP'),
('16490062100002', 'SMP Negeri 103', 'Jl. RA. Fadilah Cijantung', ' Cijantung', 9, 'SMP'),
('16490062100003', 'SMP Negeri 251', 'Jl. Mawar Kamp. Asem', ' Cijantung', 9, 'SMP'),
('16490062100004', 'SMP Negeri 102', 'Jl. Sederhana Raya Cijantung I', ' Gedong', 9, 'SMP'),
('16490062100005', 'SMP Negeri 223', 'Jl. Surilang No. 6', ' Gedong', 9, 'SMP'),
('16490062100006', 'SMP Negeri 179', 'Jl. Kalisari', ' Kalisari', 9, 'SMP'),
('16490062100007', 'SMP Negeri 179 Terbuka', 'Jl. Kalisari', ' Kalisari', 9, 'SMP'),
('16490062100008', 'SMP Negeri 203', 'Jl. Raya Kalisari   LAPAN', ' Kalisari', 9, 'SMP'),
('16490062100009', 'SMP Negeri 184', 'Jl. LAPAN', ' Pekayon', 9, 'SMP'),
('16490062100010', 'SMP Negeri 91', 'Jl. Raya Bogor Km. 28 Pekayon', ' Pekayon', 9, 'SMP'),
('16490062200001', 'PKBM Rambutan Paket B', 'Jln. Rambutan', ' Baru', 9, 'SMP'),
('16490062200002', 'SMP Dharma Bakti', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMP'),
('16490062200003', 'SMP Ignatius Slamet Riyadi', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMP'),
('16490062200004', 'SMP Islam Malahayati', 'Jl. Bima No. 3 Gongseng Raya', ' Cijantung', 9, 'SMP'),
('16490062200005', 'SMP Islam PB. Sudirman', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMP'),
('16490062200006', 'SMP Kartika VIII 1', 'Jl. Anyelir Cijantung II Kelur', ' Cijantung', 9, 'SMP'),
('16490062200007', 'SMP Pengudi Rahayu', 'Jl. Raya Bogor Km. 24,5', ' Cijantung', 9, 'SMP'),
('16490062200008', 'PKBM Fortuna Paket B', 'Jalan Madrasah No. 6', ' Pekayon', 9, 'SMP'),
('16490062200009', 'SMP Islam Plus Mardhotillah', 'Jl. Telaga', ' Pekayon', 9, 'SMP'),
('16490062200010', 'SMP Islam Yasmin', 'Jl. Raya Bogor Km. 27 Pekayon', ' Pekayon', 9, 'SMP'),
('16490062200011', 'SMP Karya Darma', 'Jl. Raya Bogor Km. 28', ' Pekayon', 9, 'SMP'),
('16490063100001', 'SMA Negeri 88', 'Jl. Sawo Indah', ' Baru', 9, 'SMA'),
('16490063100002', 'SMA Negeri 39', 'Jl. RA. Fadillah', ' Cijantung', 9, 'SMA'),
('16490063100003', 'SMA Negeri 104', 'Jl. H. Taiman Barat', ' Gedong', 9, 'SMA'),
('16490063100004', 'SMA Negeri 98', 'Jl. Jaha No.1', ' Kalisari', 9, 'SMA'),
('16490063100005', 'SMA Negeri 106', 'Jl. Gandaria I', ' Pekayon', 9, 'SMA'),
('16490063200001', 'SMA Islam PB. Soedirman', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMA'),
('16490063200002', 'SMA Malahayati', 'Jl. Bima No.3', ' Cijantung', 9, 'SMA'),
('16490063200003', 'SMA Pangudi Rahayu', 'Jl. Raya Bogor Km. 24,5', ' Cijantung', 9, 'SMA'),
('16490063200004', 'SMA Slamet Riyadi', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMA'),
('16490063200005', 'SMA Taruna Persada', 'Jl. Masjid No. 29', ' Gedong', 9, 'SMA'),
('16490063200006', 'SMA Budhi Warman II', 'Jl. Raya Bogor Km. 28', ' Pekayon', 9, 'SMA'),
('16490064100001', 'SMK Negeri 22', 'Jl. Raya Condet', ' Gedong', 9, 'SMK'),
('16490064200001', 'SMK Bakthi Negeri', 'Jl. Belly Mekar V', ' Cijantung', 9, 'SMK'),
('16490064200002', 'SMK Islam Malahayati Jakarta', 'Jl. Bima No. 3', ' Cijantung', 9, 'SMK'),
('16490064200003', 'SMK Islam PB Soedirman 1 Jakarta', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMK'),
('16490064200004', 'SMK Islam PB Soedirman 2 Jakarta', 'Jl. Raya Bogor Km. 24 Cijantun', ' Cijantung', 9, 'SMK'),
('16490064200005', 'SMK Mahadhika 4', 'Jl. Raya Bogor Km. 25', ' Cijantung', 9, 'SMK'),
('16490064200006', 'SMK Mardi Bakti Jakarta', 'Jl. Raya Bogor Km. 24', ' Cijantung', 9, 'SMK'),
('16490064200007', 'SMK Pangudi Rahayu I Jakarta', 'Jl. Raya Bogor Km. 24,5', ' Cijantung', 9, 'SMK'),
('16490064200008', 'SMK Pangudi Rahayu II Jakarta', 'Jl. Raya Bogor Km. 24,5', ' Cijantung', 9, 'SMK'),
('16490064200009', 'SMK Paskita Global Jakarta', 'Jl. Raya Bogor Km. 25', ' Cijantung', 9, 'SMK'),
('16490064200010', 'SMK Pertiwi Jakarta', 'Jl. H. Taiman Barat', ' Gedong', 9, 'SMK'),
('16490064200011', 'SMK PGRI 28 Jakarta', 'Jl. Condet Raya', ' Gedong', 9, 'SMK'),
('16490064200012', 'SMK Analis Kesehatan Tunas Harapan', 'Jl. Bendera Raya   Intisari 3', ' Kalisari', 9, 'SMK'),
('16490064200013', 'SMK Kimia Tunas Harapan', 'Jl. Bendera Raya / Intisari II', ' Kalisari', 9, 'SMK'),
('16490064200014', 'SMK Budhi Warman 2 Jakarta', 'Jl. Raya Bogor Km. 28', ' Pekayon', 9, 'SMK'),
('16490064200015', 'SMK Islam Yasmin Jakarta', 'Jl. Raya Bogor Km. 27', ' Pekayon', 9, 'SMK'),
('16490064200016', 'SMK Karya Dharma 2 Jakarta', 'Jl. Raya Bogor Km.28, Gandaria', ' Pekayon', 9, 'SMK'),
('16499960100001', 'PAUD TUNAS CERIAPKBMN 13 CIPINANG', 'Jl. Cipinang Baru III/15', ' Cipinang', 10, 'TK'),
('16499960100002', 'TK Satu Atap', 'Jl. Jatinegara Kaum', ' Jatinegara Kaum', 10, 'TK'),
('16499960200001', 'TK Bentara Indonesia II', 'Jl. E. I. No. 12 Cipinang Timu', ' Cipinang', 10, 'TK'),
('16499960200002', 'TK Budhaya I', 'Jl. Cipinang Kebembem I No. 25', ' Cipinang', 10, 'TK'),
('16499960200003', 'TK Kemala Bhayangkari16', 'Jl. Cipinang Baru Raya', ' Cipinang', 10, 'TK'),
('16499960200004', 'TK Kemala Bhayangkari17', 'Jl. Asrama Brimob, Cipinang Ba', ' Cipinang', 10, 'TK'),
('16499960200005', 'TK Kemala Bhayangkari20', 'Jl. Asrama Brimob, Cipinang At', ' Cipinang', 10, 'TK'),
('16499960200006', 'TK Krida Putra', 'Jl. Cipinang Baru Bunder', ' Cipinang', 10, 'TK'),
('16499960200007', 'TK Patra I', 'Jl. Kenali Asem Komperta', ' Cipinang', 10, 'TK'),
('16499960200008', 'TK Patra VII', 'Jl. Albezia Raya Blok A No. 6 ', ' Cipinang', 10, 'TK'),
('16499960200009', 'TK Aisyiyah 54', 'Jl. Kepiting II No. 9', ' Jati', 10, 'TK'),
('16499960200010', 'TK Aisyiyah BustanulAthfal 48', 'Jl. Pulo Asem Utara XII / 3 5', ' Jati', 10, 'TK'),
('16499960200011', 'TK Al Ghurabba', 'Jl. Tenggiri Raya No. 47', ' Jati', 10, 'TK'),
('16499960200012', 'TK Al Hikmah', 'Jl. Jatibarang V No. 40 Komp.', ' Jati', 10, 'TK'),
('16499960200013', 'TK Cemerlang', 'Jl. Gurame No. 17', ' Jati', 10, 'TK'),
('16499960200014', 'TK Cheria', 'Jl. Layur No. 27', ' Jati', 10, 'TK'),
('16499960200015', 'TK Nuruddin', 'Jl. Cumi Cumi Raya No. 12', ' Jati', 10, 'TK'),
('16499960200016', 'TK Patra III', 'Jl. Jatibarang IV, Komp. Perta', ' Jati', 10, 'TK'),
('16499960200017', 'TK Pelangi', 'Jl. Palad No. 2', ' Jati', 10, 'TK'),
('16499960200018', 'TK Perhubungan', 'Jl. Perhubungan Raya', ' Jati', 10, 'TK'),
('16499960200019', 'TK Si Mungil', 'Jl. TENGGIRI NO. 17', ' Jati', 10, 'TK'),
('16499960200020', 'TK Tadika Puri', 'Jl. Tenggiri Raya No. 28', ' Jati', 10, 'TK'),
('16499960200021', 'TK Tunas Jati', 'Jl. Mundu III Gg.H. M. ZEIN NO', ' Jati', 10, 'TK'),
('16499960200022', 'TK Darus`salam', 'Jl. Jatinegara Kaum I', ' Jatinegara Kaum', 10, 'TK'),
('16499960200023', 'TK Irvan Hamzah', 'Jl. Arus Jati No. 17', ' Jatinegara Kaum', 10, 'TK'),
('16499960200024', 'TK Kemala Bhayangkari15', 'Jl. Raya Bekasi Asrama POLRI P', ' Jatinegara Kaum', 10, 'TK'),
('16499960200025', 'TK LPI Jatinegara Kaum', 'Jl. Remaja I No.14 D', ' Jatinegara Kaum', 10, 'TK'),
('16499960200026', 'TK Nurussaadah', 'Jl. Raya Bekasi Timur No. 83', ' Jatinegara Kaum', 10, 'TK'),
('16499960200027', 'TK PKK Jatinegara Kaum', 'Jl. TB. Badarudin No.5', ' Jatinegara Kaum', 10, 'TK'),
('16499960200028', 'TK Abata', 'Jl. Kayu Putih Raya No. 30', ' Kayu Putih', 10, 'TK'),
('16499960200029', 'TK Aisyiyah 24', 'Jl. Marmer No. 1', ' Kayu Putih', 10, 'TK'),
('16499960200030', 'TK Aisyiyah 49', 'Jl. Metro Jaya No. 23', ' Kayu Putih', 10, 'TK'),
('16499960200031', 'TK At Taubah', 'Jl. Pulo Mas II', ' Kayu Putih', 10, 'TK'),
('16499960200032', 'TK Don Bosco II', 'Jl. Pulo Mas Barat V', ' Kayu Putih', 10, 'TK'),
('16499960200033', 'TK Ikal I', 'Jl. H. Ten A / 21 Komplek BULO', ' Kayu Putih', 10, 'TK'),
('16499960200034', 'TK Kinderland', 'Jl. Kayu Putih Raya Blok A I', ' Kayu Putih', 10, 'TK'),
('16499960200035', 'TK Kurnia', 'Jl. Tiner IV No. 6', ' Kayu Putih', 10, 'TK'),
('16499960200036', 'TK Little Lambs', 'Jl. Pacuan Kuda No. 1 5', ' Kayu Putih', 10, 'TK'),
('16499960200037', 'TK Mekar Sari', 'Jl. Batu Sulaeman No. 1', ' Kayu Putih', 10, 'TK'),
('16499960200038', 'TK Permata Hati Ibu', 'Jl. Beton No. 64', ' Kayu Putih', 10, 'TK'),
('16499960200039', 'TK Regina', 'Jl. Kayu Putih Raya No. 20', ' Kayu Putih', 10, 'TK'),
('16499960200040', 'TK Santo Fransiskus III', 'Jl. Bangunan Barat No. 5 Kp. A', ' Kayu Putih', 10, 'TK'),
('16499960200041', 'TK Sevilla', 'Jl. Pulo Mas Jaya, Pacuan Kuda', ' Kayu Putih', 10, 'TK'),
('16499960200042', 'TK Tugasku', 'Jl. Pulomas Jaya No. 2', ' Kayu Putih', 10, 'TK'),
('16499960200043', 'PKBM Miftahul Jannah', 'Jl. Pisangan Lama III / 2B', ' Pisangan Timur', 10, 'TK'),
('16499960200044', 'TK Aisyiyah 87', 'Jl. Gading Raya VIII No. 13', ' Pisangan Timur', 10, 'TK'),
('16499960200045', 'TK Al Ishmah', 'Jl. Pisangan Lama III No. 20', ' Pisangan Timur', 10, 'TK'),
('16499960200046', 'TK Al Irsyadiyah', 'Jl. Sinar Jaya No. 11', ' Pisangan Timur', 10, 'TK'),
('16499960200047', 'TK Bahtera Ceria', 'Jl. Bojana Tirta Balai Rw. 015', ' Pisangan Timur', 10, 'TK'),
('16499960200048', 'TK BPS & K Pembangunan', 'Jl. Pisangan Lama III No. 3', ' Pisangan Timur', 10, 'TK'),
('16499960200049', 'TK Islam Al Istiqomah', 'Jl. Gading Raya I No. 54', ' Pisangan Timur', 10, 'TK'),
('16499960200050', 'TK Nurul Jannah', 'Jl. Pisangan Lama III No. 12', ' Pisangan Timur', 10, 'TK'),
('16499960200051', 'TK Nurussaadah 2', 'Jl. Pisangan Lama III No. 11', ' Pisangan Timur', 10, 'TK'),
('16499960200052', 'TK Pertiwi III', 'Jl. Cipinang Kebembem II No. 1', ' Pisangan Timur', 10, 'TK'),
('16499960200053', 'TK Ruki', 'Jl. Gading Raya I No. 47 Gg. X', ' Pisangan Timur', 10, 'TK'),
('16499960200054', 'TK Taman Siswa', 'Jl. Pisangan Lama II No. 407', ' Pisangan Timur', 10, 'TK'),
('16499960200055', 'TK Aisyiyah 88', 'Jl. Kayu Putih Selatan Blok HC', ' Pulo Gadung', 10, 'TK'),
('16499960200056', 'TK Ananda', 'Jl. Kayu Putih V No. 1 Rt. 003', ' Pulo Gadung', 10, 'TK'),
('16499960200057', 'TK Az Zuhdiyah', 'Jl. Masjid Al Thayibah Km. 21', ' Pulo Gadung', 10, 'TK'),
('16499960200058', 'TK Harapan', 'Jl. Perintis Kemerdekaan', ' Pulo Gadung', 10, 'TK'),
('16499960200059', 'TK Kayu Putih', 'Jl. Kayu Putih Utara 2', ' Pulo Gadung', 10, 'TK'),
('16499960200060', 'TK Mutiara Indonesia', 'Jl. Kayu Putih IX c no.1', ' Pulo Gadung', 10, 'TK'),
('16499960200061', 'TK Star Generation School', 'Jl. P. Kemerdekaan Blok X No.', ' Pulo Gadung', 10, 'TK'),
('16499960200062', 'TK Aisyiyah 21', 'Jl. Balai Pustaka Barat No. 2', ' Rawamangun', 10, 'TK'),
('16499960200063', 'TK Al Azhar 13', 'Jl. Sunan Giri No. 1', ' Rawamangun', 10, 'TK'),
('16499960200064', 'TK An Nur', 'Jl. Jeruk II No. 12 14', ' Rawamangun', 10, 'TK'),
('16499960200065', 'TK ANNUR', 'Jl JERUK II NO.12', ' Rawamangun', 10, 'TK'),
('16499960200066', 'TK Bintang Kecil', 'Jl. Rawamangun Muka III/4', ' Rawamangun', 10, 'TK'),
('16499960200067', 'TK Islam At Taqwa', 'Jl. Daksinapati Raya No. 2', ' Rawamangun', 10, 'TK'),
('16499960200068', 'TK Lab. School', 'Jl. Pemuda Komp. UNJ', ' Rawamangun', 10, 'TK'),
('16499960200069', 'TK Mini Bakti', 'Jl. Kayu Jati III no.7', ' Rawamangun', 10, 'TK'),
('16499960200070', 'TK Mutiara', 'Jl. H. Ten IV No. 14 Kp. Ambon', ' Rawamangun', 10, 'TK'),
('16499960200071', 'TK Pertiwi Abhilasa', 'Jl. Daksinapati Raya No. 10', ' Rawamangun', 10, 'TK'),
('16499960200072', 'TK Suci Al Musyahadah', 'Jl. Kayu Jati I Gg. IV No. 1', ' Rawamangun', 10, 'TK'),
('16499960200073', 'TK Syinantam', 'Jl. Wisma Jaya Blok J No. 6', ' Rawamangun', 10, 'TK'),
('16499960200074', 'TK Tarakanita 5', 'Jl. Wisma Jaya No. 13', ' Rawamangun', 10, 'TK'),
('16499960200075', 'TK Trisula Perwari 5', 'Jl. Jeruk No. 6 Rawamangun', ' Rawamangun', 10, 'TK'),
('16499960200076', 'TK YWKA', 'Jl. Rawamangun Muka II', ' Rawamangun', 10, 'TK'),
('16499961100001', 'PAUD TUNAS CERIA PKBMN 13 CIPINANG', 'Jl. Cipinang Baru III/15', ' Cipinang', 10, 'SD'),
('16499961100002', 'SDNCipinang01 Pg.', 'Jl. Bunyu Komplek Pertamina', ' Cipinang', 10, 'SD'),
('16499961100003', 'SDNCipinang03 Pg.', 'Jl. Cipinang Timur III/ 3', ' Cipinang', 10, 'SD'),
('16499961100004', 'SDNCipinang05 Pg.', 'Jl. Raya Bekasi Timur', ' Cipinang', 10, 'SD'),
('16499961100005', 'SDN Jati01 Pg.', 'Jl. Kakap Raya No. 36', ' Jati', 10, 'SD'),
('16499961100006', 'SDN Jati03 Pg.', 'Jl. Taman Pulo Asem Utara', ' Jati', 10, 'SD'),
('16499961100007', 'SDN Jati04 Pt.', 'Jl. Taman Pulo Asem tara', ' Jati', 10, 'SD'),
('16499961100008', 'SDN Jati05 Pg.', 'Jl. Perhubungan Raya XII', ' Jati', 10, 'SD'),
('16499961100009', 'SDN Jati06 Pg.', 'Jl. Perhubungan Raya', ' Jati', 10, 'SD'),
('16499961100010', 'SDN Jati07 Pg.', 'Jl. Layur Selatan No.19', ' Jati', 10, 'SD'),
('16499961100011', 'SDNJatinegaraKaum 01Pg.', 'Jl. Raya Bekasi Km. 18', ' Jatinegara Kaum', 10, 'SD'),
('16499961100012', 'SDN Jatinegara Kaum 03 Pg.', 'Jl. Raya Bekasi Km. 18', ' Jatinegara Kaum', 10, 'SD'),
('16499961100013', 'SDNJatinegaraKaum 05Pg.', 'Jl. Tanah Koja II', ' Jatinegara Kaum', 10, 'SD'),
('16499961100014', 'SDNJatinegaraKaum 06Pg.', 'Jl. Tanah Koja II', ' Jatinegara Kaum', 10, 'SD'),
('16499961100015', 'SDNJatinegaraKaum 07Pg.', 'Jl. TB.Badarudin No. 6', ' Jatinegara Kaum', 10, 'SD'),
('16499961100016', 'SDNJatinegaraKaum 10Pt.', 'Jl. Tanah Koja II', ' Jatinegara Kaum', 10, 'SD'),
('16499961100017', 'SDNJatinegaraKaum 11Pg.', 'Jl. TB.Badarudin   Tanah Koja', ' Jatinegara Kaum', 10, 'SD'),
('16499961100018', 'SDNJatinegaraKaum 14Pg.', 'Jl. Jatinegara Kaum Rt.10/03', ' Jatinegara Kaum', 10, 'SD'),
('16499961100019', 'SDNJatinegaraKaum 15Pg.', 'Jl. Jatinegara Kaum Raya No. 3', ' Jatinegara Kaum', 10, 'SD'),
('16499961100020', 'SDN KayuPutih 01Pg.', 'Jl. Kunci No. 28', ' Kayu Putih', 10, 'SD'),
('16499961100021', 'SDN KayuPutih 03Pg.', 'Jl. Papan No. 19', ' Kayu Putih', 10, 'SD'),
('16499961100022', 'SDN KayuPutih 08Pg.', 'Jl. Batu Sulaeman No. 2', ' Kayu Putih', 10, 'SD'),
('16499961100023', 'SDN KayuPutih 09Pg.', 'Jl. Pulo Mas Barat V No.4', ' Kayu Putih', 10, 'SD'),
('16499961100024', 'PKBMFARADIKA', 'Jl. Cipinang Kebembem V No. 32', ' Pisangan Timur', 10, 'SD'),
('16499961100025', 'SDNPisanganTimur 01Pg.', 'Jl. Pisangan Dalam Lama I / 3', ' Pisangan Timur', 10, 'SD'),
('16499961100026', 'SDNPisanganTimur 05Pg.', 'Jl. Pisangan Lama Dalam I', ' Pisangan Timur', 10, 'SD'),
('16499961100027', 'SDNPisanganTimur 07Pg.', 'Jl. Pisangan Lama Dalam I', ' Pisangan Timur', 10, 'SD'),
('16499961100028', 'SDNPisanganTimur 10Pg.', 'Jl. Gading Raya I', ' Pisangan Timur', 10, 'SD'),
('16499961100029', 'SDN Pisangan Timur 11 Pg.', 'Jl. H. Mugeni II', ' Pisangan Timur', 10, 'SD'),
('16499961100030', 'SDN Pisangan Timur 13 Pg.', 'Jl. Haji Mugeni II', ' Pisangan Timur', 10, 'SD'),
('16499961100031', 'SDN Pisangan Timur 18 Pg.', 'Jl. Gading Raya I', ' Pisangan Timur', 10, 'SD'),
('16499961100032', 'SDN Pisangan Timur 20 Pg.', 'Jl. Gading Raya I', ' Pisangan Timur', 10, 'SD'),
('16499961100033', 'SDN Pulogadung 01 Pg.', 'Jl. Kemuning II', ' Pulo Gadung', 10, 'SD'),
('16499961100034', 'SDN Pulogadung 03 Pg.', 'Jl. Kemuning II', ' Pulo Gadung', 10, 'SD'),
('16499961100035', 'SDN Pulogadung 05 Pg.', 'Jl. Kayu Putih IV No. 3', ' Pulo Gadung', 10, 'SD'),
('16499961100036', 'SDN Pulogadung 07 Pg.', 'Jl. Kayu Putih I', ' Pulo Gadung', 10, 'SD'),
('16499961100037', 'SDN Pulogadung 09 Pg.', 'Jl. Kayu Putih I / 41', ' Pulo Gadung', 10, 'SD'),
('16499961100038', 'SDN Pulogadung 10 Pt.', 'Jl. Kayu Putih I No. 41', ' Pulo Gadung', 10, 'SD'),
('16499961100039', 'SDN Rawamangun 01 Pg.', 'Jl. Taman Jelita Utara No. 5', ' Rawamangun', 10, 'SD'),
('16499961100040', 'SDN Rawamangun 02 Pg.', 'Jl. Haji Ten No.4', ' Rawamangun', 10, 'SD'),
('16499961100041', 'SDN Rawamangun 05 Pg.', 'Jl. H Ten IV No.4 Rawamangun,', ' Rawamangun', 10, 'SD'),
('16499961100042', 'SDN Rawamangun 06 Pt.', 'Jl. Haji Ten IV no.4', ' Rawamangun', 10, 'SD'),
('16499961100043', 'SDN Rawamangun 07 Pg.', 'Jl. Rawamangun Muka', ' Rawamangun', 10, 'SD'),
('16499961100044', 'SDN Rawamangun 09 Pg.', 'Jl. Pemuda No. 6', ' Rawamangun', 10, 'SD'),
('16499961100045', 'SDN Rawamangun 12 Pg.', 'Jl. Pemuda Komp. UNJ', ' Rawamangun', 10, 'SD'),
('16499961200001', 'SDS Budhaya I St. Agustinus', 'Jl. Cipinang Kebembem I/25', ' Cipinang', 10, 'SD'),
('16499961200002', 'SDS Islam Assa''adah', 'Jl. Madrasah No. 14', ' Cipinang', 10, 'SD'),
('16499961200003', 'SDS Kemala Bhayangkari 5', 'Komplek Polri Cipinang', ' Cipinang', 10, 'SD'),
('16499961200004', 'SDS Krida Putra', 'Jl. Cipinang Baru Komp. Kehaki', ' Cipinang', 10, 'SD'),
('16499961200005', 'SDS Mustika', 'Jl. Bekasi Timur Km. 15', ' Cipinang', 10, 'SD'),
('16499961200006', 'SDS Setia Bakti', 'Jl. Cipinang Timur No. 22', ' Cipinang', 10, 'SD'),
('16499961200007', 'SDS Cemerlang', 'Jl. Gurame No. 17, Rawamangun   ( )', ' Jati', 10, 'SD'),
('16499961200008', 'SDS Pembangunan Al Hikmah', 'Jl. Jati Barang V No. 40', ' Jati', 10, 'SD'),
('16499961200009', 'SDS Permata Harapan', 'Jl. Sunan Sedayu No. 41', ' Jati', 10, 'SD'),
('16499961200010', 'SDS Yayasan Pendidikan GKPI', 'Jl. Belanak VI No. 26 B', ' Jati', 10, 'SD'),
('16499961200011', 'SD IT Insan Mulia', 'Jl. Metro Jaya No. 47', ' Kayu Putih', 10, 'SD'),
('16499961200012', 'SDS Don Bosco II', 'Jl. Pulo Mas Barat V', ' Kayu Putih', 10, 'SD'),
('16499961200013', 'SDS Fransiskus III', 'Jl. Bangunan Barat', ' Kayu Putih', 10, 'SD'),
('16499961200014', 'SDS Islam An Nur', 'Jl. Batu Saphir No. 50, Puloma', ' Kayu Putih', 10, 'SD'),
('16499961200015', 'SDS Islam At Taubah', 'Jl. Pulo Mas Barat No. V', ' Kayu Putih', 10, 'SD'),
('16499961200016', 'SDS Islam Tugasku', 'Jl. Pulomas Jaya No. 2', ' Kayu Putih', 10, 'SD'),
('16499961200017', 'SDS Mekar Sari', 'Jl. Batu Sulaeman No. 1', ' Kayu Putih', 10, 'SD'),
('16499961200018', 'SDS Muhammadiyah 41', 'Jl. Marmer No. 7   9   11', ' Kayu Putih', 10, 'SD'),
('16499961200019', 'SDS Sevilla', 'Jl. Pulo Mas Jaya No. 1 Pacuan', ' Kayu Putih', 10, 'SD'),
('16499961200020', 'SDS BPSK I Pembangunan', 'Jl. Pisangan Lama III/ 3', ' Pisangan Timur', 10, 'SD'),
('16499961200021', 'SDS Advent VII', 'Jl. Pinang No. 24', ' Rawamangun', 10, 'SD'),
('16499961200022', 'SDS Al Azhar 13 Rawamangun', 'Jl. Sunan Giri No. 1', ' Rawamangun', 10, 'SD'),
('16499961200023', 'SDS Islam At Taqwa', 'Jl. Daksinapati Raya No. 2 Rt.', ' Rawamangun', 10, 'SD'),
('16499961200024', 'SDS Muhammadiyah 24', 'Jl. Balai Pustaka Barat No.2', ' Rawamangun', 10, 'SD'),
('16499961200025', 'SDS Nabawi Islamic School', 'Jl. Sawo Raya No. 24 Kav 436', ' Rawamangun', 10, 'SD'),
('16499961200026', 'SDS Pertiwi Abhilasa', 'Jl. Daksinapati Raya No. 10', ' Rawamangun', 10, 'SD'),
('16499961200027', 'SDS Tarakanita V', 'Jl. Pemuda No. 6', ' Rawamangun', 10, 'SD'),
('16499961200028', 'SDS Trisula Perwari 3', 'Jl. Balai Pustaka Baru I/38', ' Rawamangun', 10, 'SD'),
('16499962100001', 'PKBM NEGERI 13 CIPINANG', 'Jl. Cipinang Baru III/15', ' Cipinang', 10, 'SMP'),
('16499962100002', 'SMP Negeri 92', 'Jl. Perhubungan XII Rawamangun', ' Jati', 10, 'SMP'),
('16499962100003', 'SMP Negeri 158', 'Jl. TB.Badarudin', ' Jatinegara Kaum', 10, 'SMP'),
('16499962100004', 'SMP Negeri 158 Terbuka', 'Jl. TB. Badaruddin', ' Jatinegara Kaum', 10, 'SMP'),
('16499962100005', 'SMP Negeri 99', 'Jl. Sirap', ' Kayu Putih', 10, 'SMP'),
('16499962100006', 'PKBM Miftahul Jannah Paket B', 'Jl. Pisangan Lama III / 2B', ' Pisangan Timur', 10, 'SMP'),
('16499962100007', 'SMP Negeri 232', 'Jl. Gading Raya No. 16', ' Pisangan Timur', 10, 'SMP'),
('16499962100008', 'SMP Negeri 44', 'Jl. GADING RAYA VII', ' Pisangan Timur', 10, 'SMP'),
('16499962100009', 'SMP Negeri 74', 'Jl. Pemuda No.6 danJl.Mustika', ' Rawamangun', 10, 'SMP'),
('16499962200001', 'SMP Budhaya II St. Agustinus', 'Jl. Cipinang Kebembem I/ 25', ' Cipinang', 10, 'SMP'),
('16499962200002', 'SMP Krida Putra', 'Jl. Komplek Kehakiman', ' Cipinang', 10, 'SMP'),
('16499962200003', 'SMP Setia Bakti', 'Jl. A3 Cipinang Timur No. 22', ' Cipinang', 10, 'SMP'),
('16499962200004', 'SMP Al Ghurabaa', 'Jl. Tenggiri Raya No. 47', ' Jati', 10, 'SMP'),
('16499962200005', 'SMP Al Hikmah', 'Jl. Jatibarang V No. 40', ' Jati', 10, 'SMP'),
('16499962200006', 'SMP Al Washliyah 1', 'Jl. Al Washliyah No. 14', ' Jati', 10, 'SMP'),
('16499962200007', 'SMP YP. GKPI Rawamangun', 'Jl. Belanak VI No. 26 B.', ' Jati', 10, 'SMP'),
('16499962200008', 'SMP Garuda', 'Jl. Raya Bekasi Timur No. 21', ' Jatinegara Kaum', 10, 'SMP'),
('16499962200009', 'SMP Islam L''Pina', 'Jl.Raya Bekasi Timur Km. 14 No', ' Jatinegara Kaum', 10, 'SMP'),
('16499962200010', 'SMP Don Bosco II', 'Jl. Pulomas Barat V', ' Kayu Putih', 10, 'SMP'),
('16499962200011', 'SMP Islam At Taubah', 'Jl. Pulomas II', ' Kayu Putih', 10, 'SMP'),
('16499962200012', 'SMP Islam Tugasku', 'Jl. Pulomas Jaya No. 2', ' Kayu Putih', 10, 'SMP'),
('16499962200013', 'SMP Mekarsari', 'Jl. Batu Sulaeman No. 1', ' Kayu Putih', 10, 'SMP'),
('16499962200014', 'SMP Muhammadiyah 39', 'Jl. Marmer No. 1 7 9 11', ' Kayu Putih', 10, 'SMP'),
('16499962200015', 'SMP Sevilla', 'Jl. Pulo Mas Jaya Pacuan Kuda', ' Kayu Putih', 10, 'SMP'),
('16499962200016', 'SMP St. Fransiskus II', 'Jl. Bangunan Barat', ' Kayu Putih', 10, 'SMP'),
('16499962200017', 'PKBM FARADIKA', 'Jl. Cipinang Kebembem V No. 32', ' Pisangan Timur', 10, 'SMP'),
('16499962200018', 'SMP Kartini 3', 'Jl. Gading Raya II No. 50', ' Pisangan Timur', 10, 'SMP'),
('16499962200019', 'SMP Pelita Tiga No. 1', 'Jl. Jend. A. Yani Kav. 98', ' Pisangan Timur', 10, 'SMP'),
('16499962200020', 'SMP Srikandi', 'Jl. Cipinang Kebembem V/32', ' Pisangan Timur', 10, 'SMP'),
('16499962200021', 'SMP Villa Mas', 'Jl. Kayu Putih Utara III C', ' Pulo Gadung', 10, 'SMP'),
('16499962200022', 'SMP Advent VII', 'Jl. Pinang No.24', ' Rawamangun', 10, 'SMP'),
('16499962200023', 'SMP Bahagia', 'Jl. Kayu Jati II/27', ' Rawamangun', 10, 'SMP'),
('16499962200024', 'SMP Diponegoro 1', 'Jl. Sunan Giri No.5', ' Rawamangun', 10, 'SMP'),
('16499962200025', 'SMP Islam Al Azhar 12', 'Jl. Sunan Giri No.1', ' Rawamangun', 10, 'SMP'),
('16499962200026', 'SMP Labschool Jakarta', 'Jl. Pemuda Komplek UNJ', ' Rawamangun', 10, 'SMP'),
('16499962200027', 'SMP Muhammadiyah 31', 'Jl. Balai Pustaka Barat No. 2', ' Rawamangun', 10, 'SMP'),
('16499962200028', 'SMP Tarakanita 4', 'Jl. Balai Pustaka Baru 1', ' Rawamangun', 10, 'SMP'),
('16499962200029', 'SMP Trisula Perwari 3', 'Jl. Balai Pustaka Baru I/38', ' Rawamangun', 10, 'SMP'),
('16499962200030', 'SMP YWKA II', 'Jl. Rawamangun Muka II / I', ' Rawamangun', 10, 'SMP'),
('16499963100001', 'PKBM NEGERI 13 CIPINANG', 'Jl. Cipinang Baru III/15', ' Cipinang', 10, 'SMA'),
('16499963100002', 'SMA Negeri 36', 'Jl. Perhubungan Raya Rawamangun', ' Jati', 10, 'SMA'),
('16499963100003', 'SMA Negeri 21', 'Jl. Tanah Mas Raya No. 1', ' Kayu Putih', 10, 'SMA'),
('16499963100004', 'PKBM Miftahul Jannah Paket C', 'Jl. Pisangan Lama III / 2B', ' Pisangan Timur', 10, 'SMA'),
('16499963200001', 'SMA Dian Persada', 'Jl. Cipinang Baru I No.21', ' Cipinang', 10, 'SMA'),
('16499963200002', 'SMA Don Bosco 2', 'Jl. Pulo Mas Barat V', ' Kayu Putih', 10, 'SMA'),
('16499963200003', 'SMA Fransiskus 2', 'Jl. Bangunan Barat No. 29', ' Kayu Putih', 10, 'SMA'),
('16499963200004', 'SMA Villa Mas', 'Jl. Kayu Putih Utara III C', ' Kayu Putih', 10, 'SMA'),
('16499963200005', 'PKBM FARADIKA', 'Jl. Cipinang Kebembem V No. 32', ' Pisangan Timur', 10, 'SMA'),
('16499963200006', 'SMA Pelita Tiga', 'Jl. Jend. A. Yani Kav.98', ' Pisangan Timur', 10, 'SMA'),
('16499963200007', 'SMA Al  Ghurabaa', 'Jl. Tenggiri Raya No. 47', ' Rawamangun', 10, 'SMA'),
('16499963200008', 'SMA Al Hikmah', 'Jl. Jati Barang V/40', ' Rawamangun', 10, 'SMA'),
('16499963200009', 'SMA Diponegoro 1', 'Jl. Sunan Giri No. 5', ' Rawamangun', 10, 'SMA'),
('16499963200010', 'SMA Labschool Jakarta', 'Jl. Pemuda Komplek Uiversitas', ' Rawamangun', 10, 'SMA'),
('16499963200011', 'SMA Muhammadiyah 11', 'Jl. Balai Pustaka Barat No. 2', ' Rawamangun', 10, 'SMA'),
('16499963200012', 'SMA Tunas Markatin', 'Jl. Waru No. 20B', ' Rawamangun', 10, 'SMA'),
('16499964100001', 'SMK Negeri 7', 'Jl. Tenggiri No. 1 Rawamangun', ' Jati', 10, 'SMK'),
('16499964100002', 'SMK Negeri 26', 'Jl. Balai Pustaka Baru 1', ' Rawamangun', 10, 'SMK'),
('16499964200001', 'SMK Budhaya 2 St. Agustinus', 'Jl. Cipinang Kebembem I No. 25', ' Cipinang', 10, 'SMK'),
('16499964200002', 'SMK Kemala Bhayangkari 1 Jakarta', 'Jl. Raya Bekasi Timur', ' Cipinang', 10, 'SMK'),
('16499964200003', 'SMK Al Washliyah Jakarta', 'Jl. Al Washliyah No. 14', ' Jati', 10, 'SMK'),
('16499964200004', 'SMK Garuda', 'Jl. Raya Bekasi', ' Jatinegara Kaum', 10, 'SMK'),
('16499964200005', 'SMK L''Pina Jakarta', 'Jl. Raya Bekasi Timur Km. 14.8', ' Jatinegara Kaum', 10, 'SMK'),
('16499964200006', 'SMK ATLANTICA WISATA JAKARTA', 'Jl. Pacuan Kuda No. 1 5 Gedung', ' Kayu Putih', 10, 'SMK'),
('16499964200007', 'SMK Fransiskus 1 Jakarta', 'Jl. Bangunan Barat No. 29', ' Kayu Putih', 10, 'SMK'),
('16499964200008', 'SMK Cikra 1 Jakarta', 'Jl. Cipinang Kebembem V/32', ' Pisangan Timur', 10, 'SMK'),
('16499964200009', 'SMK Pelita Tiga No. 1 Jakarta', 'Jl. Jendral Ahmad Yani / By Pa', ' Pisangan Timur', 10, 'SMK'),
('16499964200010', 'SMK Bina Pembangunan I', 'Jl. Kayu Putih Selatan IV No.', ' Pulo Gadung', 10, 'SMK'),
('16499964200011', 'SMK Boss Multimedia', 'Jl. Pulo Asem Utara No. 60', ' Pulo Gadung', 10, 'SMK'),
('16499964200012', 'SMK Fensensius Jakarta', 'Jl. Tm. Pulo Asem 60', ' Pulo Gadung', 10, 'SMK'),
('16499964200013', 'SMK Nusantara Wisata', 'Jl. Kayu Putih Utara III C', ' Pulo Gadung', 10, 'SMK'),
('16499964200014', 'SMK Sarasvati', 'Jl. Pacuan Kuda No. 1 5', ' Pulo Gadung', 10, 'SMK'),
('16499964200015', 'SMK Diponegoro 1 Jakarta', 'Jl. Sunan Giri 5', ' Rawamangun', 10, 'SMK'),
('16499964200016', 'SMK Mandala Tiara Bangsa', 'Jl. Rawamangun Muka Barat 2', ' Rawamangun', 10, 'SMK'),
('16499964200017', 'SMK Prestasi Agung', 'Jl. Rawamangun Muka Selatan No', ' Rawamangun', 10, 'SMK'),
('16499964200018', 'SMK Santa Lucia', 'Jl. Rawamangun Muka Barat 2', ' Rawamangun', 10, 'SMK'),
('16499964200019', 'SMK Tunas Markatin', 'Jl. Waru No. 20 B', ' Rawamangun', 10, 'SMK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE `master_siswa` (
  `id_siswa` int(25) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jkelamin` varchar(5) NOT NULL,
  `nama_sekolah` varchar(20) NOT NULL,
  `tingkat_sekolah` varchar(5) NOT NULL,
  `kec` int(10) NOT NULL,
  `status_sek` int(5) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_sekolah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_siswa`
--

INSERT INTO `master_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `no_tlp`, `alamat`, `email`, `password`, `foto`, `jkelamin`, `nama_sekolah`, `tingkat_sekolah`, `kec`, `status_sek`, `agama`, `tempat_lahir`, `tgl_lahir`, `alamat_sekolah`) VALUES
(4, '22334455', 'Reza Fauzan', '2141352464', 'asdfghj', 'reza.fauzan@gmail.com', 'adb4f96720e47b7f3a6ec96a05ca6492', '4.jpg', 'L', '16440063100009', 'SMA', 4, 1, 'islam', 'Yogya', '2016-08-01', 'sadasfasf'),
(5, '140981', 'Reza Fauzan', '2141352464', '12345', 'reza@icube.com', 'e3cc69fd552970fba65112340fecdb26', '5.jpg', 'L', '16499963100002', 'SMA', 10, 1, '', '', '0000-00-00', ''),
(6, '32321', 'Reka', '2141352464', 'drdfgjhk', 'rekadwi@gmail.com', 'd488fe5d45674507d885585bec7820ef', '6.jpg', 'L', '16470062200010', 'SMP', 7, 1, '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id_berita` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id_berita`, `judul`, `isi`, `gambar`, `waktu`, `edit_time`) VALUES
(1, 'Lorem Ipsum', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mauris sit amet luctus ornare. Nam tincidunt quam id rhoncus sollicitudin. Proin nec eros commodo orci congue convallis ut vel ligula. Proin id malesuada sapien. Vestibulum vitae lacus ex. Maecenas pharetra, felis vitae tincidunt luctus, tellus eros commodo elit, ac vestibulum dui nibh nec lectus. In sed congue sapien. Morbi consequat, libero vel commodo molestie, sapien dui efficitur neque, et interdum metus est nec magna. Vestibulum metus dolor, pharetra non lacus non, faucibus malesuada ante. Cras aliquet venenatis sapien in euismod. Curabitur vel sodales ligula, vel scelerisque arcu.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Nam tincidunt nisl vitae metus aliquet, id consequat elit aliquet. Pellentesque nec sem suscipit, feugiat est tristique, tempus lacus. Morbi libero dolor, varius ac justo vel, hendrerit laoreet metus. Pellentesque ornare viverra nibh a blandit. Praesent vulputate maximus orci, non elementum turpis tristique vel. Vivamus viverra molestie ligula, a convallis nibh convallis in. Cras auctor elit ac lorem placerat malesuada. Phasellus lacinia varius luctus.</p>\r\n', 'news-1.jpg', '2016-04-25 10:26:12', '2016-04-25 13:02:21'),
(2, 'Lerom ipsum 234', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel porta justo. Proin fermentum felis metus, et molestie turpis varius nec. Aliquam fringilla neque pretium lorem pretium fringilla. Donec et nisi ultricies, tincidunt libero hendrerit, placerat ipsum. Nam neque orci, aliquam sed lorem ac, dignissim gravida mi. Vestibulum faucibus, risus in mattis facilisis, diam ex eleifend nunc, ac dapibus magna neque sed ante. Vivamus a enim sit amet est gravida placerat. Nulla mi ligula, condimentum nec lorem sit amet, rhoncus vulputate tortor. Maecenas laoreet accumsan placerat. Ut porttitor diam quis molestie euismod.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Sed varius, nibh et venenatis euismod, lacus libero commodo tortor, in ultricies justo neque volutpat libero. Vivamus eros felis, efficitur non suscipit ut, pretium a libero. Maecenas accumsan urna metus, quis laoreet augue posuere a. Nulla tortor felis, fringilla ut est tristique, viverra volutpat felis. Sed fermentum tristique ultrices. Integer rhoncus enim id lorem laoreet, eu euismod purus tincidunt. Cras diam massa, rhoncus vel mattis quis, sodales nec nunc. Vivamus eget ipsum euismod, mattis velit vel, lacinia urna. Pellentesque accumsan diam nec mi facilisis, sed condimentum nisi tincidunt. Curabitur quam ante, accumsan quis urna venenatis, lobortis feugiat leo. Pellentesque aliquam velit non massa porttitor facilisis.</p>\r\n', 'news-2.jpg', '2016-04-25 11:33:42', '2016-04-25 13:02:21'),
(3, 'Pelatihan komputer guru', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel porta justo. Proin fermentum felis metus, et molestie turpis varius nec. Aliquam fringilla neque pretium lorem pretium fringilla. Donec et nisi ultricies, tincidunt libero hendrerit, placerat ipsum. Nam neque orci, aliquam sed lorem ac, dignissim gravida mi. Vestibulum faucibus, risus in mattis facilisis, diam ex eleifend nunc, ac dapibus magna neque sed ante. Vivamus a enim sit amet est gravida placerat. Nulla mi ligula, condimentum nec lorem sit amet, rhoncus vulputate tortor. Maecenas laoreet accumsan placerat. Ut porttitor diam quis molestie euismod.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Sed varius, nibh et venenatis euismod, lacus libero commodo tortor, in ultricies justo neque volutpat libero. Vivamus eros felis, efficitur non suscipit ut, pretium a libero. Maecenas accumsan urna metus, quis laoreet augue posuere a. Nulla tortor felis, fringilla ut est tristique, viverra volutpat felis. Sed fermentum tristique ultrices. Integer rhoncus enim id lorem laoreet, eu euismod purus tincidunt. Cras diam massa, rhoncus vel mattis quis, sodales nec nunc. Vivamus eget ipsum euismod, mattis velit vel, lacinia urna. Pellentesque accumsan diam nec mi facilisis, sed condimentum nisi tincidunt. Curabitur quam ante, accumsan quis urna venenatis, lobortis feugiat leo. Pellentesque aliquam velit non massa porttitor facilisis.</p>\r\n', 'news-3.jpg', '2016-04-25 11:34:36', '2016-04-25 13:02:21'),
(4, 'Mengenal mesin', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel porta justo. Proin fermentum felis metus, et molestie turpis varius nec. Aliquam fringilla neque pretium lorem pretium fringilla. Donec et nisi ultricies, tincidunt libero hendrerit, placerat ipsum. Nam neque orci, aliquam sed lorem ac, dignissim gravida mi. Vestibulum faucibus, risus in mattis facilisis, diam ex eleifend nunc, ac dapibus magna neque sed ante. Vivamus a enim sit amet est gravida placerat. Nulla mi ligula, condimentum nec lorem sit amet, rhoncus vulputate tortor. Maecenas laoreet accumsan placerat. Ut porttitor diam quis molestie euismod.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Sed varius, nibh et venenatis euismod, lacus libero commodo tortor, in ultricies justo neque volutpat libero. Vivamus eros felis, efficitur non suscipit ut, pretium a libero. Maecenas accumsan urna metus, quis laoreet augue posuere a. Nulla tortor felis, fringilla ut est tristique, viverra volutpat felis. Sed fermentum tristique ultrices. Integer rhoncus enim id lorem laoreet, eu euismod purus tincidunt. Cras diam massa, rhoncus vel mattis quis, sodales nec nunc. Vivamus eget ipsum euismod, mattis velit vel, lacinia urna. Pellentesque accumsan diam nec mi facilisis, sed condimentum nisi tincidunt. Curabitur quam ante, accumsan quis urna venenatis, lobortis feugiat leo. Pellentesque aliquam velit non massa porttitor facilisis.</p>\r\n', 'news-4.jpg', '2016-04-25 11:35:09', '2016-04-25 13:02:21'),
(5, 'Berita testing', '<p>ini contoh berita</p>\r\n', NULL, '2016-07-24 19:07:26', '2016-07-24 19:07:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id_pelatihan` int(25) NOT NULL,
  `nama_pelatihan` varchar(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `status_peserta` int(2) NOT NULL,
  `tingkat_peserta` varchar(10) NOT NULL,
  `jenis_pelatihan` int(2) NOT NULL,
  `deskripsi` text NOT NULL,
  `gelombang` int(2) NOT NULL,
  `status_pendaftaran` int(2) NOT NULL,
  `id_lembaga` int(10) NOT NULL,
  `kkm` varchar(10) DEFAULT NULL,
  `kuota` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelatihan`
--

INSERT INTO `pelatihan` (`id_pelatihan`, `nama_pelatihan`, `tgl`, `status_peserta`, `tingkat_peserta`, `jenis_pelatihan`, `deskripsi`, `gelombang`, `status_pendaftaran`, `id_lembaga`, `kkm`, `kuota`) VALUES
(1, 'Latihan Joget', '2016-06-16 00:00:00', 3, 'TK', 1, 'joget asyik joget', 1, 1, 2, NULL, 0),
(2, 'Latihan Nyanyi dan Sertifikasi', '2016-06-30 00:00:00', 1, 'ALL', 2, 'nyanyi sek biar dapat sertifikat', 1, 2, 2, '60', 0),
(4, 'Pelatihan Perakitan PC', '2016-07-29 10:30:00', 3, 'ALL', 2, '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;">Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti &quot;Bagian isi disini, bagian isi disini&quot;, sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat &quot;Lorem Ipsum&quot; akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</span></p>\r\n', 1, 1, 2, '70', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_daftar` int(11) NOT NULL,
  `id_peserta` varchar(255) NOT NULL,
  `id_pelatihan` varchar(255) NOT NULL,
  `nilai` int(60) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_daftar` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_daftar`, `id_peserta`, `id_pelatihan`, `nilai`, `status`, `status_daftar`) VALUES
(5, '330002221241051', '2', 0, '1', 'guru'),
(7, '6', '4', 56, '1', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id_profil` int(10) NOT NULL,
  `nama_profil` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id_profil`, `nama_profil`, `konten`, `gambar`) VALUES
(1, 'Profil Singkat', '<p>Pusat Pengembangan Kompetensi Guru dan Kejuruan ( P2KGK) Jakarta Timur adalah Unit Pelaksana Teknis (UPT) Dinas Pendidikan Provinsi DKI Jakarta yang ditetapkan berdasarkan Peraturan Gubernur Pemerintah Provinsi DKI Jakarta Nomor 350 Tahun 2014 dengan tugas pokok dan fungsi sebagaimana dijelaskan pada Pasal 4 ayat 1 dan 2 yakni melaksanakan pembinaan dan pengembangan kompetensi guru pada semua jenjang pendidikan dan peserta didik kejuruan.</p>\r\n', 'Profile-1.jpg'),
(2, 'Sejarah', '<p>P2KGK Jakarta Timur berawal didirikan dengan nama Puslatdikjur atau Pusat Pelatihan dan Pendidikan Kejuruan Jakarta Timur. Memasuki awal tahun 2015, Dinas Pendidikan DKI Jakarta, melakukan restrukturisasi pada Pusat Pendidikan Pelatihan Pendidikan Kejuruan (Pusdiklatjur). Dimana, Pusdiklatjur kini diubah menjadi Pusat Pengembangan Kompetensi Guru dan Kejuruan (P2KGK). Disesuaikan dengan adanya Surat Edaran Kepala Dinas Pendidikan Provinsi DKI Jakarta No. 10/SE/2015 tentang Perubahan Nomenklatur Organisasi PUSLATDIKJUR menjadi Pusat Pengembangan Kompetensi Guru dan Kejuruan (P2KGK). Adanya perubahan ini dikarenakan Puslatdikjur hanya memberikan pendidikan dan pelatihan bagi peserta didik saja. Sedangkan kini, selain memberikan pelatihan bagi peserta didik kejuruan, P2KGK Jakarta timur juga memberikan pembinaan, pengembangan kompetensi guru, sertifikasi guru serta uji kompetensi guru pada semua jenjang pendidikan.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tujuan adanya P2KGK Jakarta timur adalah sebagai salah satu sarana untuk memberikan pendidikan dan pelatihan untuk meningkatkan dan mengembangkan kompetensi guru pada semua jenjang dan peserta didik khususnya kejuruan.</p>\r\n\r\n<p>Latar belakang dari adanya P2KGK ini adalah :</p>\r\n\r\n<ol>\r\n	<li>Diperlukannya saran pelatihan yang menunjang kualitas pendidikan di Jakarta Timur.</li>\r\n	<li>Diperlukannya program dan kegiatan yang menunjang pengembangan kompetensi guru di Jakarta Timur.</li>\r\n	<li>Diperlukannya program pelatihan untuk meningkatkan kompetensi siswa kejuruan di Jakarta Timur.</li>\r\n	<li>Peningkatan kualitas mutu pendidikan, khususnya di Jakarta Timur.</li>\r\n</ol>\r\n', 'Profile-2.jpg'),
(3, 'Tugas & Fungsi', '<p><strong>Tugas Pokok dan Fungsi :</strong></p>\r\n\r\n<p><strong>Kepala P2KGK</strong></p>\r\n\r\n<ol style="list-style-type:lower-alpha;">\r\n	<li>Memimpin dan mengoordinasikan pelaksanaan tugas dan fungsi P2KGK Jakarta Timur sebagaimana dimaksud dalam pasal 4;</li>\r\n	<li>Mengkoordinasikan pelaksanaan tugas Subbagian Tata Usaha, Satuan Pelaksana dan Subkelompok Jabatan Fungsional;</li>\r\n	<li>Melaksanakan koordinasi dan kerja sama dengan SKPD/UKPD dan/atau Instansi Pemerintah/Swasta dalam rangka pelaksanaan tugas dan fungsi P2KGK; dan</li>\r\n	<li>Melaporkan dan mempertanggungjawabkan pelaksanaan tugas dan fungsi P2KGK.</li>\r\n</ol>\r\n\r\n<p><strong>Subbagian Tata Usaha</strong></p>\r\n\r\n<ol style="list-style-type:lower-alpha;">\r\n	<li>Menyusun bahan rencana startegi serta rencana kerja dan anggaran P2KGK sesuai dengan lingkup tugasnya;</li>\r\n	<li>Melaksanakan rencana strategis dan dokumen pelaksanaan anggaran P2KGK sesuai dengan lingkup tugasnya;</li>\r\n	<li>Mengoordinasikan penyusunan rencana strategis serta rencana kerja dan anggaran P2KGK;</li>\r\n	<li>Melaksanakan monitoring, pengendalian dan evaluasi pelaksanaan rencana strategis dan dokumen pelaksanaan anggaran P2KGK;</li>\r\n	<li>Menyusun pedoman, standard dan prosedur teknis P2KGK;</li>\r\n	<li>Melaksanakan pengelolaan kepegawaian, keuangan dan barang P2KGK;</li>\r\n	<li>Melaksanakan kegiatan ketatausahaan dan kerumahtanggaan P2KGK;</li>\r\n	<li>Melaksanakan pengelolaan kearsipan P2KGK;</li>\r\n	<li>Melaksanakan penyediaan, penatausahaan, penggunaan, pemeliharaan dan perawatan prasarana dan sarana kerja P2KGK;</li>\r\n	<li>Menghimpun, menganalisis dan mengajukan kebutuhan penyediaan, pemeliharaan serta perawatan prasarana dan sarana kerja pada P2KGK;</li>\r\n	<li>Memelihara keamanan, ketertiban, keindahan, kebersihan dan kenyamanan kantor P2KGK;</li>\r\n	<li>Melaksanakan pengelolaan teknologi informasi P2KGK;</li>\r\n	<li>Melaksanakan publikasi kegiatan dan pengaturan acara P2KGK;</li>\r\n	<li>Mengoordinasikan penyusunan laporan keuangan, kinerja dan kegiatan serta akuntabilitas P2KGK;</li>\r\n	<li>Melaksanakan pengelolaan ruang rapat, perpustakaan dan audio visual P2KGK ; dan</li>\r\n	<li>Melaporkan dan mempertanggungjawabkan pelaksanaan tugas Subbagian Tata Usaha.</li>\r\n</ol>\r\n\r\n<p><strong>Kepala Satuan Pelaksana Kompetensi Guru</strong></p>\r\n\r\n<ol style="list-style-type:lower-alpha;">\r\n	<li>Merancang pelatihan untuk peningkatan kompetensi guru-guru Se-Jakarta Timur;</li>\r\n	<li>Melaksanakan sistematika pelatihan kompetensi guru di P2KGK;</li>\r\n	<li>Memonitoring pelaksanaan pelatihan kompetensi guru di P2KGK;</li>\r\n	<li>Mengevaluasi pelaksanaan pelatihan kompetensi guru di P2KGK bersama Kepala P2KGK;</li>\r\n</ol>\r\n\r\n<p><strong>Kepala Satuan Pelaksana Kejuruan</strong></p>\r\n\r\n<ol style="list-style-type:lower-alpha;">\r\n	<li>Merancang pelatihan untuk peningkatan kompetensi siswa-siswa kejuruan Se-Jakarta Timur;</li>\r\n	<li>Melaksanakan sistematika pelatihan kompetensi siswa di P2KGK;</li>\r\n	<li>Memonitoring pelaksanaan pelatihan kompetensi siswa di P2KGK;</li>\r\n	<li>Mengevaluasi pelaksanaan pelatihan kompetensi siswa di P2KGK bersama Kepala P2KGK;</li>\r\n</ol>\r\n\r\n<p><strong>Sub Kelompok Jabatan Fungsional</strong></p>\r\n\r\n<ol style="list-style-type:lower-alpha;">\r\n	<li>Membantu keterlaksanaan pelatihan dalam hal administrasi dan alokasi anggaran;</li>\r\n	<li>Pelaksana dalam pelatihan-pelatihan di P2KGK.</li>\r\n</ol>\r\n', ''),
(4, 'Struktur Organisasi', '<ol style="list-style-type:upper-alpha;">\r\n	<li><strong>Data Ketenagaan</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Jabatan Fungsional Umum</li>\r\n</ol>\r\n\r\n<div class="table-responsive">\r\n<table class="table">\r\n	<thead>\r\n		<tr>\r\n			<th>NO</th>\r\n			<th>NAMA</th>\r\n			<th>NIK/NRK</th>\r\n			<th>PANGKAT/GOLONGAN</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Drs. H. Bambang Pramestiadi, MM.</td>\r\n			<td>195805271983031004/151976</td>\r\n			<td>Pembina Tk.I Gol. IV/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>H. Didi Sughandi, S.sos. M.pd.</td>\r\n			<td>196310081985011001/084592</td>\r\n			<td>Pembina Tk.I Gol. IV/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Hj. Iis Puspitasari, SE. MM.</td>\r\n			<td>196312021985022003/087199</td>\r\n			<td>Pembina Gol. IV/a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Ni Made Yunitri, SH</td>\r\n			<td>197006131998032008/124406</td>\r\n			<td>Penata Tk.I Gol. III/d</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Rusfandi</td>\r\n			<td>196212041982031002/151875</td>\r\n			<td>Penata Gol. III/c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Sukiman, BA.</td>\r\n			<td>196008251981031002/130218</td>\r\n			<td>Penata Gol. III/c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Sumarto</td>\r\n			<td>195809031981021003/131694</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Trisno Agus Aryanto</td>\r\n			<td>195905061981111001/148772</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Sisca Herine Versary</td>\r\n			<td>198510222010012034/177691</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Agus Warman</td>\r\n			<td>195907061981031009/153735</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>R. Bambang Krisnanto</td>\r\n			<td>196811212008011009/171953</td>\r\n			<td>Penata Muda Gol. III/a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Rasmida Simarmata</td>\r\n			<td>196007101984032007/081515</td>\r\n			<td>Penata Muda Gol. III/a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Wahid Hermanto</td>\r\n			<td>196509292008011008/171338</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>2. Pegawai Harian Lepas</p>\r\n\r\n<div class="table-responsive">\r\n<table class="table">\r\n	<thead>\r\n		<tr>\r\n			<th>NO</th>\r\n			<th>NAMA</th>\r\n			<th>JABATAN</th>\r\n			<th>PENDIDIKAN TERAKHIR</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Warni Harpatmi</td>\r\n			<td>Administrasi</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Deri Kurnia Arafah</td>\r\n			<td>Administrasi</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Reka Dwi Syahputra</td>\r\n			<td>Administrasi</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Bintari</td>\r\n			<td>Administrasi</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>M. Agung Rivai</td>\r\n			<td>Toolman</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Endi</td>\r\n			<td>Toolman</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Jermanto</td>\r\n			<td>Toolman</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Bayu Suhatman</td>\r\n			<td>Toolman</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Maman</td>\r\n			<td>Toolman</td>\r\n			<td>STM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Dede Herdiana</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Jupriyatno</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Zulfikar Akbar</td>\r\n			<td>Keamanan</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Muhammad Isnaini</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>Makmun</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>Deden Adek Nugraha</td>\r\n			<td>Keamanan</td>\r\n			<td>D3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>Achmad Tri Haryanto</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>Dwi Ardiansyah</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>Dwi Nurhayati</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMEA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>Iwan Setiawan</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMEA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>Jamaludin</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>Miska Carolina</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>Putu Sanjaya</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>Rozzii</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>Taufik Hidayat</td>\r\n			<td>Keamanan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>Yuswanto</td>\r\n			<td>Keamanan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'Profile-4.jpg'),
(5, 'Aparatur', '<ol style="list-style-type:upper-alpha;">\r\n	<li><strong>Arah Kebijakan</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Manajemen peningkatan mutu berbasis sekolah (School Based Management) yang memberi kewenangan pada sekolah untuk merencanakan sendiri upaya peningkatan mutu secara keseluruhan</li>\r\n	<li>Pendidikan yang berbasis pada partisipasi komunitas (community&nbsp;based education) agar terjadi interaksi yang positif antara sekolah dengan masyarakat, sekolah sebagai&nbsp;community learning centre</li>\r\n	<li>Dengan menggunakan paradigma belajar atau&nbsp;learning&nbsp;paradigma yang akan menjadikan pelajar-pelajar atau&nbsp;learner&nbsp;menjadi manusia yang diberdayakan</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol style="list-style-type:upper-alpha;">\r\n	<li value="2"><strong>Strategi Pengembangan dan Pembangunan</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Secara mikro lebih menekankan pada unsur pelatih/ learner dan peserta didik melalui proses interaksi dan komunikasi. Ada output berupan pesan disampaikan dalam bentuk bahan belajar. Fungsi Pendidik / Learner sebagai pengirim pesan (senders) melalui kegiatan pembelajaran dalam pelatihan.</li>\r\n	<li>Secara makro lebih menekankan mekanisme secara keseluruhan yaitu ;</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Input</li>\r\n</ul>\r\n\r\n<p style="margin-left:1.0in;">Sistem nilai dan pengetahuan , sumber daya manusia , masukan instrumental berupa kurikulum , silabus , dan sebagainya. Termasuk sarana dan fasilitas pelatihan yang disiapkan.</p>\r\n\r\n<ul>\r\n	<li>Proses</li>\r\n</ul>\r\n\r\n<p style="margin-left:1.0in;">Segala sesuatu yang berkaitan dengan pelatihan yaitu proses belajar dan mengajar.</p>\r\n\r\n<ul>\r\n	<li>Output</li>\r\n</ul>\r\n\r\n<p style="margin-left:1.0in;">hasil yang diperoleh pendidikan bukan hanya terbentuknya pribadi lulusan/peserta didik yang memiliki pengetahuan, sikap, dan keterampilan sesuai dengan yang diharapkan dalam tujuan yang ingin dicapai. Namun juga keluaran penddikan mencakup segala hal yang dihsilkan oleh garapan pendidikan berupa: kemampuan peserta didik (human behavior), produk jasa (services) dalam pendidikan seperti hasil penelitian, produk barang berupa karya iintelektul ataupun karya yang sifatnya fisik material.</p>\r\n', NULL),
(6, 'Visi, Misi dan Motto', '<ol style="list-style-type:upper-alpha;">\r\n	<li><strong>Visi Dan Misi</strong></li>\r\n</ol>\r\n\r\n<p><strong><u>VISI</u></strong></p>\r\n\r\n<p align="center">&ldquo;Terwujudnya Layanan Pelatihan Peningkatan Kompetensi Guru yang berstandar Nasional dan berwawasan Global serta Memberikan pelayanan Pembinaan Kompetensi Kejuruan bagi Peserta Didik Sekolah Menengah Kejuruan sesuai dengan kebutuhan Dunia Usaha / Dunia Industri.&rdquo;</p>\r\n\r\n<p><strong><u>MISI</u></strong></p>\r\n\r\n<ol>\r\n	<li>Strategi memetakan Kompetensi Guru di Wilayah Kota Administrasi Jakarta Timur.</li>\r\n	<li>Berkompeten dalam memfasilitasi pelatihan Guru SD / SDLB / SMP / SMPLB / SMA / SMALB dan SMK Negeri maupun Swasta pada semua jenjang dan jenis pendidikan, Secara Profesional, Transparan dan Akutabel di Wilayah Kota Adminsitarsi Jakarta Timur.</li>\r\n	<li>Rancangan strategi pembelajaran bagi peningkatan kompetensi guru di Wilayah Kota Administrasi Jakarta Timur.</li>\r\n	<li>Profesional dalam Pembinaan Kompetensi Kejuruan bagi Peserta Didik Sekolah Menengah Kejuruan di Wilayah Kota Adminsitarsi Jakarta Timur.</li>\r\n	<li>Peningkatan kualitas mutu dan keterampilan pelatihan praktik sesuai kebutuhan Dunia Usaha/ Dunia Industri.</li>\r\n	<li>Efektif dalam pelayanan uji kompetensi dan sertifikasi bagi peserta didik sekolah Menengah Kejuruan di Wilayah Kota Administrasi Jakarta Timur.</li>\r\n	<li>Hubungan kemitraan yang profesional dalam rangka meningkatkan kompetensi guru di semua jenjang dan jenis pendidikan serta kompetensi peserta didik Sekolah Menengah Kejuruan di Wilayah Administarsi Jakarta Timur</li>\r\n	<li>Sebagai wadah pengadaa prasarana dan sarana pelatihan guru dan praktik kejuruan didik Sekolah Menengah Kejuruan.</li>\r\n</ol>\r\n\r\n<p style="margin-left:27.0pt;">&nbsp;</p>\r\n\r\n<ol style="list-style-type:upper-alpha;">\r\n	<li value="2"><strong>Motto P2KGK</strong></li>\r\n</ol>\r\n\r\n<p align="center" style="margin-left:9.0pt;"><strong>&ldquo;Progresif (Profesional, Unggul, Responsif dan Kompetitif) bersama P2KGK&rdquo;</strong></p>\r\n\r\n<p style="margin-left:9.0pt;">Makna :</p>\r\n\r\n<p style="margin-left:9.0pt;">Progresif mengartikan bahwa P2KGK adalah lembaga yang maju/meningkat dalam setiap pelaksanaan programnya. Dilain itu, Progresif sendiri merupakan kepanjangan dari :</p>\r\n\r\n<ol>\r\n	<li>Profesional, mengartikan bahwa P2KGK merupakan lembaga yang mengutamakan profesionalitas dalam setiap unsur pelatihan-pelatihannya serta menjadikan guru memiliki profesionalitas yang tinggi.</li>\r\n	<li>Unggul, mengartikan bahwa P2KGK merupakan lembaga yang mampu mencetak guru dan siswa dengan kompetensi unggul/berkelas.</li>\r\n	<li>Responsif, mengartikan bahwa P2KGK merupakan lembaga yang menjadikan sasaran pelatihan menjadi responsive terhadap kondisi pendidikan.</li>\r\n	<li>Kompetitif, mengartikan bahwa P2KGK merupakan lembaga yang mampu menjadikan guru dan siswa yang mengikuti pelatihannya menjadi kompetitif/mampu beraya saing dalam dunia pendidikan untuk guru dan dalam dunia Industri untuk siswa SMK.</li>\r\n</ol>\r\n', NULL),
(7, 'Program-Program Pelatihan Kompetensi Guru di P2KGK', '<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Pengembangan Kompetensi Guru Inklusi bagi Guru SD, SMP, SMA/SMK;</li>\r\n	<li>Pengembangan Peningkatan Kompetensi Guru Agama SD, SMP, SMA/SMK;</li>\r\n	<li>Pengembangan Peningkatan Kompetensi Guru BK SD, SMP, SMA/SMK;</li>\r\n	<li>Pengembangan Peningkatan Kompetensi Guru SD, SMP, SMA/SMK;</li>\r\n	<li>Pelatihan Analisis Materi Essensial Mata Pelajaran UN SD, SMP, SMA/SMK;</li>\r\n	<li>Pelatihan Asesor Kompetensi dan Lisensi Bidang Keahlian Ketenaga Listrikan;</li>\r\n	<li>Pelatihan Asesor Kompetensi dan Lisensi Bidang Keahlian Administrasi Perkantoran;</li>\r\n	<li>Pelatihan Asesor Kompetensi dan Lisensi Bidang Keahlian Komputer Informatika;</li>\r\n	<li>Pelatihan Asesor Kompetensi dan Lisensi Otomotif;</li>\r\n	<li>Pelatihan Asesor Kompetensi dan Lisensi Permesinan;</li>\r\n	<li>Pelatihan Asesor Kompetensi dan Lisensi Akuntansi;</li>\r\n	<li>Pelatihan Asesor Metodologi Bidang Keahlian Ketenaga Listrikan;</li>\r\n	<li>Pelatihan Asesor Metodologi Kompetensi Bidang Keahlian Permesinan;</li>\r\n	<li>Pelatihan Asesor Metodologi Bidang Keahlian Akuntansi ;</li>\r\n	<li>Pelatihan Asesor Metodologi Bidang Keahlian Otomotif ;</li>\r\n	<li>Pelatihan Asesor Metodologi Bidang Keahlian Teknik Komputer Jaringan;</li>\r\n	<li>Pelatihan Asesor Metodologi Bidang Keahlian Administrasi Perkantoran;</li>\r\n	<li>Pelatihan Kewirausahaan Teknik tune up EFI Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Komputer Accurate Manufacture Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Komputer Akuntasi Perpajakan Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Membuat Program PLC Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Model-Model Pembelajaran Jenjang SD, SMP, SMA/SMK;</li>\r\n	<li>Pelatihan Motivasi dan Pembangunan Karakter Bagi Guru SD, SMP, SMA/SMK;</li>\r\n	<li>Pelatihan Multimedia Dasar dan Internet Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Multimedia Lanjutan dan Internet Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan ;</li>\r\n	<li>Pelatihan Penelitian Tindakan Kelas (PTK) Bagi Guru SD, SMP, SMA/SMK;</li>\r\n	<li>Pelatihan Pengembangan Keprofesian Berkelanjutan Bagi Guru SD, SMP,SMA/SMK;</li>\r\n	<li>Pelatihan Peningkatan Kompetensi Persiapan Sertifikasi Bagi Guru SD, SMP, SMA/SMK;</li>\r\n	<li>Pelatihan Sistem Pendingin AC Mobil Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Spooring dan Balancing Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>pelatihan Teknik Pengelasan Building Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pelatihan Test Bent Bekerjasama Dengan DU/DI Untuk Guru SMK Kejuruan;</li>\r\n	<li>Pembentukan LSP Lanjutan.</li>\r\n	<li>Ahli Fungsi Guru Bidang Study dan Guru Pembimbing Khusus (GPK) Inklusif;</li>\r\n	<li>Bimtek Kemampuan Dasar (Calistung) Guru kelas II;</li>\r\n	<li>Bimtek Penyusunan Soal Ulangan Kenaikan Kelas (UKK) SDLB/SMPLB/SMALB;</li>\r\n	<li>Bimtek Tim Pengembang Kurikulum SD, SMP, SMA, dan SMK;</li>\r\n	<li>Lomba Penelitian Tindakan Kelas Guru Tingkat Provinsi DKI Jakarta;</li>\r\n	<li>Pelatihan Metode Hitung Cepat Kepada Guru Sekolah;</li>\r\n	<li>Pelatihan Pembinaan Guru/Siswa Terhadap Lagu-Lagu Daerah dan Lagu Wajib Nasional;</li>\r\n	<li>Penyelenggaraan Tes Diagnostik Guru Kelas IV, V, dan VI SD;</li>\r\n	<li>Pelatihan Pembelajaran Guru TK;</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type:upper-alpha;">\r\n	<li value="2"><strong>Program-Program Pelatihan Kejuruan di P2KGK</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Kategori Bengkel </strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Listrik (Instalasi Rumah/Instalasi Tenaga/PLC)</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan dan Praktek Ketenagalistrikan;</li>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Keahlian Teknis Listrik;</li>\r\n		<li>Pelatihan Kewirausahaan Teknik Pendingin AC dan Tata Udara Dasar Bekerjasama Dengan Asosiasi Untuk Siswa SMK Program Studi Keahlian Teknik Ketenagalistrikan dan Elektronika;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Mesin (Bubut/CNC/Las)</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan dan Praktek Operator Mesin CNC;</li>\r\n		<li>Pelatihan dan Praktek Teknik Permesinan;</li>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Teknik Las;</li>\r\n		<li>Pelatihan High Speed Untuk Siswa SMK;</li>\r\n		<li>Pelatihan Mesin High Speed Precision Lathe dan Mesin Surface Grinder Bekerjasama Dengan DU/DI Untuk Siswa SMK Program Keahlian Teknik Mesin;</li>\r\n		<li>Pelatihan Surface Grinder Siswa SMK;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Otomotif (Evi/Kendaraan Ringan)</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan dan Praktek Casis Kendaraan Ringan;</li>\r\n		<li>Pelatihan dan Praktek Kendaraan Ringan Tune Up EFI;</li>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Teknik Sepeda Motor;</li>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Teknik Kendaraan Ringan;</li>\r\n		<li>Pelatihan Kewirausahaan Teknisi Sepeda Motor Bekerjasama Dengan DU/DI Untuk Siswa SMK Program Keahlian Teknik Otomotif;</li>\r\n		<li>Pelatihan Kewirausahaan Teknik Tune Up EFI Bekerjasama Dengan DU/DI Untuk Siswa SMK Program Keahlian Teknik Otomotif;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Elektro (Audio/Vidio)</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan dan Praktek Teknik Audio Video;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n	<li value="2"><strong>Kategori Bidang/Jurusan </strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Multimedia</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan Kewirausahaan Teknisi Handphone Bekerjasama Dengan DU/DI Untuk Siswa SMK Program Keahlian Teknik Elektronika dan Multimedia;</li>\r\n		<li>Pelatihan Kewirausahaan Upgrading Software Hardware Handphone Bekerjasama Dengan DU/DI Untuk Siswa SMK Program Keahlian Teknik Elektornika Multimedia;</li>\r\n		<li>Pelatihan dan Praktek Multimedia;</li>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Komputer dan Jaringan;</li>\r\n		<li>Pelatihan Photography;</li>\r\n		<li>Pelatihan Kewirausahaan Grafik Desain dan Web Desain Bekerjasama Dengan DU/DI Untuk Siswa SMK Program Keahlian Teknik Elektronika dan Multimedia;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Administrasi Perkantoran</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan dan Praktek Administrasi Perkantoran dan Administrasi Akuntansi;</li>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Keahlian Administrasi Perkantoran;</li>\r\n		<li>Pelatihan Microsoft Office;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Akuntansi</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Pelatihan dan Sertifikasi Siswa SMK Kompetensi Keahlian Administrasi Akuntansi;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', ''),
(8, 'Fasilitas Sarana dan Prasarana di P2KGK', '<p>\r\n              <ol>\r\n              	<li>Gedung yang beralamat di Jl. Sawah Barat Duren Sawit Jakarta Timur</li>\r\n              	<li>Peralatan mesin penunjang untuk jurusan :\r\n              	<ul>\r\n              		<li>Tekhnik Otomotof</li>\r\n              		<li>Teknik Permesinan</li>\r\n              		<li>Teknik Informatika</li>\r\n              		<li>Teknik Kelistrikan</li>\r\n              		<li>Teknik Elektronika</li>\r\n              		<li>Bisnis Manajeman</li>\r\n              	</ul>\r\n              	</li>\r\n              </ol>\r\n\r\n              <ol>\r\n              	<li value="3">Gedung baru dalam proses penyelesaian, kondisi 85 %</li>\r\n              </ol>\r\n            </p>', NULL),
(9, 'Kemitraan Stakeholder dan DU/DI di P2KGK', '<p>\r\n              <ol>\r\n              	<li>PT. Nenggalamas Cipta Presisi (DU/DI pada Pelatihan Kewirausahaan Teknisi Handphone)</li>\r\n              	<li>LIA (Narasumber)</li>\r\n              	<li>LPIA (Narasumber)</li>\r\n              	<li>UNJ (Narasumber)</li>\r\n              </ol>\r\n            </p>', NULL),
(10, 'Aset', '<p>\r\n              <div class="table-responsive">\r\n\r\n              <table class="table p2kgktable">\r\n                <thead>\r\n                 <tr>\r\n                   <th>NO</th>\r\n                   <th>Nama Barang</th>\r\n                   <th>Spesifikasi</th>\r\n                   <th>Volume</th>\r\n                   <th>Keterangan</th>\r\n                 </tr>\r\n               </thead>\r\n                 <tbody>\r\n                 <tr>\r\n                   <td>1</td>\r\n                   <td>Immobilizer, Ignition Control Sistim</td>\r\n                   <td>Ecu, Injector (4Ea0)</td>\r\n                   <td>2 (unit)</td>\r\n                   <td>Di Bengkel Automotip (EFI)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>2</td>\r\n                   <td>Peralatan Paraga (Training ) Air &ndash; Bag Otomatis Pada Mobil</td>\r\n                   <td>\r\n                   <p>System Control (1 Ea)</p>\r\n                   Selenoid Valve Timer ( 2 Ea)</td>\r\n                   <td>1 (unit)</td>\r\n                   <td>Di Bengkel Automotip (EFI)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>3</td>\r\n                   <td>CNC Milling Machine</td>\r\n                   <td>Contol : Siemen &ndash; sinumerik 808d</td>\r\n                   <td>3 (unit)</td>\r\n                   <td>Laboratorium Mesin CNC</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>4</td>\r\n                   <td>Cylindrical Grinding Machine</td>\r\n                   <td>\r\n                   <p>Max Distance Betwen Center 600mm</p>\r\n\r\n                   <p>Max Swivel Over Table 320 Mm</p>\r\n\r\n                   <p>Max of Center 100 (kg)</p>\r\n                   Max External Grinding 300Mm</td>\r\n                   <td>1 (unit)</td>\r\n                   <td>Laboratorium Mesin CNC</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>5</td>\r\n                   <td>AC ( Air Conditioner ) Trainer</td>\r\n                   <td>\r\n                   <p>Compresor ; 12 Volt Dc</p>\r\n\r\n                   <p>Motor : 1 phase 2 Hp</p>\r\n                   Dimensi : 100x70x100cm</td>\r\n                   <td>2 (unit)</td>\r\n                   <td>Di Bengkel Automotip (EFI)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>6</td>\r\n                   <td>Car Training Toyota Innova</td>\r\n                   <td>\r\n                   <p>Dimensi : 300x180x150cm</p>\r\n\r\n                   <p>Systim Bahan Bakar : EFI , Djet Tronik</p>\r\n                   Type : ITR 2000cc. Vvti, DOHC</td>\r\n                   <td>5 (unit)</td>\r\n                   <td>Di Bengkel Automotip (EFI)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>7</td>\r\n                   <td>Central Lock, Alarm and Power Window Trainer</td>\r\n                   <td>\r\n                   <p>2 Buah Pintu Simulator , Banana Jack</p>\r\n                   1 Set (2Ea) Motor Power Window</td>\r\n                   <td>2 (unit)</td>\r\n                   <td>Di Bengkel Automotip (EFI)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>8</td>\r\n                   <td>Tool Kit</td>\r\n                   <td>Moult Blow Plastic Case</td>\r\n                   <td>5 (set)</td>\r\n                   <td>Di Bengkel Automotip (EFI)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>9</td>\r\n                   <td>Handy Talkie / Motorola GP-338v136</td>\r\n                   <td>SH: 749TQU 3340,3348,3211,3186</td>\r\n                   <td>4 (set)</td>\r\n                   <td>Di Pos Keamanan</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>10</td>\r\n                   <td>Ac Floor Standing 4dk Dalkin</td>\r\n                   <td>Rr 100 Dsxy. 14FVRN 100AXV 14</td>\r\n                   <td>2 (unit)</td>\r\n                   <td>Di Lantai 4 &amp; Lobby</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>11</td>\r\n                   <td>Mesin Potong Rumput</td>\r\n                   <td>Honda Q 435 H</td>\r\n                   <td>1 (unit)</td>\r\n                   <td>Di Ruang Cleaning</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>12</td>\r\n                   <td>Vertical Blind , Horden Susun</td>\r\n                   <td>-</td>\r\n                   <td>150 M</td>\r\n                   <td>Di Gedung Blok A</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>13</td>\r\n                   <td>Alat Olahraga / Fitnes</td>\r\n                   <td>Sepeda Statis</td>\r\n                   <td>2 (unit)</td>\r\n                   <td>Di Lobby</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>14</td>\r\n                   <td>Kursi Rapat</td>\r\n                   <td>Primer</td>\r\n                   <td>300 ( buah)</td>\r\n                   <td>Di Ruang Aula</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>15</td>\r\n                   <td>Kursi &frac12; Biro</td>\r\n                   <td>Unos</td>\r\n                   <td>15 (buah)</td>\r\n                   <td>Di TU ( Kursi Kerja)</td>\r\n                 </tr>\r\n                 <tr>\r\n                   <td>16</td>\r\n                   <td>CCTV</td>\r\n                   <td>-</td>\r\n                   <td>8 (unit)</td>\r\n                   <td>Di Lobby &amp; Luar Gedung Blok A dan B</td>\r\n                 </tr>\r\n               </tbody>\r\n              </table>\r\n            </div>\r\n\r\n            </p>', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(25) NOT NULL,
  `nama_ruang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`) VALUES
(1, 'a'),
(2, 'b'),
(3, 'c'),
(4, 'd'),
(5, 'e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `id_statistik` int(10) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_kepegawaian`
--

CREATE TABLE `status_kepegawaian` (
  `id_statuspeg` int(10) NOT NULL,
  `nama_statuspeg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_kepegawaian`
--

INSERT INTO `status_kepegawaian` (`id_statuspeg`, `nama_statuspeg`) VALUES
(1, 'PNS'),
(2, 'CPNS'),
(3, 'Honor K-1 / PTT'),
(4, 'Honor K-2'),
(5, 'Honor Murni Negeri 2005+'),
(6, 'PHL (K-2)'),
(7, 'PHL (Honor Murni)'),
(8, 'Guru Bantu'),
(9, 'Guru DPK'),
(10, 'Guru Depag'),
(11, 'Guru Tetap Yayasan'),
(12, 'Guru Tidak Tetap Yayasan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_jawaban_essay`
--

CREATE TABLE `ujian_jawaban_essay` (
  `id_jawaban` int(10) NOT NULL,
  `id_peserta` varchar(255) NOT NULL,
  `id_soal` int(10) NOT NULL,
  `jawaban` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_jawaban_essay`
--

INSERT INTO `ujian_jawaban_essay` (`id_jawaban`, `id_peserta`, `id_soal`, `jawaban`, `waktu`) VALUES
(6, '330002221241051', 6, 'biru', '2016-07-25 00:27:42'),
(7, '330002221241051', 7, 'kuning', '2016-07-25 00:27:42'),
(8, '330002221241051', 8, '4', '2016-07-25 00:27:42'),
(9, '330002221241051', 9, '21', '2016-07-25 00:27:42'),
(10, '330002221241051', 11, '12313', '2016-07-25 00:27:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_jawaban_obyektif`
--

CREATE TABLE `ujian_jawaban_obyektif` (
  `id_jawaban` int(10) NOT NULL,
  `id_peserta` varchar(255) NOT NULL,
  `id_soal` int(10) NOT NULL,
  `jawaban` varchar(2) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_jawaban_obyektif`
--

INSERT INTO `ujian_jawaban_obyektif` (`id_jawaban`, `id_peserta`, `id_soal`, `jawaban`, `waktu`) VALUES
(1, '6', 1, 'A', '2016-07-25 00:45:13'),
(2, '6', 5, 'D', '2016-07-25 00:45:13'),
(3, '6', 6, 'B', '2016-07-25 00:45:13'),
(4, '6', 7, 'A', '2016-07-25 00:45:13'),
(5, '6', 8, 'B', '2016-07-25 00:45:13'),
(6, '6', 9, 'A', '2016-07-25 00:45:13'),
(7, '6', 10, 'C', '2016-07-25 00:45:14'),
(8, '6', 11, 'A', '2016-07-25 00:45:14'),
(9, '6', 12, 'C', '2016-07-25 00:45:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_session_login`
--

CREATE TABLE `ujian_session_login` (
  `id_session` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_login` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_session_login`
--

INSERT INTO `ujian_session_login` (`id_session`, `email`, `tgl_login`, `status`) VALUES
(10, 'reza.fauzan1991@gmail.com', '2016-07-25', 1),
(11, 'rekadwi@gmail.com', '2016-07-25', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_soal_essay`
--

CREATE TABLE `ujian_soal_essay` (
  `id_soal` int(10) NOT NULL,
  `id_ujian` int(10) NOT NULL,
  `soal` text NOT NULL,
  `gbr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_soal_essay`
--

INSERT INTO `ujian_soal_essay` (`id_soal`, `id_ujian`, `soal`, `gbr`) VALUES
(6, 4, 'warna langit', ''),
(7, 4, 'warna ini?', '4-2.jpg'),
(8, 4, '10-2=?', ''),
(9, 4, '11+2=?', ''),
(11, 4, 'tahu bulat', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_soal_obyektif`
--

CREATE TABLE `ujian_soal_obyektif` (
  `id_soal` int(10) NOT NULL,
  `id_ujian` int(10) NOT NULL,
  `soal` text NOT NULL,
  `jawab_a` varchar(255) NOT NULL,
  `jawab_b` varchar(255) NOT NULL,
  `jawab_c` varchar(255) NOT NULL,
  `jawab_d` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kunci` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_soal_obyektif`
--

INSERT INTO `ujian_soal_obyektif` (`id_soal`, `id_ujian`, `soal`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `gambar`, `kunci`) VALUES
(1, 3, '1+1=', '2', '3', '4', '5', '', 'A'),
(5, 3, 'balonku ada', '2', '3', '4', '5', '', 'D'),
(6, 3, '4 sehat 5', 'ganteng', 'sempurna', 'terlalu', 'apa aja', '', 'B'),
(7, 3, '1', '23', '2', '3', '5', '', 'B'),
(8, 3, 'abc', 'd', 'e', 'f', 'g', '', 'A'),
(9, 3, 'aku...', 'makan', 'dia', 'tau', 'mbuh', '', 'A'),
(10, 3, 'ikan bernafas dengan...', 'paru2', 'insang', 'kulit', 'trakea', '', 'B'),
(11, 3, 'telur', 'kambing', 'kucing', 'ayam', 'manusia', '', 'C'),
(12, 3, 'ayam yg bertelur', 'jago', 'jantan', 'betina', 'laki', '', 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_tbl_ujian`
--

CREATE TABLE `ujian_tbl_ujian` (
  `id_ujian` int(10) NOT NULL,
  `id_pelatihan` int(10) NOT NULL,
  `waktu` int(10) NOT NULL,
  `jenis_soal` int(2) NOT NULL,
  `jumlah_soal` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_tbl_ujian`
--

INSERT INTO `ujian_tbl_ujian` (`id_ujian`, `id_pelatihan`, `waktu`, `jenis_soal`, `jumlah_soal`) VALUES
(3, 4, 100, 1, 9),
(4, 2, 50, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `useradmin`
--

CREATE TABLE `useradmin` (
  `ua_admin_id` int(10) NOT NULL,
  `ua_firstname` varchar(50) NOT NULL,
  `ua_lastname` varchar(50) NOT NULL,
  `ua_email` varchar(100) NOT NULL,
  `ua_password` varchar(64) NOT NULL,
  `ua_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ua_modified` datetime DEFAULT NULL,
  `ua_akses` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `useradmin`
--

INSERT INTO `useradmin` (`ua_admin_id`, `ua_firstname`, `ua_lastname`, `ua_email`, `ua_password`, `ua_created`, `ua_modified`, `ua_akses`) VALUES
(1, 'Hendy', 'Ivan', 'ivan@kolibrii.com', 'dbeede400c52447663e8ef72d5c9e973', '0000-00-00 00:00:00', '2015-03-13 11:15:23', 'staff'),
(2, 'reza', 'fauzan', 'reza@gmail.com', 'a5d761cdc5c24d422c3d6774417197fb', '2016-04-27 04:31:28', NULL, 'merchant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `ijazah`
--
ALTER TABLE `ijazah`
  ADD PRIMARY KEY (`id_ijazah`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `master_guru`
--
ALTER TABLE `master_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `master_sekolah`
--
ALTER TABLE `master_sekolah`
  ADD PRIMARY KEY (`induk_sekolah`);

--
-- Indexes for table `master_siswa`
--
ALTER TABLE `master_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id_statistik`);

--
-- Indexes for table `status_kepegawaian`
--
ALTER TABLE `status_kepegawaian`
  ADD PRIMARY KEY (`id_statuspeg`);

--
-- Indexes for table `ujian_jawaban_essay`
--
ALTER TABLE `ujian_jawaban_essay`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `ujian_jawaban_obyektif`
--
ALTER TABLE `ujian_jawaban_obyektif`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `ujian_session_login`
--
ALTER TABLE `ujian_session_login`
  ADD PRIMARY KEY (`id_session`);

--
-- Indexes for table `ujian_soal_essay`
--
ALTER TABLE `ujian_soal_essay`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `ujian_soal_obyektif`
--
ALTER TABLE `ujian_soal_obyektif`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `ujian_tbl_ujian`
--
ALTER TABLE `ujian_tbl_ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`ua_admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(35) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_golongan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ijazah`
--
ALTER TABLE `ijazah`
  MODIFY `id_ijazah` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kec` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `master_siswa`
--
ALTER TABLE `master_siswa`
  MODIFY `id_siswa` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id_pelatihan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id_statistik` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_kepegawaian`
--
ALTER TABLE `status_kepegawaian`
  MODIFY `id_statuspeg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ujian_jawaban_essay`
--
ALTER TABLE `ujian_jawaban_essay`
  MODIFY `id_jawaban` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ujian_jawaban_obyektif`
--
ALTER TABLE `ujian_jawaban_obyektif`
  MODIFY `id_jawaban` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ujian_session_login`
--
ALTER TABLE `ujian_session_login`
  MODIFY `id_session` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ujian_soal_essay`
--
ALTER TABLE `ujian_soal_essay`
  MODIFY `id_soal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ujian_soal_obyektif`
--
ALTER TABLE `ujian_soal_obyektif`
  MODIFY `id_soal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ujian_tbl_ujian`
--
ALTER TABLE `ujian_tbl_ujian`
  MODIFY `id_ujian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `useradmin`
--
ALTER TABLE `useradmin`
  MODIFY `ua_admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
