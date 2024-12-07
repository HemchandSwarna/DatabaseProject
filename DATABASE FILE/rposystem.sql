-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2023 at 08:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@mail.com', '288e418dc6f5ccad18da503af783d381f256b454');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('37c89e1040f5', 'Nandini', '123456788', 'nandini@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-26 21:39:32.833159'),
('42d221a495fc', 'customer 5', '123456789', 'cust5@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-27 19:02:16.271762'),
('58907e9c153b', 'Grace Selina', '123456789', 'selina@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-26 02:40:44.968088'),
('5a91a188ca85', 'customer6', '123456789', 'cust6@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-27 19:02:39.674114'),
('79c144db57da', 'xyz', '123456789', 'xyz@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-27 19:27:41.492869'),
('825aa79f96b5', 'devaki', '123456789', 'dev@mail.com', '790663431d6bfb91064ba56fa3c21c0683d35869', '2023-11-26 00:53:08.373988'),
('c96ab7cba4c5', 'abc', '123456789', 'abc@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-27 19:28:05.148277'),
('e6ee5e45e9ef', 'customer7', '123456789', 'cust7@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-27 19:03:02.775338'),
('fad3c0c1b5a3', 'Vishnu  Vardhan Chundi', '123456789', 'vishnu@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-26 18:36:42.732835');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('3abbbbadce', 'NFRL-3689', '42d221a495fc', 'customer 5', '2b976e49a0', 'Cheeseburger', '3', '3', 'Paid', '2023-11-27 19:26:53.525735'),
('4dfe3648e2', 'HASC-1697', '58907e9c153b', 'Grace Selina', '1e0fa41eee', 'Submarine Sandwich', '8', '12', 'Paid', '2023-11-26 19:44:29.612604'),
('6401b8e90e', 'OTJY-6234', '825aa79f96b5', 'devaki', '2b976e49a0', 'Cheeseburger', '3', '2', 'Paid', '2023-11-27 18:02:28.991867'),
('7109d9a739', 'SJYX-6071', '825aa79f96b5', 'devaki', 'e769e274a3', 'Frappuccino', '3', '2', 'Paid', '2023-11-26 22:11:24.994549'),
('764be0e337', 'MIWA-6954', '37c89e1040f5', 'Nandini', 'c5a2e1c776', 'new', '15', '3', 'Paid', '2023-11-26 21:41:44.332745'),
('81bbd38827', 'CXAF-4583', '825aa79f96b5', 'devaki', '2b976e49a0', 'Cheeseburger', '3', '2', 'Paid', '2023-11-26 19:44:16.018128'),
('de9b92d2ed', 'YJIZ-2068', '58907e9c153b', 'Grace Selina', '1e0fa41eee', 'Submarine Sandwich', '8', '3', 'Paid', '2023-11-27 19:25:03.281039');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_pass_resets`
--

INSERT INTO `rpos_pass_resets` (`reset_id`, `reset_code`, `reset_token`, `reset_email`, `reset_status`, `created_at`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending', '2020-08-17 15:20:14.318643');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('2dcb9f', '4FOE3NWLKQ', 'YJIZ-2068', '58907e9c153b', '24', 'Paypal', '2023-11-27 19:25:03.275326'),
('39d647', 'S5RFKUNI1L', 'QDXI-4756', '825aa79f96b5', '15', 'Cash', '2023-11-26 19:15:15.437351'),
('3d2929', 'E9AIDTYZXW', 'OTJY-6234', '825aa79f96b5', '6', 'Cash', '2023-11-27 18:02:28.989790'),
('3fff10', 'DBN2JZAMUW', 'NFRL-3689', '42d221a495fc', '9', 'Cash', '2023-11-27 19:26:53.525371'),
('4d2300', '2PCWZKMFRO', 'CXAF-4583', '825aa79f96b5', '6', 'Cash', '2023-11-26 19:44:16.016253'),
('60f89e', 'gdffgrt56y', 'SJYX-6071', '825aa79f96b5', '6', 'Cash', '2023-11-26 22:11:24.993312'),
('6e1d0c', '57IZ4MOKDQ', 'MIWA-6954', '37c89e1040f5', '45', 'Cash', '2023-11-26 21:41:44.331979'),
('7d1283', '12werfd432', 'OTJY-6234', '825aa79f96b5', '6', 'Cash', '2023-11-27 19:32:16.812515'),
('994f39', 'SU8R51HFMA', 'MIWA-6954', '37c89e1040f5', '45', 'Cash', '2023-11-26 21:42:48.254579'),
('c8f176', 'S38UH4G6J7', 'HASC-1697', '58907e9c153b', '96', 'Cash', '2023-11-26 19:44:29.606914');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('14c7b6370e', 'QZHM-0391', 'Reuben Sandwich', 'reubensandwich.jpg', 'The Reuben sandwich is a North American grilled sandwich composed of corned beef, Swiss cheese, sauerkraut, and Thousand Island dressing or Russian dressing, grilled between slices of rye bread. It is associated with kosher-style delicatessens, but is not kosher because it combines meat and cheese.', '8', '2022-09-03 10:58:04.069144'),
('1e0fa41eee', 'ICFU-1406', 'Submarine Sandwich', 'submarine_sndwh.jpg', 'A submarine sandwich, commonly known as a sub, hoagie, hero, Italian, grinder, wedge, or a spuckie, is a type of American cold or hot sandwich made from a cylindrical bread roll split lengthwise and filled with meats, cheeses, vegetables, and condiments. It has many different names.', '8', '2022-09-03 10:55:23.020144'),
('2b976e49a0', 'CEWV-9438', 'Cheeseburger', 'cheeseburgers.jpg', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt. Cheeseburgers can include variations in structure, ingredients and composition.', '3', '2022-09-03 10:45:47.282634'),
('2fdec9bdfb', 'UJAK-9614', 'Jambalaya', 'Jambalaya.jpg', 'Jambalaya is an American Creole and Cajun rice dish of French, African, and Spanish influence, consisting mainly of meat and vegetables mixed with rice.', '9', '2022-09-03 10:48:49.593618'),
('31dfcc94cf', 'SYQP-3710', 'Buffalo Wings', 'buffalo_wings.jpg', 'A Buffalo wing in American cuisine is an unbreaded chicken wing section that is generally deep-fried and then coated or dipped in a sauce consisting of a vinegar-based cayenne pepper hot sauce and melted butter prior to serving.', '11', '2022-09-03 10:51:09.829079'),
('3adfdee116', 'HIPF-5346', 'Enchiladas', 'enchiladas.jpg', 'An enchilada is a corn tortilla rolled around a filling and covered with a savory sauce. Originally from Mexican cuisine, enchiladas can be filled with various ingredients, including meats, cheese, beans, potatoes, vegetables, or combinations', '10', '2022-09-03 12:52:26.427554'),
('3d19e0bf27', 'EMBH-6714', 'Cincinnati Chili', 'cincinnatichili.jpg', 'Cincinnati chili is a Mediterranean-spiced meat sauce used as a topping for spaghetti or hot dogs; both dishes were developed by immigrant restaurateurs in the 1920s. In 2013, Smithsonian named one local chili parlor one of the \"20 Most Iconic Food Destinations in America\".', '9', '2022-09-03 12:57:39.265554'),
('5d66c79953', 'GOEW-9248', 'Cheese Curd', 'cheesecurd.jpg', 'Cheese curds are moist pieces of curdled milk, eaten either alone or as a snack, or used in prepared dishes. These are chiefly found in Quebec, in the dish poutine, throughout Canada, and in the northeastern, midwestern, mountain, and Pacific Northwestern United States, especially in Wisconsin and Minnesota.', '6', '2022-09-03 11:22:25.639690'),
('826e6f687f', 'AYFW-2683', 'Margherita Pizza', 'margherita-pizza0.jpg', 'Pizza margherita, as the Italians call it, is a simple pizza hailing from Naples. When done right, margherita pizza features a bubbly crust, crushed San Marzano tomato sauce, fresh mozzarella and basil, a drizzle of olive oil, and a sprinkle of salt.', '12', '2022-09-03 08:02:57.213354'),
('97972e8d63', 'CVWJ-6492', 'Irish Coffee', 'irishcoffee.jpg', 'Irish coffee is a caffeinated alcoholic drink consisting of Irish whiskey, hot coffee, and sugar, stirred, and topped with cream The coffee is drunk through the cream', '11', '2022-09-03 13:08:19.157649'),
('a419f2ef1c', 'EPNX-3728', 'Chicken Nugget', 'chicnuggets.jpeg', 'A chicken nugget is a food product consisting of a small piece of deboned chicken meat that is breaded or battered, then deep-fried or baked. Invented in the 1950s, chicken nuggets have become a very popular fast food restaurant item, as well as widely sold frozen for home use', '5', '2022-09-03 12:44:07.749371'),
('a5931158fe', 'ELQN-5204', 'Pulled Pork', 'pulledprk.jpeg', 'Pulled pork is an American barbecue dish, more specifically a dish of the Southern U.S., based on shredded barbecued pork shoulder. It is typically slow-smoked over wood; indoor variations use a slow cooker. The meat is then shredded manually and mixed with a sauce', '8', '2022-09-03 13:04:12.191403'),
('b2f9c250fd', 'XNWR-2768', 'Strawberry Rhubarb Pie', 'rhuharbpie.jpg', 'Rhubarb pie is a pie with a rhubarb filling. Popular in the UK, where rhubarb has been cultivated since the 1600s, and the leaf stalks eaten since the 1700s. Besides diced rhubarb, it almost always contains a large amount of sugar to balance the intense tartness of the plant', '7', '2022-09-03 13:06:28.235333'),
('bd200ef837', 'HEIY-6034', 'Turkish Coffee', 'turkshcoffee.jpg', 'Turkish coffee is a style of coffee prepared in a cezve using very finely ground coffee beans without filtering.', '8', '2022-09-03 13:09:50.234898'),
('c5a2e1c776', 'JNUG-9276', 'new', 'milkshake.jpeg', 'new product', '15', '2023-11-26 21:40:00.700021'),
('d57cd89073', 'ZGQW-9480', 'Country Fried Steak', 'country_fried_stk.jpg', 'Chicken-fried steak, also known as country-fried steak or CFS, is an American breaded cutlet dish consisting of a piece of beefsteak coated with seasoned flour and either deep-fried or pan-fried. It is sometimes associated with the Southern cuisine of the United States.', '10', '2022-09-03 11:00:05.523519'),
('d9aed17627', 'FIKD-9703', 'Crab Cake', 'crabcakes.jpg', 'A crab cake is a variety of fishcake that is popular in the United States. It is composed of crab meat and various other ingredients, such as bread crumbs, mayonnaise, mustard, eggs, and seasonings. The cake is then sautÃ©ed, baked, grilled, deep fried, or broiled.', '16', '2022-09-03 12:54:52.120847'),
('e2195f8190', 'HKCR-2178', 'Carbonara', 'carbonaraimgre.jpg', 'Carbonara is an Italian pasta dish from Rome made with eggs, hard cheese, cured pork, and black pepper. The dish arrived at its modern form, with its current name, in the middle of the 20th century. The cheese is usually Pecorino Romano, Parmigiano-Reggiano, or a combination of the two.', '16', '2022-09-03 10:23:06.266420'),
('e2af35d095', 'IDLC-7819', 'Pepperoni Pizza', 'peperopizza.jpg', 'Pepperoni is an American variety of spicy salami made from cured pork and beef seasoned with paprika or other chili pepper. Prior to cooking, pepperoni is characteristically soft, slightly smoky, and bright red. Thinly sliced pepperoni is one of the most popular pizza toppings in American pizzerias.', '7', '2022-09-03 12:49:01.017677'),
('e769e274a3', 'AHRW-3894', 'Frappuccino', 'frappuccino.jpg', 'Frappuccino is a line of blended iced coffee drinks sold by Starbucks. It consists of coffee or crÃ¨me base, blended with ice and ingredients such as flavored syrups and usually topped with whipped cream and or spices.', '3', '2022-09-03 13:11:30.109467'),
('ec18c5a4f0', 'PQFV-7049', 'Corn Dogs', 'corndog.jpg', 'A corn dog is a sausage on a stick that has been coated in a thick layer of cornmeal batter and deep fried. It originated in the United States and is commonly found in American cuisine', '4', '2022-09-03 13:00:32.787354'),
('f4ce3927bf', 'EAHD-1980', 'Hot Dog', 'hotdog0.jpg', 'A hot dog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter. The names of these sausages also commonly refer to their assembled dish.', '4', '2022-09-03 10:53:04.965223'),
('f9c2770a32', 'YXLA-2603', 'Whipped Milk Shake', 'milkshake.jpeg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', '8', '2022-09-03 08:54:02.727645');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(3, 'chef1', 'GRFH-0189', 'chef1@mail.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '2023-11-26 18:35:02.247206'),
(4, 'Devaki', 'OEWA-5071', 'Devaki@mail.com', '288e418dc6f5ccad18da503af783d381f256b454', '2023-11-27 18:03:32.843066'),
(5, 'Cashier', 'SHCF-5871', 'cashier@mail.com', '288e418dc6f5ccad18da503af783d381f256b454', '2023-11-27 18:05:33.605696'),
(6, 'chef2', 'OTZY-8014', 'chef2@mail.com', '288e418dc6f5ccad18da503af783d381f256b454', '2023-11-27 19:01:10.387772'),
(7, 'chef3', 'FADM-8902', 'chef3@mail.com', '288e418dc6f5ccad18da503af783d381f256b454', '2023-11-27 19:01:33.298281');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `rpos_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `rpos_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
