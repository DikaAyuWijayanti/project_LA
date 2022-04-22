-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2021 pada 14.16
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek1_pasar_sayur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat`
--

CREATE TABLE `alamat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cities_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat`
--

INSERT INTO `alamat` (`id`, `cities_id`, `detail`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 74, 'Dsn. Bandung RT/RW 04/01 64484', 6, '2021-06-07 06:59:20', '2021-06-07 06:59:20'),
(2, 74, 'Jl.Duku No.10', 7, '2021-06-07 08:10:15', '2021-06-07 08:10:15'),
(7, 74, 'Dsn. Krajan Rt 18 Rw 01', 15, '2021-06-23 20:26:47', '2021-06-23 20:26:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat_toko`
--

CREATE TABLE `alamat_toko` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat_toko`
--

INSERT INTO `alamat_toko` (`id`, `city_id`, `detail`, `created_at`, `updated_at`) VALUES
(1, 74, 'Blitar, Jl.Merpati No.1A, Jawa Timur', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sayur Buah', NULL, NULL),
(2, 'Sayur Biji - bijian', NULL, NULL),
(3, 'Sayur Daun', NULL, NULL),
(4, 'Sayur Bunga', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city_id`, `title`, `created_at`, `updated_at`) VALUES
(162, 11, 74, 'Blitar', '2020-03-21 17:06:13', '2020-03-21 17:06:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `title`, `created_at`, `updated_at`) VALUES
(4, 'goyur', 'GOYUR', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order`
--

CREATE TABLE `detail_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_order`
--

INSERT INTO `detail_order` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2021-06-07 07:11:46', '2021-06-07 07:11:46'),
(2, 2, 12, 2, '2021-06-07 08:11:27', '2021-06-07 08:11:27'),
(3, 3, 2, 1, '2021-06-07 08:49:31', '2021-06-07 08:49:31'),
(4, 4, 3, 2, '2021-06-08 18:32:18', '2021-06-08 18:32:18'),
(5, 5, 1, 1, '2021-06-19 03:33:56', '2021-06-19 03:33:56'),
(8, 8, 3, 5, '2021-06-23 06:32:19', '2021-06-23 06:32:19'),
(11, 11, 3, 2, '2021-06-23 09:16:39', '2021-06-23 09:16:39'),
(12, 12, 16, 2, '2021-06-23 20:28:28', '2021-06-23 20:28:28'),
(13, 13, 7, 5, '2021-06-23 20:45:33', '2021-06-23 20:45:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_093_22_020319_create_cities_table', 1),
(5, '2020_09_22_020309_create_provinces_table', 1),
(6, '2020_09_22_020330_create_couriers_table', 1),
(7, '2020_09_22_074903_create_categories_tables', 1),
(8, '2020_09_22_074918_create_products_tables', 1),
(9, '2020_09_22_132305_create_alamat_tables', 1),
(10, '2020_09_22_132559_create_order_table', 1),
(11, '2020_09_22_132659_create_detail_order', 1),
(12, '2020_09_22_134342_create_status_order_table', 1),
(13, '2020_09_22_143238_add_stok_to_product', 1),
(14, '2020_09_22_150047_create_rekening_table', 1),
(15, '2020_09_22_150145_add_biaya_cod_to_order', 1),
(16, '2020_09_23_101813_add_keterangan_to_order', 1),
(17, '2020_09_23_101848_create_keranjang_table', 1),
(18, '2020_09_24_071526_add_bukti_telepon_to_order', 1),
(19, '2020_09_24_072038_add_pesan_to_order', 1),
(20, '2020_09_26_131136_create_alamat_toko_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` int(11) NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biaya_cod` int(11) NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `invoice`, `user_id`, `subtotal`, `no_resi`, `status_order_id`, `metode_pembayaran`, `ongkir`, `created_at`, `updated_at`, `biaya_cod`, `no_hp`, `bukti_pembayaran`, `pesan`) VALUES
(1, 'ALV202106070209', 6, 4000, NULL, 2, 'trf', 0, '2021-06-07 07:11:46', '2021-06-07 07:14:44', 0, '08533773027', 'buktibayar/n2iLybIJ0FpPx9dlxaWPBIMHYasxiHA2E5ht28V4.png', 'Sayur OK'),
(2, 'ALV202106070310', 7, 5000, '10', 5, 'cod', 0, '2021-06-07 08:11:27', '2021-06-07 08:40:08', 10000, '08266384819', 'buktibayar/OOckmsuyGsR42aEXzdSgCv24qZuLsHuAKgqHnJ5u.docx', 'Dibungkus sterofom'),
(3, 'ALV202106070349', 7, 3000, NULL, 2, 'trf', 0, '2021-06-07 08:49:31', '2021-06-07 08:50:42', 0, '086314567', 'buktibayar/dWdfxchU1CuYXKl5weX10NhRkcWCNGYkY1Jej638.jpg', 'Di antar Cepat depan rumah'),
(4, 'ALV202106090131', 7, 2000, NULL, 2, 'trf', 0, '2021-06-08 18:32:17', '2021-06-19 17:06:40', 0, '081737484972', 'buktibayar/C1Os8M9qpQcgRCgWtcfh0rGXLk1utOyIk61T0pAM.docx', 'Diantar Cepat'),
(5, 'ALV202106191004', 7, 2000, '18', 5, 'trf', 0, '2021-06-19 03:33:56', '2021-06-19 22:36:42', 0, '086511356788', 'buktibayar/WJ4uf9FPfbsp6eiivIXmTBUYBfqlbXBJ6yjx52sq.docx', 'Di bungkus Kertas'),
(8, 'ALV202106230131', 14, 5000, NULL, 2, 'trf', 0, '2021-06-23 06:32:19', '2021-06-23 06:34:47', 0, '0861435268819', 'buktibayar/1862g7LVhy4U2Hsi0QGfmqAaKFgaY343HJCVt0r3.docx', 'Diantar Cepat dan di bungkus rapi'),
(11, 'ALV202106230410', 7, 2000, '18', 4, 'trf', 0, '2021-06-23 09:16:39', '2021-06-23 10:01:18', 0, '0861435268819', 'buktibayar/m26CEc6sNX9w6s80GQbxkMdaJYPLqv4cGt4LRmKG.docx', 'Dibungkus kertas'),
(12, 'ALV202106240327', 15, 50000, '06', 5, 'trf', 0, '2021-06-23 20:28:28', '2021-06-23 20:37:33', 0, '082364578284', 'buktibayar/zeGb166ejI0uhWFgx3XMexviRlgKrLpaeJoRsq1s.docx', 'Di bungkus rapi'),
(13, 'ALV202106240344', 15, 7500, NULL, 6, 'cod', 0, '2021-06-23 20:45:28', '2021-06-23 20:49:30', 10000, '0862335617371', NULL, 'Di bungkus kertas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`) VALUES
(2, 'Wortel', 'Wortel adalah jenis sayuran yang berwarna kuning kemerahan atau jingga kekuningan dengan tekstur yang mirip seperti kayu. Bagian yang dapat dimakan dari wortel adalah bagian umbi atau akarnya', 'wortel.jpg', 3000, 200, 1, NULL, NULL, 25),
(3, 'Tomat', 'Tomat adalah sumber kuat antioksidan dan vitamin C yang membantu melawan radikal bebas melawan kanker.Kandungan lycopene yang tinggi pada tomat membantu mencegah kanker. Tomat mengandung kolin, potassium, serat dan vitamin C yang membantu meningkatkan fungsi jantung.', 'tomat.jpg', 1000, 200, 1, NULL, NULL, 28),
(4, 'Cabai Rawit', 'Cabai atau cabai merah atau lombok adalah buah dan tumbuhan anggota genus Capsicum. Buahnya dapat digolongkan sebagai sayuran maupun bumbu, tergantung bagaimana digunakan. Sebagai bumbu, buah cabai yang pedas sangat populer di Asia Tenggara sebagai penguat rasa makanan.', 'cabai.jpg', 20000, 500, 2, NULL, NULL, 50),
(5, 'Kacang Panjang', 'Kacang panjang adalah salah satu tanaman sayuran yang populer dalam kuliner Asia Tenggara dan Asia Timur. Buah polongnya dimasak sebagai sayur atau dimakan mentah sebagai lalapan. Ia tumbuh dengan cara memanjat atau melilit.', 'kacang.jpg', 3000, 250, 2, NULL, NULL, 10),
(6, 'Kacang Polong', 'Kacang polong adalah satu dari sekian banyak jenis kacang-kacangan dengan bentuk fisik bulat, berukuran kecil, dan berwarna hijau khas yang tampak segar.', 'polong.jpg', 5000, 300, 2, NULL, '2021-06-04 12:09:30', 15),
(7, 'Bayam', 'Bayam (Amaranthus) adalah tumbuhan yang biasa ditanam untuk dikonsumsi daunnya sebagai sayuran hijau. Tumbuhan ini berasal dari Amerika tropik namun sekarang tersebar ke seluruh dunia. Tumbuhan ini dikenal sebagai sayuran sumber zat besi yang penting bagi tubuh.', 'bayam.jpg', 1500, 145, 3, NULL, NULL, 30),
(8, 'Jagung', 'Jagung merupakan salah satu tanaman pangan dunia yang terpenting, selain gandum dan padi. Sebagai sumber karbohidrat utama di Amerika Tengah dan Selatan, jagung juga menjadi alternatif sumber pangan di Amerika Serikat.', 'jagung.jpg', 3500, 250, 2, NULL, NULL, 43),
(9, 'Kubis', 'Kubis (Brassica oleracea L.) merupakan tanaman semusim atau dua musim. Bentuk daunnya bulat telur sampai lonjong dan lebar seperti kipas. Sistem perakaran kubis agak dangkal, akar tunggangnya segera bercabang dan memiliki banyak akar serabut.', 'kubis.jpg', 2500, 500, 3, NULL, NULL, 10),
(10, 'Labu Siam', 'Labu siam (Sechium edule (Jacq.) Sw.) merupakan tanaman subtropis dan termasuk ke dalam spesies cucurbitaceus yang sering digunakan sebagai bahan makanan. Tanaman ini berasal dari Meksiko dan telah dibudidayakan sejak zaman pra-Kolombia (Saade, 1996).', 'labu.jpg', 4000, 250, 1, NULL, NULL, 5),
(11, 'Selada', 'Selada atau daun sla (Lactuca sativa) adalah tumbuhan sayur yang biasa ditanam di daerah beriklim sedang maupun daerah tropika. Kegunaan utama adalah sebagai salad.', 'selada.jpg', 3000, 100, 3, NULL, '2020-12-18 21:05:48', 40),
(12, 'Bayam Merah', 'Bayam merah kaya akan serat yang mampu melancarkan pencernaan. Serat membantu mengatur pergerakan usus dengan membersihkan usus besar. Bayam merah membantu sembelit, mencegah kanker usus besar, diabetes dan kolesterol. Batang bayam merah terbukti bermanfaat dalam mengobati disentri', 'merah.jpg', 2500, 200, 3, NULL, '2020-12-19 20:03:06', 8),
(14, 'Sawi Hijau', 'Sawi hijau merupakan suku sawi-sawian atau Brassicaceae merupakan jenis sayuran yang cukup populer. Dikenal pula sebagai caisim, caisin, atau sawi bakso, sayuran ini mudah dibudidayakan dan dapat dimakan segar atau diolah menjadi asinan, lalapan, dan berbagai masakan lainnya.', 'Sayur sawi.jpg', 2000, 150, 3, NULL, NULL, 60),
(15, 'Sayur Oyong/Gambas', 'Gambas atau oyong (Luffa acutangula, suku labu-labuan atau Cucurbitaceae), adalah komoditas sayuran minor. Penanamannya biasanya dilakukan di pekarangan atau bagian ladang yang tidak digunakan untuk tanaman lain. Gambas dipanen buahnya ketika masih muda dan diolah sebagai sayur.', 'oyong.jpg', 1500, 2500, 1, NULL, NULL, 45),
(16, 'Cabe Merah Besar', 'Cabai atau cabai merah atau lombok adalah buah dan tumbuhan anggota genus Capsicum. Buahnya dapat digolongkan sebagai sayuran maupun bumbu, tergantung bagaimana digunakan. Sebagai bumbu, buah cabai yang pedas sangat populer di Asia Tenggara sebagai penguat rasa makanan.', 'cabe_merah.jpg', 25000, 500, 2, NULL, NULL, 98),
(17, 'Mentimun', 'Mentimun, timun, atau ketimun (Cucumis sativus L.; suku labu-labuan atau Cucurbitaceae) merupakan tumbuhan yang menghasilkan buah yang dapat dimakan. Buahnya biasanya dipanen ketika belum masak benar untuk dijadikan sayuran atau penyegar, tergantung jenisnya.', 'timun.jpg', 3000, 300, 1, NULL, NULL, 150),
(18, 'Sawi Putih', 'Sawi putih, merupakan tanaman dari keluarga Cruciferae yang masih berada dalam satu genus dengan sawi putih/petsai dan sawi hijau/caisim. Pakcoy merupakan salah satu varietas dari tanaman sawi yang dimanfaatkan daunnya sebagai sayuran. Pakcoy berasal dari benua Asia yaitu dari Tiongkok dan Asia Timur.', 'sawi putih.jpg', 4000, 500, 3, NULL, NULL, 200),
(19, 'Nangka', 'Sayur nangka kapau seringkali menjadi sayuran pelengkap ketika menikmati rendang atau ayam. Sayur ini berisi nangka, rebung,kol dan kacang panjang. Rasanya yang pedas dan gurih, serta kuah yang tidak terlalu kental membuat sayur nangka kapau lezat disantap.', 'nangka.jpg', 5000, 350, 1, NULL, NULL, 40),
(20, 'Paprika', 'Paprika (Capsicum annuum L.) adalah tumbuhan penghasil buah yang berasa manis dan sedikit pedas. Dalam pengertian internasional, paprika dipakai untuk menyatakan hampir semua varietas C.annuum, termasuk yang pedas.', 'paprika.jpg', 30000, 500, 1, NULL, NULL, 300),
(21, 'Terung', 'Terung (bentuk tidak baku: terong) (Solanum melongena) adalah tumbuhan penghasil buah yang dijadikan sayur-sayuran. ... Tanaman ini tumbuh hingga 40–150 cm (16-57 inci) tingginya. Daunnya besar, dengan lobus yang kasar. Ukurannya 10–20 cm (4-8 inci) panjangnya dan 5–10 cm (2-4 inci) lebarnya.', 'terong.jpg', 3500, 250, 4, NULL, NULL, 150),
(22, 'Terung Bulat', 'Terong merupakan tanaman jenis perdu yang umumnya setahun (annual). Terong yang merupakan famili solanaceae atau nama latinnya solanum melongena.  Terong dapat tumbuh dengan baik pada ketinggian hingga 1.200 meter di atas permukaan laut. Tinggi pohon terung 40-150 cm, memiliki daun dengan ukuran panjang 10- 20 cm dan lebar 5-10 cm, bunga berwarna putih hingga ungu dengan lima mahkota bunga. Berbagai varietas terong tersebar luas di dunai, perbedaannya terletak pada bentuk, ukuran, dan warnanya. Terong merupakan jenis tanaman yang memiliki kedekatan dengan tanaman kentang, tomat, dan paprika. Buahnya biasanya dijadikan sayur-sayuran yang bernilai gizi tinggi ', 'terong_bulat.jpg', 4500, 300, 1, NULL, NULL, 250),
(23, 'Pare', 'Paria atau pare merupakan sayuran buah yang banyak ditanam di pekarangan. Batangnya panjang sampai lebih dari dua meter, bersifat merambat dengan bantuan alat sulurnya yang berbentuk seperti pilin, memiliki ukuran batangnya kecil membentuk cabang yang banyak .', 'pare.jpg', 1500, 200, 1, NULL, NULL, 25),
(24, 'Lobak', 'Lobak adalah tumbuhan yang masuk ke dalam famili Cruciferae. Bentuk umbi lobak seperti wortel, tetapi isi dan kulitnya berwarna putih. Tanaman lobak berasal dari Tiongkok, dan telah banyak diusahakan di Indonesia.', 'lobak2.jpg', 4000, 250, 4, NULL, NULL, 250),
(25, 'Daun Bawang', 'Bawang daun (Allium fistulosum L.) termasuk jenis tanaman sayuran daun semusim (berumur pendek). Tanaman ini berbentuk rumput atau rumpun dengan tinggi tanaman mencapai 60 cm atau lebih, tergantung pada varietasnya. Bawang daun selalu menumbuhkan anakan-anakan baru sehingga membentuk rumpun.', 'daun bawang2.jpg', 1000, 150, 3, NULL, NULL, 250);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `province_id`, `title`, `created_at`, `updated_at`) VALUES
(16, 11, 'Jawa Timur', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BRI', 'Tsania', '2100137xxxx', NULL, NULL),
(2, 'BRI SYARIAH', 'Syakir', '10929374xxxx', NULL, NULL),
(3, 'BCA', 'Charisma', '3333212xxxx', NULL, NULL),
(4, 'BNI', 'Maharani', '41973756xxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_order`
--

CREATE TABLE `status_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_order`
--

INSERT INTO `status_order` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Belum Bayar', NULL, NULL),
(2, 'Perlu Di Cek', NULL, NULL),
(3, 'Telah Di Bayar', NULL, NULL),
(4, 'Barang Di Kirim', NULL, NULL),
(5, 'Barang Telah Sampai', NULL, NULL),
(6, 'Pesanan Di Batalkan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$9iG5hPBTezMZPO1.tygZ8epG0scqSfFwW9y9QMrRlIWQ7Jx4yvm4.', 'admin', NULL, NULL, NULL),
(7, 'Risma', 'risma@gmail.com', NULL, '$2y$10$q5sNu6a8X6fiNvQIeJ6UgOQmtbaKuaC56zeU9q6kp5k4vjrZKrfsy', 'customer', NULL, '2021-06-07 08:08:16', '2021-06-07 08:08:16'),
(13, 'Falya Charismatul A.', 'falya@gmail.com', NULL, 'falya123', 'customer', NULL, NULL, NULL),
(15, 'Fatimah', 'fatimah123@gmail.com', NULL, '$2y$10$34FSMusFJepwaS1/afsXA.e2kkSrsP.C/buqN1CLix19S/aavbhaK', 'customer', NULL, '2021-06-23 20:22:24', '2021-06-23 20:22:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `status_order`
--
ALTER TABLE `status_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
