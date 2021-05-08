

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Tyres'),
(2, 'Headlight');



CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemed');



CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(37, 'Saurav', 'R', 'tripathi', 1, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 1, 1),
(38, 'Ravi', 'Vijay', 'Upadhyay', 2, 2, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 1, 1),
(39, 'Riddhi ', 'N', 'Upam', 1, 1, 'angel_locsin', '86cd607ba94a7dc9bb3a0baf1d4c1926', 1, 1),
(40, 'Ashish', 'Durgaram', 'Suthar', 2, 2, 'Julia_Barreto', 'c87cac2c4079f860c8e0c8075ba4ae33', 1, 0),
(43, 'Yash', 'Nayan', 'Pancholi', 1, 1, '21313_2222', '65ac1cb0d396486f1d2bae5310bddb67', 1, 0),
(44, 'Prabhat', 'BhaskarDutta', 'Upadhyay', 2, 2, 'rub_comedero', '2c346f9df8cba24a0f2e985374ec2cd9', 1, 0),
(48, 'Ganesh', ' ', 'Verma', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);



CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');



CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT '4',
  `status_id` int(11) NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(5, 'Bumper', 'serial', 'model', 'brand ', 25500, '2017-01-06', 37, 1, 2, 4),
(10, 'Cowl screen', '123123', '123123', '12321312', 123123, '2017-01-11', 37, 1, 2, 4),
(12, 'Rims', '12321321', '12312312', '12321312', 12323, '2017-01-05', 37, 1, 2, 4),
(13, 'Headlight', '343', '32423', 'Toshiba', 35000, '2017-01-23', 37, 1, 2, 4),
(14, 'Grile', '34324', '324234423', 'Sofa', 3500, '2017-01-24', 37, 2, 2, 4),
(15, 'Roof rack', '3423423', '234234', 'Cdr-king', 180, '2017-01-26', 37, 1, 2, 4),
(16, 'Quartel panel', 'BBB', 'BBB', 'BBB', 25000, '2017-01-10', 37, 1, 2, 4),
(17, 'Tyres', 'CCC', 'CCC', 'CCC', 343432, '2017-01-11', 37, 1, 2, 4),
(18, 'Hubcap', 'aaa', 'aaaa', 'Aaa', 343, '2017-01-24', 37, 1, 2, 4),
(19, 'Trunk latch', 'bbbb', 'bbb', 'BBb', 34342, '2017-01-10', 37, 1, 2, 4),
(20, 'Glass', '111', '111', '111', 111, '2017-01-17', 37, 1, 2, 4),
(21, 'Window motor', '24234', '435345', 'Brand', 34343, '2017-01-19', 37, 2, 2, 4),
(22, 'Windsheild', '32432', '23423', '23432', 23423, '2017-03-08', 39, 1, 1, 4),
(23, 'sunroofrail', '234234', '234234', 'Artificial T', 1, '2017-03-09', 37, 1, 1, 4),
(24, 'sunroof motor', ' ', ' ', ' ', 34, '2017-03-22', 39, 2, 1, 4);



CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemed'),
(4, 'none');



CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'PERSONNEL'),
(2, 'SGOD'),
(8, 'AAA');



CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'Information Technology Officer'),
(2, 'accountant');



CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT '1',
  `req_is_done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbl_request` (`req_id`, `req_date`, `item_id`, `req_type_id`, `req_status_id`, `req_is_done`) VALUES
