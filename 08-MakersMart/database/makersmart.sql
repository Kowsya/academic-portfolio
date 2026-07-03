-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 12:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makersmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(50) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
('eCxPQSY33dt7ZInF8Z7c', '1mFAYboFiTXdPbx3xxTt', 'Kowsya Mutkundu', 'kowsyamutkundu25@gmail.com', 'selling product', 'kowsyamutkundu25@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` int(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress',
  `payment_status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`, `payment_status`) VALUES
('67d92e1c53369', '1mFAYboFiTXdPbx3xxTt', 'QKR0MXyGO2ggPDOhDJji', 'Kowsya Mutkundu', '8624978558', 'kowsyamutkundu25@gmail.com', 'abc, a1, Panaji, India, 403002', 'Home', 'cash on delivery', 'vWrC0lEMTUxOCvJcHy2w', 1095, 1, '2025-03-18', 'cancled', 'order delivered'),
('67e061b0106c1', '1mFAYboFiTXdPbx3xxTt', 'QKR0MXyGO2ggPDOhDJji', 'rashi', '7517734995', 'rashita@gmail.com', 'abc, marcel, ponda, India, 523116', 'Home', 'cash on delivery', 'DUgSLgBC5qnltRQ7xiDF', 560, 1, '2025-03-24', 'in progress', 'pending'),
('67e061b0115d5', '1mFAYboFiTXdPbx3xxTt', 'QKR0MXyGO2ggPDOhDJji', 'rashi', '7517734995', 'rashita@gmail.com', 'abc, marcel, ponda, India, 523116', 'Home', 'cash on delivery', 'DZY0nQl64xr34OZJzPtV', 299, 2, '2025-03-24', 'in progress', 'pending'),
('67e061b011d34', '1mFAYboFiTXdPbx3xxTt', 'QKR0MXyGO2ggPDOhDJji', 'rashi', '7517734995', 'rashita@gmail.com', 'abc, marcel, ponda, India, 523116', 'Home', 'cash on delivery', 'vWrC0lEMTUxOCvJcHy2w', 1095, 1, '2025-03-24', 'in progress', 'pending'),
('67e51b32a5ee4', '67e1121895d05', 'QKR0MXyGO2ggPDOhDJji', 'basavraj', '8624978558', 'rashita@gmail.com', 'Zcxchg, kl, Dcccggg, India, 523116', 'Home', 'cash on delivery', 'vWrC0lEMTUxOCvJcHy2w', 1095, 1, '2025-03-27', 'in progress', 'pending'),
('67e51c1d4e677', '67e1121895d05', 'QKR0MXyGO2ggPDOhDJji', 'basavraj', '8624978558', 'seema60@gmail.com', 'tonca, goa, Panaji, India, 523116', 'Home', 'cash on delivery', 'vWrC0lEMTUxOCvJcHy2w', 1095, 1, '2025-03-27', 'in progress', 'order delivered'),
('67e51c1d4f5ad', '67e1121895d05', 'QKR0MXyGO2ggPDOhDJji', 'basavraj', '8624978558', 'seema60@gmail.com', 'tonca, goa, Panaji, India, 523116', 'Home', 'cash on delivery', 'DUgSLgBC5qnltRQ7xiDF', 560, 1, '2025-03-27', 'in progress', 'order delivered'),
('67e51c1d505f9', '67e1121895d05', 'QKR0MXyGO2ggPDOhDJji', 'basavraj', '8624978558', 'seema60@gmail.com', 'tonca, goa, Panaji, India, 523116', 'Home', 'cash on delivery', 'DZY0nQl64xr34OZJzPtV', 299, 1, '2025-03-27', 'in progress', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `image`, `stock`, `product_detail`, `category`, `status`) VALUES
('vWrC0lEMTUxOCvJcHy2w', 'QKR0MXyGO2ggPDOhDJji', 'marshmallow bag crochet', 1095, 'Screenshot 2024-12-06 201906.png', 8, 'Marshmallow Bag is a beautifully hand-crocheted accessory crafted with soft, eco-friendly yarn for a cozy, textured look that resembles fluffy marshmallows. Perfect for casual outings or as a stylish statement piece, it features a spacious interior for your essentials, secure closure options, and comfortable straps. Lightweight yet durable, this artisanal bag is both practical and charming, making it a thoughtful gift or a must-have addition to your collection. ', 'Bags & Purses', 'active'),
('luoyA4NcTepKXBCLo66w', 'QKR0MXyGO2ggPDOhDJji', 'Exquisite Peacock Oil Painting ', 4139, 'Screenshot 2024-12-06 202645.png', 4, 'Exquisite Peacock Oil Painting Luxurious and Vibrant Feather Textured wall Art Peacock Green Detailed Hand-Painted Custom Elegant Home Decor  ', 'Home & Living', 'deactive'),
('U1RuFfeesC1BnSfTpiWt', 'QKR0MXyGO2ggPDOhDJji', 'Personalized Custom Handmade Resin Letter Gold / Green Keychain', 259, 'Screenshot 2024-12-06 203133.png', 5, 'Beautiful Handmade Green Glimmer with Gold Flakes Keychain. This keychain is personalized with the name of your choice in a cursive font for an extra charge. ', '', 'deactive'),
('DUgSLgBC5qnltRQ7xiDF', 'QKR0MXyGO2ggPDOhDJji', 'Butterfly Wing Resin Earrings', 560, 'Screenshot 2024-12-06 203718.png', 2, 'Add a touch of ethereal beauty to your style with these Butterfly Wing Resin Earrings, delicately crafted to capture the elegance of nature. Featuring intricately detailed butterfly wing designs preserved in clear, lightweight resin, these earrings exude a whimsical charm. Perfect for any occasion, they bring a hint of magic and sophistication to your look. Hypoallergenic hooks ensure comfort for all-day wear, making them ideal for nature lovers or anyone seeking a unique accessory. Each pair is handmade, with slight variations that enhance their uniqueness. Embrace nature&#39;s grace with these enchanting earrings! ', '', 'active'),
('DZY0nQl64xr34OZJzPtV', 'QKR0MXyGO2ggPDOhDJji', 'Beaded Daisy Flower Bracelet', 299, 'Screenshot 2024-12-06 204232.png', 6, 'Our Beaded Flower Bracelet is handmade using galvanised gold and colour coloured seed beads.\r\nThread may be visible as it is a handmade product.  ', '', 'active'),
('dfHSGk8d8JQyyCxyFteD', 'QKR0MXyGO2ggPDOhDJji', 'Silk Breeze Crochet Cardigan Jacket', 655, 'Screenshot 2024-12-06 201517.png', 5, 'Light, spacious, and airy jacket with 3/4 sleeves. This is a versatile and comfortable jacket with a loose and airy feel.  ', '', 'active'),
('37ea5c55c415c521b960', 'QKR0MXyGO2ggPDOhDJji', 'Moonlight Pendant', 2500, 'WhatsApp Image 2025-03-24 at 16.40.05_2bf00a8c.jpg', 15, 'A sterling silver pendant featuring a luminescent moonstone, symbolizing serenity and balance. Handcrafted for elegance.', 'Jewellery', 'active'),
('e3ddb6a62e9c304f6be1', 'QKR0MXyGO2ggPDOhDJji', 'Eternal Ring', 500, 'WhatsApp Image 2025-03-24 at 16.40.05_a0a0868e.jpg', 20, 'A gold ring adorned with an infinity symbol, representing everlasting love and commitment. Perfect for daily wear.', 'Jewellery', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `state` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `phone`, `location`, `state`, `email`, `password`, `image`, `payment_mode`, `payment_status`, `created_at`) VALUES
('QKR0MXyGO2ggPDOhDJji', 'Kowsya Mutkundu', '8624978558', 'panaji', 'Goa', 'kowsyamutkundu25@gmail.com', 'f6e1126cedebf23e1463aee73f9df08783640400', 'ALech2SjAaxC2nUKTtOr.png', '', 'pending', '2025-03-16 06:36:41'),
('A9ng5d90IZPlashGqyNn', 'Jasmine', '', '', '', 'jasmineabdulkadar@gmail.com', '4d134bc072212ace2df385dae143139da74ec0ef', '5vlZkc2SCSzhxHglBfYp.jpg', '', 'pending', '2025-03-16 06:36:41'),
('xncDDxZbRw0h3lnOrF2F', 'aman', '', '', '', 'amn@gmail.com', '6934105ad50010b814c933314b1da6841431bc8b', 'aa7P5WeOEGfGGmlytFxh.pdf', '', 'pending', '2025-03-16 06:36:41'),
('67d675a1b5441', 'Kirti', '', '', '', 'kirtimutkundureddy2007@gmail.com', '352ea6e21dcca544b362af658695f332a6b8b903', '67d675a1b5762.jpeg', 'Credit/Debit', 'FAILED', '2025-03-16 06:54:25'),
('67d678c3bb1d5', 'Kirti', '', '', '', 'kirtimutkundureddy@gmail.com', '352ea6e21dcca544b362af658695f332a6b8b903', '67d678c3bb379.jpeg', 'UPI', 'SUCCESS', '2025-03-16 07:07:47'),
('67d67971b6a10', 'rashita', '', '', '', 'rashita@gmail.com', 'ff95aee6056dd01d686b166cf74dc61656965687', '67d67971b6bc0.jpeg', 'UPI', 'SUCCESS', '2025-03-16 07:10:41'),
('67d67fed271ba', 'ayushi', '', '', '', 'ayushi@gmail.com', '57ca2dad17817a05249a192cc18ef326772df0d4', '67d67fed273c1.jpeg', 'UPI', 'SUCCESS', '2025-03-16 07:38:21'),
('67d681dbbfdb1', 'aryan', '', '', '', 'ayran@gmail.com', '44ef07383ccac1cbfa4d32c3ef674ce8b13ffbcf', '67d681dbc0035.jpeg', 'UPI', 'SUCCESS', '2025-03-16 07:46:35'),
('67d6838fe0de9', 'ram', '', '', '', 'ram03@gmail.com', '97a2d270d6999bcfc73b061e1aa15584559b845b', '67d6838fe1a15.jpeg', 'UPI', 'SUCCESS', '2025-03-16 07:53:51'),
('67d68e38ac629', 'preeti', '', '', '', 'preeti04@gmail.com', '66dffc961010ab56757e1cab38d85f40153ed62c', '67d68e38ac9f5.jpg', 'UPI', 'SUCCESS', '2025-03-16 08:39:20'),
('67d68ee321ccf', 'jas', '', '', '', 'jas05@gmail.com', '03ac2bb08fc9ae8ed9775462eb61c1197fb1529e', '67d68ee322161.jpg', 'UPI', 'SUCCESS', '2025-03-16 08:42:11'),
('67d7aad0737fa', 'jameelah', '', '', '', 'jameelah06@gmail.com', '783d77739abc44cd0df10b2a12c21d5d3b8a544e', '67d7aad073e25.jpeg', 'UPI', 'SUCCESS', '2025-03-17 04:53:36'),
('67e4ca1ce5915', 'meena', '8624978558', 'whitefield', 'Karnataka', 'meena40@gmail.com', '$2y$10$fsy3wXC8h3fMlVynWfYYFO7YpCtNxCc3ULCpaF1fRi7', '67e4ca1ce5b32.jpg', 'UPI', 'SUCCESS', '2025-03-27 03:46:37'),
('67e4cd2f16be6', 'reena', '8237928190', 'Zcxchg', 'Gujarat', 'reena50@gmail.com', '$2y$10$hSRiPWIkqP1/NXBCpCVD1e7nJqB6mprU5Lx1kb7mCz/', '67e4cd2f16e69.jpg', 'UPI', 'SUCCESS', '2025-03-27 03:59:43'),
('67e4d009e3a28', 'seema', '9881326460', 'tonca', 'Goa', 'seema60@gmail.com', '$2y$10$EFwC7FTHHYUTU38v8mJkOOXGkrGiQH2jXHwkENiokKI', '67e4d009e3c56.jpg', 'UPI', 'SUCCESS', '2025-03-27 04:11:54'),
('67e4fc1082c85', 'rina', '8624978558', 'Zcxchg', 'Goa', 'rina70@gmail.com', '$2y$10$ORk33NrhnrOtWmKX.dMmMei1hi5Y7fhqDOKShKIAxZ8', '67e4fc1083132.jpg', 'UPI', 'SUCCESS', '2025-03-27 07:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('1mFAYboFiTXdPbx3xxTt', 'Kowsya Mutkundu', 'kowsyamutkundu25@gmail.com', '1b6453892473a467d07372d45eb05abc2031647a', '67e01eee10490.jpg'),
('67e107b4e9f14', 'jasmine', 'jasmine@gmail.com', '$2y$10$1VyviJoVNnagDzhhf7kKzuw3Wy8NS9at0No7DaRxd8F', '67e107b4eeb84.jpg'),
('67e1082236695', 'rashita', 'rashita@gmail.com', '$2y$10$5ckZ8DfO7QiJiVcSJJPq1udLBDeKIr0gdV4QrSQIMXM', '67e1082237141.jpg'),
('67e1121895d05', 'Kirti', 'kirtimutkundureddy2007@gmail.com', '5afaae9811f1995a87f371a743aecd2bf11f7883', '67e44bb5880ed.jpg'),
('67e519b2bf374', 'aman', 'aman$kidwai29@gmail.com', '$2y$10$ONftNiXYV40/myFKgv8OwezIJtoIsUqErODd4gPy/jy', '67e519b2bf385.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `price`) VALUES
('4db91e945e2f1057cedf', '1mFAYboFiTXdPbx3xxTt', 'dfHSGk8d8JQyyCxyFteD', 655),
('64b2b5f36b8e37d31fc1', '1mFAYboFiTXdPbx3xxTt', 'DUgSLgBC5qnltRQ7xiDF', 560),
('4dfd7ed2bafb63cde6f7', '1mFAYboFiTXdPbx3xxTt', 'vWrC0lEMTUxOCvJcHy2w', 1095),
('b37b65b93e5f382df37e', '67e1121895d05', 'DUgSLgBC5qnltRQ7xiDF', 560),
('70ffc8a101ca2c3f36c7', '67e1121895d05', 'DZY0nQl64xr34OZJzPtV', 299);

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `url` text NOT NULL,
  `ad_title` varchar(255) NOT NULL,
  `ad_description` varchar(500) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `seller_id`, `name`, `description`, `date`, `url`, `ad_title`, `ad_description`, `photo`) VALUES
(3, 0, 'Crafting for Beginners', 'Start your crafting journey with simple projects.', '2025-03-15', 'https://youtu.be/CUZznVR6AlM?si=at5Mmy9JlmY6HqMD', '', '', ''),
(5, 0, '', '', '0000-00-00', '', 'Homemade Bakery', 'Made with the best ingredients and love, our freshly baked delicacies infuse every bite with a delicious mix of memories and flavor.', '1742645308_Brown and Beige Rustic Homemade Bakery Promotion Poster.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
