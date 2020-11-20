-- Code for the Ecommerce Database
-- Database: stam11_eshop
-- Username:  stam11_eshop
-- Host: localhost
-- Password: password

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for table `Cart`
CREATE TABLE `Cart` (
  `cart_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table structure for table `product`
CREATE TABLE `Product` (
  `prod_id` int(11) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `descr` VARCHAR(500) NOT NULL,
  `sing` VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data for table `product`
INSERT INTO `Product` (`prod_id`, `dept`, `prod_name`, `price`, `image`, `descr`, `sing`) VALUES
(202001, 'Women', 'Basic Blue Bikini Top', 19.99, 'w1.jpg', 'Chic, but simple.  This blue shade is perfect for casual and upscale pool parties.  Make sure to purchase the Basic Blue Bikini Bottom to match!', 'single202001.php'),
(202002, 'Women', 'Basic Blue Bikini Bottom', 14.99, 'w2.jpg', 'Chic, but simple.  This blue shade is perfect for casual and upscale pool parties.Make sure to purchase the Basic Blue Bikini top to match!', 'single202002.php'),
(202003, 'Women', 'Basic Black Onepiece', 29.99, 'w3.jpg', 'Made with breathable, high quality fabric.  This bathing suit is created for all shapes and sizes, creating a slim hourglass figure.', 'single202003.php'),
(202004, 'Women', 'Red Fancy Bikini Set', 39.99, 'w4.jpg','Have you ever wanted to look like Rachel McAdams from the Notebook?  Do not look any further! You can pretend to be a bird just like her and find your Ryan Gosling.  This will make you feel like you are living in another era, yet still fashionable.', 'single202004.php'),
(202005, 'Women', 'Floral Halter Tankini Set', 59.99, 'w5.jpg', 'Add more colour and style by wearing this floral halter tankini.  The halter takini allows for anyone to participate in sports like beach volleyball or frisbee, while feeling secure and stylish.', 'single202005.php'),
(202006, 'Women', '60s Red and Blue Onepiece', 49.99, 'w6.jpg', 'Turn back time and relive the 60s.  This onepiece is perfect for yachting and eating icecream.  The added colour makes anyone look more youthful.', 'single202006.php'),
(202007, 'Men', 'Black Surfer Wetsuit', 74.99, 'm1.jpg', 'High quality material that offers increased agility for doing activities like surfing and scuba diving.  The wetsuit is offered in a classic black to give a slimming appearance to anyone.', 'single202007.php'),
(202008, 'Men', 'Red Baywatch Swimming Trunks', 44.99, 'm2.jpg', 'Unleash your inner David Hasslehoff and purchase the famous Baywatch swimming trunks.  They will give anyone confidence when wearing them.', 'single202008.php'),
(202009, 'Men', 'Basic Black Speedo', 34.99, 'm3.jpg', 'This is the same type of speedo that Olympic champions Ryan Lochte and Michael Phelpps wear.  It offers support and allows the swimmer to tread water with miraculous speed.', 'single202009.php'),
(202010, 'Men', 'Blue Tropical Swimming Trunks', 34.99, 'm4.jpg', 'These blue tropical trunks give off a chill and barbeque friendly vibe.  Anyone that wears these is sure to be the life of the party.', 'single202010.php'),
(202011, 'Men', 'Camouflage Swimming Trunks', 24.99, 'm5.jpg', 'If you are ever swimming in the amazon rainforest or hoping to go hunting, these shorts are perfect.', 'single202011.php'),
(202012, 'Men', 'Orange Reflector Swimming Trunks', 29.99, 'm6.jpg', 'Buy these shorts if you want to stand out in any pool party or beach scene.  The reflector strip allows for better safety at night, so anyone wearing them can be seen from a mile away.', 'single202012.php');
ALTER TABLE `Product`
  ADD PRIMARY KEY (`prod_id`);
 ALTER TABLE `Product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

-- Table structure for table `customer`
-- this table can be used for the Newsletter function
CREATE TABLE `Customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data for table `Customer`
INSERT INTO `Customer` (`cust_id`, `first_name`, `last_name`, `email`) VALUES
(51001, 'Michelle', 'Hua', 'mh@email.com'),
(51002, 'Hannah', 'Stam', 'hs@email.com'),
(51003, 'Seonho', 'Kim', 'shk@email.com'),
(51004, 'Jihyo', 'Song', 'jhs@email.com'),
(51005, 'Joohyuk', 'Nam', 'jhn@email.com'),
(51006, 'Jaesuk', 'Yu', 'jsy@email.com'),
(51007, 'Hyunju', 'Ho', 'hjh@email.com'),
(51008, 'Jongkook', 'Kim', 'jkk@email.com'),
(51009, 'Donghoon', 'Ha', 'dhh@email.com'),
(51010, 'Suzy', 'Bae', 'sb@email.com'),
(51011, 'Somin', 'Jeon', 'smj@email.com'),
(51012, 'Kwangsoo', 'Lee', 'ksl@email.com')
;

-- Table structure for table `wishlist`
CREATE TABLE `Wishlist` (
  `cart_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Index for table `cart`
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`cart_id`);

-- Index for table `user`
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`cust_id`);

-- AUTO_INCREMENT for table `cart`
ALTER TABLE `Cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;


-- AUTO_INCREMENT for table `user`
ALTER TABLE `Customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
