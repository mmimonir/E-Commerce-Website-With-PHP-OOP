-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2018 at 12:52 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `lavel` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `lavel`) VALUES
(1, 'Delwar J Imran', 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Samsung'),
(2, 'Nokia'),
(3, 'Iphone'),
(4, 'Canon'),
(5, 'Accer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Toys, Kids &amp; Babies'),
(15, 'Beauty &amp; Healthcare'),
(16, 'Home Decor &amp; Kitchen'),
(17, 'Clothing'),
(18, 'Jewellery'),
(19, 'Footwear'),
(20, 'Sports &amp; Fitness'),
(21, 'Software'),
(22, 'Accessories'),
(23, 'Laptop'),
(24, 'Desktop'),
(25, 'Mobile Phones');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Delwar J Imran', 'Malibagh, Dhaka', 'Dhaka', 'Bangladesh', '1219', '01974353555', 'monirdhk.it@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(12, 1, 9, 'Monitor', 1, 5000, 'upload/ae748749b8.jpg', '2018-03-02 12:29:03', 2),
(13, 1, 10, 'Camera', 3, 1650, 'upload/c769967566.jpg', '2018-03-02 12:29:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Lorem Ipsum is simply', 4, 3, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;br /&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 505.22, 'upload/491e649d8c.png', 0),
(2, 'Lorem Ipsum is simply', 9, 5, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;br /&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 620.87, 'upload/ea836cb393.jpg', 0),
(3, 'Lorem Ipsum is simply', 7, 2, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;br /&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 220.97, 'upload/1367244342.jpg', 0),
(4, 'Lorem Ipsum is simply', 10, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 600, 'upload/5b7b9305f1.png', 0),
(5, 'Iron Machine', 16, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 550, 'upload/4af42022d4.png', 1),
(6, 'Sound Box', 22, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 660, 'upload/d5bf825e2d.jpg', 0),
(7, 'Fan', 22, 4, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 880, 'upload/8f9f7b4ade.jpg', 0),
(8, 'Juice Machine', 22, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 550, 'upload/a3957721a0.png', 0),
(9, 'Monitor', 24, 5, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore voluptas neque doloremque? Illum voluptates, illo inventore qui fuga, harum dignissimos dolore earum sint. Hic mollitia consectetur, quis voluptatibus quae placeat, aliquid, in facilis, id doloribus cumque modi nemo maxime. Fugiat eum adipisci et quam dicta, nam quidem sapiente, nobis, doloremque magnam reprehenderit voluptatibus repudiandae praesentium. Minus consequuntur maxime, nostrum eos, molestias velit officiis alias incidunt enim reiciendis, pariatur repudiandae consectetur fugit! Suscipit sunt atque commodi repudiandae adipisci, dolore quaerat eveniet minima, repellat sint quas impedit velit quidem necessitatibus excepturi qui veniam maiores quibusdam animi neque consequuntur consectetur. Velit deleniti repellat vitae at, aut nulla, perspiciatis cupiditate non ipsum animi dolores, voluptatem est ea, minima dignissimos. Doloribus minima magnam perspiciatis.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus vel facilis asperiores consequuntur minus excepturi quas, voluptatibus atque aut vitae! Non omnis, consectetur? Ex eligendi, fuga aspernatur velit assumenda ad unde dicta harum. Ab dolorem voluptate rerum natus voluptas ex repudiandae, sint sapiente cupiditate tempore necessitatibus dignissimos, quam exercitationem consequuntur officia placeat, eaque est a praesentium laboriosam provident minima obcaecati. Sunt ipsa cumque nobis sint aliquam non magnam incidunt inventore quia quod, iste repellat ducimus, ratione delectus maiores accusantium, eos.&lt;/p&gt;', 5000, 'upload/ae748749b8.jpg', 1),
(10, 'Camera', 22, 4, '&lt;p&gt;Product description goes here. There is a same sample here. The month of is the&lt;/p&gt;', 550, 'upload/c769967566.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 7, 'Fan', 880.00, 'upload/8f9f7b4ade.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
