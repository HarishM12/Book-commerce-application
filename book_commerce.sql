-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 08:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `completed_orders`
--

CREATE TABLE `completed_orders` (
  `id` int(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_no` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_address` varchar(500) NOT NULL,
  `items` varchar(255) NOT NULL,
  `items_id` varchar(255) NOT NULL,
  `items_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `completed_orders`
--

INSERT INTO `completed_orders` (`id`, `c_name`, `c_no`, `c_email`, `c_address`, `items`, `items_id`, `items_amount`) VALUES
(732, 'Shahwaiz Mustafa', '03343591529', 'shahwaizmemon11@gmail.com', 'Rabia Flower Abbas Town karachi Block D4 Flat no 07', 'Items: 1', 'Items_id:62', 'Amount Payable: 30100Rs'),
(733, 'Shehroze Mustafa', '03343591529', 'shahwaizmemon11@gmail.com', 'light house shop no 5', 'Items: 1', 'Items_id:54', 'Amount Payable: 240100Rs'),
(734, 'Salman Khan', '0340838151', 'shahwaizmemon11@gmail.com', 'bismillah appartments ', 'Items: 1', 'Items_id:54', 'Amount Payable: 240100Rs');

-- --------------------------------------------------------

--
-- Table structure for table `index_ad`
--

CREATE TABLE `index_ad` (
  `id` int(255) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `index_ad`
--

INSERT INTO `index_ad` (`id`, `img_path`) VALUES
(8, 'slider-img/try.jpg'),
(9, 'slider-img/trymobile4.jpg'),
(10, 'slider-img/trymobile3.jpg'),
(12, 'slider-img/trymobile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `index_ad2`
--

CREATE TABLE `index_ad2` (
  `id` int(255) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `index_ad2`
--

INSERT INTO `index_ad2` (`id`, `img_path`) VALUES
(3, 'slider-img/try3.jpg'),
(4, 'slider-img/try2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_no` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `items` varchar(255) NOT NULL,
  `items_id` varchar(255) NOT NULL,
  `items_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products_data`
--

CREATE TABLE `products_data` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `color` varchar(200) NOT NULL,
  `andriod` varchar(255) NOT NULL,
  `front_camera` varchar(255) NOT NULL,
  `back_camera` varchar(255) NOT NULL,
  `screen_size` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `ram` varchar(200) NOT NULL,
  `stock` varchar(500) NOT NULL,
  `your_price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `amz_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_data`
--

INSERT INTO `products_data` (`id`, `name`, `brand`, `color`, `andriod`, `front_camera`, `back_camera`, `screen_size`, `storage`, `ram`, `stock`, `your_price`, `img`, `amz_link`) VALUES
(75, 'Fourth Wing', 'REBECCA YARROS', 'RED TOWER BOOKS', 'RED TOWER BOOKS', 'RED TOWER BOOKS', 'RED TOWER BOOKS', 'RED TOWER BOOKS', 'RED TOWER BOOKS', 'RED TOWER BOOKS', 'In Stock', '50', 'slider-img/91qlE6JayPL.jpg', 'https://www.amazon.com/Fourth-Wing-Empyrean-Book-1-ebook/dp/B0BGDM197Q'),
(76, 'Lessons in Chemistry', 'BONNIE GARMUS', 'DOUBLEDAY', 'DOUBLEDAY', 'DOUBLEDAY', 'DOUBLEDAY', 'DOUBLEDAY', 'DOUBLEDAY', 'DOUBLEDAY', 'In Stock', '60', 'slider-img/71bNmUDdM0L.jpg', 'https://www.amazon.com/Lessons-Chemistry-Novel-Bonnie-Garmus/dp/038554734X'),
(78, 'The Five-Star Weekend', 'ELIN HILDERBRAND', 'LITTLE, BROWN AND COMPANY', 'LITTLE, BROWN AND COMPANY', 'LITTLE, BROWN AND COMPANY', 'LITTLE, BROWN AND COMPANY', 'LITTLE, BROWN AND COMPANY', 'LITTLE, BROWN AND COMPANY', 'LITTLE, BROWN AND COMPANY', 'In Stock', '70', 'slider-img/71tvrdlSpTL.jpg', 'https://www.amazon.com/Five-Star-Weekend-Elin-Hilderbrand-ebook/dp/B0BQMH4631'),
(79, 'The Housemaid', 'FREIDA MCFADDEN', 'BOOKOUTURE', 'BOOKOUTURE', 'BOOKOUTURE', 'BOOKOUTURE', 'BOOKOUTURE', 'BOOKOUTURE', 'BOOKOUTURE', 'In Stock', '30', 'slider-img/81B485YhUcL.jpg', 'https://www.amazon.com/s?k=the+housemaid&adgrpid=140426152065&hvadid=620570176281&hvdev=c&hvlocphy=9077146&hvnetw=g&hvqmt=e&hvrand=6141935244301345200&hvtargid=kwd-301354148825&hydadcr=22335_13333110&tag=hydglogoo-20&ref=pd_sl_5lq3qmk59w_e'),
(80, 'Happy Place', 'EMILY HENRY', 'BERKLEY', 'BERKLEY', 'BERKLEY', 'BERKLEY', 'BERKLEY', 'BERKLEY', 'BERKLEY', 'In Stock', '90', 'slider-img/71oWaTEjEkL.jpg', 'https://www.amazon.com/Happy-Place-Emily-Henry/dp/0593441273'),
(81, 'Never Lie', 'FREIDA MCFADDEN', 'HOLLYWOOD UPSTAIRS PRESS', 'HOLLYWOOD UPSTAIRS PRESS', 'HOLLYWOOD UPSTAIRS PRESS', 'HOLLYWOOD UPSTAIRS PRESS', 'HOLLYWOOD UPSTAIRS PRESS', 'HOLLYWOOD UPSTAIRS PRESS', 'HOLLYWOOD UPSTAIRS PRESS', 'In Stock', '30', 'slider-img/8196x-1wIOL.jpg', 'https://www.amazon.com/Never-Lie-addictive-psychological-thriller-ebook/dp/B0BBL2ZW73'),
(82, 'The Ritual', 'SHANTEL TESSIER', '-', 'SHANTEL TESSIER', 'SHANTEL TESSIER', 'SHANTEL TESSIER', 'SHANTEL TESSIER', 'SHANTEL TESSIER', 'SHANTEL TESSIER', 'In Stock', '30', 'slider-img/8180RQGWErL.jpg', 'https://www.amazon.com/Ritual-Dark-College-Romance-ebook/dp/B09H7Q4B74'),
(83, 'It Starts with Us', 'COLLEEN HOOVER', 'ATRIA BOOKS', 'ATRIA BOOKS', 'ATRIA BOOKS', 'ATRIA BOOKS', 'ATRIA BOOKS', 'ATRIA BOOKS', 'ATRIA BOOKS', 'In Stock', '20', 'slider-img/71PNGYHykrL.jpg', 'https://www.amazon.com/Starts-Us-Novel-Ends/dp/1668001225');

-- --------------------------------------------------------

--
-- Table structure for table `slider_img`
--

CREATE TABLE `slider_img` (
  `id` int(255) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider_img`
--

INSERT INTO `slider_img` (`id`, `img_path`) VALUES
(13, 'slider-img/tecno.jpg'),
(14, 'slider-img/infinix.jpg'),
(22, 'slider-img/vivo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tablet_data`
--

CREATE TABLE `tablet_data` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `andriod` varchar(255) NOT NULL,
  `front_camera` varchar(500) NOT NULL,
  `back_camera` varchar(255) NOT NULL,
  `screen_size` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `your_price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tablet_data`
--

INSERT INTO `tablet_data` (`id`, `name`, `brand`, `color`, `andriod`, `front_camera`, `back_camera`, `screen_size`, `storage`, `ram`, `stock`, `your_price`, `img`) VALUES
(6, 'Amazon Kindle Fire', 'Amazon', 'Black', '4.2. 2', '12', '12', '7', '64', '2', 'In Stock', '7000', 'slider-img/amazonkindle.png'),
(7, 'Amazon Fire Hd 8', 'Amazon', 'Black', '7.1.2', '2', '2', '8', '16', '1', 'In Stock', '8000', 'slider-img/amazonfirehd8.png'),
(8, 'Amazon Kindle Fire 7', 'Amazon', 'Blue', '4.2', '0.3', '2', '7', '8', '1', 'In Stock', '6000', 'slider-img/amazonfirehd7.png'),
(9, 'Amazon Kindle Fire 7', 'Amazon', 'Yellow', '9', '2', '2', '7', '16', '1', 'In Stock', '7000', 'slider-img/amazonkindle2.png'),
(10, 'Samsung Tab A', 'Samsung', 'Silver', '9.0', '8', '8', '10.1', '32', '2', 'In Stock', '28000', 'slider-img/samsungtabaaa.png'),
(11, 'Samsung Tab A 2016', 'Samsung', 'White', '5.1', '4', '5', '7', '8', '1', 'In Stock', '23000', 'slider-img/samsungtaba2016.png'),
(12, 'Samsung Tab A 2019', 'Samsung', 'Silver', '8.0', '4', '5', '8', '32', '4', 'In Stock', '25000', 'slider-img/samsungtaba2019.png'),
(13, 'Samsung S6 Tab Lite', 'Samsung', 'Blue', '10.0', '7', '8', '10.4', '64', '4', 'In Stock', '63000', 'slider-img/samsungs6tablite.png'),
(14, 'Apple Ipad 7', 'Apple', 'Silver', '6', '7', '8', '10.2', '64', '3', 'In Stock', '64000', 'slider-img/appleipad7.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `index_ad`
--
ALTER TABLE `index_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_ad2`
--
ALTER TABLE `index_ad2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_data`
--
ALTER TABLE `products_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_img`
--
ALTER TABLE `slider_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablet_data`
--
ALTER TABLE `tablet_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `index_ad`
--
ALTER TABLE `index_ad`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `index_ad2`
--
ALTER TABLE `index_ad2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- AUTO_INCREMENT for table `products_data`
--
ALTER TABLE `products_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `slider_img`
--
ALTER TABLE `slider_img`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tablet_data`
--
ALTER TABLE `tablet_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
