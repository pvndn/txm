-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2016 at 05:06 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuexe`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carriages_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `photo`, `carriages_id`, `created_at`, `updated_at`) VALUES
(5, '/photos/1/57441b92d9bea.jpg', 15, '2016-05-24 12:22:40', '2016-05-24 12:22:40'),
(6, '/photos/1/57441b9fe1fbb.jpg', 15, '2016-05-24 12:22:40', '2016-05-24 12:22:40'),
(7, '/photos/1/57441bad96bc2.jpg', 15, '2016-05-24 12:22:40', '2016-05-24 12:22:40'),
(8, '/photos/1/57441bb8328a8.jpg', 15, '2016-05-24 12:23:52', '2016-05-24 12:23:52'),
(10, '/photos/1/57441bdba4515.jpg', 15, '2016-05-24 12:23:53', '2016-05-24 12:23:53'),
(11, '/photos/1/57441bd254d77.jpg', 15, '2016-05-24 12:27:21', '2016-05-24 12:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `carriages`
--

CREATE TABLE `carriages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `set_title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `publish` enum('0','1') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carriages`
--

INSERT INTO `carriages` (`id`, `name`, `slug`, `price`, `image`, `content`, `category_id`, `created_at`, `updated_at`, `set_title`, `meta_desc`, `meta_key`, `publish`) VALUES
(15, 'Air Blade 125cc', 'air-blade-125cc', '150.000 - 200.000 VNĐ/Ngày', '/photos/1/57441b2b9eaf9.jpg', '<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td><strong>Khối lượng bản thân</strong></td>\r\n<td>110kg</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dài x Rộng x Cao</strong></td>\r\n<td>1.881mm x 687mm x 1.111mm</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Khoảng cách trục bánh xe</strong></td>\r\n<td>1.288 mm</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Độ cao yên</strong></td>\r\n<td>777 mm</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Khoảng sáng gầm xe</strong></td>\r\n<td>131 mm</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dung tích bình xăng</strong></td>\r\n<td>4,4 lít</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Kích cỡ lốp trước/ sau</strong></td>\r\n<td>Trước: 80/90 - 14 M/C 40P <br />Sau: 90/90 - 14 M/C 46P</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Phuộc trước</strong></td>\r\n<td>Ống lồng, giảm chấn thủy lực</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Phuộc sau</strong></td>\r\n<td>Lò xo trụ, giảm chấn thủy lực</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Loại động cơ</strong></td>\r\n<td>PGM-FI, xăng, 4 kỳ, 1 xy-lanh, làm mát bằng dung dịch</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dung tích xy-lanh</strong></td>\r\n<td>124,9cm³</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Đường kính x hành trình pít-tông</strong></td>\r\n<td>52,4mm x 57,9mm</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Tỉ số nén</strong></td>\r\n<td>11 : 1</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Công suất tối đa</strong></td>\r\n<td>8,4kW/8.500 vòng/phút</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Mô-men cực đại</strong></td>\r\n<td>11,26N.m/5.000 vòng/phút</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dung tích nhớt máy</strong></td>\r\n<td>0,9 lít khi rã máy <br />0,8 lít khi thay nhớt</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Loại truyền động</strong></td>\r\n<td>Dây đai, biến thiên vô cấp</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Hệ thống khởi động</strong></td>\r\n<td>Điện</td>\r\n</tr>\r\n</tbody>\r\n</table>', 4, '2016-05-24 08:33:27', '2016-05-24 08:33:27', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', '0');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `set_title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `publish` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `format` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `lft`, `rgt`, `depth`, `sort_order`, `set_title`, `meta_desc`, `meta_key`, `publish`, `format`, `created_at`, `updated_at`) VALUES
(1, 'Dịch vụ thuê xe', 'dich-vu-thue-xe', NULL, 1, 8, 0, 0, 'Dịch vụ thuê xe máy tại Đà Nẵng', 'Dịch vụ thuê xe máy uy tín, chất lượng tại Đà Nẵng', 'thuê xe máy Đà Nẵng, xe số, xe tay ga, xe côn tay', '0', 'motorbike', '2016-05-22 09:50:41', '2016-05-26 08:57:14'),
(2, 'Xe tay số', 'xe-tay-so', 1, 2, 3, 1, 0, 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', '0', 'motorbike', '2016-05-22 09:52:33', '2016-05-26 08:46:32'),
(3, 'Xe côn tay', 'xe-con-tay', 1, 4, 5, 1, 0, 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', '0', 'motorbike', '2016-05-22 09:53:54', '2016-05-26 08:46:32'),
(4, 'Xe tay ga', 'xe-tay-ga', 1, 6, 7, 1, 0, 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', '0', 'motorbike', '2016-05-22 09:54:36', '2016-05-26 08:46:33'),
(5, 'Tin tức', 'tin-tuc', NULL, 9, 10, 0, 0, 'Tin tức, sự kiện, cẩm nang thuê xe máy tại Đà Nẵng', 'Tin tức, sự kiện, cẩm nang thuê xe máy tại Đà Nẵng', 'Tin tức, sự kiện, cẩm nang thuê xe máy tại Đà Nẵng', '0', 'news', '2016-05-22 10:01:00', '2016-05-26 08:47:07'),
(6, 'Hình ảnh', 'hinh-anh', NULL, 11, 12, 0, 0, 'Hình ảnh thuê xe máy tại Đà Nẵng', 'thuê xe máy tại Đà Nẵng', 'thuê xe máy tại Đà Nẵng', '0', 'gallery', '2016-05-22 11:59:15', '2016-05-26 08:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Image 3', 'Image 3', '/photos/1/57441b2b9eaf9.jpg', '2016-05-27 08:15:06', '2016-05-27 08:15:06'),
(10, 'future', 'future', '/photos/1/574868aecf702.jpg', '2016-05-27 08:24:54', '2016-05-27 08:33:10'),
(11, 'image 3', '', '/photos/1/574866f343747.jpg', '2016-05-27 08:26:07', '2016-05-27 08:26:07'),
(12, 'Image 4', '', '/photos/1/574866fb87af8.png', '2016-05-27 08:26:42', '2016-05-27 08:26:42'),
(13, 'Image 5', '', '/photos/1/574867086ef6a.png', '2016-05-27 08:27:07', '2016-05-27 08:27:07'),
(14, 'Image 6', '', '/photos/1/5748679464f47.jpg', '2016-05-27 08:28:38', '2016-05-27 08:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `publish`, `created_at`, `updated_at`) VALUES
(1, 'Primary menu', '0', '2016-05-28 05:31:17', '2016-05-28 05:39:11'),
(2, 'footer-menu', '0', '2016-06-06 21:20:46', '2016-06-06 21:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `category_id`, `page_id`, `parent_id`, `lft`, `rgt`, `depth`, `order`) VALUES
(8, 1, 1, NULL, NULL, 3, 10, 0, 0),
(9, 1, 5, NULL, NULL, 11, 12, 0, 0),
(10, 1, 6, NULL, NULL, 13, 14, 0, 0),
(11, 1, NULL, 1, NULL, 1, 2, 0, 0),
(12, 1, 2, NULL, 8, 8, 9, 1, 0),
(13, 1, 3, NULL, 8, 6, 7, 1, 0),
(14, 1, 4, NULL, 8, 8, 9, 1, 0),
(19, 1, NULL, 2, NULL, 15, 16, 0, 0),
(20, 2, 1, NULL, NULL, 1, 2, 0, 0),
(21, 2, 2, NULL, NULL, 5, 6, 0, 0),
(22, 2, 3, NULL, NULL, 3, 4, 0, 0),
(23, 2, 4, NULL, NULL, 7, 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_08_173535_create_categories_table', 1),
('2016_05_17_073147_create_pages_table', 1),
('2016_05_17_162229_create_sliders_table', 1),
('2016_05_18_075641_create_carriages_table', 1),
('2016_05_22_171510_create_news_table', 2),
('2016_05_22_172405_alter_carriages_table', 2),
('2016_05_26_225626_create_galleries_table', 3),
('2016_05_27_171155_create_menus_table', 4),
('2016_05_27_171330_create_menu_items_table', 5),
('2016_06_08_115921_create_orders_table', 6),
('2016_06_08_174050_create_settings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `set_title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `publish` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `image`, `content`, `category_id`, `set_title`, `meta_desc`, `meta_key`, `publish`, `created_at`, `updated_at`) VALUES
(2, 'Những trải nghiệm thú vị khi đi du lịch Đà Nẵng bằng xe máy', 'nhung-trai-nghiem-thu-vi-khi-di-du-lich-da-nang-bang-xe-may', 'http://phuongbinhmotel.com/wp-content/uploads/2016/05/da-nang.jpg', '<p><strong>Du lịch Đà Nẵng</strong> chỉ bằng chiếc xe máy, bạn đã thử chưa?<span id="more-69"></span> Không quá khó khăn để bạn có thể thuê được một chiếc xe máy ở các địa điểm <strong>cho thuê xe máy Đà Nẵng</strong>, chi phí không cao cho chuyến du lịch của bạn.Đây sẽ làm một trải nghiệm thú vị cho bạn nhất là với những người trẻ khi đến Đà Nẵng. Dưới đây là một số gợi ý cho bạn trải nghiệm khi thực hiện chuyến du lịch khám phá Đà Nẵng của mình chỉ bằng chiếc xe máy.</p>\r\n<p><strong>1. Nếm thử tất cả các món ăn vặt</strong></p>\r\n<p><strong><img src="http://xemaydathanh.com/Content/UserFiles/Images/News/an-vat-da-nang.jpg" alt="ăn-vat-o-da-nang" width="730" /></strong></p>\r\n<p>Đà Nẵng nổi tiếng là thiên đường ăn vặt với rất nhiều món ăn vặt hấp dẫn, thu hút rất nhiều người nhất là các bạn tuổi teen. Nếu bạn là người mê các món ăn vặt thì Đà Nẵng là địa điểm lý tưởng cho bạn với rất nhiều món hấp dẫn như bánh tráng kẹp, mít trộn, ốc hút, bánh tráng tương,… Bạn sẽ dễ dàng tìm thấy các món ăn vặt ở nhiều địa điểm trên thành phố như khu chợ Cồn, chợ Hàn, khu yaourt muối dưới chân cầu Trần Thị Lý,…</p>\r\n<p><strong>2. Phượt ra vùng ngoại ô và các tỉnh lân cận</strong></p>\r\n<p><img src="http://xemaydathanh.com/Content/UserFiles/Images/News/ba_na_namchamdulich_2.jpg" alt="du-lich-ba-na" width="730" /></p>\r\n<p>Ngoài các địa điểm ở trong thành phố thì phượt ra các địa điểm vùng ngoại ô thành phố hay xa hơn tí là các tỉnh lân cận cũng là ý tưởng không tồi. Di chuyển lên Bà Nà, đến du lịch vòng quanh bán đảo, khám phá Ngũ Hành Sơn hay xa hơn là ra Nam Ô ăn gỏi cá, chinh phục ngọn đèo đẹp Hải Vân, chạy xe về Hội An, đi Cù Lao Chàm,… Bạn sẽ thấy rằng còn rất nhiều điểm thú vị cho bạn chinh phục ngoài thành phố Đà Nẵng chì bằng một chiếc xe máy.</p>\r\n<p><strong>3</strong><strong>. Đi khắp các con đường ở Đà Nẵng</strong></p>\r\n<p><img src="http://xemaydathanh.com/Content/UserFiles/Images/News/duong-dep-da-nang.jpg" alt="kham-pha-duong-da-nang" width="730" /></p>\r\n<p>Đà Nẵng là thành phố đáng sống nhất Việt Nam, một thành phố năng động, phát triển với nhiều tòa nhà đẹp, đặc biệt cảnh quan thành phố Đà Nẵng rất đẹp với những con đường đẹp. Với chiếc xe máy của mình bạn có thể đi khắp thành phố, khám phá các con đường đẹp như đường Bạch Đằng nằm ven sông Hàn với những cây cầu độc đáo, đường Nguyễn Tất Thành, Võ Nguyên Giáp để ngắm những bãi biển đẹp,…</p>\r\n<p><strong>4. Lượn các trung tâm mua sắm sang trọng để ngắm đồ</strong></p>\r\n<p><img src="http://xemaydathanh.com/Content/UserFiles/Images/News/trung-tam-mua-sam-da-nang.jpg" alt="trung-tam-mua-sam-da-nang" width="730" /></p>\r\n<p>Đà Nẵng có các trung tâm mua sắm lớn như Indochina, Pakson, VinCom, các siêu thị lớn như BigC, Lotte,… đây là nơi mà các bạn có thể thoải mái ngắm nhìn các loại áo quần, trang sức sang trọng, cùng rất nhiều thứ khác. Đi quanh và ngắm nhìn chúng cùng người mình yêu, những người bạn cũng là một ý tưởng khám phá hay cho bạn.</p>\r\n<p><strong>5. Đến những địa điểm đẹp ở Đà Nẵng chụp hình lưu niệm</strong></p>\r\n<p><img src="http://xemaydathanh.com/Content/UserFiles/Images/News/chup-anh-o-da-nang.jpg" alt="chup-anh-luu-niem-o-da-nang" width="730" /></p>\r\n<p>Đi du lịch thì chắc hẳn sẽ không thể thiếu được những bức hình lưu niệm phải không nào? Đà Nẵng có rất nhiều địa điểm đẹp cho bạn có thể “check in” một cách thoải mái để lưu giữ kỷ niệm về thành phố xinh đẹp này. Các cây cầu như cầu sông Hàn, cầu Rồng, cầu Thuận Phước, cầu Trần Thị Lý, lãng mạn hơn cho các cặp đôi là cầu Tình Yêu, tượng cá chép hóa rồng, công viên biển Đông, các bãi biển Mỹ Khê, Phạm Văn Đồng, tòa nhà hành chính,… đó là những địa điểm chụp hình đẹp mà bạn không thể bỏ qua ở Đà Nẵng. Còn gì tuyệt vời hơn khi đi du lịch và mang về cho mình được những búc ảnh đẹp gắn liền với những địa điểm đẹp ở Đà Nẵng.</p>\r\n<p><strong>6. Khám phá các quán cafe đẹp ở Đà Nẵng</strong></p>\r\n<p><img src="http://xemaydathanh.com/Content/UserFiles/Images/News/quan-cafe-da-nang.jpg" alt="quan-cafe-da-nang" width="730" /></p>\r\n<p>Đà Nẵng có rất nhiều quán cafe đẹp cho bạn có thể khám phá, dừng chân nghỉ ngơi và thưởng thức các đồ uống thơm ngon. Với nhiều loại hình, bạn chỉ cần với chiếc điện thoại của mình là đã có thể tìm được những quán cafe đẹp.</p>\r\n<p>Ngoài ra còn nhiều trải nghiệm khác nữa đang chờ đợi bạn khám phá. Hy vọng với những trải nghiệm trên sẽ giúp bạn có một chuyến hành trình du lịch Đà Nẵng đầy thú vị bằng chiếc xe máy.</p>', 5, 'Những trải nghiệm thú vị khi đi du lịch Đà Nẵng bằng xe máy', 'Những trải nghiệm thú vị khi đi du lịch Đà Nẵng bằng xe máy', 'du lịch Đà Nẵng bằng xe máy', '0', '2016-05-23 10:37:02', '2016-05-23 10:37:02'),
(3, 'Đồi gió hú - nơi bi kịch tình yêu còn khổ đau hơn Romeo và Juliet', 'doi-gio-hu-noi-bi-kich-tinh-yeu-con-kho-dau-hon-romeo-va-juliet', '/photos/1/57434a99d6d93.jpg', '<p>Trái ngược với vẻ đẹp chung của Yorkshire - khu vực nằm giữa miền bắc với phong cảnh thiên nhiên thơ mộng, Haworth, một ngôi làng nhỏ nằm ở phía tây lại ám ảnh trong tâm trí người hâm mộ với những cánh đồng hoang dã đầy nắng và gió. Đây cũng là chốn sinh sống của 3 chị em nhà văn Bronte lúc đương thời và là nơi ra đời của cuốn tiểu thuyết <em>Đồi gió hú</em>nổi tiếng.</p>\r\n<table class="tplCaption" border="0" cellspacing="0" cellpadding="3" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img src="http://img.f33.dulich.vnecdn.net/2016/05/20/1-5422-1463732547.jpg" alt="doi-gio-hu-noi-tinh-yeu-con-lai" width="659" height="395" data-natural-width="500" data-width="500" data-pwidth="470.40625" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class="Image">Top Withins - một tỏng những nơi hấp dẫn du khách. Ảnh: <em>Theguardian.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal"><em>Đồi gió hú</em> là một trong những tác phẩm văn học nổi tiếng nhất nước Anh và trên thế giới. Người chắp bút cho kiệt tác này là Emily Bronte - cô con gái thứ 4 của nhà Bronte.</p>\r\n<p class="Normal">Tiểu thuyết kể về mối tình giữa Heathclif, đứa con nuôi địa vị thấp kém của nhà Earnshaw và quý cô tiểu thư Catherine Earnshaw xinh đẹp. Cả đời Heathclif chỉ yêu một mình Catherine, và chính tình yêu đã khiến hắn trở nên điên loạn. Chỉ đến khi chết, Heathclif mới thực sự tìm được bình yên trong tâm hồn mình, khi mộ phần của hắn được chôn cạnh Catherine như ý nguyện từ rất lâu.</p>\r\n<p class="Normal">Câu chuyện không chỉ kết thúc ở đó. Emily đã khiến cho toàn bộ <em>Đồi gió hú</em> lạnh lẽo bừng sáng với cái kết hạnh phúc giữa những người còn ở lại. Hận thù của thế hệ trước đã được thế hệ sau xóa bỏ, họ để lại những oán hận phía sau để học cách yêu nhau.</p>\r\n<p>Du khách khi đến Haworth thường tới Top Withins (hay Top Withens), một trang trại đổ nát nằm ở phía tây. Nơi đây được nhà văn Emily Bronte lấy bối cảnh làm nơi sinh sống của gia đình Earnshaw.</p>\r\n<p>Đi bộ trên những con đường làng, nhiều du khách cho biết họ có cảm giác như đang ở thời kỳ 3 chị em nhà Bronte còn sinh sống, và như ở đâu đó trên những cánh đồng hoang dã này, họ sẽ bắt gặp Heathclif, Catherine, Catherine "Cathy" Linton hay Hareton Earnshaw... những nhân vật trong tác phẩm <em>Đồi gió hú. </em>Nếu đi xa thêm nữa, bạn sẽ tới gần nhà thờ hay ngôi nhà mà đương thời Emily từng sống và viết, nay trở thành một bảo tàng thu hút nhiều du khách là fan của tác phẩm này.</p>\r\n<p>Dù nơi đây không quá sầm uất như London hay có những địa danh nổi tiếng thế giới, nhưng những người yêu văn học vẫn chọn nơi đây là điểm đến lý tưởng trong hành trình du lịch của mình. Mặc dù có cuộc đời ngắn ngủi, nhưng 3 chị em gái nhà Bronte đã có những chuỗi ngày đáng nhớ tại Haworth. Họ được tận hưởng cuộc sống và viết lên những câu chuyện tình yêu bất tận được sáng tạo trong trí tưởng tượng của mình.</p>\r\n<table class="tplCaption" border="0" cellspacing="0" cellpadding="3" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img src="http://img.f33.dulich.vnecdn.net/2016/05/20/4-2735-1463732547.jpg" alt="doi-gio-hu-noi-tinh-yeu-con-lai-1" width="671" height="503" data-natural-width="500" data-width="500" data-pwidth="470.40625" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class="Image">"Lộng gió" luôn là một trong những từ được nhiều người nhớ đến nhất khi nghĩ tới vùng đất này. Ảnh: <em>Huffingtonpost.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Ngày nay, tuy không có nhiều bằng chứng xác thực về việc Emily đã dựa vào Top Withins để lấy bối cảnh trong <em>Đồi gió hú</em>, nhưng người dân nơi đây vẫn tin đây là thật. Vì dựa vào những lời văn miêu tả trong cuốn tiểu thuyết của bà, người đọc có thể hình dung hiện lên trước mặt họ là những khung cảnh đặc trưng mà chỉ có ở Haworth mới có được.</p>\r\n<table class="tplCaption" border="0" cellspacing="0" cellpadding="3" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img src="http://img.f33.dulich.vnecdn.net/2016/05/20/2-8506-1463732547.jpg" alt="doi-gio-hu-noi-tinh-yeu-con-lai-2" width="625" height="480" data-natural-width="500" data-width="500" data-pwidth="470.40625" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class="Image">Ngày nay, Yorkshire là một trong những địa điểm hấp dẫn nhiều du khách nhất tại Anh. Ảnh: <em>Huffingtonpost.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 5, 'Đồi gió hú - nơi bi kịch tình yêu còn khổ đau hơn Romeo và J', 'Đồi gió hú - nơi bi kịch tình yêu còn khổ đau hơn Romeo và Juliet', 'Đồi gió hú - nơi bi kịch tình yêu còn khổ đau hơn Romeo và Juliet', '0', '2016-05-23 11:24:07', '2016-05-23 11:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carriage_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `message`, `carriage_id`, `created_at`, `updated_at`) VALUES
(13, 'Phạm Thị Thiên Thanh', 'thienthanh.angel@gmail.com', '0905483990', 'No comment', 15, '2016-06-08 10:59:34', '2016-06-08 10:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `set_title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `publish` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `format` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `image`, `content`, `parent_id`, `lft`, `rgt`, `depth`, `sort_order`, `set_title`, `meta_desc`, `meta_key`, `publish`, `format`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', '/photos/1/57441cb366e09.jpg', '<p><strong>Chào mừng Quý Khách đến với Nhà nghỉ Phương  Bình!</strong></p>\r\n<p><strong>Nhà nghỉ cao cấp Phương Bình</strong> –  Địa chỉ tại số 04 Phan Huy Ích, TP. Đà Nẵng  là một trong những Nhà Nghỉ tiện nghi, chất lượng phục vụ nhiệt tình, chu đáo, thân thiện…</p>\r\n<p>Bước chân vào <strong>Nhà nghỉ</strong> <strong>Phương Bình</strong>, du khách sẽ trút bỏ một ngày dài căng thẳng, mệt mỏi với một cảm giác thật bình yên… <strong>Phương Bình</strong><strong> </strong>mang lại cho Quý Khách dịch vụ hoàn hảo, sự đổi mới hoàn toàn làm hài lòng cả những vị khách khó tính nhất với chất lượng tuyệt vời của mình và vị trí vô cùng thuận lợi, gần biển, giao thông thuận tiện, giá cả lại rất hết sức hấp dẫn cho Quý Khách!</p>\r\n<p>Nằm ngay các tuyến đường giao thông chính như đường Trần Hưng Đạo, cách sông Hàn chỉ vài phút đi bộ, cách biển, cách các khu mua sắm, các cơ quan ban ngành 5 phút đi xe máy… <strong>Phương Bình</strong> thuận lợi cho Du Khách thích thả bộ dọc theo sông Hàn thơ mộng để tham quan, ngắm cảnh, mua sắm, tham gia các hoạt động vui chơi giải trí và những địa điểm thu hút Khách du lịch hàng đầu của TP Đà Nẵng…</p>\r\n<p><strong>Nhà nghỉ Phương Bình </strong>là sự lựa chọn tốt nhất và thật sự thuận tiện cho Du Khách khi đến Đà Nẵng, nơi mang lại cho Quý Khách một kỳ nghỉ thư giãn, vui nhộn của trung tâm Thành Phố Đà Nẵng xen lẫn một chút bình yên và lãng mạn bên cạnh Sông Hàn về đêm. Quý Khách hãy lựa chọn và đến với <strong>Phương Bình</strong> để tận hưởng kỳ nghỉ đầy thú vị và vô số dịch vụ, tiện nghi không gì sánh được của <strong>Phương Bình</strong><strong> </strong>!</p>\r\n<p><strong>Phương Bình</strong> còn giới thiệu Quý Khách đến những điểm du lịch đẹp, điểm vui chơi giải trí nổi tiếng của Thành phố Đà Nẵng cũng như các di sản văn hóa thế giới tại Quảng Nam, Huế… đồng thời Qúy Khách sẽ được thưởng thức các món ăn đặc sản của vùng đất biển này… Đến với <strong>Phương Bình</strong>, Quý Khách hãy yên tâm có một giấc ngủ ngon với sự phục vụ tận tình, chu đáo của đội ngũ nhân viên chuyên nghiệp đã được đào tạo về nghiệp vụ Khách Sạn – Nhà hàng.</p>\r\n<p>Trân trọng kính mời và rất hân hạnh được đón tiếp, phục vụ Quý Khách! Hãy lựa chọn và đến với <strong>Nhà nghỉ Phương Bình</strong>, chắc chắn Quý Khách sẽ rất hài lòng với quyết định của chính mình!</p>', NULL, 1, 2, 0, 0, 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', '0', '', '2016-05-25 02:32:29', '2016-06-07 08:36:50'),
(2, 'Liên hệ', 'lien-he', '', '<p><iframe src="https://www.google.com/maps/d/u/0/embed?mid=1CNEBTGJLxWXb6ackh6iguxyOLYU" width="100%" height="450"></iframe></p>', NULL, 3, 4, 0, 0, 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', 'Dịch vụ thuê xe máy Đà Nẵng', '0', 'contact', '2016-05-31 07:38:28', '2016-06-07 08:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flickr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dribbble` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo_footer` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `content`, `phone`, `address`, `email`, `facebook`, `twitter`, `flickr`, `google`, `dribbble`, `title`, `description`, `keyword`, `logo`, `logo_footer`) VALUES
(1, 'Thuê xe máy Phương Bình', 'Dịch vụ cho thuê xe máy Đà Nẵng Phương Bình hỗ trợ giao xe nhanh chóng tận nơi và sân bay', '0906 40 80 40 - 0984 241 372', '04 Phan Hữu Ích - TP. Đà Nẵng', 'nhanghiphuongbinh@gmail.com', '', '', '', '', '', 'Thuê xe máy Phương Bình', 'Dịch vụ cho thuê xe máy Đà Nẵng Phương Bình hỗ trợ giao xe nhanh chóng tận nơi và sân bay', 'Thuê xe máy Phương Bình', '/photos/1/575869f15e84a.png', '/photos/1/575acc30752bf.png');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `desc`, `image`, `publish`, `created_at`, `updated_at`) VALUES
(1, 'Air-Blade power', 'Air-Blade power', '/photos/1/Slider/573b5e27483dd.jpg', '0', '2016-05-22 10:11:30', '2016-05-22 10:11:30'),
(2, 'Honda Dream', 'Honda Dream', '/photos/1/Slider/573bdee93b1b6.png', '0', '2016-05-25 08:38:46', '2016-05-25 08:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nhật Phạm', 'butrentron.man95@gmail.com', '$2y$10$EjfcvF8yyFutVWbhU3f9N.pnx2Vnn7p7VPIOcMXBnGoHg/irXLqvu', '', 'aekkRboSEdZuYGmrnAPUyHN3BI2eqEg014Ro9AEO9ps4xyF2q2cPIOtAURro', '2016-05-22 09:49:16', '2016-06-07 08:17:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_carriages_id_foreign` (`carriages_id`);

--
-- Indexes for table `carriages`
--
ALTER TABLE `carriages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carriages_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_lft_index` (`lft`),
  ADD KEY `categories_rgt_index` (`rgt`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_parent_id_index` (`parent_id`),
  ADD KEY `menu_items_lft_index` (`lft`),
  ADD KEY `menu_items_rgt_index` (`rgt`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_carriage_id_foreign` (`carriage_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_id_index` (`parent_id`),
  ADD KEY `pages_lft_index` (`lft`),
  ADD KEY `pages_rgt_index` (`rgt`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `carriages`
--
ALTER TABLE `carriages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_carriages_id_foreign` FOREIGN KEY (`carriages_id`) REFERENCES `carriages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carriages`
--
ALTER TABLE `carriages`
  ADD CONSTRAINT `carriages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_carriage_id_foreign` FOREIGN KEY (`carriage_id`) REFERENCES `carriages` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