(19, '2017-01-01', 14, 1, 2, 1),
(20, '2017-01-01', 14, 1, 2, 1),
(21, '2017-01-01', 10, 1, 2, 1),
(22, '2017-01-01', 14, 1, 2, 1),
(25, '2017-01-01', 10, 1, 2, 1),
(26, '2017-01-01', 14, 2, 3, 1),
(27, '2017-01-01', 13, 3, 2, 1),
(28, '2017-01-01', 15, 1, 2, 1),
(29, '2017-01-01', 14, 1, 3, 1),
(30, '2017-01-01', 10, 1, 3, 1),
(31, '2017-01-01', 13, 1, 2, 1),
(32, '2017-01-01', 14, 1, 2, 1),
(33, '2017-01-01', 15, 3, 3, 1),
(34, '2017-01-01', 10, 1, 2, 1),
(35, '2017-01-01', 13, 3, 3, 1),
(36, '2017-01-05', 14, 1, 2, 1),
(37, '2017-01-05', 15, 3, 2, 1),
(38, '2017-01-06', 13, 3, 3, 1),
(39, '2017-01-06', 13, 1, 2, 1),
(40, '2017-01-06', 15, 3, 2, 1),
(41, '2017-01-08', 10, 1, 3, 1),
(42, '2017-01-10', 14, 1, 3, 1),
(43, '2017-01-10', 10, 1, 3, 1),
(44, '2017-01-10', 10, 3, 3, 1),
(45, '2017-01-10', 14, 3, 2, 1),
(46, '2017-01-10', 13, 3, 2, 1),
(47, '2017-01-10', 16, 3, 2, 1),
(48, '2017-01-10', 17, 3, 2, 1),
(49, '2017-01-10', 5, 3, 3, 1),
(50, '2017-01-10', 18, 3, 2, 1),
(51, '2017-01-10', 19, 3, 3, 1),
(52, '2017-01-10', 20, 3, 3, 1),
(53, '2016-01-10', 20, 3, 2, 1),
(54, '2016-01-10', 12, 3, 3, 1),
(55, '2016-01-10', 10, 3, 3, 1),
(56, '2016-01-10', 20, 3, 3, 1),
(57, '2016-01-10', 20, 3, 3, 1),
(58, '2016-01-10', 20, 3, 3, 1),
(59, '2016-01-10', 20, 3, 2, 1),
(60, '2016-01-10', 12, 3, 3, 1),
(61, '2016-01-10', 10, 3, 3, 1),
(62, '2016-01-10', 18, 3, 3, 1),
(63, '2016-01-10', 12, 3, 2, 1),
(64, '2016-01-10', 10, 3, 2, 1),
(65, '2016-01-10', 18, 3, 2, 1),
(66, '2016-01-10', 16, 3, 2, 1),
(67, '2016-01-10', 19, 3, 2, 1),
(68, '2016-01-10', 17, 3, 2, 1),
(69, '2016-01-10', 14, 1, 3, 1),
(70, '2016-01-10', 15, 1, 3, 1),
(71, '2016-01-10', 14, 1, 2, 1),
(72, '2016-01-10', 5, 1, 2, 1),
(73, '2016-01-10', 15, 1, 2, 1),
(74, '2017-01-18', 21, 1, 2, 1),
(75, '2017-01-18', 14, 3, 2, 1),
(76, '2017-01-24', 21, 1, 2, 1),
(77, '2017-01-24', 21, 3, 3, 1),
(78, '2017-01-24', 21, 3, 2, 1),
(79, '2017-01-24', 5, 1, 2, 1),
(80, '2017-01-24', 15, 3, 2, 1),
(81, '2017-02-15', 5, 1, 2, 1),
(82, '2017-02-15', 5, 1, 2, 1),
(83, '2017-02-15', 5, 3, 3, 1),
(84, '2017-03-07', 5, 1, 2, 1),
(85, '2017-03-07', 13, 3, 2, 1),
(86, '2017-03-08', 5, 1, 2, 1),
(87, '2017-03-08', 5, 3, 2, 1),
(88, '2017-03-08', 23, 3, 3, 1),
(89, '2017-03-08', 23, 1, 2, 1),
(90, '2017-03-08', 23, 3, 3, 1),
(91, '2017-03-12', 23, 2, 2, 1);



CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');



CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

--
-- Constraints for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_request_ibfk_2` FOREIGN KEY (`req_type_id`) REFERENCES `tbl_req_type` (`req_type_id`),
  ADD CONSTRAINT `tbl_request_ibfk_3` FOREIGN KEY (`req_status_id`) REFERENCES `tbl_req_status` (`req_status_id`);

