-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2024 at 05:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safebites`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `calories` int(11) NOT NULL,
  `ingredients` text DEFAULT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `calories`, `ingredients`, `category`) VALUES
(1, 'Juice Drink Blend, Fruit Punch', 35, 'Filtered Water; Sugar; Pear, Grape and Orange Juice Concentrates; Monk Fruit Concentrate; Citric Acid; Apple and Pineapple Juice Concentrates; Natural Flavor, Mushroom Extract (to Protect Quality).', 'Capri Sun'),
(2, 'Juice Drink Blend, Strawberry Kiwi', 30, 'Filtered Water, Sugar, Pear and Strawberry Juice Concentrates; Citric Acid; Natural Flavor; Orange and Pineapple Juice Concentrates; Monk Fruit Concentrate; Mushroom Extract (to Protect Quality).', 'Capri Sun'),
(3, 'Juice Drink Blend, Pacific Cooler', 50, 'Filtered Water; Sugar; Pear, Grape and Orange Juice Concentrates; Citric Acid; Apple Juice Concentrate; Natural Flavor; Monk Fruit Concentrate; Mushroom Extract (to Protect Quality).', 'Capri Sun'),
(4, 'Orange', 140, NULL, 'Capri Sun'),
(5, 'Juice Drink Blend, Pacific Cooler', 35, 'Filtered Water; Sugar; Pear, Grape and Orange Juice Concentrates; Monk Fruit Concentrate; Citric Acid; Apple and Pineapple Juice Concentrates; Natural Flavor, Mushroom Extract (to Protect Quality).', 'Capri Sun'),
(6, 'Alfredo Sauce', 110, NULL, 'Bertolli'),
(7, 'Alfredo Sauce, Light', 60, 'WATER, PARMESAN CHEESE [PASTEURIZED PART-SKIM MILK, CHEESE CULTURES, SALT, ENZYMES], SKIM MILK, BUTTERMILK, SOYBEAN OIL, MODIFIED CORNSTARCH, CREAM, WHEY PROTEIN CONCENTRATE, PARMESAN CHEESE FLAVOR [PARMESAN CHEESE (PASTEURIZED PART-SKIM MILK, CHEESE CULTURES, SALT, ENZYMES), WATER, SALT, LACTIC ACID, ENZYMES], DRIED GARLIC, SALT, SPICE, XANTHAN GUM, POTASSIUM CHLORIDE, DRIED ONION.', 'Bertolli'),
(8, 'Alfredo Sauce, with Aged Parmesan Cheese', 110, NULL, 'Bertolli'),
(9, 'Arancini, Parmesan', 270, 'Cooked Rice (Water, White Rice), Water, Wheat Flour, Bread Crumbs (Wheat Flour, Sugar, Salt, Yeast), Soybean Oil, Parmesan Cheese (Milk, Cheese Cultures, Salt, Enzymes), Mozzarella Cheese (Milk, Cheese Cultures, Salt, Enzymes), Eggs, Dehydrated Potatoes, Salt, Dried Onion, Wheat Starch, Spices, Sugar, Dried Garlic, Yeast Extract, Soy Lecithin.', 'Bertolli'),
(10, 'Asiago Cheese Paired With Artichokes', 110, 'Tomato Puree (Water, Tomato Paste, Citric Acid), Vegetable Blend (Carrot, Onion, Celery), Canola Oil, Water, Artichoke (12%), Asiago Cheese (4%), Sugar, Parmesan Cheese, Salt, Modified Corn Starch, Basil, Spices, Natural Flavor.', 'Bertolli'),
(11, 'Baking Crumbs', 70, 'Wheat Flour, Sugars (Sugar, Glucose-Fructose), Palm Oil, Cocoa, Invert Sugar, Sodium Bicarbonate, Soy Lecithin, Salt, Chocolate, Artificial Flavor.', 'Oreo'),
(12, 'Bark Peppermint with Dark Chocolaty Dipped Bottom', 180, NULL, 'Oreo'),
(13, 'Big Crunch Bar', 230, 'SUGAR, PALM OIL, WHEAT FLOUR, NONFAT MILK, WHEY, COCOA, LEAVENING (BAKING SODA AND/OR CALCIUM PHOSPHATE), SALT, ARTIFICIAL FLAVOR.', 'Oreo'),
(14, 'Big Crunch Bar Mint Chocolate Candy', 180, 'SUGAR, PALM OIL, WHEAT FLOUR, WHEY, NONFAT MILK, LEAVENING (BAKING SODA AND/OR CALCIUM PHOSPHATE), COCOA (PROCESSED WITH ALKALI), SALT, ARTIFICIAL FLAVOR.', 'Oreo'),
(15, 'Birthday Cake Chocolate Sandwich Cookies', 140, NULL, 'Oreo'),
(16, 'Dip, White Queso', 70, NULL, 'Maggie'),
(17, 'Gourmet Popcorn, Yellow Cheddar', 180, NULL, 'Maggie'),
(18, 'Sweet \'N\' Spicy Mustard', 15, NULL, 'Maggie'),
(19, 'Gourmet Popcorn, Low Saturated Fat', 180, NULL, 'Maggie'),
(20, 'Butter Popcorn', 180, NULL, 'Maggie'),
(21, '100% Natural Tree', 0, 'ORANGE PEKOE AND PEKOE CUT BLACK TEA', 'Lipton'),
(22, '100% Real Tea Leaves, Decaffeinated', 0, 'DECAFFEINATED ORANGE PEKOE AND PEKOE CUT BLACK TEA.', 'Lipton'),
(23, 'Beef Vegetable', 70, NULL, 'Lipton'),
(24, 'Beefy Onion Recipe Soup & Dip Mix', 25, NULL, 'Lipton'),
(25, 'Berry Hibiscus Luscious Herbal Tea', 0, NULL, 'Lipton'),
(26, 'Balsamic Vinegar of Modena', 10, 'Grape Vinegar (Contains Sulphites), Concentrated Grape Must, Colour (Caramel)', 'Filipo Berio'),
(27, 'Balsamic Vinegar of Modena, Organic', 25, 'Organic Wine Vinegar (Contains Sulphites), Organic Concentrated Grape Must.', 'Filipo Berio'),
(28, 'Black Truffle Glaze with Balsamic Vinegar of Modena', 20, 'ACETO BALSAMICO DI MODENA P.G.I (60%) (BALSAMIC VINEGAR OF MODENA), WATER, SUGAR, CORNSTARCH, NATURAL FLAVORINGS, SALT.', 'Filipo Berio'),
(29, 'California Extra Virgin Olive Oil', 120, 'EXTRA VIRGIN OLIVE OIL', 'Filipo Berio'),
(30, 'Chili Glaze with Balsamic Vinegar', 30, 'ACETO BALSAMICO DI MODENA P.G.I (60%) (BALSAMIC VINEGAR OF MODENA), WATER, SUGAR, CORNSTARCH, CHILI PEPPER (0.2%), NATURAL FLAVORINGS.', 'Filipo Berio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
