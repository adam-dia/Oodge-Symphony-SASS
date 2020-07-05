-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2019 at 07:44 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.3.3-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `algorithme_oodge_db_2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `background_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `background_name`, `about_title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5ca36205133c9326562254.png', 'A propos', 'A propos de nous', 'a-propos', '2019-04-02 15:21:47', '2019-04-02 15:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `about_detail`
--

CREATE TABLE `about_detail` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_detail`
--

INSERT INTO `about_detail` (`id`, `title`, `content`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'LOREM IPSUM', 'Lorem ipsum dolor sit amet, consectetur.Lorem ipsum dolor sit amet, consectetur.Lorem ipsum dolor sit amet, consectetur.Lorem ipsum dolor sit amet, consectetur.', 'lorem-ipsum', '2019-04-02 15:26:53', '2019-04-02 15:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `about_menu`
--

CREATE TABLE `about_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_menu`
--

INSERT INTO `about_menu` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'A Propos', 'a-propos', '2019-03-29 07:15:54', '2019-03-29 07:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `actuality`
--

CREATE TABLE `actuality` (
  `id` int(11) NOT NULL,
  `background_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actuality_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actuality`
--

INSERT INTO `actuality` (`id`, `background_name`, `actuality_title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5ca3618bbace8123839847.png', 'Actualités', 'Actualités des restaurants', 'actualites', '2019-04-02 15:19:41', '2019-04-02 15:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `actuality_menu`
--

CREATE TABLE `actuality_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actuality_menu`
--

INSERT INTO `actuality_menu` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Actualités', 'actualites', '2019-03-29 07:15:25', '2019-03-29 07:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `username`, `email`, `roles`, `password`, `avatar_name`, `full_name`, `phone`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '[\"ROLE_SUPER_ADMIN\"]', '$2y$13$xUvTNs8t6G4RN6x5VyBKG.NGYP2d/kDXpz3.EOS2rykINvm2kPfc2', '5c9d2ba5d8f53147296101.jpg', 'Super Admin', NULL, 'admin', '2019-03-28 18:05:52', '2019-03-28 21:16:37'),
(2, 'demo', 'demo@gmail.com', '[\"ROLE_ADMIN\"]', 'demo', '5c9e3f7670560050425314.png', 'Demo', NULL, 'demo', '2019-03-29 16:43:49', '2019-03-29 16:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `alcohol`
--

CREATE TABLE `alcohol` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alcohol`
--

INSERT INTO `alcohol` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bring your own alcool', 'bring-your-own-alcool', '2019-03-29 16:36:47', '2019-03-29 16:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `image`, `name`, `map`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5c9e334d65227219265643.png', 'Afrique', NULL, 'afrique', '2019-03-29 16:01:33', '2019-03-29 16:01:33'),
(2, '5c9e336add96b366751115.jpg', 'Amérique du nord', NULL, 'amerique-du-nord', '2019-03-29 16:02:02', '2019-03-29 16:02:02'),
(3, '5c9e338c217cc416238253.gif', 'Amérique du sud', NULL, 'amerique-du-sud', '2019-03-29 16:02:36', '2019-03-29 16:02:36'),
(4, '5c9e33de1eab8512758168.jpg', 'Caraïbes', NULL, 'caraibes', '2019-03-29 16:03:58', '2019-03-29 16:03:58'),
(5, '5c9e3436172c9883474700.png', 'Europe', NULL, 'europe', '2019-03-29 16:05:26', '2019-03-29 16:05:26'),
(6, '5c9e346b80a79708213801.png', 'Asie', NULL, 'asie', '2019-03-29 16:06:19', '2019-03-29 16:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `article_blog`
--

CREATE TABLE `article_blog` (
  `id` int(11) NOT NULL,
  `category_blog_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `restorers_id` int(11) DEFAULT NULL,
  `administrators_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_blog`
--

INSERT INTO `article_blog` (`id`, `category_blog_id`, `restaurant_id`, `restorers_id`, `administrators_id`, `image`, `title`, `content`, `slug`, `published`, `created_at`, `updated_at`) VALUES
(1, 3, 3, NULL, 1, '5c9f76afe8aee834993575.jpeg', 'Pomme de terre', 'La pomme de terre est le légume préféré des Français. Normal, elle se prête à de nombreuses recettes gourmandes et pleines d\'énergie !', 'pomme-de-terre', 1, '2019-03-30 15:01:19', '2019-03-30 15:01:19'),
(2, 4, 11, NULL, 1, '5c9f7987dfbf2820008001.jpeg', 'Riz gras au poulet', 'Le riz gras au poulet est la cuisine préférée  des africains. Normal, il se prête à de nombreuses recettes gourmandes et pleines d\'énergie !', 'riz-gras-au-poulet', 1, '2019-03-30 15:13:27', '2019-03-30 15:13:27'),
(3, 4, 1, NULL, 1, '5c9f7a5149948939006960.jpeg', 'Atiéké + Poisson Thon', 'Le garba est un plat populaire ivoirien à base de semoule de manioc accompagnée de thon.', 'atieke-poisson-thon', 1, '2019-03-30 15:16:49', '2019-04-13 17:15:36'),
(4, 3, 8, NULL, 1, '5c9f7ac8083b7121325769.jpeg', 'Poulet doré au four', 'Poulet doré au four a la provençale. Poulet doré au four aux herbes de Provence, une recette provençale pleine de saveur, du thym, des herbes de Provence.', 'poulet-dore-au-four', 1, '2019-03-30 15:18:48', '2019-03-30 15:18:48'),
(5, 4, 12, NULL, 1, '5c9f7b852d28a252015650.jpeg', 'Poissson braisé', 'Le poisson est mariné dans une sauce épicée pour quelques temps et est ensuite cuit aux braises, au barbecue ou dans un plat allant au four.', 'poissson-braise', 1, '2019-03-30 15:21:57', '2019-03-30 15:21:57'),
(6, 3, 1, NULL, 1, '5c9f7c2094f91092012892.jpeg', 'Pizza', 'C\'est la star de la cuisine italienne, la Pizza est certainement la spécialité la plus consommée en Europe', 'pizza', 1, '2019-03-30 15:24:32', '2019-03-30 15:24:32'),
(7, 3, 5, NULL, 1, '5c9f7d094080d207438587.jpeg', 'Humburger', 'Le hamburger est un sandwich allemand. C\'est le produit de base de la restauration rapide, qu\'on peut facilement préparer chez soi. Il vient de la ville ...', 'humburger', 1, '2019-03-30 15:28:25', '2019-03-30 15:28:25'),
(8, 3, 7, NULL, 1, '5c9f7da046bba261531571.jpeg', 'Sandwich', 'Le sandwich est un mets, généralement composé de deux ou plusieurs tranches de pain, avec un ou plusieurs ingrédients entre elles. Par antonomase, le ...', 'sandwich', 1, '2019-03-30 15:30:56', '2019-03-30 15:30:56'),
(9, 3, 4, NULL, 1, '5c9f8608f1669261720405.jpeg', 'Salade', 'La salade est initialement un mets préparé, composé de feuilles d\'herbes potagères crues, éventuellement assaisonnées de vinaigrette (voir aussi salade ...', 'salade', 1, '2019-03-30 16:06:48', '2019-03-30 16:06:48'),
(10, 3, 8, NULL, 1, '5c9f871f5f9a0170060783.jpeg', 'Gâteau', 'Pour le goûter, en dessert ou en cas de fringale, le gâteau maison est un must de la gourmandise. C\'est aussi le grand classique des fêtes d\'anniversaire.', 'gateau', 1, '2019-03-30 16:11:27', '2019-03-30 16:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `back_ground_site`
--

CREATE TABLE `back_ground_site` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cartography`
--

CREATE TABLE `cartography` (
  `id` int(11) NOT NULL,
  `background_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartography_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cartography`
--

INSERT INTO `cartography` (`id`, `background_name`, `cartography_title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5ca3679b46878000692622.png', 'Cartographie', 'Cartographie des restaurants', 'cartographie', '2019-04-02 15:18:29', '2019-04-02 15:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `cartography_menu`
--

CREATE TABLE `cartography_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cartography_menu`
--

INSERT INTO `cartography_menu` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cartographie', 'cartographie', '2019-03-28 23:04:14', '2019-03-28 23:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_blog`
--

CREATE TABLE `category_blog` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_blog`
--

INSERT INTO `category_blog` (`id`, `image`, `title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5c9f6065f2825499401740.jpeg', 'Poulet', NULL, 'poulet', '2019-03-30 13:26:13', '2019-03-30 13:26:13'),
(2, '5c9f60991dba0403362849.jpeg', 'Caribéenne', NULL, 'caribeenne', '2019-03-30 13:27:05', '2019-03-30 13:38:05'),
(3, '5c9f61155eb4b170015966.jpeg', 'Européenne', NULL, 'europeenne', '2019-03-30 13:29:09', '2019-03-30 13:36:12'),
(4, '5c9f6181bc322636300728.jpeg', 'Africaine', NULL, 'africaine', '2019-03-30 13:30:57', '2019-03-30 13:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `cgu`
--

CREATE TABLE `cgu` (
  `id` int(11) NOT NULL,
  `background_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgu_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgu`
--

INSERT INTO `cgu` (`id`, `background_name`, `cgu_title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(2, '5ca33fcc17a25142594558.png', 'CGU', 'Condition Générale d\'Utilisation', 'cgu', '2019-04-02 12:56:12', '2019-04-02 12:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `cgu_detail`
--

CREATE TABLE `cgu_detail` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgu_detail`
--

INSERT INTO `cgu_detail` (`id`, `title`, `content`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur?????', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At qui vero, iure quisquam provident quia explicabo nesciunt ullam atque voluptas aliquam accusamus, ipsam minima..', 'lorem-ipsum-dolor-sit-amet-consectetur', '2019-04-02 12:57:04', '2019-04-02 12:57:04'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit ?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed neque provident dicta id asperiores porro enim molestiae eum odio velit, perspiciatis qui, amet eaque natus laudantium in ab quaerat incidunt! Dolores nobis rem veritatis similique provident.', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', '2019-04-02 12:57:59', '2019-04-02 12:57:59'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti, repellendus ?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis odit beatae nemo consequuntur debitis earum reprehenderit dolorem soluta enim molestias suscipit, perferendis, laudantium obcaecati quibusdam modi nostrum molestiae voluptas. Alias..', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-deleniti-repellendus', '2019-04-02 12:58:44', '2019-04-02 12:58:44'),
(4, 'Lorem ipsum dolor sit amet ?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, sed, harum. Eos repellat consectetur sed quod. Minus dolore quaerat omnis, magnam itaque explicabo dolor sint excepturi veritatis iste cumque.', 'lorem-ipsum-dolor-sit-amet', '2019-04-02 12:59:24', '2019-04-02 12:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `cgu_menu`
--

CREATE TABLE `cgu_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgu_menu`
--

INSERT INTO `cgu_menu` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'CGU', 'cgu', '2019-03-29 07:15:48', '2019-03-29 07:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `image`, `name`, `map`, `slug`, `created_at`, `updated_at`) VALUES
(1, 4, '5c9e3925d06d6516874971.jpg', 'Abidjan', NULL, 'abidjan', '2019-03-29 16:26:29', '2019-03-29 16:26:29'),
(2, 2, '5c9e3940ca868854256405.jpg', 'Bamako', NULL, 'bamako', '2019-03-29 16:26:56', '2019-03-29 16:26:56'),
(3, 3, '5c9e39ad58040320536068.jpg', 'Yaoundé', NULL, 'yaounde', '2019-03-29 16:28:45', '2019-03-29 16:28:45'),
(4, 3, '5c9e39ca7ca7e387789393.jpg', 'Douala', NULL, 'douala', '2019-03-29 16:29:14', '2019-03-29 16:29:14'),
(5, 5, '5c9e39ecc9789707880017.jpg', 'Puerto Plata', NULL, 'puerto-plata', '2019-03-29 16:29:48', '2019-03-29 16:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `content` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `restaurant_id`, `rating_id`, `content`, `slug`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 'Good!', '2019-03-30-13-13', '2019-03-30 13:13:17', '2019-03-30 13:13:17'),
(2, 2, 9, 2, 'Très bon!', '2019-03-30-15-52', '2019-03-30 15:52:29', '2019-03-30 15:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `background_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_menu`
--

CREATE TABLE `contact_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_menu`
--

INSERT INTO `contact_menu` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Contact', 'contact', '2019-03-29 07:15:40', '2019-03-29 07:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

CREATE TABLE `contact_page` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `infobule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`id`, `image_name`, `title`, `slug`, `description`, `latitude`, `longitude`, `infobule`, `created_at`, `updated_at`) VALUES
(1, '5ca3639d48eef362610808.png', 'Contactez nous', 'contactez-nous', 'Contactez nous', 85.456665, -66.565456, 'contactez nous', '2019-04-02 15:29:01', '2019-04-02 15:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_page_info`
--

CREATE TABLE `contact_page_info` (
  `id` int(11) NOT NULL,
  `contact_page_id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_page_info`
--

INSERT INTO `contact_page_info` (`id`, `contact_page_id`, `icon`, `info`, `slug`, `created_at`, `updated_at`) VALUES
(4, 1, 'fa fa-phone', 'TELEPHONE', '2019-04-02-15-44', '2019-04-02 15:44:37', '2019-04-02 15:44:37'),
(5, 1, 'fa fa-map-marker', 'ADRESSE', '2019-04-02-15-44-1', '2019-04-02 15:44:50', '2019-04-02 15:44:50'),
(6, 1, 'fa fa-envelope', 'EMAIL', '2019-04-02-15-45', '2019-04-02 15:45:08', '2019-04-02 15:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `contact_page_info_content`
--

CREATE TABLE `contact_page_info_content` (
  `id` int(11) NOT NULL,
  `contact_page_info_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_site`
--

CREATE TABLE `contact_site` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_site`
--

INSERT INTO `contact_site` (`id`, `name`, `url`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Abidjan, riviera faya', 'oodge@support.com', '657655454', 'Oodge', '2019-03-29 07:17:01', '2019-03-29 07:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `area_id`, `flag`, `name`, `map`, `slug`, `created_at`, `updated_at`) VALUES
(1, 3, '5c9e351b0d0ff474452133.png', 'Brésil', NULL, 'bresil', '2019-03-29 16:09:15', '2019-03-29 16:09:14'),
(2, 1, '5c9e3525d4dec090280168.png', 'Mali', NULL, 'mali', '2019-03-29 16:09:25', '2019-03-29 16:09:25'),
(3, 1, '5c9e3538be287064584648.png', 'Caméroun', NULL, 'cameroun', '2019-03-29 16:09:44', '2019-03-29 16:09:44'),
(4, 1, '5c9e35484fba7143853582.png', 'Côte d\'Ivoire', NULL, 'cote-divoire', '2019-03-29 16:10:00', '2019-03-29 16:10:00'),
(5, 4, '5c9e35897a0d9743174028.jpg', 'République dominicaine', NULL, 'republique-dominicaine', '2019-03-29 16:11:05', '2019-03-29 16:11:05'),
(6, 5, '5c9e3fd2a142d047500196.png', 'France', NULL, 'france', '2019-03-29 16:54:58', '2019-03-29 16:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `diet_without`
--

CREATE TABLE `diet_without` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diet_without`
--

INSERT INTO `diet_without` (`id`, `name`, `slug`) VALUES
(1, 'Additifs', 'additifs'),
(2, 'Viande', 'viande');

-- --------------------------------------------------------

--
-- Table structure for table `digital`
--

CREATE TABLE `digital` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `digital`
--

INSERT INTO `digital` (`id`, `name`, `slug`) VALUES
(1, 'Click and collect', 'click-and-collect');

-- --------------------------------------------------------

--
-- Table structure for table `general_functionality`
--

CREATE TABLE `general_functionality` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_functionality`
--

INSERT INTO `general_functionality` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Réduction Etudiants/Militaires', 'reduction-etudiants-militaires', '2019-03-29 16:35:15', '2019-03-29 16:35:15'),
(2, 'Adapté aux enfants', 'adapte-aux-enfants', '2019-03-29 16:35:50', '2019-03-29 16:35:50'),
(3, 'Adapté aux groupes', 'adapte-aux-groupes', '2019-03-29 16:36:11', '2019-03-29 16:36:11'),
(4, 'Accessible aux personnes à mobilité réduite', 'accessible-aux-personnes-a-mobilite-reduite', '2019-03-29 16:36:17', '2019-03-29 16:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `go_site`
--

CREATE TABLE `go_site` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `go_site`
--

INSERT INTO `go_site` (`id`, `name`, `url`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Les restaurants par type de cuisine', 'front_office_home', 'Les restaurants par type de cuisine', 'les-restaurants-par-type-de-cuisine', '2019-03-30 13:10:10', '2019-03-30 13:10:10'),
(2, 'Les restaurants les plus populaires', 'front_office_home', 'Les restaurants les plus populaires', 'les-restaurants-les-plus-populaires', '2019-03-30 13:10:47', '2019-03-30 13:10:47'),
(3, 'Les restaurants en promotion', 'front_office_home', 'Les restaurants en promotion', 'les-restaurants-en-promotion', '2019-03-30 13:11:38', '2019-03-30 13:11:38'),
(4, 'Les tops restaurants', 'front_office_home', 'Les tops restaurants', 'les-tops-restaurants', '2019-03-30 13:12:42', '2019-03-30 13:12:42'),
(5, 'Les meilleurs commentaires', 'front_office_home', 'Les meilleurs commentaires', 'les-meilleurs-commentaires', '2019-03-30 13:13:15', '2019-03-30 13:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `background_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Background', '5c9e323ee2458238146198.png', 'background', '2019-03-29 15:57:02', '2019-03-29 15:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `home_menu`
--

CREATE TABLE `home_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_menu`
--

INSERT INTO `home_menu` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Accueil', 'accueil', '2019-03-29 07:14:54', '2019-03-29 07:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen`
--

CREATE TABLE `kitchen` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitchen`
--

INSERT INTO `kitchen` (`id`, `image`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5c9e3d78ac4bd041092560.jpg', 'Caribéenne', 'caribeenne', '2019-03-29 16:44:56', '2019-03-29 16:44:56'),
(2, '5c9e3e6bf20fb588747150.jpg', 'Africaine', 'africaine', '2019-03-29 16:48:59', '2019-03-29 16:48:59'),
(3, '5c9e4111c7a54103725724.jpg', 'Européenne', 'europeenne', '2019-03-29 17:00:17', '2019-03-29 17:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_area`
--

CREATE TABLE `kitchen_area` (
  `kitchen_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitchen_area`
--

INSERT INTO `kitchen_area` (`kitchen_id`, `area_id`) VALUES
(1, 4),
(2, 1),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_country`
--

CREATE TABLE `kitchen_country` (
  `kitchen_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitchen_country`
--

INSERT INTO `kitchen_country` (`kitchen_id`, `country_id`) VALUES
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `logo_site`
--

CREATE TABLE `logo_site` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo_site`
--

INSERT INTO `logo_site` (`id`, `image`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(5, '5c9e3a940a0c4252792118.png', 'logo-oodge', 'logo-oodge', '2019-03-29 15:55:18', '2019-03-29 16:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `meal_served`
--

CREATE TABLE `meal_served` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_served`
--

INSERT INTO `meal_served` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dessert', 'dessert', '2019-03-29 16:37:41', '2019-03-29 16:37:41'),
(2, 'Déjeuner', 'dejeuner', '2019-03-29 16:37:49', '2019-03-29 16:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_category_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_category_id`, `image`, `name`, `description`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, '5c9e4544c595d823289353.jpg', 'Riz avec sauce', NULL, '4500', 'riz-avec-sauce', '2019-03-29 17:18:12', '2019-03-29 17:18:12'),
(2, 2, '5c9e6074276a7469075070.jpg', 'Attiéké poisson grillé', 'Attiéké poisson grillé', '1000', 'attieke-poisson-grille', '2019-03-29 19:14:12', '2019-03-29 19:14:12'),
(3, 3, '5c9e614fddc84740920752.jpg', 'Pizza borélla', 'Pizza', '4500', 'pizza-borella', '2019-03-29 19:16:11', '2019-03-29 19:17:51'),
(4, 3, '5c9e62466842a138849366.jpg', 'Pizza Américaine', 'Pizza Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '8505', 'pizza-americaine', '2019-03-29 19:21:58', '2019-03-29 19:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`id`, `restaurant_id`, `image`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 2, '5c9e451973d06068061080.jpg', 'Riz', NULL, 'riz', '2019-03-29 17:17:29', '2019-03-29 17:17:29'),
(2, 6, NULL, 'Grillades', 'Les grillades', 'grillades', '2019-03-29 19:12:54', '2019-03-29 19:12:54'),
(3, 6, NULL, 'Pizzas', 'Pizza', 'pizzas', '2019-03-29 19:13:26', '2019-03-29 19:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu_site`
--

CREATE TABLE `menu_site` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE `messaging` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190328143456', '2019-03-28 15:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Vidéo Clips', 'video-clips', '2019-03-29 16:38:06', '2019-03-29 16:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `name`, `slug`) VALUES
(1, 'Garage', 'garage');

-- --------------------------------------------------------

--
-- Table structure for table `popular`
--

CREATE TABLE `popular` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `note` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular`
--

INSERT INTO `popular` (`id`, `restaurant_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, '4.00', '2019-03-30 13:13:17', '2019-03-30 13:13:17'),
(2, 9, '3.00', '2019-03-30 15:52:29', '2019-03-30 15:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `vote`, `created_at`, `updated_at`) VALUES
(1, 4, '2019-03-30 13:13:17', '2019-03-30 13:13:17'),
(2, 3, '2019-03-30 15:52:29', '2019-03-30 15:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `restorer_id` int(11) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `area_id`, `country_id`, `city_id`, `restorer_id`, `logo`, `cover`, `name`, `address`, `phone`, `email`, `website`, `latitude`, `longitude`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 1, '5c9e43670b580497024647.jpg', '5c9e43670cc9c198167792.jpg', 'Restaurant Le PAON', 'Riviera 3 Carrefour du Lycee Americain', '·09 80 08 17', 'lepaon@gmail.com', NULL, 5.373251, -3.99031, 'restaurant-le-paon', '2019-03-29 17:10:15', '2019-03-29 17:10:14'),
(2, 1, 4, 1, 2, '5c9e4aff4e452504009049.png', '5c9e44a927a3b445600064.jpg', 'Restaurant Kareem BaBa', 'Abidjan, 2 plateaux Agban', '45856958', NULL, NULL, 5.368269, -4.003258, 'restaurant-kareem-baba', '2019-03-29 17:12:47', '2019-03-29 17:42:39'),
(3, 1, 4, 1, 3, '5c9e45629341d886171031.jpg', '5c9e456293ed9677929057.jpg', 'O\'good Food', 'Riviera Palmerais, Abidjan, Cote D\'Ivoire', '77 24 07 20', 'goodfood@gmail.com', '', 5.337812, -4.006228, 'ogood-food', '2019-03-29 17:18:42', '2019-03-29 17:18:41'),
(4, 1, 4, 1, 4, '5c9e46c18cdc3779737710.jpg', '5c9e46c18dbd9132936835.jpg', 'Paris Baguette ', 'angre 7, Abidjan, Cote D\'Ivoire', '22 45 87 91', 'parisbaguette@gmail.com', '', 5.344309, -3.992188, 'paris-baguette-ci-2-plateaux', '2019-03-29 17:24:33', '2019-03-29 17:24:32'),
(5, 1, 4, 1, 5, '5c9e4ad84f7b9563563636.jpg', '5c9e4ad850e2a458705943.jpg', 'Regina Margherita', '2 Plateaux, Abidjan, Côte d\'Ivoire', '+225 22 52 30 26', 'togohamed@gmail.com', '', 5.346352, -4.002296, 'regina-margherita', '2019-03-29 17:42:00', '2019-03-29 17:41:59'),
(6, 4, 5, 5, 6, '5c9e53db5161a551449399.png', '5c9e53db52324091856331.jpg', 'Ristorante Da Carmen', 'Cocody, angré', '66 24 42 45', 'dacarmen@gmail.com', 'www.web.com', 5.373972, -3.96026, 'ristorante-da-carmen', '2019-03-29 18:20:27', '2019-03-29 19:10:49'),
(7, 4, 5, 5, NULL, '5c9e54a682c5f127839597.png', '5c9e54a6838bb783105080.jpg', 'CHEZ SAMER', 'Cocody, angré', '24 69 57 95', 'samer@gmail.com', 'www.web.com', 5.348421, -4.00871, 'chez-samer', '2019-03-29 18:23:50', '2019-03-29 18:23:50'),
(8, 4, 5, 5, NULL, '5c9e556d2b542624232291.png', '5c9e556d2cf69294710520.jpg', 'Barny\'s restaurant bar lounge', 'Cocody, angré', '67 56 62 72', 'lounge@gmail.com', 'www.web.com', 5.351872, -4.008753, 'barnys-restaurant', '2019-03-29 18:27:09', '2019-03-29 18:27:08'),
(9, 4, 5, 5, NULL, '5c9e55eb4a8c2583451984.png', '5c9e55eb4b421056952410.jpg', 'Restaurant La Vague Bleue Chez ALOSIA', 'Cocody, angré', '74 79 57 75', 'vague-Bleue@gmail.com', 'www.web.com', 5.360445, -3.958487, 'restaurant-la-vague-bleue-chez-alosia', '2019-03-29 18:29:15', '2019-03-29 18:29:15'),
(10, 5, 6, 4, NULL, '5c9e573e9e589501702545.png', '5c9e573e9f003078884598.jpg', 'Chez Miss ZAHOUI', 'Cocody, angré', '65 44 57 97', 'zaoui@gmail.com', 'www.web.com', 5.397537, -3.985696, 'chez-miss-zahoui', '2019-03-29 18:34:54', '2019-03-29 18:34:54'),
(11, 5, 6, 1, NULL, '5c9e57c051a3b528610789.png', '5c9e57c0524a5018888612.jpg', 'Restaurant Wayofê', 'Cocody, angré', '15 75 47 51', 'wayofe@gmail.com', 'www.web.com', 5.382071, -3.951443, 'restaurant-wayofe', '2019-03-29 18:37:04', '2019-03-29 18:37:04'),
(12, 5, 6, 1, NULL, '5c9e586f55d6d896962837.jpg', '5c9e586f56808119840774.jpg', 'Churchill Resto Lounge', 'Cocody, angré', '55 52 51 55', 'churchill@gmail.com', 'www.web.com', 5.382508, -3.974032, 'churchill-resto-lounge', '2019-03-29 18:39:59', '2019-03-29 18:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_alcohol`
--

CREATE TABLE `restaurant_alcohol` (
  `restaurant_id` int(11) NOT NULL,
  `alcohol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_alcohol`
--

INSERT INTO `restaurant_alcohol` (`restaurant_id`, `alcohol_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_diet_without`
--

CREATE TABLE `restaurant_diet_without` (
  `restaurant_id` int(11) NOT NULL,
  `diet_without_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_digital`
--

CREATE TABLE `restaurant_digital` (
  `restaurant_id` int(11) NOT NULL,
  `digital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_general_functionality`
--

CREATE TABLE `restaurant_general_functionality` (
  `restaurant_id` int(11) NOT NULL,
  `general_functionality_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_general_functionality`
--

INSERT INTO `restaurant_general_functionality` (`restaurant_id`, `general_functionality_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_kitchen`
--

CREATE TABLE `restaurant_kitchen` (
  `restaurant_id` int(11) NOT NULL,
  `kitchen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_kitchen`
--

INSERT INTO `restaurant_kitchen` (`restaurant_id`, `kitchen_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 3),
(11, 3),
(12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_meal_served`
--

CREATE TABLE `restaurant_meal_served` (
  `restaurant_id` int(11) NOT NULL,
  `meal_served_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_music`
--

CREATE TABLE `restaurant_music` (
  `restaurant_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_parking`
--

CREATE TABLE `restaurant_parking` (
  `restaurant_id` int(11) NOT NULL,
  `parking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_smoker`
--

CREATE TABLE `restaurant_smoker` (
  `restaurant_id` int(11) NOT NULL,
  `smoker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_specific_kitchen`
--

CREATE TABLE `restaurant_specific_kitchen` (
  `restaurant_id` int(11) NOT NULL,
  `specific_kitchen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restorer`
--

CREATE TABLE `restorer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restorer`
--

INSERT INTO `restorer` (`id`, `name`, `email`, `slug`, `roles`, `password`, `avatar`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Paul', 'paul@gmail.com', 'paul', '[]', '$2y$13$..TgTD2.035i22Hy/RhXfep85.RaIz3tPCNFvsWEWvDxTqaPyut5G', NULL, NULL, NULL, '2019-03-29 17:10:15', '2019-03-29 17:10:15'),
(2, 'baba', 'baba@gmail.com', 'baba', '[]', '$2y$13$zolcF1wekTSVQlaNNJZ0EeyP2MD.ao7tJGA1rISsr1TYOnFseCxYq', NULL, NULL, NULL, '2019-03-29 17:12:47', '2019-03-29 17:12:47'),
(3, 'franck', 'franck@gmail.com', 'franck', '[]', '$2y$13$fg3auaiN8y924yiPo9.fJOvUbWBDi3zqQ1w2hBTvbwjEVYz28SVlK', NULL, NULL, NULL, '2019-03-29 17:18:42', '2019-03-29 17:18:42'),
(4, 'bagnon', 'bagnon@gmail.com', 'bagnon', '[]', '$2y$13$YL8IaSpUqU.509E1Lm1mguFPsIQjajPqGmD7g0b.Q.m4sMqDwYh.S', NULL, NULL, NULL, '2019-03-29 17:24:33', '2019-03-29 17:24:33'),
(5, 'togo hamed', 'togohamed@gmail.com', 'togo-hamed', '[]', '$2y$13$rIXU6tmqWfgsoyDCuGB4tu.0fSIFBfp6NU3aaISZ3ZQOJL8R8KWam', NULL, NULL, NULL, '2019-03-29 17:42:00', '2019-03-29 17:42:00'),
(6, 'restorer', 'samer@gmail.com', 'restorer', '[]', '$2y$13$N256N02o0b8j09fom4NiPeDot.6flPqTQpS92iTQfbeV6/hoV41Uy', '5c9e5fa984b88213901492.png', 'Cocody, Angre', '45555525', '2019-03-29 19:10:49', '2019-03-29 19:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `smoker`
--

CREATE TABLE `smoker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smoker`
--

INSERT INTO `smoker` (`id`, `name`, `slug`) VALUES
(1, 'Zone à l\'extérieur', 'zone-a-lexterieur');

-- --------------------------------------------------------

--
-- Table structure for table `specific_kitchen`
--

CREATE TABLE `specific_kitchen` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specific_kitchen`
--

INSERT INTO `specific_kitchen` (`id`, `name`, `slug`) VALUES
(1, 'Végétarien', 'vegetarien'),
(2, 'Végan', 'vegan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `country_id`, `city_id`, `name`, `email`, `avatar`, `roles`, `password`, `phone`, `latitude`, `longitude`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 1, 'djabal', 'djabal@gmail.com', NULL, '[]', '$2y$13$xXO4RCJ9JcJs83Z8.VyA0.Rs6Nwo7I6AyZCHClA2OvhD.sOvJZwhC', NULL, NULL, NULL, '2019-03-29 09:21:12', '2019-03-29 09:21:12', 'djabal'),
(2, 1, 1, 'demo', 'demo@gmail.com', '5c9f8337078f4522906650.jpg', '[]', '$2y$13$MnXXNtCQLBPoWRlEUqcbIe7vhhUJlpaCzU7CM7qVbREpo3ubrOPAe', NULL, NULL, NULL, '2019-03-29 18:18:00', '2019-03-30 15:54:46', 'demo'),
(3, 1, 1, 'Test', 'test@gmail.com', '5c9f5dc78c968334288688.png', '[]', '$2y$13$OpQ8uPD4iP5cE9EyLya7nuI3xv6BDywKi5GPAVVvYDFOAG0RvSLmK', NULL, NULL, NULL, '2019-03-30 05:21:19', '2019-03-30 13:15:03', 'test'),
(5, NULL, NULL, 'mahaz', 'mahazbindjabal@gmail.com', NULL, '[]', '$2y$13$m1wQ8oUves4X1tmZT4V97Oju9/u28KDyXZZN28gW3Ipghq6CHsXLe', NULL, NULL, NULL, '2019-04-02 18:18:04', '2019-04-02 18:18:04', 'mahaz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B5F422E3989D9B62` (`slug`);

--
-- Indexes for table `about_detail`
--
ALTER TABLE `about_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3801C892989D9B62` (`slug`);

--
-- Indexes for table `about_menu`
--
ALTER TABLE `about_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6E1011C3989D9B62` (`slug`);

--
-- Indexes for table `actuality`
--
ALTER TABLE `actuality`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4093DDD8989D9B62` (`slug`);

--
-- Indexes for table `actuality_menu`
--
ALTER TABLE `actuality_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_42B756F8989D9B62` (`slug`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_58DF0651F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_58DF0651E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_58DF0651989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_58DF0651444F97DD` (`phone`);

--
-- Indexes for table `alcohol`
--
ALTER TABLE `alcohol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_92E97D45989D9B62` (`slug`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D7943D685E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_D7943D68989D9B62` (`slug`);

--
-- Indexes for table `article_blog`
--
ALTER TABLE `article_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7057D642989D9B62` (`slug`),
  ADD KEY `IDX_7057D6421D383EE9` (`category_blog_id`),
  ADD KEY `IDX_7057D642B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_7057D6426B8B023F` (`restorers_id`),
  ADD KEY `IDX_7057D642D5E2D82F` (`administrators_id`);

--
-- Indexes for table `back_ground_site`
--
ALTER TABLE `back_ground_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A8678441989D9B62` (`slug`);

--
-- Indexes for table `cartography`
--
ALTER TABLE `cartography`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D2503AE2989D9B62` (`slug`);

--
-- Indexes for table `cartography_menu`
--
ALTER TABLE `cartography_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_32104FDF989D9B62` (`slug`);

--
-- Indexes for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4B8E2B04989D9B62` (`slug`);

--
-- Indexes for table `cgu`
--
ALTER TABLE `cgu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BF03D4B8989D9B62` (`slug`);

--
-- Indexes for table `cgu_detail`
--
ALTER TABLE `cgu_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4FB1E3F2989D9B62` (`slug`);

--
-- Indexes for table `cgu_menu`
--
ALTER TABLE `cgu_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C8BA2BBD989D9B62` (`slug`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D5B0234F92F3E70` (`country_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9474526C989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_9474526CA32EFC6` (`rating_id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`),
  ADD KEY `IDX_9474526CB1E7706E` (`restaurant_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4C62E638989D9B62` (`slug`);

--
-- Indexes for table `contact_menu`
--
ALTER TABLE `contact_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_55FAB86C989D9B62` (`slug`);

--
-- Indexes for table `contact_page`
--
ALTER TABLE `contact_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3CF534DF989D9B62` (`slug`);

--
-- Indexes for table `contact_page_info`
--
ALTER TABLE `contact_page_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_22BC0EF6989D9B62` (`slug`),
  ADD KEY `IDX_22BC0EF696694265` (`contact_page_id`);

--
-- Indexes for table `contact_page_info_content`
--
ALTER TABLE `contact_page_info_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_35BF182E989D9B62` (`slug`),
  ADD KEY `IDX_35BF182E8B5C1859` (`contact_page_info_id`);

--
-- Indexes for table `contact_site`
--
ALTER TABLE `contact_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5373C966BD0F409C` (`area_id`);

--
-- Indexes for table `diet_without`
--
ALTER TABLE `diet_without`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DFC0187D989D9B62` (`slug`);

--
-- Indexes for table `digital`
--
ALTER TABLE `digital`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CB484DD7989D9B62` (`slug`);

--
-- Indexes for table `general_functionality`
--
ALTER TABLE `general_functionality`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1539E6ED989D9B62` (`slug`);

--
-- Indexes for table `go_site`
--
ALTER TABLE `go_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_71D60CD0989D9B62` (`slug`);

--
-- Indexes for table `home_menu`
--
ALTER TABLE `home_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5C238B5C989D9B62` (`slug`);

--
-- Indexes for table `kitchen`
--
ALTER TABLE `kitchen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitchen_area`
--
ALTER TABLE `kitchen_area`
  ADD PRIMARY KEY (`kitchen_id`,`area_id`),
  ADD KEY `IDX_372D325F5F858004` (`kitchen_id`),
  ADD KEY `IDX_372D325FBD0F409C` (`area_id`);

--
-- Indexes for table `kitchen_country`
--
ALTER TABLE `kitchen_country`
  ADD PRIMARY KEY (`kitchen_id`,`country_id`),
  ADD KEY `IDX_47722D745F858004` (`kitchen_id`),
  ADD KEY `IDX_47722D74F92F3E70` (`country_id`);

--
-- Indexes for table `logo_site`
--
ALTER TABLE `logo_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_served`
--
ALTER TABLE `meal_served`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C1B3DDAE989D9B62` (`slug`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7D053A937ABA83AE` (`menu_category_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2A1D5C57B1E7706E` (`restaurant_id`);

--
-- Indexes for table `menu_site`
--
ALTER TABLE `menu_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A10CF9AA989D9B62` (`slug`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CD52224A989D9B62` (`slug`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B237527A989D9B62` (`slug`);

--
-- Indexes for table `popular`
--
ALTER TABLE `popular`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_AEB57A09B1E7706E` (`restaurant_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EB95123F29C3E95E` (`restorer_id`),
  ADD KEY `IDX_EB95123FBD0F409C` (`area_id`),
  ADD KEY `IDX_EB95123FF92F3E70` (`country_id`),
  ADD KEY `IDX_EB95123F8BAC62AF` (`city_id`);

--
-- Indexes for table `restaurant_alcohol`
--
ALTER TABLE `restaurant_alcohol`
  ADD PRIMARY KEY (`restaurant_id`,`alcohol_id`),
  ADD KEY `IDX_58A22130B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_58A221305357D7EE` (`alcohol_id`);

--
-- Indexes for table `restaurant_diet_without`
--
ALTER TABLE `restaurant_diet_without`
  ADD PRIMARY KEY (`restaurant_id`,`diet_without_id`),
  ADD KEY `IDX_22F39A3DB1E7706E` (`restaurant_id`),
  ADD KEY `IDX_22F39A3D23176405` (`diet_without_id`);

--
-- Indexes for table `restaurant_digital`
--
ALTER TABLE `restaurant_digital`
  ADD PRIMARY KEY (`restaurant_id`,`digital_id`),
  ADD KEY `IDX_10311A2B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_10311A2D3571EA4` (`digital_id`);

--
-- Indexes for table `restaurant_general_functionality`
--
ALTER TABLE `restaurant_general_functionality`
  ADD PRIMARY KEY (`restaurant_id`,`general_functionality_id`),
  ADD KEY `IDX_EA32D245B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_EA32D245905A5AB4` (`general_functionality_id`);

--
-- Indexes for table `restaurant_kitchen`
--
ALTER TABLE `restaurant_kitchen`
  ADD PRIMARY KEY (`restaurant_id`,`kitchen_id`),
  ADD KEY `IDX_20E89241B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_20E892415F858004` (`kitchen_id`);

--
-- Indexes for table `restaurant_meal_served`
--
ALTER TABLE `restaurant_meal_served`
  ADD PRIMARY KEY (`restaurant_id`,`meal_served_id`),
  ADD KEY `IDX_90C8E7B4B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_90C8E7B4D359ECFF` (`meal_served_id`);

--
-- Indexes for table `restaurant_music`
--
ALTER TABLE `restaurant_music`
  ADD PRIMARY KEY (`restaurant_id`,`music_id`),
  ADD KEY `IDX_874F919BB1E7706E` (`restaurant_id`),
  ADD KEY `IDX_874F919B399BBB13` (`music_id`);

--
-- Indexes for table `restaurant_parking`
--
ALTER TABLE `restaurant_parking`
  ADD PRIMARY KEY (`restaurant_id`,`parking_id`),
  ADD KEY `IDX_787C0E0FB1E7706E` (`restaurant_id`),
  ADD KEY `IDX_787C0E0FF17B2DD` (`parking_id`);

--
-- Indexes for table `restaurant_smoker`
--
ALTER TABLE `restaurant_smoker`
  ADD PRIMARY KEY (`restaurant_id`,`smoker_id`),
  ADD KEY `IDX_2D0EDEA7B1E7706E` (`restaurant_id`),
  ADD KEY `IDX_2D0EDEA772E01149` (`smoker_id`);

--
-- Indexes for table `restaurant_specific_kitchen`
--
ALTER TABLE `restaurant_specific_kitchen`
  ADD PRIMARY KEY (`restaurant_id`,`specific_kitchen_id`),
  ADD KEY `IDX_5783D59DB1E7706E` (`restaurant_id`),
  ADD KEY `IDX_5783D59D9E8AC182` (`specific_kitchen_id`);

--
-- Indexes for table `restorer`
--
ALTER TABLE `restorer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_418CC73FE7927C74` (`email`);

--
-- Indexes for table `smoker`
--
ALTER TABLE `smoker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DC902156989D9B62` (`slug`);

--
-- Indexes for table `specific_kitchen`
--
ALTER TABLE `specific_kitchen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1941A9DF989D9B62` (`slug`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D649989D9B62` (`slug`),
  ADD KEY `IDX_8D93D649F92F3E70` (`country_id`),
  ADD KEY `IDX_8D93D6498BAC62AF` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `about_detail`
--
ALTER TABLE `about_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `about_menu`
--
ALTER TABLE `about_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `actuality`
--
ALTER TABLE `actuality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `actuality_menu`
--
ALTER TABLE `actuality_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `alcohol`
--
ALTER TABLE `alcohol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `article_blog`
--
ALTER TABLE `article_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `back_ground_site`
--
ALTER TABLE `back_ground_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cartography`
--
ALTER TABLE `cartography`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cartography_menu`
--
ALTER TABLE `cartography_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category_blog`
--
ALTER TABLE `category_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cgu`
--
ALTER TABLE `cgu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cgu_detail`
--
ALTER TABLE `cgu_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cgu_menu`
--
ALTER TABLE `cgu_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_menu`
--
ALTER TABLE `contact_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_page`
--
ALTER TABLE `contact_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_page_info`
--
ALTER TABLE `contact_page_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `contact_page_info_content`
--
ALTER TABLE `contact_page_info_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_site`
--
ALTER TABLE `contact_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `diet_without`
--
ALTER TABLE `diet_without`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `digital`
--
ALTER TABLE `digital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `general_functionality`
--
ALTER TABLE `general_functionality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `go_site`
--
ALTER TABLE `go_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_menu`
--
ALTER TABLE `home_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kitchen`
--
ALTER TABLE `kitchen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logo_site`
--
ALTER TABLE `logo_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meal_served`
--
ALTER TABLE `meal_served`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu_site`
--
ALTER TABLE `menu_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `popular`
--
ALTER TABLE `popular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `restorer`
--
ALTER TABLE `restorer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `smoker`
--
ALTER TABLE `smoker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `specific_kitchen`
--
ALTER TABLE `specific_kitchen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_blog`
--
ALTER TABLE `article_blog`
  ADD CONSTRAINT `FK_7057D6421D383EE9` FOREIGN KEY (`category_blog_id`) REFERENCES `category_blog` (`id`),
  ADD CONSTRAINT `FK_7057D6426B8B023F` FOREIGN KEY (`restorers_id`) REFERENCES `restorer` (`id`),
  ADD CONSTRAINT `FK_7057D642B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`),
  ADD CONSTRAINT `FK_7057D642D5E2D82F` FOREIGN KEY (`administrators_id`) REFERENCES `administrator` (`id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CA32EFC6` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9474526CB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `contact_page_info`
--
ALTER TABLE `contact_page_info`
  ADD CONSTRAINT `FK_22BC0EF696694265` FOREIGN KEY (`contact_page_id`) REFERENCES `contact_page` (`id`);

--
-- Constraints for table `contact_page_info_content`
--
ALTER TABLE `contact_page_info_content`
  ADD CONSTRAINT `FK_35BF182E8B5C1859` FOREIGN KEY (`contact_page_info_id`) REFERENCES `contact_page_info` (`id`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `FK_5373C966BD0F409C` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `kitchen_area`
--
ALTER TABLE `kitchen_area`
  ADD CONSTRAINT `FK_372D325F5F858004` FOREIGN KEY (`kitchen_id`) REFERENCES `kitchen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_372D325FBD0F409C` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kitchen_country`
--
ALTER TABLE `kitchen_country`
  ADD CONSTRAINT `FK_47722D745F858004` FOREIGN KEY (`kitchen_id`) REFERENCES `kitchen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_47722D74F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FK_7D053A937ABA83AE` FOREIGN KEY (`menu_category_id`) REFERENCES `menu_category` (`id`);

--
-- Constraints for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD CONSTRAINT `FK_2A1D5C57B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `popular`
--
ALTER TABLE `popular`
  ADD CONSTRAINT `FK_AEB57A09B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `FK_EB95123F29C3E95E` FOREIGN KEY (`restorer_id`) REFERENCES `restorer` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_EB95123F8BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_EB95123FBD0F409C` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `FK_EB95123FF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `restaurant_alcohol`
--
ALTER TABLE `restaurant_alcohol`
  ADD CONSTRAINT `FK_58A221305357D7EE` FOREIGN KEY (`alcohol_id`) REFERENCES `alcohol` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_58A22130B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_diet_without`
--
ALTER TABLE `restaurant_diet_without`
  ADD CONSTRAINT `FK_22F39A3D23176405` FOREIGN KEY (`diet_without_id`) REFERENCES `diet_without` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_22F39A3DB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_digital`
--
ALTER TABLE `restaurant_digital`
  ADD CONSTRAINT `FK_10311A2B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_10311A2D3571EA4` FOREIGN KEY (`digital_id`) REFERENCES `digital` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_general_functionality`
--
ALTER TABLE `restaurant_general_functionality`
  ADD CONSTRAINT `FK_EA32D245905A5AB4` FOREIGN KEY (`general_functionality_id`) REFERENCES `general_functionality` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EA32D245B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_kitchen`
--
ALTER TABLE `restaurant_kitchen`
  ADD CONSTRAINT `FK_20E892415F858004` FOREIGN KEY (`kitchen_id`) REFERENCES `kitchen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_20E89241B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_meal_served`
--
ALTER TABLE `restaurant_meal_served`
  ADD CONSTRAINT `FK_90C8E7B4B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_90C8E7B4D359ECFF` FOREIGN KEY (`meal_served_id`) REFERENCES `meal_served` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_music`
--
ALTER TABLE `restaurant_music`
  ADD CONSTRAINT `FK_874F919B399BBB13` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_874F919BB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_parking`
--
ALTER TABLE `restaurant_parking`
  ADD CONSTRAINT `FK_787C0E0FB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_787C0E0FF17B2DD` FOREIGN KEY (`parking_id`) REFERENCES `parking` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_smoker`
--
ALTER TABLE `restaurant_smoker`
  ADD CONSTRAINT `FK_2D0EDEA772E01149` FOREIGN KEY (`smoker_id`) REFERENCES `smoker` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D0EDEA7B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_specific_kitchen`
--
ALTER TABLE `restaurant_specific_kitchen`
  ADD CONSTRAINT `FK_5783D59D9E8AC182` FOREIGN KEY (`specific_kitchen_id`) REFERENCES `specific_kitchen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5783D59DB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6498BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_8D93D649F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
