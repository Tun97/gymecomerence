-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 11, 2025 lúc 09:09 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gym`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `apartment_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `city`, `district`, `ward`, `apartment_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '203', '1527', '40202', '130 Điện Biên Phủ', '2023-05-02 03:24:48', '2023-05-02 03:24:48', NULL),
(2, 3, '203', '1527', '40210', '120 Phạm Như Xương', '2023-05-03 10:11:19', '2023-05-03 10:11:19', NULL),
(3, 1, '201', '3440', '13010', '130 Điện Biên Phủ', '2023-05-02 03:24:48', '2025-08-20 12:56:49', NULL),
(8, 9, '269', '2264', '90816', '105, Hữu Phước', '2023-05-04 01:10:44', '2023-05-04 01:10:44', NULL),
(9, 10, '269', '2264', '90816', '105, Hữu Phước', '2023-09-21 12:47:49', '2023-09-21 12:47:49', NULL),
(10, 11, '269', '2264', '90816', '222222', '2023-09-21 13:39:31', '2023-09-21 13:39:31', NULL),
(11, 21, '201', '3440', '13010', 'Số 6 Ngách 365 Đường Vạn Xuân', '2025-08-12 14:22:24', '2025-08-27 10:01:09', NULL),
(12, 22, '269', '2264', '80207', 'Số 6 Ngách 365 Đường Lai Xá', '2025-08-12 15:11:34', '2025-08-12 15:11:34', NULL),
(13, 23, '266', '2267', '140801', '105, Hữu Phước', '2025-08-12 17:04:28', '2025-08-12 17:04:28', NULL),
(14, 24, '269', '2264', '90816', 'Số 6 Ngách 365 Đường Vạn Xuân', '2025-08-26 08:12:17', '2025-08-26 08:12:17', NULL),
(15, 25, '248', '1643', '180116', 'Bac Ninh', '2025-08-30 06:44:21', '2025-08-30 06:44:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Nike', '2025-08-13 13:56:07', NULL, NULL),
(10, 'Adidas', '2025-08-13 13:56:07', NULL, NULL),
(11, 'Under Armour', '2025-08-13 13:56:07', NULL, NULL),
(12, 'Puma', '2025-08-13 13:56:07', NULL, NULL),
(13, 'Reebok', '2025-08-13 13:56:07', NULL, NULL),
(14, 'GymShark', '2025-08-13 13:56:07', NULL, NULL),
(15, 'Lululemon', '2025-08-13 13:56:07', NULL, NULL),
(16, 'MusclePharm', '2025-08-13 13:56:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `slug`) VALUES
(1, 'Thời Trang Nam', NULL, NULL, NULL, 0, 'thoi-trang-nam'),
(2, 'Thời Trang Nữ', NULL, NULL, NULL, 0, 'thoi-trang-nu'),
(15, 'Phụ Kiện', '2025-08-12 15:49:37', '2025-08-12 15:49:37', NULL, 0, 'phu-kien'),
(26, 'Áo Thun Gym Nam', '2025-08-13 13:56:18', NULL, NULL, 1, 'ao-thun-gym-nam'),
(27, 'Quần Short Gym Nam', '2025-08-13 13:56:18', NULL, NULL, 1, 'quan-short-gym-nam'),
(28, 'Áo Khoác Gym Nam', '2025-08-13 13:56:18', NULL, NULL, 1, 'ao-khoac-gym-nam'),
(29, 'Giày Gym Nam', '2025-08-13 13:56:18', NULL, NULL, 1, 'giay-gym-nam'),
(30, 'Áo Thun Gym Nữ', '2025-08-13 13:56:18', NULL, NULL, 2, 'ao-thun-gym-nu'),
(31, 'Quần Legging Gym Nữ', '2025-08-13 13:56:18', NULL, NULL, 2, 'quan-legging-gym-nu'),
(32, 'Áo Bra Gym Nữ', '2025-08-13 13:56:18', NULL, NULL, 2, 'ao-bra-gym-nu'),
(33, 'Giày Gym Nữ', '2025-08-13 13:56:18', NULL, NULL, 2, 'giay-gym-nu'),
(34, 'Găng Tay Tập Gym', '2025-08-13 13:56:18', NULL, NULL, 15, 'gang-tay-tap-gym'),
(35, 'Dây Kháng Lực', '2025-08-13 13:56:18', NULL, NULL, 15, 'day-khang-luc'),
(36, 'Bình Lắc Protein', '2025-08-13 13:56:18', NULL, NULL, 15, 'binh-lac-protein'),
(37, 'Đai Lưng Tập Gym', '2025-08-13 13:56:18', NULL, NULL, 15, 'dai-lung-tap-gym');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Đen', '2025-08-13 13:56:29', NULL, NULL),
(10, 'Trắng', '2025-08-13 13:56:29', NULL, NULL),
(11, 'Xám', '2025-08-13 13:56:29', NULL, NULL),
(12, 'Đỏ', '2025-08-13 13:56:29', NULL, NULL),
(13, 'Xanh Dương', '2025-08-13 13:56:29', NULL, NULL),
(14, 'Xanh Lá', '2025-08-13 13:56:29', NULL, NULL),
(15, 'Vàng', '2025-08-13 13:56:29', NULL, NULL),
(16, 'Hồng', '2025-08-13 13:56:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_06_054552_create_roles_table', 1),
(3, '2023_02_06_093103_create_users_table', 1),
(4, '2023_02_06_093104_create_addresses_table', 1),
(5, '2023_02_09_141232_create_user_verifies_table', 1),
(6, '2023_02_17_101710_create_brands_table', 1),
(7, '2023_03_13_104142_create_colors_table', 1),
(8, '2023_03_13_104200_create_sizes_table', 1),
(9, '2023_03_15_111222_create_categories_table', 1),
(10, '2023_03_16_130121_create_products_table', 1),
(11, '2023_03_16_140642_create_products_color_table', 1),
(12, '2023_03_16_140906_create_products_size_table', 1),
(13, '2023_03_23_091419_create_payments_table', 1),
(14, '2023_03_23_095605_create_orders_table', 1),
(15, '2023_03_27_001440_create_order_details_table', 1),
(16, '2023_03_28_004112_alert_orders_table', 1),
(17, '2023_03_28_004113_alert_orders_table', 1),
(18, '2023_03_28_143413_alert_products_size_table', 1),
(19, '2023_03_28_144341_alert_products_color_table', 1),
(20, '2023_03_28_144345_alert_products_table', 1),
(21, '2023_03_28_144347_alert_orders_table', 1),
(22, '2023_03_28_144348_create_trigger_validate_quantity', 1),
(23, '2023_03_28_144349_create_trigger_group_by_quantity', 1),
(24, '2023_04_11_111222_alter_categories_table', 1),
(25, '2023_04_11_111223_alter_categories_table', 1),
(26, '2023_04_13_114627_create_product_reviews_table', 1),
(27, '2023_04_17_180428_drop_personal_access_tokens_table', 1),
(28, '2023_04_13_114628_alter_products_size_table ', 2),
(29, '2023_04_30_114628_alter_product_table ', 3),
(30, '2023_04_18_180428_create_setting_table', 4),
(31, '2023_04_19_180428_alter_setting_table', 4),
(32, '2023_03_28_144348_create_reduce_quantity_product_trigger', 5),
(33, '2023_05_1_114628_alter_payments_table ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `total_money` double NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transport_fee` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `total_money`, `order_status`, `created_at`, `updated_at`, `deleted_at`, `transport_fee`, `note`, `payment_status`) VALUES
(1755099764222, 21, 1, 291001, 3, '2025-08-13 15:42:44', '2025-08-14 06:30:15', '2025-08-14 06:30:15', 41001, NULL, 0),
(1755152932462, 21, 2, 291001, 2, '2025-08-14 06:29:34', '2025-08-21 09:49:07', '2025-08-21 09:49:07', 41001, NULL, 0),
(1755769590533, 21, 3, 16791001, 2, '2025-08-21 09:47:26', '2025-08-21 09:49:04', '2025-08-21 09:49:04', 41001, NULL, 0),
(1756196023398, 24, 3, 1291001, 3, '2025-08-26 08:13:55', '2025-08-27 09:54:17', NULL, 41001, NULL, 0),
(1756287830996, 21, 3, 791001, 3, '2025-08-27 09:44:34', '2025-08-27 09:53:30', NULL, 41001, NULL, 0),
(1756361925288, 24, 3, 2541001, 3, '2025-08-28 06:19:42', '2025-08-28 06:20:56', NULL, 41001, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_size_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(46, 1755099764222, 442, 250000, 1, '2025-08-13 15:42:44', '2025-08-13 15:42:44'),
(47, 1755152932462, 442, 250000, 1, '2025-08-14 06:29:34', '2025-08-14 06:29:34'),
(48, 1755769590533, 442, 250000, 67, '2025-08-21 09:47:26', '2025-08-21 09:47:26'),
(49, 1756196023398, 442, 250000, 5, '2025-08-26 08:13:55', '2025-08-26 08:13:55'),
(50, 1756287830996, 442, 250000, 3, '2025-08-27 09:44:34', '2025-08-27 09:44:34'),
(51, 1756361925288, 442, 250000, 10, '2025-08-28 06:19:42', '2025-08-28 06:19:42');

--
-- Bẫy `order_details`
--
DELIMITER $$
CREATE TRIGGER `group_by_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                declare _record int;
                declare _quantity int;
                select count(*) into _record from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                if (_record >= 2) then
                    select sum(quantity) into _quantity from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                    update order_details set quantity = _quantity where product_size_id = new.product_size_id and order_id = new.order_id;
                    SIGNAL sqlstate "45001" set message_text = "error";
                end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reduce_quantity_product` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                    declare _quantity int;
                    select quantity into _quantity from products_size where id = new.product_size_id;
                    if (new.quantity <= 0 || _quantity < new.quantity) then
                        SIGNAL sqlstate "45001" set message_text = "error";
                    else
                        update products_size set quantity = _quantity - new.quantity where id = new.product_size_id;
                    end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
            declare _quantity int;
            select quantity into _quantity from products_size where id = new.product_size_id;
            if (new.quantity <= 0 || _quantity < new.quantity) then
                SIGNAL sqlstate "45001" set message_text = "error";
            end if;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `status`, `img`) VALUES
