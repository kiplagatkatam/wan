-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2016 at 04:36 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`transaction_id`, `date`, `name`, `invoice`, `amount`, `remarks`, `balance`) VALUES
(1, '03/25/2016', 'RS-2333424', 'IN-3083332', '100', 'good', -87),
(2, '04/08/2016', 'RS-2333424', 'IN-324336', '100', 'cash', -187),
(3, '04/08/2016', 'RS-2333424', 'IN-29433673', '1000', 'credit', -1187),
(4, '04/08/2016', 'RS-2333424', 'IN-890832', '10000', 'cash', -11187),
(5, '04/08/2016', '<?php echo $finalcode ?>', 'IN-033222', '200', 'cash', -83),
(6, '04/08/2016', 'RS-32559732', 'IN-008822', '10', 'cash', 16),
(7, '08/11/2016', 'RS-22222833', 'IN-3227730', '1000', 'mpesa', 15000),
(8, '08/11/2016', 'RS-22222833', 'IN-23230370', '1000', 'cash', 14000),
(9, '08/11/2016', 'RS-22222833', 'IN-78303030', '7500', 'cash', 6500),
(10, '08/16/2016', 'RS-22222833', 'IN-39332073', '6500', 'complete', 0),
(11, '08/16/2016', 'd', 'IN-9225009', '199', 'ss', -199),
(12, '08/23/2016', 'RS-0230228', 'IN-29202433', '12', 'aSD', 63988),
(13, '08/23/2016', 'RS-0230228', 'IN-9222223', '100000', '', -36012),
(14, '08/24/2016', 'RS-3323240', 'IN-3303349', '121312', 'jhvsbd2341n', -121212);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`) VALUES
(4, 'denid', '1233', '0724603721', '12345'),
(6, 'katam', '422435', '0724603721', '1234'),
(7, 'kiplagat', '3359', '0724603721', '0004567'),
(8, 'alex', '3356', '07248762362', '000057'),
(9, 'mawalimu', '2', '33', '9');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `cost`, `price`, `supplier`, `qty`) VALUES
(7, '7362534573466', 'GT06', '15000', '16000', 'Colortex', 58),
(8, 'S116', 'bike', '5000', '6000', 'Colortex', -11);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`transaction_id`, `invoice_number`, `date`, `suplier`, `remarks`) VALUES
(1, 'R2345', '03/25/2016', 'Colortex', 'maiz'),
(2, 'u211343u', '03/27/2016', 'Colortex', 'good'),
(3, 'bexsrt', 'R3452', 'Colortex', 'gfdfdfd'),
(4, 'R127', '01/04/2016', 'Colortex', 'cash'),
(5, 'Q444', '07/04/2016', 'Colortex', '20');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases_item`
--

