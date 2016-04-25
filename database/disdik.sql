-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Apr 2016 pada 17.45
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
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(10) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `tk` int(5) NOT NULL,
  `sd` int(5) NOT NULL,
  `smp` int(5) NOT NULL,
  `sma` int(5) NOT NULL,
  `smk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(10) NOT NULL,
  `nama_kec` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(10) NOT NULL,
  `alamat` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(10) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `jenis_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `foto` varchar(255) NOT NULL,
  `jenis_sek` int(10) NOT NULL,
  `jenis_peg` int(10) NOT NULL,
  `kec` int(10) NOT NULL,
  `tingkat_sekolah` varchar(5) NOT NULL,
  `nama_sekolah` int(10) NOT NULL,
  `umur` int(10) NOT NULL,
  `masa_kerja` int(10) NOT NULL,
  `jkelamin` varchar(5) NOT NULL,
  `mapel` int(10) NOT NULL,
  `status_sek` int(5) NOT NULL,
  `stat_peg` int(10) NOT NULL,
  `golruang` varchar(10) NOT NULL,
  `jabatan` int(10) NOT NULL,
  `sertifikasi` int(5) NOT NULL,
  `thn_sertifikasi` int(10) NOT NULL,
  `pendidikan` int(10) NOT NULL,
  `thn_pendidikan` int(10) NOT NULL,
  `domisili` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE `master_siswa` (
  `id_siswa` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jkelamin` varchar(5) NOT NULL,
  `nama_sekolah` int(10) NOT NULL,
  `tingkat_sekolah` varchar(5) NOT NULL,
  `kec` int(10) NOT NULL,
  `status_sek` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(4, 'Mengenal mesin', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel porta justo. Proin fermentum felis metus, et molestie turpis varius nec. Aliquam fringilla neque pretium lorem pretium fringilla. Donec et nisi ultricies, tincidunt libero hendrerit, placerat ipsum. Nam neque orci, aliquam sed lorem ac, dignissim gravida mi. Vestibulum faucibus, risus in mattis facilisis, diam ex eleifend nunc, ac dapibus magna neque sed ante. Vivamus a enim sit amet est gravida placerat. Nulla mi ligula, condimentum nec lorem sit amet, rhoncus vulputate tortor. Maecenas laoreet accumsan placerat. Ut porttitor diam quis molestie euismod.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; line-height: 20px;">Sed varius, nibh et venenatis euismod, lacus libero commodo tortor, in ultricies justo neque volutpat libero. Vivamus eros felis, efficitur non suscipit ut, pretium a libero. Maecenas accumsan urna metus, quis laoreet augue posuere a. Nulla tortor felis, fringilla ut est tristique, viverra volutpat felis. Sed fermentum tristique ultrices. Integer rhoncus enim id lorem laoreet, eu euismod purus tincidunt. Cras diam massa, rhoncus vel mattis quis, sodales nec nunc. Vivamus eget ipsum euismod, mattis velit vel, lacinia urna. Pellentesque accumsan diam nec mi facilisis, sed condimentum nisi tincidunt. Curabitur quam ante, accumsan quis urna venenatis, lobortis feugiat leo. Pellentesque aliquam velit non massa porttitor facilisis.</p>\r\n', 'news-4.jpg', '2016-04-25 11:35:09', '2016-04-25 13:02:21');

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
(4, 'Struktur Organisasi', '<ol style="list-style-type:upper-alpha;">\r\n	<li><strong>Data Ketenagaan</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Jabatan Fungsional Umum</li>\r\n</ol>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>NO</td>\r\n			<td>NAMA</td>\r\n			<td>NIK/NRK</td>\r\n			<td>PANGKAT/GOLONGAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Drs. H. Bambang Pramestiadi, MM.</td>\r\n			<td>195805271983031004/151976</td>\r\n			<td>Pembina Tk.I Gol. IV/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>H. Didi Sughandi, S.sos. M.pd.</td>\r\n			<td>196310081985011001/084592</td>\r\n			<td>Pembina Tk.I Gol. IV/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Hj. Iis Puspitasari, SE. MM.</td>\r\n			<td>196312021985022003/087199</td>\r\n			<td>Pembina Gol. IV/a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Ni Made Yunitri, SH</td>\r\n			<td>197006131998032008/124406</td>\r\n			<td>Penata Tk.I Gol. III/d</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Rusfandi</td>\r\n			<td>196212041982031002/151875</td>\r\n			<td>Penata Gol. III/c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Sukiman, BA.</td>\r\n			<td>196008251981031002/130218</td>\r\n			<td>Penata Gol. III/c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Sumarto</td>\r\n			<td>195809031981021003/131694</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Trisno Agus Aryanto</td>\r\n			<td>195905061981111001/148772</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Sisca Herine Versary</td>\r\n			<td>198510222010012034/177691</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Agus Warman</td>\r\n			<td>195907061981031009/153735</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>R. Bambang Krisnanto</td>\r\n			<td>196811212008011009/171953</td>\r\n			<td>Penata Muda Gol. III/a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Rasmida Simarmata</td>\r\n			<td>196007101984032007/081515</td>\r\n			<td>Penata Muda Gol. III/a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Wahid Hermanto</td>\r\n			<td>196509292008011008/171338</td>\r\n			<td>Penata Muda Tk.I Gol. III/b</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>2. Pegawai Harian Lepas</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>NO</td>\r\n			<td>NAMA</td>\r\n			<td>JABATAN</td>\r\n			<td>PENDIDIKAN TERAKHIR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Warni Harpatmi</td>\r\n			<td>Administrasi</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Deri Kurnia Arafah</td>\r\n			<td>Administrasi</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Reka Dwi Syahputra</td>\r\n			<td>Administrasi</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Bintari</td>\r\n			<td>Administrasi</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>M. Agung Rivai</td>\r\n			<td>Toolman</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Endi</td>\r\n			<td>Toolman</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Jermanto</td>\r\n			<td>Toolman</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Bayu Suhatman</td>\r\n			<td>Toolman</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Maman</td>\r\n			<td>Toolman</td>\r\n			<td>STM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Dede Herdiana</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Jupriyatno</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Zulfikar Akbar</td>\r\n			<td>Keamanan</td>\r\n			<td>S1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Muhammad Isnaini</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>Makmun</td>\r\n			<td>Keamanan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>Deden Adek Nugraha</td>\r\n			<td>Keamanan</td>\r\n			<td>D3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>Achmad Tri Haryanto</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>Dwi Ardiansyah</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>Dwi Nurhayati</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMEA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>Iwan Setiawan</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMEA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>Jamaludin</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>Miska Carolina</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>Putu Sanjaya</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>Rozzii</td>\r\n			<td>Kebersihan</td>\r\n			<td>SMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>Taufik Hidayat</td>\r\n			<td>Keamanan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>Yuswanto</td>\r\n			<td>Keamanan</td>\r\n			<td>SMK</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Profile-4.jpg'),
(5, 'Aparatur', '<ol style="list-style-type:upper-alpha;">\r\n	<li><strong>Arah Kebijakan</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Manajemen peningkatan mutu berbasis sekolah (School Based Management) yang memberi kewenangan pada sekolah untuk merencanakan sendiri upaya peningkatan mutu secara keseluruhan</li>\r\n	<li>Pendidikan yang berbasis pada partisipasi komunitas (community&nbsp;based education) agar terjadi interaksi yang positif antara sekolah dengan masyarakat, sekolah sebagai&nbsp;community learning centre</li>\r\n	<li>Dengan menggunakan paradigma belajar atau&nbsp;learning&nbsp;paradigma yang akan menjadikan pelajar-pelajar atau&nbsp;learner&nbsp;menjadi manusia yang diberdayakan</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol style="list-style-type:upper-alpha;">\r\n	<li value="2"><strong>Strategi Pengembangan dan Pembangunan</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Secara mikro lebih menekankan pada unsur pelatih/ learner dan peserta didik melalui proses interaksi dan komunikasi. Ada output berupan pesan disampaikan dalam bentuk bahan belajar. Fungsi Pendidik / Learner sebagai pengirim pesan (senders) melalui kegiatan pembelajaran dalam pelatihan.</li>\r\n	<li>Secara makro lebih menekankan mekanisme secara keseluruhan yaitu ;</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Input</li>\r\n</ul>\r\n\r\n<p style="margin-left:1.0in;">Sistem nilai dan pengetahuan , sumber daya manusia , masukan instrumental berupa kurikulum , silabus , dan sebagainya. Termasuk sarana dan fasilitas pelatihan yang disiapkan.</p>\r\n\r\n<ul>\r\n	<li>Proses</li>\r\n</ul>\r\n\r\n<p style="margin-left:1.0in;">Segala sesuatu yang berkaitan dengan pelatihan yaitu proses belajar dan mengajar.</p>\r\n\r\n<ul>\r\n	<li>Output</li>\r\n</ul>\r\n\r\n<p style="margin-left:1.0in;">hasil yang diperoleh pendidikan bukan hanya terbentuknya pribadi lulusan/peserta didik yang memiliki pengetahuan, sikap, dan keterampilan sesuai dengan yang diharapkan dalam tujuan yang ingin dicapai. Namun juga keluaran penddikan mencakup segala hal yang dihsilkan oleh garapan pendidikan berupa: kemampuan peserta didik (human behavior), produk jasa (services) dalam pendidikan seperti hasil penelitian, produk barang berupa karya iintelektul ataupun karya yang sifatnya fisik material.</p>\r\n', NULL),
(6, 'Visi, Misi dan Motto', '<ol style="list-style-type:upper-alpha;">\r\n	<li><strong>Visi Dan Misi</strong></li>\r\n</ol>\r\n\r\n<p><strong><u>VISI</u></strong></p>\r\n\r\n<p align="center">&ldquo;Terwujudnya Layanan Pelatihan Peningkatan Kompetensi Guru yang berstandar Nasional dan berwawasan Global serta Memberikan pelayanan Pembinaan Kompetensi Kejuruan bagi Peserta Didik Sekolah Menengah Kejuruan sesuai dengan kebutuhan Dunia Usaha / Dunia Industri.&rdquo;</p>\r\n\r\n<p><strong><u>MISI</u></strong></p>\r\n\r\n<ol>\r\n	<li>Strategi memetakan Kompetensi Guru di Wilayah Kota Administrasi Jakarta Timur.</li>\r\n	<li>Berkompeten dalam memfasilitasi pelatihan Guru SD / SDLB / SMP / SMPLB / SMA / SMALB dan SMK Negeri maupun Swasta pada semua jenjang dan jenis pendidikan, Secara Profesional, Transparan dan Akutabel di Wilayah Kota Adminsitarsi Jakarta Timur.</li>\r\n	<li>Rancangan strategi pembelajaran bagi peningkatan kompetensi guru di Wilayah Kota Administrasi Jakarta Timur.</li>\r\n	<li>Profesional dalam Pembinaan Kompetensi Kejuruan bagi Peserta Didik Sekolah Menengah Kejuruan di Wilayah Kota Adminsitarsi Jakarta Timur.</li>\r\n	<li>Peningkatan kualitas mutu dan keterampilan pelatihan praktik sesuai kebutuhan Dunia Usaha/ Dunia Industri.</li>\r\n	<li>Efektif dalam pelayanan uji kompetensi dan sertifikasi bagi peserta didik sekolah Menengah Kejuruan di Wilayah Kota Administrasi Jakarta Timur.</li>\r\n	<li>Hubungan kemitraan yang profesional dalam rangka meningkatkan kompetensi guru di semua jenjang dan jenis pendidikan serta kompetensi peserta didik Sekolah Menengah Kejuruan di Wilayah Administarsi Jakarta Timur</li>\r\n	<li>Sebagai wadah pengadaa prasarana dan sarana pelatihan guru dan praktik kejuruan didik Sekolah Menengah Kejuruan.</li>\r\n</ol>\r\n\r\n<p style="margin-left:27.0pt;">&nbsp;</p>\r\n\r\n<ol style="list-style-type:upper-alpha;">\r\n	<li value="2"><strong>Motto P2KGK</strong></li>\r\n</ol>\r\n\r\n<p align="center" style="margin-left:9.0pt;"><strong>&ldquo;Progresif (Profesional, Unggul, Responsif dan Kompetitif) bersama P2KGK&rdquo;</strong></p>\r\n\r\n<p style="margin-left:9.0pt;">Makna :</p>\r\n\r\n<p style="margin-left:9.0pt;">Progresif mengartikan bahwa P2KGK adalah lembaga yang maju/meningkat dalam setiap pelaksanaan programnya. Dilain itu, Progresif sendiri merupakan kepanjangan dari :</p>\r\n\r\n<ol>\r\n	<li>Profesional, mengartikan bahwa P2KGK merupakan lembaga yang mengutamakan profesionalitas dalam setiap unsur pelatihan-pelatihannya serta menjadikan guru memiliki profesionalitas yang tinggi.</li>\r\n	<li>Unggul, mengartikan bahwa P2KGK merupakan lembaga yang mampu mencetak guru dan siswa dengan kompetensi unggul/berkelas.</li>\r\n	<li>Responsif, mengartikan bahwa P2KGK merupakan lembaga yang menjadikan sasaran pelatihan menjadi responsive terhadap kondisi pendidikan.</li>\r\n	<li>Kompetitif, mengartikan bahwa P2KGK merupakan lembaga yang mampu menjadikan guru dan siswa yang mengikuti pelatihannya menjadi kompetitif/mampu beraya saing dalam dunia pendidikan untuk guru dan dalam dunia Industri untuk siswa SMK.</li>\r\n</ol>\r\n', NULL);

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
(1, 'Hendy', 'Ivan', 'ivan@kolibrii.com', 'dbeede400c52447663e8ef72d5c9e973', '0000-00-00 00:00:00', '2016-04-25 12:18:34', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

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
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profil`);

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
-- Indexes for table `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`ua_admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kec` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id_statistik` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_kepegawaian`
--
ALTER TABLE `status_kepegawaian`
  MODIFY `id_statuspeg` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `useradmin`
--
ALTER TABLE `useradmin`
  MODIFY `ua_admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