(1, 'Khi nhận hàng', NULL, NULL, NULL, 1, '1682960154.png'),
(2, 'Ví điện tử Momo', NULL, NULL, NULL, 1, '1682960202.png'),
(3, 'VNPAY', NULL, '2023-09-17 17:15:35', NULL, 1, '1694970935.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `price_import` double NOT NULL,
  `price_sell` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price_import`, `price_sell`, `img`, `description`, `status`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(94, 'Áo Thun Gym Nam Nike Pro', 200000, 450000, '1757562996.avif', 'Áo thun co giãn, thấm hút mồ hôi tốt.', 1, 26, 9, '2025-08-13 14:02:42', '2025-09-11 03:56:36', NULL),
(95, 'Quần Short Gym Nam Adidas Training', 180000, 300000, '1757572695.avif', 'Quần short thoáng mát, phù hợp tập luyện.', 1, 27, 10, '2025-08-13 14:02:42', '2025-09-11 06:38:15', NULL),
(96, 'Áo Khoác Gym Nam Puma Active', 350000, 550000, '1757572563.avif', 'Áo khoác giữ ấm, thoáng khí.', 1, 28, 12, '2025-08-13 14:02:42', '2025-09-11 06:36:03', NULL),
(97, 'Giày Gym Nam Reebok Flexagon', 500000, 800000, '1757572395.webp', 'Giày nhẹ, bám tốt.', 1, 29, 13, '2025-08-13 14:02:42', '2025-09-11 06:33:15', NULL),
(98, 'Áo Thun Gym Nam GymShark Fit', 220000, 370000, '1757561827.png', 'Áo thun ôm body, co giãn tốt.', 1, 26, 14, '2025-08-13 14:02:42', '2025-09-11 03:37:07', NULL),
(99, 'Quần Short Gym Nam Under Armour', 250000, 420000, '1757572868.webp', 'Quần short chống thấm.', 1, 27, 11, '2025-08-13 14:02:42', '2025-09-11 06:41:08', NULL),
(100, 'Áo Khoác Gym Nam Nike Shield', 400000, 650000, '1757572217.webp', 'Chống gió, chống nước.', 1, 28, 9, '2025-08-13 14:02:42', '2025-09-11 06:30:17', NULL),
(101, 'Giày Gym Nam Adidas Powerlift', 600000, 950000, '1757564725.webp', 'Giày nâng tạ chuyên dụng.', 1, 29, 10, '2025-08-13 14:02:42', '2025-09-11 04:25:25', NULL),
(102, 'Áo Thun Gym Nữ Lululemon Swift', 250000, 420000, '1757564481.webp', '<p>                        Áo thun mềm mại, thoáng khí.</p><p><video controls=\"\" src=\"https://down-cvs-sg.vod.susercontent.com/api/v4/11110105/mms/vn-11110105-6kio8-mchxfxacv8h99c.16000081753194484.mp4\" width=\"640\" height=\"360\" class=\"note-video-clip\"></video><br></p><p>\r\n                      </p>', 1, 30, 15, '2025-08-13 14:03:34', '2025-09-11 04:21:21', NULL),
(103, 'Quần Legging Gym Nữ Nike Sculpt', 300000, 500000, '1757564311.webp', 'Legging nâng đỡ cơ bắp.', 1, 31, 9, '2025-08-13 14:03:34', '2025-09-11 04:18:31', NULL),
(104, 'Áo Bra Gym Nữ Under Armour', 220000, 380000, '1757564126.webp', 'Áo bra thể thao hỗ trợ vận động.', 1, 32, 11, '2025-08-13 14:03:34', '2025-09-11 04:15:26', NULL),
(105, 'Giày Gym Nữ Puma Flex Essential', 480000, 750000, '1757562704.avif', 'Giày nhẹ, đế êm.', 1, 33, 12, '2025-08-13 14:03:34', '2025-09-11 03:51:44', NULL),
(106, 'Áo Thun Gym Nữ Adidas Aeroready', 240000, 390000, '1757563873.avif', 'Áo thun thoáng mát.', 1, 30, 10, '2025-08-13 14:03:34', '2025-09-11 04:11:13', NULL),
(107, 'Quần Legging Gym Nữ GymShark Vital', 320000, 520000, '1757563572.webp', '<p>                        Legging co giãn 4 chiều.</p><p><br></p><p><video controls=\"\" src=\"https://row.checkout.gymshark.com/cdn/shop/videos/c/vp/e8aa4998f22b4f2d80666f72deac0f44/e8aa4998f22b4f2d80666f72deac0f44.HD-720p-4.5Mbps-54975150.mp4\" width=\"640\" height=\"360\" class=\"note-video-clip\"></video>\r\n                      </p>', 1, 31, 14, '2025-08-13 14:03:34', '2025-09-11 04:07:01', NULL),
(108, 'Áo Bra Gym Nữ Nike Indy', 210000, 350000, '1757563369.webp', 'Áo bra ôm sát, thoải mái.', 1, 32, 9, '2025-08-13 14:03:34', '2025-09-11 04:02:49', NULL),
(109, 'Giày Gym Nữ Reebok Nano X', 550000, 880000, '1757562434.jpg', 'Giày cross-training.', 1, 33, 13, '2025-08-13 14:03:34', '2025-09-11 03:47:14', NULL),
(110, 'Găng Tay Tập Gym Nike', 120000, 200000, '1757561432.png', '<p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-family: NunitoSans-Regular; font-size: 14px;\"><strong style=\"font-weight: bold; font-family: NunitoSans_Bold !important;\"><font color=\"#ffffff\">THÔNG SỐ</font></strong></p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 40px; font-family: NunitoSans-Regular; font-size: 14px;\"><li style=\"\"><font color=\"#ffffff\">Chất liệu: Gan bàn tay: 50% polyester / 14% nylon / 36% polyurethane (PU FOAM). Phần sau: 82% polyester / 4% nylon / 11% spandex / 3% polyurethane (PU FOAM). Khác: 85% nylon / 15% spandex</font></li><li style=\"\"><font color=\"#ffffff\">Bọt mật độ thấp và vật liệu nhẹ tăng cường độ linh hoạt khi sử dụng</font></li><li style=\"\"><font color=\"#ffffff\">Bề mặt lưới thoáng khí giữ cho bàn tay của bạn mát mẻ và thoải mái</font></li><li style=\"\"><font color=\"#ffffff\">Mã sản phẩm: N.000.2557.404.SL</font></li></ul>', 1, 34, 9, '2025-08-13 14:03:34', '2025-09-11 03:32:18', NULL),
(111, 'Dây Kháng Lực Reebok', 100000, 600000, '1757560302.webp', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Thương hiệu: Reebok</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Model: RATB-11034GR</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Chất liệu: 100% latex</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Màu sắc: xám/đen</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Kích thước: + L1: 1800 x 150 x 0.3mm (xám)</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">+ L2: 1800 x 150 x 0.5mm (Đen)</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Trọng lượng: 210g</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">- Đóng gói: 2 cái/hộp</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">Được làm từ chất liệu cao su bền, Dây kháng lực Reebok giúp bạn tăng cường độ tập luyện với hai mức độ kháng lực.</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">Là sản phẩm lý tưởng để làm săn chắc cơ, kéo dài và phục hồi chức năng, phát triển sức mạnh và tính linh hoạt.</font></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><font color=\"#ffffff\">Không để sản phẩm tiếp xúc với vật dụng nóng hoặc các thiết bị gia nhiệt.</font></p>', 1, 35, 13, '2025-08-13 14:03:34', '2025-09-11 03:20:38', NULL),
(112, 'Bình Lắc Protein GymShark', 80000, 150000, '1757559521.png', '<p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\"></p><p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\">Bình lắc inox cao cấp đẳng cấp cho GYMER</p><p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\">Phân loại thường: bình được thiết kế 1 lớp inox cao cấp, cầm nhẹ tay, phù hợp với anh em chỉ có mục đích pha whey hoặc đựng nước lọc khi đi tập.</p><p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\">Phân loại giữ nhiệt: bình được thiết kế 2 lớp inox cao cấp, cầm nặng tay hơn, có thể giữ nhiệt tốt lên đến 6-8 tiếng. Phù hợp với anh em cần giữ nhiệt.</p><p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\">Bình có dung tích tối đa hơn 750ml.</p><p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\">Trang bị kèm con lắc lò xo hổ trợ anh em pha các sản phẩm dạng bột như whey/mass</p><p style=\"font-family: &quot;Readex Pro&quot;, sans-serif; margin-bottom: 16px; line-height: 24px;\">Bình được in logo G.ymshark cực đẹp, sản phẩm giúp nổi bật khi đi tập gym hoặc đi chơi</p>', 1, 36, 14, '2025-08-13 14:03:34', '2025-09-11 03:07:48', NULL),
(113, 'Đai Lưng Tập Gym Adidas', 30000, 530000, '1757559224.jpg', '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font color=\"#ffffff\">Đai tập tạ Adidas ADGB - 12235 (Size L) lựa chọn dành cho gymer chuyên nghiệp</font></h2><p style=\"margin: 8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font color=\"#ffffff\">Adidas ADGB - 12235 (Size L) là dụng cụ hỗ trợ siết cơ, gồng cơ cố định vùng cơ tập luyện cho người tập gym hay tập thể thao chuyên nghiệp.</font></p><p style=\"margin: 8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font color=\"#ffffff\">Đai có kích thước&nbsp;124cm x 11cm x 2,5cm có thể điều chỉnh kích thước vòng eo nên sẽ là sự lựa chọn phù hợp với nhu cầu tập luyện của nam và nữ.</font></p><p style=\"margin: 8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font color=\"#ffffff\">Đai tập tạ&nbsp;được làm từ chất liệu cao cấp: phía ngoài được làm từ da thuộc, mặt trong tiếp xúc với cơ thể làm từ nylon, chốt điều chỉnh và chốt cố định được làm từ thép đảm bảo độ chắc chắn bền bỉ cho người dùng khi sử dụng.</font></p><p style=\"margin: 8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font color=\"#ffffff\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Lưu ý:</span>&nbsp;Hình ảnh sản phẩm chỉ có tính chất minh họa, chi tiết sản phẩm, màu sắc có thể thay đổi tùy theo sản phẩm thực tế.</font></p>', 1, 37, 10, '2025-08-13 14:03:34', '2025-09-11 06:23:27', NULL),
(114, 'Dây Kháng Lực Basic', 123000, 212000, '1757562120.webp', 'Dậy hỗ trợ nâng cơ , tập đu xà', 1, 35, 11, '2025-09-11 03:42:00', '2025-09-11 03:42:54', '2025-09-11 03:42:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_color`
--

CREATE TABLE `products_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_color`
--

INSERT INTO `products_color` (`id`, `img`, `color_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(177, '1756288528.jpg', 9, 113, '2025-08-13 15:42:08', '2025-09-11 02:53:51', '2025-09-11 02:53:51'),
(178, '1756288519.jpg', 11, 113, '2025-08-27 09:55:19', '2025-09-11 02:53:53', '2025-09-11 02:53:53'),
(179, '1757559243.jpg', 10, 113, '2025-09-11 02:54:03', '2025-09-11 02:54:03', NULL),
(180, '1757559642.png', 10, 112, '2025-09-11 03:00:42', '2025-09-11 03:00:42', NULL),
(181, '1757559768.jpg', 11, 113, '2025-09-11 03:02:48', '2025-09-11 03:02:48', NULL),
(182, '1757559824.png', 11, 112, '2025-09-11 03:03:44', '2025-09-11 03:03:44', NULL),
(183, '1757559837.png', 9, 112, '2025-09-11 03:03:57', '2025-09-11 03:03:57', NULL),
(184, '1757560311.webp', 9, 111, '2025-09-11 03:11:51', '2025-09-11 03:11:51', NULL),
(185, '1757560322.webp', 11, 111, '2025-09-11 03:12:02', '2025-09-11 03:12:02', NULL),
(186, '1757560938.webp', 16, 111, '2025-09-11 03:22:18', '2025-09-11 03:22:18', NULL),
(187, '1757561035.webp', 12, 111, '2025-09-11 03:23:55', '2025-09-11 03:23:55', NULL),
(188, '1757561043.webp', 13, 111, '2025-09-11 03:24:03', '2025-09-11 03:24:03', NULL),
(189, '1757561051.webp', 10, 111, '2025-09-11 03:24:11', '2025-09-11 03:24:11', NULL),
(190, '1757561442.png', 12, 110, '2025-09-11 03:30:42', '2025-09-11 03:30:42', NULL),
(191, '1757561452.png', 15, 110, '2025-09-11 03:30:52', '2025-09-11 03:30:52', NULL),
(192, '1757561467.png', 9, 110, '2025-09-11 03:31:07', '2025-09-11 03:31:07', NULL),
(193, '1757561480.png', 10, 110, '2025-09-11 03:31:20', '2025-09-11 03:31:20', NULL),
(194, '1757561487.png', 11, 110, '2025-09-11 03:31:27', '2025-09-11 03:31:27', NULL),
(195, '1757561841.png', 11, 98, '2025-09-11 03:37:21', '2025-09-11 03:37:21', NULL),
(196, '1757561852.png', 9, 98, '2025-09-11 03:37:32', '2025-09-11 03:37:32', NULL),
(197, '1757561864.jpg', 10, 98, '2025-09-11 03:37:44', '2025-09-11 03:37:44', NULL),
(198, '1757561872.jpg', 12, 98, '2025-09-11 03:37:52', '2025-09-11 03:37:52', NULL),
(199, '1757561881.png', 13, 98, '2025-09-11 03:38:01', '2025-09-11 03:38:01', NULL),
(200, '1757561888.png', 14, 98, '2025-09-11 03:38:08', '2025-09-11 03:38:08', NULL),
(201, '1757562441.jpg', 9, 109, '2025-09-11 03:47:21', '2025-09-11 03:47:21', NULL),
(202, '1757562447.jpg', 10, 109, '2025-09-11 03:47:27', '2025-09-11 03:47:27', NULL),
(203, '1757562459.jpg', 11, 109, '2025-09-11 03:47:39', '2025-09-11 03:47:39', NULL),
(204, '1757562465.jpg', 12, 109, '2025-09-11 03:47:45', '2025-09-11 03:47:45', NULL),
(205, '1757562470.jpg', 13, 109, '2025-09-11 03:47:50', '2025-09-11 03:47:50', NULL),
(206, '1757562722.avif', 9, 105, '2025-09-11 03:52:02', '2025-09-11 03:52:02', NULL),
(207, '1757562729.avif', 14, 105, '2025-09-11 03:52:09', '2025-09-11 03:52:09', NULL),
(208, '1757562738.avif', 10, 105, '2025-09-11 03:52:18', '2025-09-11 03:52:18', NULL),
(209, '1757562744.avif', 11, 105, '2025-09-11 03:52:24', '2025-09-11 03:52:24', NULL),
(210, '1757562752.avif', 12, 105, '2025-09-11 03:52:32', '2025-09-11 03:52:32', NULL),
(211, '1757562760.avif', 13, 105, '2025-09-11 03:52:40', '2025-09-11 03:52:40', NULL),
(212, '1757563004.avif', 9, 94, '2025-09-11 03:56:44', '2025-09-11 03:56:44', NULL),
(213, '1757563011.avif', 10, 94, '2025-09-11 03:56:51', '2025-09-11 03:56:51', NULL),
(214, '1757563022.avif', 11, 94, '2025-09-11 03:57:02', '2025-09-11 03:57:02', NULL),
(215, '1757563031.avif', 13, 94, '2025-09-11 03:57:11', '2025-09-11 03:57:11', NULL),
(216, '1757563041.avif', 15, 94, '2025-09-11 03:57:21', '2025-09-11 03:57:21', NULL),
(217, '1757563382.webp', 10, 108, '2025-09-11 04:03:02', '2025-09-11 04:03:02', NULL),
(218, '1757563389.webp', 9, 108, '2025-09-11 04:03:09', '2025-09-11 04:03:09', NULL),
(219, '1757563398.webp', 12, 108, '2025-09-11 04:03:18', '2025-09-11 04:03:18', NULL),
(220, '1757563405.webp', 11, 108, '2025-09-11 04:03:25', '2025-09-11 04:03:25', NULL),
(221, '1757563411.webp', 13, 108, '2025-09-11 04:03:31', '2025-09-11 04:03:31', NULL),
(222, '1757563418.webp', 14, 108, '2025-09-11 04:03:38', '2025-09-11 04:03:38', NULL),
(223, '1757563639.webp', 9, 107, '2025-09-11 04:07:19', '2025-09-11 04:07:19', NULL),
(224, '1757563647.webp', 16, 107, '2025-09-11 04:07:27', '2025-09-11 04:07:27', NULL),
(225, '1757563655.webp', 10, 107, '2025-09-11 04:07:35', '2025-09-11 04:07:35', NULL),
(226, '1757563661.webp', 11, 107, '2025-09-11 04:07:41', '2025-09-11 04:07:41', NULL),
(227, '1757563669.webp', 12, 107, '2025-09-11 04:07:49', '2025-09-11 04:07:49', NULL),
(228, '1757563675.webp', 13, 107, '2025-09-11 04:07:55', '2025-09-11 04:07:55', NULL),
(229, '1757563928.avif', 9, 106, '2025-09-11 04:12:08', '2025-09-11 04:12:08', NULL),
(230, '1757563934.avif', 10, 106, '2025-09-11 04:12:14', '2025-09-11 04:12:14', NULL),
(231, '1757563940.avif', 11, 106, '2025-09-11 04:12:20', '2025-09-11 04:12:20', NULL),
(232, '1757563951.avif', 13, 106, '2025-09-11 04:12:31', '2025-09-11 04:12:31', NULL),
(233, '1757563961.avif', 12, 106, '2025-09-11 04:12:41', '2025-09-11 04:12:41', NULL),
(234, '1757564134.webp', 9, 104, '2025-09-11 04:15:34', '2025-09-11 04:15:34', NULL),
(235, '1757564140.webp', 10, 104, '2025-09-11 04:15:40', '2025-09-11 04:15:40', NULL),
(236, '1757564145.webp', 11, 104, '2025-09-11 04:15:45', '2025-09-11 04:15:45', NULL),
(237, '1757564150.webp', 12, 104, '2025-09-11 04:15:50', '2025-09-11 04:15:50', NULL),
(238, '1757564157.webp', 13, 104, '2025-09-11 04:15:57', '2025-09-11 04:15:57', NULL),
(239, '1757564162.webp', 14, 104, '2025-09-11 04:16:02', '2025-09-11 04:16:02', NULL),
(240, '1757564324.webp', 9, 103, '2025-09-11 04:18:44', '2025-09-11 04:18:44', NULL),
(241, '1757564331.webp', 16, 103, '2025-09-11 04:18:51', '2025-09-11 04:18:51', NULL),
(242, '1757564339.webp', 10, 103, '2025-09-11 04:18:59', '2025-09-11 04:18:59', NULL),
(243, '1757564346.webp', 11, 103, '2025-09-11 04:19:06', '2025-09-11 04:19:06', NULL),
(244, '1757564353.webp', 12, 103, '2025-09-11 04:19:13', '2025-09-11 04:19:13', NULL),
(245, '1757564359.webp', 13, 103, '2025-09-11 04:19:19', '2025-09-11 04:19:19', NULL),
(246, '1757564508.webp', 11, 102, '2025-09-11 04:21:48', '2025-09-11 04:21:48', NULL),
(247, '1757564519.webp', 10, 102, '2025-09-11 04:21:59', '2025-09-11 04:21:59', NULL),
(248, '1757564529.webp', 14, 102, '2025-09-11 04:22:09', '2025-09-11 04:22:09', NULL),
(249, '1757564549.webp', 16, 102, '2025-09-11 04:22:29', '2025-09-11 04:22:29', NULL),
(250, '1757564557.webp', 13, 102, '2025-09-11 04:22:37', '2025-09-11 04:22:37', NULL),
(251, '1757564737.webp', 9, 101, '2025-09-11 04:25:37', '2025-09-11 04:25:37', NULL),
(252, '1757564742.webp', 10, 101, '2025-09-11 04:25:42', '2025-09-11 04:25:42', NULL),
(253, '1757564748.webp', 11, 101, '2025-09-11 04:25:48', '2025-09-11 04:25:48', NULL),
(254, '1757564753.webp', 12, 101, '2025-09-11 04:25:53', '2025-09-11 04:25:53', NULL),
(255, '1757564759.webp', 13, 101, '2025-09-11 04:25:59', '2025-09-11 04:25:59', NULL),
(256, '1757564765.webp', 14, 101, '2025-09-11 04:26:05', '2025-09-11 04:26:10', '2025-09-11 04:26:10'),
(257, '1757564775.webp', 15, 101, '2025-09-11 04:26:15', '2025-09-11 04:26:15', NULL),
(258, '1757572225.webp', 9, 100, '2025-09-11 06:30:25', '2025-09-11 06:30:25', NULL),
(259, '1757572235.webp', 10, 100, '2025-09-11 06:30:35', '2025-09-11 06:30:35', NULL),
(260, '1757572243.webp', 11, 100, '2025-09-11 06:30:43', '2025-09-11 06:30:43', NULL),
(261, '1757572411.webp', 10, 97, '2025-09-11 06:33:31', '2025-09-11 06:33:31', NULL),
(262, '1757572419.webp', 9, 97, '2025-09-11 06:33:39', '2025-09-11 06:33:39', NULL),
(263, '1757572425.webp', 11, 97, '2025-09-11 06:33:45', '2025-09-11 06:33:45', NULL),
(264, '1757572434.webp', 12, 97, '2025-09-11 06:33:54', '2025-09-11 06:33:54', NULL),
(265, '1757572573.avif', 9, 96, '2025-09-11 06:36:13', '2025-09-11 06:36:13', NULL),
(266, '1757572581.avif', 10, 96, '2025-09-11 06:36:21', '2025-09-11 06:36:21', NULL),
(267, '1757572704.avif', 9, 95, '2025-09-11 06:38:24', '2025-09-11 06:38:24', NULL),
(268, '1757572712.avif', 10, 95, '2025-09-11 06:38:32', '2025-09-11 06:38:32', NULL),
(269, '1757572886.webp', 10, 99, '2025-09-11 06:41:26', '2025-09-11 06:41:26', NULL),
(270, '1757572907.webp', 13, 99, '2025-09-11 06:41:47', '2025-09-11 06:41:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_size`
--

CREATE TABLE `products_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_size`
--

INSERT INTO `products_size` (`id`, `product_color_id`, `size_id`, `created_at`, `updated_at`, `quantity`, `deleted_at`) VALUES
(442, 177, 6, NULL, '2025-08-21 09:48:35', 1000048, NULL),
(443, 177, 11, NULL, NULL, 100, NULL),
(444, 178, 11, NULL, NULL, 100, NULL),
(445, 180, 7, NULL, '2025-09-11 03:01:56', 210, '2025-09-11 03:01:56'),
(446, 180, 12, NULL, NULL, 333, NULL),
(447, 179, 6, NULL, NULL, 121, NULL),
(448, 179, 7, NULL, NULL, 123, NULL),
(449, 184, 8, NULL, NULL, 122, NULL),
(450, 185, 7, NULL, NULL, 11, NULL),
(451, 190, 7, NULL, NULL, 12, NULL),
(452, 190, 9, NULL, NULL, 12, NULL),
(453, 191, 6, NULL, NULL, 12, NULL),
(454, 190, 8, NULL, '2025-09-11 03:33:12', 12, '2025-09-11 03:33:12'),
(455, 191, 9, NULL, NULL, 12, NULL),
(456, 195, 6, NULL, NULL, 10, NULL),
(457, 195, 7, NULL, NULL, 12, NULL),
(458, 195, 8, NULL, NULL, 33, NULL),
(459, 195, 9, NULL, NULL, 22, NULL),
(460, 196, 6, NULL, NULL, 11, NULL),
(461, 195, 10, NULL, NULL, 12, NULL),
(462, 196, 7, NULL, NULL, 112, NULL),
(463, 196, 8, NULL, NULL, 12, NULL),
(464, 199, 6, NULL, NULL, 12, NULL),
(465, 199, 7, NULL, NULL, 12, NULL),
(466, 199, 8, NULL, NULL, 121, NULL),
(467, 201, 6, NULL, NULL, 12, NULL),
(468, 201, 7, NULL, NULL, 123, NULL),
(469, 201, 8, NULL, NULL, 12, NULL),
(470, 201, 9, NULL, NULL, 112, NULL),
(471, 201, 10, NULL, NULL, 121, NULL),
(472, 206, 6, NULL, NULL, 11, NULL),
(473, 206, 7, NULL, NULL, 11, NULL),
(474, 206, 8, NULL, NULL, 12, NULL),
(475, 206, 9, NULL, NULL, 12, NULL),
(476, 207, 6, NULL, NULL, 11, NULL),
(477, 207, 7, NULL, NULL, 11, NULL),
(478, 207, 8, NULL, NULL, 12, NULL),
(479, 207, 9, NULL, NULL, 12, NULL),
(480, 212, 6, NULL, NULL, 12, NULL),
(481, 212, 7, NULL, NULL, 12, NULL),
(482, 212, 8, NULL, NULL, 12, NULL),
(483, 212, 9, NULL, NULL, 12, NULL),
(484, 213, 6, NULL, NULL, 12, NULL),
(485, 213, 7, NULL, NULL, 22, NULL),
(486, 213, 8, NULL, NULL, 22, NULL),
(487, 213, 9, NULL, NULL, 22, NULL),
(488, 214, 6, NULL, NULL, 33, NULL),
(489, 214, 7, NULL, NULL, 33, NULL),
(490, 214, 8, NULL, NULL, 33, NULL),
(491, 214, 9, NULL, NULL, 33, NULL),
(492, 215, 6, NULL, NULL, 33, NULL),
(493, 215, 7, NULL, NULL, 33, NULL),
(494, 215, 8, NULL, NULL, 33, NULL),
(495, 216, 6, NULL, NULL, 11, NULL),
(496, 216, 7, NULL, NULL, 11, NULL),
(497, 216, 8, NULL, NULL, 12, NULL),
(498, 217, 6, NULL, NULL, 12, NULL),
(499, 217, 7, NULL, NULL, 12, NULL),
(500, 217, 8, NULL, NULL, 12, NULL),
(501, 217, 9, NULL, NULL, 123, NULL),
(502, 220, 6, NULL, NULL, 12, NULL),
(503, 220, 7, NULL, NULL, 11, NULL),
(504, 220, 8, NULL, NULL, 11, NULL),
(505, 223, 6, NULL, NULL, 22, NULL),
(506, 223, 7, NULL, NULL, 221, NULL),
(507, 223, 8, NULL, NULL, 23, NULL),
(508, 223, 9, NULL, NULL, 23, NULL),
(509, 224, 6, NULL, NULL, 11, NULL),
(510, 224, 7, NULL, NULL, 11, NULL),
(511, 224, 8, NULL, NULL, 11, NULL),
(512, 224, 9, NULL, NULL, 11, NULL),
(513, 229, 6, NULL, NULL, 54, NULL),
(514, 229, 7, NULL, NULL, 45, NULL),
(515, 229, 8, NULL, NULL, 44, NULL),
(516, 230, 6, NULL, NULL, 44, NULL),
(517, 230, 7, NULL, NULL, 44, NULL),
(518, 230, 8, NULL, NULL, 44, NULL),
(519, 231, 6, NULL, NULL, 44, NULL),
(520, 231, 7, NULL, NULL, 44, NULL),
(521, 232, 6, NULL, NULL, 44, NULL),
(522, 232, 7, NULL, NULL, 33, NULL),
(523, 234, 6, NULL, NULL, 112, NULL),
(524, 234, 7, NULL, NULL, 12, NULL),
(525, 234, 8, NULL, NULL, 12, NULL),
(526, 234, 9, NULL, NULL, 12, NULL),
(527, 235, 6, NULL, NULL, 12, NULL),
(528, 235, 7, NULL, NULL, 12, NULL),
(529, 235, 8, NULL, NULL, 12, NULL),
(530, 235, 9, NULL, NULL, 12, NULL),
(531, 240, 6, NULL, NULL, 4, NULL),
(532, 240, 7, NULL, NULL, 3, NULL),
(533, 240, 8, NULL, NULL, 12, NULL),
(534, 240, 9, NULL, NULL, 22, NULL),
(535, 241, 6, NULL, NULL, 1, NULL),
(536, 241, 7, NULL, NULL, 12, NULL),
(537, 241, 8, NULL, NULL, 12, NULL),
(538, 241, 9, NULL, NULL, 122, NULL),
(539, 246, 6, NULL, NULL, 12, NULL),
(540, 246, 7, NULL, NULL, 12, NULL),
(541, 246, 8, NULL, NULL, 12, NULL),
(542, 246, 9, NULL, NULL, 124, NULL),
(543, 247, 6, NULL, NULL, 12, NULL),
(544, 248, 6, NULL, NULL, 12, NULL),
(545, 249, 6, NULL, NULL, 12, NULL),
(546, 250, 6, NULL, NULL, 123, NULL),
(547, 251, 6, NULL, NULL, 12, NULL),
(548, 251, 7, NULL, NULL, 12, NULL),
(549, 251, 8, NULL, NULL, 2, NULL),
(550, 251, 9, NULL, NULL, 22, NULL),
(551, 252, 6, NULL, NULL, 1, NULL),
(552, 252, 7, NULL, NULL, 2, NULL),
(553, 252, 8, NULL, NULL, 3, NULL),
(554, 252, 9, NULL, NULL, 4, NULL),
(555, 258, 6, NULL, NULL, 12, NULL),
(556, 258, 7, NULL, NULL, 12, NULL),
(557, 258, 8, NULL, NULL, 123, NULL),
(558, 258, 9, NULL, NULL, 123, NULL),
(559, 261, 6, NULL, NULL, 12, NULL),
(560, 261, 7, NULL, NULL, 12, NULL),
(561, 261, 8, NULL, NULL, 22, NULL),
(562, 261, 9, NULL, NULL, 11, NULL),
(563, 261, 10, NULL, NULL, 12, NULL),
(564, 265, 6, NULL, NULL, 12, NULL),
(565, 265, 7, NULL, NULL, 134, NULL),
(566, 265, 8, NULL, NULL, 12, NULL),
(567, 267, 6, NULL, NULL, 12, NULL),
(568, 267, 7, NULL, NULL, 33, NULL),
(569, 267, 8, NULL, NULL, 22, NULL),
(570, 267, 9, NULL, NULL, 12, NULL),
(571, 268, 6, NULL, NULL, 12, NULL),
(572, 268, 7, NULL, NULL, 12, NULL),
(573, 268, 8, NULL, NULL, 12, NULL),
(574, 269, 6, NULL, NULL, 12, NULL),
(575, 269, 7, NULL, NULL, 123, NULL),
(576, 269, 8, NULL, NULL, 12, NULL),
(577, 270, 6, NULL, NULL, 121, NULL),
(578, 270, 7, NULL, NULL, 12, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rating`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 21, 113, 3, 'Sản phẩm tốt', '2025-08-26 07:09:00', '2025-08-26 07:09:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Quản trị viên'),
(2, 'Nhân Viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `name` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  `address` char(255) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `notification` text NOT NULL,
  `introduction` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `logo`, `name`, `email`, `address`, `phone_number`, `maintenance`, `notification`, `introduction`, `created_at`, `updated_at`) VALUES
(1, '1756277390.png', 'Muscle Store', 'MuscleStore@gmail.com', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '123125934093', 2, '<b>WEBSITE tạm thời bảo trì để nâng cấp xin  quay lại sau</b>', '<p data-start=\"395\" data-end=\"507\"><strong data-start=\"395\" data-end=\"411\">MUSCLE STORE</strong> không chỉ là một cửa hàng đồ tập gym – chúng tôi là nơi khởi nguồn của sự tự tin và sức mạnh.</p>\r\n<p data-start=\"514\" data-end=\"708\">Với mong muốn đồng hành cùng bạn trên hành trình rèn luyện thể chất, chúng tôi mang đến những <strong data-start=\"608\" data-end=\"635\">sản phẩm chất lượng cao</strong>: từ áo thun, quần short, giày cho đến các phụ kiện tập luyện hiện đại.</p>\r\n<p data-start=\"715\" data-end=\"864\">Mỗi sản phẩm tại MUSCLE STORE đều được chọn lọc kỹ càng để vừa đảm bảo <strong data-start=\"786\" data-end=\"808\">thoải mái – bền bỉ</strong>, vừa tôn lên <strong data-start=\"822\" data-end=\"853\">phong cách và cá tính riêng</strong> của bạn.</p>\r\n<p data-start=\"871\" data-end=\"1049\">Chúng tôi tin rằng: <strong data-start=\"891\" data-end=\"953\">khi bạn chọn đúng trang phục, bạn cũng chọn đúng tinh thần</strong> – để chinh phục mọi thử thách, vượt qua giới hạn và đạt được những mục tiêu lớn hơn mỗi ngày.</p>\r\n<p data-start=\"1056\" data-end=\"1191\">Hãy để MUSCLE STORE trở thành người bạn đồng hành của bạn trên con đường xây dựng một cơ thể khỏe mạnh và một tinh thần mạnh mẽ! 💪🔥</p>', NULL, '2025-08-27 07:00:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'S', '2025-08-13 13:56:40', NULL, NULL),
(7, 'M', '2025-08-13 13:56:40', NULL, NULL),
(8, 'L', '2025-08-13 13:56:40', NULL, NULL),
(9, 'XL', '2025-08-13 13:56:40', NULL, NULL),
(10, 'XXL', '2025-08-13 13:56:40', NULL, NULL),
(11, '20kg', '2025-08-27 09:55:51', '2025-08-27 09:55:51', NULL),
(12, '750ml', '2025-09-11 03:01:36', '2025-09-11 03:01:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `disable_reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `phone_number`, `role_id`, `active`, `disable_reason`, `created_by`, `updated_by`, `deleted_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-04-28 04:29:18', '000 000-0000', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2025-08-20 12:56:49', NULL),
(2, 'Ho Anh Nguyen', 'han16052001@gmail.com', '$2y$10$Q8XcfyypiOp348/xjPVxLOVpuC00zJLgF4D5LXMLF68ymKCa.6Ho.', '2023-05-02 03:25:18', '1234567890', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-05-02 03:24:23', '2025-08-20 12:49:51', '2025-08-20 12:49:51'),
(3, 'Nguyễn Trần Gia Bảo 1', 'bao123@gmail.com', '$2y$10$X2oo0TcQ1rSxRdJwFFLRCuTRD2Q/KUY4gwOa/heJtYPdMwriWe72e', '2023-05-18 10:11:58', '845 642-4326', 1, 1, NULL, 1, 1, NULL, NULL, '2023-05-03 10:11:06', '2025-08-12 17:09:22', NULL),
(9, 'Lê Hữu Phước', 'huuphuocit0201@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-04 01:10:50', '0845151117', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-05-04 01:10:39', '2025-08-20 12:49:48', '2025-08-20 12:49:48'),
(10, 'Lê Hữu Phước', 'lehuuphuocit0201@gmail.com', '$2y$10$a/yS4Hm7eoLqyUyukirVO.jo7P0sIM7HgekqYCvRwBuB0t8Re2lnm', '2023-09-21 12:55:34', '084 515-1117', 3, 1, NULL, NULL, 1, 1, NULL, '2023-09-21 12:47:43', '2025-08-20 12:49:46', '2025-08-20 12:49:46'),
(11, 'Lê Hữu Phước', 'test@gmail.comaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '$2y$10$AqRDBZgakr6/En4YhwG5AeILGcPnRyqMJ4ZMFqTTIpXjQktoTTfL2', NULL, '0845151117', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-09-21 13:39:27', '2023-09-21 13:39:27', NULL),
(21, 'Nguyễn Gia Phong', 'gp20092004@gmail.com', '$2y$10$aEpLHrgnWRsLNNjHwpcTsONDzJL1WgjwD.MGuVSIpyZcmjjRsQH3i', '2025-08-12 14:22:35', '0396516618', 3, 1, NULL, NULL, 21, NULL, NULL, '2025-08-12 14:22:19', '2025-08-27 10:01:09', NULL),
(22, 'Phan Tự Trường', 'truongbeo@gmail.com', '$2y$10$ZtIrLg6mw4VGldiR/j8u2OsDKBHA0eEQaAnhRPOF9H4dqFPPlqu2K', '2025-08-12 15:11:44', '0123456789', 2, 1, NULL, NULL, NULL, NULL, NULL, '2025-08-12 15:11:23', '2025-08-12 15:11:44', NULL),
(23, 'Văn Huy', 'vh@gmail.com', '$2y$10$ncrAc0mXDXp/enkuT0I9POxjEZawDcwjfobNpe1ruGBcA5TtF/roe', '2025-08-12 17:05:42', '0111111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2025-08-12 17:04:23', '2025-08-12 17:05:42', NULL),
(24, 'Nguyễn Gia Phong', 'dragonblackdevil2004@gmail.com', '$2y$10$6g59P1izU42wxgN7UpaFMe1h.JeLp0Hvj1R4cRb8tX9wNDLrcF.cC', '2025-08-26 08:12:27', '0396516618', 3, 1, NULL, NULL, NULL, NULL, NULL, '2025-08-26 08:12:11', '2025-08-26 08:12:27', NULL),
(25, 'Tăng Anh Tuấn', 'admin3@gmail.com', '$2y$10$Y.hYm8r5qwE1MOu9/MGA3e99D2fIRTb0WpVTn5GML.TdoScNTbyIG', '2025-08-30 06:44:32', '0968498556', 3, 1, NULL, NULL, NULL, NULL, NULL, '2025-08-30 06:44:00', '2025-08-30 06:44:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `email_verify` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `user_id`, `token`, `expires_at`, `email_verify`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 'A8TeoYsNWoLXolZ3g7uItst6cGXGdoaBxOnJXC3oCboNbc4pEwmmJJefgJuUhNwW', '2023-05-03 11:11:06', NULL, '2023-05-03 10:11:06', '2023-05-03 10:11:06', NULL),
(6, 7, 'i7cgmFkliCXdWeMYmpVtZihzyZcBy5V2ZBcI6VVbWkdgvNSbEyHpdmpNqlGm78s9', '2023-05-03 16:54:10', NULL, '2023-05-03 15:54:10', '2023-05-03 15:54:10', NULL),
(7, 8, 'aDYaSWNOs8RsfngYfP01kHpnGQuecCgyizcPKBwnPLskgtUqpXunkd0VOdadiSay', '2023-05-03 16:55:09', NULL, '2023-05-03 15:55:09', '2023-05-03 15:55:09', NULL),
(10, 11, 'aLR0fHF2jlm3r2Us06NlwXAZ2ju1uxYiWJXCYvFE0Uwp0V0SxZ66q4myE7XdOMy5', '2023-09-21 14:39:27', NULL, '2023-09-21 13:39:27', '2023-09-21 13:39:27', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_size_id_foreign` (`product_size_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_color_color_id_foreign` (`color_id`),
  ADD KEY `products_color_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_size_product_color_id_foreign` (`product_color_id`),
  ADD KEY `products_size_size_id_foreign` (`size_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1756361925289;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT cho bảng `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `products_size` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD CONSTRAINT `products_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD CONSTRAINT `products_size_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `products_color` (`id`),
  ADD CONSTRAINT `products_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