INSERT INTO `purchases_item` (`id`, `name`, `qty`, `cost`, `invoice`) VALUES
(1, '001', 3, '39', 'R2345'),
(2, '001', 2, '26', 'bexsrt');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `due_date`, `name`, `balance`) VALUES
(1, 'RS-3323240', 'Argie', '02/08/2014', 'credit', '100', 'jhvsbd2341n', 'Argie Policarpio', '-121212'),
(2, 'RS-022522', 'Argie', '03/25/2016', 'cash', '13', '100', 'katam', ''),
(3, 'RS-2333424', 'Argie', '03/25/2016', 'credit', '13', 'cash', 'katam', '-11187'),
(4, 'RS-393728', 'Febe', '03/25/2016', 'cash', '39', '1000', 'kiplagat', ''),
(5, 'RS-3995095', 'Argie', '03/25/2016', 'cash', '13', '1000', 'deno', ''),
(6, 'RS-093032', 'Febe', '03/25/2016', 'cash', '143', '100', 'madam', ''),
(7, '<?php echo $finalcode ?>', 'Argie', '03/27/2016', 'credit', '', 'cash', 'katam', '-83'),
(8, '<?php echo $finalcode ?>', 'Argie', '03/28/2016', 'credit', '26', 'cash', 'katam1', '-83'),
(9, '<?php echo $finalcode ?>', '<br /><font size=''1''><table class=''xdebug-error'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1', '03/28/2016', 'cash', '78', 'cash', 'kiplagat', '-83'),
(10, 'RS-33823393', 'Febe', '03/28/2016', 'cash', '13', '1000', 'katam1', ''),
(11, 'RS-323633', 'Argie', '03/28/2016', 'credit', '13', '12/04/2016', 'sogom', ''),
(12, '<?php echo $finalcode ?>', 'Argie', '04/05/2016', 'cash', '78', 'cash', 'katam1', '-83'),
(13, 'RS-0222336', 'Argie', '04/08/2016', 'cash', '60', '1000', 'ciele', ''),
(14, '<?php echo $finalcode ?>', '<br /><font size=''1''><table class=''xdebug-error'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1', '04/08/2016', 'cash', '117', 'cash', 'ciele', '-83'),
(15, 'RS-336087', 'Febe', '04/08/2016', 'cash', '13', '1000', 'katam1', ''),
(16, 'RS-4332720', 'Febe', '04/08/2016', 'cash', '416', '1000', 'katam1', ''),
(17, 'RS-4332720', 'Febe', '04/08/2016', 'cash', '2080', '6000', 'katam1', ''),
(18, 'RS-046083', 'Argie', '04/08/2016', 'cash', '', '', '', ''),
(19, 'RS-9063203', 'Argie', '04/08/2016', 'cash', '156', '1000', 'deno', ''),
(20, 'RS-203532', 'Argie', '04/08/2016', 'cash', '13', '1000', 'katam1', ''),
(21, 'RS-03532038', 'Argie', '04/08/2016', 'cash', '39', '40', 'katam1', ''),
(22, 'RS-303352', 'Argie', '04/08/2016', 'credit', '26', '12-04-2016', 'kiplagat', ''),
(23, 'RS-32559732', 'Argie', '04/08/2016', 'credit', '26', 'cash', 'katam', '16'),
(24, 'RS-33203242', 'Argie', '04/08/2016', 'cash', '13', '20', 'katam', ''),
(25, 'RS-2300068', 'Febe', '04/08/2016', 'credit', '20', '12-04-2016', 'katam1', ''),
(26, 'RS-203325', 'Patricia', '04/09/2016', 'cash', '26', '100', 'katam', ''),
(27, 'RS-2300', 'Patricia', '08/11/2016', 'cash', '16000', '12000', 'denid', ''),
(28, 'RS-3003', 'Febe', '08/11/2016', 'cash', '16000', '14000', 'denid', ''),
(29, 'RS-22222833', 'Febe', '08/11/2016', 'credit', '16000', 'complete', 'denid', '0'),
(30, 'RS-6227332', 'Febe', '08/16/2016', 'cash', '30', '100', 'denid', ''),
(31, 'RS-0002300', 'Febe', '08/16/2016', 'cash', '192000', 'mpesa', '200000', ''),
(32, 'RS-380262', 'Febe', '08/16/2016', 'cash', '32000', 'cash', 'denid', ''),
(33, 'RS-30356262', 'Febe', '08/23/2016', 'cash', '16000', '14000', 'denid', ''),
(34, 'RS-2232029', 'Febe', '08/23/2016', 'cash', '24000', '1234567', 'denid', ''),
(35, 'RS-0302300', 'Febe', '08/23/2016', 'cash', '32000', '40000', 'kiplagat', ''),
(36, 'RS-980000', 'Febe', '08/23/2016', 'cash', '48000', '59000', 'kiplagat', ''),
(37, 'RS-22330220', 'User Alex', '08/23/2016', 'cash', '32000', '40000', 'kiplagat', ''),
(38, 'RS-250230', 'User Alex', '08/23/2016', 'cash', '32000', '', 'kiplagat', ''),
(39, 'RS-0230228', 'User Alex', '08/23/2016', 'credit', '64000', '', 'kiplagat', '-36012'),
(40, 'RS-00392', 'User Alex', '08/24/2016', 'cash', '16000', '20000', 'kiplagat', ''),
(41, 'RS-3973', 'User Alex', '08/24/2016', 'cash', '32000', '15000', 'alex', ''),
(42, 'RS-22453', 'User Alex', '08/24/2016', 'cash', '32000', '200000', 'deni', ''),
(43, 'RS-0420233', 'Administrator', '08/24/2016', 'cash', '72000', '100000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `name`, `price`, `discount`) VALUES
(1, 'RS-3323240', '001', '10', '100', '12" Fiesta Green', '13', '3'),
(2, 'RS-0228233', '001', '10', '120', '12" Fiesta Green', '13', '1'),
(3, 'RS-022522', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(4, 'RS-2333424', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(5, 'RS-393728', '001', '3', '39', '12" Fiesta Green', '13', '0'),
(6, 'RS-4632228', '001', '3', '39', '12" Fiesta Green', '13', '0'),
(7, 'RS-3995095', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(8, 'RS-093032', '001', '11', '143', '12" Fiesta Green', '13', '0'),
(9, 'RS-4623202', '005', '', '0', 'kiwi', '30', '0'),
(10, 'RS-4623202', '003', '2', '300', 'Toot brush', '150', '0'),
(11, '<?php echo $finalcode ?>', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(12, '<?php echo $finalcode ?>', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(13, '<?php echo $finalcode ?>', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(14, 'RS-33823393', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(15, 'RS-323633', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(16, 'RS-0222336', '005', '2', '60', 'kiwi', '30', '0'),
(17, '<?php echo $finalcode ?>', '001', '3', '39', '12" Fiesta Green', '13', '0'),
(18, 'RS-336087', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(19, 'RS-336087', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(20, 'RS-4332720', '001', '32', '416', '12" Fiesta Green', '13', '0'),
(21, 'RS-4332720', '001', '4', '52', '12" Fiesta Green', '13', '0'),
(22, 'RS-4332720', '001', '23', '299', '12" Fiesta Green', '13', '0'),
(23, 'RS-4332720', '001', '66', '858', '12" Fiesta Green', '13', '0'),
(24, 'RS-4332720', '001', '33', '429', '12" Fiesta Green', '13', '0'),
(25, 'RS-4332720', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(26, 'RS-338242', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(27, 'RS-52222093', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(28, 'RS-9063203', '001', '12', '156', '12" Fiesta Green', '13', '0'),
(29, 'RS-203532', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(30, 'RS-03532038', '001', '3', '39', '12" Fiesta Green', '13', '0'),
(31, 'RS-303352', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(32, 'RS-32559732', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(33, 'RS-33203242', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(34, 'RS-023202', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(35, 'RS-0023233', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(36, 'RS-53472', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(37, 'RS-2300068', '001', '2', '20', '12" Fiesta Green', '13', '3'),
(38, 'RS-32323', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(39, 'RS-32323', '001', '1', '13', '12" Fiesta Green', '13', '0'),
(40, 'RS-203325', '001', '2', '26', '12" Fiesta Green', '13', '0'),
(41, 'RS-2300', '7362534573466', '1', '16000', 'GT06', '16000', '0'),
(42, 'RS-3003', '7362534573466', '1', '16000', 'GT06', '16000', '0'),
(43, 'RS-22222833', '7362534573466', '1', '16000', 'GT06', '16000', '0'),
(44, 'RS-6227332', '005', '1', '30', 'kiwi', '30', '0'),
(45, 'RS-2202245', 'S116', '2', '12000', 'bike', '6000', '0'),
(46, 'RS-0002300', '7362534573466', '12', '192000', 'GT06', '16000', '0'),
(47, 'RS-380262', '7362534573466', '2', '32000', 'GT06', '16000', '0'),
(48, 'RS-30356262', '7362534573466', '1', '16000', 'GT06', '16000', '0'),
(49, 'RS-2232029', 'S116', '4', '24000', 'bike', '6000', '0'),
(50, 'RS-60277232', 'S116', '12', '72000', 'bike', '6000', '0'),
(51, 'RS-333422', 'S116', '1', '6000', 'bike', '6000', '0'),
(52, 'RS-0302300', '7362534573466', '2', '32000', 'GT06', '16000', '0'),
(53, 'RS-980000', '7362534573466', '3', '48000', 'GT06', '16000', '0'),
(54, 'RS-22330220', '7362534573466', '2', '32000', 'GT06', '16000', '0'),
(55, 'RS-250230', '7362534573466', '2', '32000', 'GT06', '16000', '0'),
(56, 'RS-0230228', '7362534573466', '4', '64000', 'GT06', '16000', '0'),
(57, 'RS-222532', '7362534573466', '6', '96000', 'GT06', '16000', '0'),
(58, 'RS-00392', '7362534573466', '1', '16000', 'GT06', '16000', '0'),
(59, 'RS-3973', '7362534573466', '2', '32000', 'GT06', '16000', '0'),
(60, 'RS-22453', '7362534573466', '2', '32000', 'GT06', '16000', '0'),
(61, 'RS-0420233', 'S116', '12', '72000', 'bike', '6000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`) VALUES
(1, 'Colortex', 'Binondo Manila', 'none', 'Sample');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Administrator', 'admin'),
(2, 'user', 'user', 'User Alex', 'cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
