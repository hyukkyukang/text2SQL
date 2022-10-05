PRAGMA foreign_keys = ON;

CREATE TABLE `Discount_Coupons` (
`coupon_id` INTEGER PRIMARY KEY,
`date_issued` DATETIME,
`coupon_amount` DECIMAL(19,4)
);
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (1, '2017-09-06 01:33:27', '500.0000');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (2, '2018-02-20 09:40:56', '686.2500');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (3, '2017-09-17 23:31:36', '501.3000');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (4, '2017-07-21 10:10:47', '370.4400');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (5, '2017-06-21 22:47:58', '399.8900');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (6, '2017-08-16 03:16:48', '689.2900');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (7, '2018-02-10 21:18:23', '508.4400');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (8, '2017-12-28 20:11:42', '666.4600');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (9, '2017-07-03 23:02:14', '685.9600');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (10, '2018-03-22 01:10:03', '175.9400');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (11, '2017-10-22 06:03:39', '607.6200');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (12, '2018-03-21 11:49:13', '523.7800');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (13, '2017-07-13 00:37:36', '770.8200');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (14, '2018-02-24 01:40:52', '547.3900');
INSERT INTO Discount_Coupons (`coupon_id`, `date_issued`, `coupon_amount`) VALUES (15, '2017-07-02 06:49:42', '245.3600');


CREATE TABLE `Customers` (
`customer_id` INTEGER PRIMARY KEY,
`coupon_id` INTEGER NOT NULL,
`good_or_bad_customer` VARCHAR(4),
`first_name` VARCHAR(80),
`last_name` VARCHAR(80),
`gender_mf` VARCHAR(1),
`date_became_customer` DATETIME,
`date_last_hire` DATETIME,
FOREIGN KEY (`coupon_id` ) REFERENCES `Discount_Coupons`(`coupon_id` )
);
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (1, 12, 'good', 'Geovany', 'Homenick', '0', '2017-10-20 12:13:17', '2018-02-27 18:55:26');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (2, 14, 'good', 'Jailyn', 'Gerlach', '0', '2015-04-06 21:18:37', '2018-01-30 04:47:13');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (3, 7, 'good', 'Rosalee', 'Kessler', '0', '2016-02-03 16:58:11', '2018-03-04 21:30:23');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (4, 12, 'bad', 'Reba', 'Jacobs', '1', '2016-06-17 14:11:50', '2018-02-19 06:04:01');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (5, 10, 'good', 'Ericka', 'Greenholt', '0', '2016-08-11 01:50:37', '2018-02-25 04:40:15');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (6, 14, 'bad', 'Bridget', 'Ankunding', '1', '2015-04-24 02:38:16', '2018-02-10 19:44:08');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (7, 12, 'good', 'Marilou', 'Strosin', '1', '2015-12-16 08:05:53', '2018-02-01 16:48:30');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (8, 6, 'good', 'Elinore', 'Crona', '0', '2017-07-27 08:04:22', '2018-03-04 08:59:40');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (9, 7, 'good', 'German', 'Little', '1', '2017-02-28 14:40:25', '2018-03-13 21:20:05');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (10, 1, 'bad', 'Layne', 'Terry', '1', '2015-05-05 20:29:01', '2018-02-04 08:56:55');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (11, 10, 'good', 'Maximilian', 'Murphy', '0', '2015-07-21 09:24:57', '2018-03-12 09:23:41');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (12, 11, 'good', 'Vergie', 'Nicolas', '0', '2016-02-03 10:31:18', '2018-03-03 23:37:31');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (13, 2, 'good', 'Laury', 'Lemke', '1', '2017-03-18 04:37:59', '2018-03-18 17:35:43');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (14, 6, 'good', 'Tyler', 'Breitenberg', '1', '2016-04-20 21:04:35', '2018-03-03 13:46:38');
INSERT INTO Customers (`customer_id`, `coupon_id`, `good_or_bad_customer`, `first_name`, `last_name`, `gender_mf`, `date_became_customer`, `date_last_hire`) VALUES (15, 3, 'bad', 'Jamir', 'Schroeder', '1', '2016-05-25 01:12:49', '2018-02-24 11:15:29');


CREATE TABLE `Bookings` (
`booking_id` INTEGER PRIMARY KEY ,
`customer_id` INTEGER NOT NULL,
`booking_status_code` VARCHAR(10) NOT NULL,
`returned_damaged_yn` VARCHAR(40),
`booking_start_date` DATETIME,
`booking_end_date` DATETIME,
`count_hired` VARCHAR(40),
`amount_payable` DECIMAL(19,4),
`amount_of_discount` DECIMAL(19,4),
`amount_outstanding` DECIMAL(19,4),
`amount_of_refund` DECIMAL(19,4),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);

INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (1, 7, 'Provisional', '1', '2016-12-07 23:39:17', '2018-02-01 16:39:13', '298', '214.3900', '71.4500', '28.2200', '179.1400');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (2, 15, 'Confirmed', '1', '2017-06-16 11:42:31', '2018-02-19 21:53:31', '331', '386.9200', '83.8200', '57.6200', '183.6800');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (3, 3, 'Confirmed', '1', '2017-04-04 11:02:43', '2018-02-01 09:30:50', '729', '351.3200', '49.2600', '66.0100', '135.9400');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (4, 7, 'Provisional', '0', '2017-06-05 17:56:01', '2017-12-02 00:37:00', '152', '272.0800', '45.0600', '38.8700', '100.7800');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (5, 7, 'Provisional', '1', '2016-11-06 20:54:26', '2017-10-11 03:00:15', '546', '338.1000', '79.3400', '32.9900', '191.3100');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (6, 10, 'Confirmed', '0', '2016-06-05 05:18:17', '2018-01-14 00:29:01', '282', '209.4100', '27.7800', '52.6200', '192.0200');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (7, 3, 'Provisional', '1', '2017-07-15 06:28:54', '2017-11-28 08:11:52', '236', '322.8700', '39.2700', '56.0200', '126.1000');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (8, 11, 'Provisional', '0', '2016-09-26 01:09:20', '2018-03-24 21:21:32', '746', '303.3000', '61.5500', '68.0200', '145.6300');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (9, 10, 'Provisional', '0', '2017-05-24 16:16:29', '2018-03-07 17:39:04', '846', '374.5900', '50.9300', '26.0400', '130.8700');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (10, 3, 'Confirmed', '1', '2016-05-06 03:50:49', '2017-08-30 04:33:23', '857', '320.7300', '39.1600', '27.8100', '112.6300');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (11, 9, 'Provisional', '1', '2017-04-11 00:39:03', '2017-10-02 07:28:09', '488', '273.2800', '48.7300', '73.8800', '181.1900');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (12, 3, 'Provisional', '1', '2017-02-27 12:04:35', '2018-02-06 19:27:09', '914', '281.0900', '26.3700', '22.9700', '110.3900');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (13, 8, 'Provisional', '0', '2016-11-27 17:19:40', '2018-03-04 21:42:45', '499', '286.4700', '89.0500', '36.7900', '143.9900');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (14, 8, 'Confirmed', '1', '2016-04-25 11:04:18', '2018-01-01 10:19:20', '843', '221.5700', '24.1900', '64.0100', '161.9000');
INSERT INTO Bookings (`booking_id`, `customer_id`, `booking_status_code`, `returned_damaged_yn`, `booking_start_date`, `booking_end_date`, `count_hired`, `amount_payable`, `amount_of_discount`, `amount_outstanding`, `amount_of_refund`) VALUES (15, 9, 'Provisional', '1', '2017-04-28 08:35:56', '2018-01-18 23:54:44', '994', '306.2600', '78.3100', '93.8800', '124.9500');



CREATE TABLE `Products_for_Hire` (
`product_id` INTEGER PRIMARY KEY,
`product_type_code` VARCHAR(15) NOT NULL,
`daily_hire_cost` DECIMAL(19,4),
`product_name` VARCHAR(80),
`product_description` VARCHAR(255)
);

INSERT INTO Products_for_Hire (`product_id`, `product_type_code`, `daily_hire_cost`, `product_name`, `product_description`) VALUES (1, 'Cutlery', '26.1500', 'Book collection C', 'Anna Karenina');
INSERT INTO Products_for_Hire (`product_id`, `product_type_code`, `daily_hire_cost`, `product_name`, `product_description`) VALUES (2, 'Cutlery', '15.6200', 'Book collection B', 'War and Peace');
INSERT INTO Products_for_Hire (`product_id`, `product_type_code`, `daily_hire_cost`, `product_name`, `product_description`) VALUES (3, 'Cutlery', '39.7300', 'Book collection A', 'The Great Gatsby');
INSERT INTO Products_for_Hire (`product_id`, `product_type_code`, `daily_hire_cost`, `product_name`, `product_description`) VALUES (4, 'Din_Plates', '18.5000', 'DVD collection A', 'Twilight');
INSERT INTO Products_for_Hire (`product_id`, `product_type_code`, `daily_hire_cost`, `product_name`, `product_description`) VALUES (5, 'Cutlery', '39.5800', 'DVD collection B', 'One Hundred Years of Solitude');


CREATE TABLE `Payments` (
`payment_id` INTEGER PRIMARY KEY,
`booking_id` INTEGER,
`customer_id` INTEGER NOT NULL,
`payment_type_code` VARCHAR(15) NOT NULL,
`amount_paid_in_full_yn` VARCHAR(1),
`payment_date` DATETIME,
`amount_due` DECIMAL(19,4),
`amount_paid` DECIMAL(19,4),
FOREIGN KEY (`booking_id` ) REFERENCES `Bookings`(`booking_id` ),
FOREIGN KEY (`customer_id` ) REFERENCES `Customers`(`customer_id` )
);

INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (1, 6, 15, 'Check', '1', '2018-03-09 16:28:00', '369.5200', '206.2700');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (2, 9, 12, 'Cash', '1', '2018-03-03 13:39:44', '278.6000', '666.4500');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (3, 5, 7, 'Credit Card', '0', '2018-03-22 15:00:23', '840.0600', '135.7000');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (4, 6, 1, 'Check', '0', '2018-03-22 02:28:11', '678.2900', '668.4000');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (5, 8, 11, 'Cash', '1', '2018-03-23 20:36:04', '830.2500', '305.6500');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (6, 15, 8, 'Check', '0', '2018-03-19 12:39:31', '410.1000', '175.5400');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (7, 1, 8, 'Cash', '1', '2018-03-02 06:25:45', '482.2600', '602.8000');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (8, 9, 14, 'Cash', '1', '2018-03-12 23:00:55', '653.1800', '505.2300');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (9, 3, 7, 'Direct Debit', '0', '2018-03-12 23:23:56', '686.8500', '321.5800');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (10, 13, 10, 'Credit Card', '1', '2018-03-23 13:24:33', '486.7500', '681.2100');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (11, 14, 15, 'Credit Card', '1', '2018-03-03 03:07:00', '259.1800', '464.0600');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (12, 14, 9, 'Cash', '0', '2018-02-27 10:50:39', '785.7300', '685.3200');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (13, 15, 14, 'Direct Debit', '0', '2018-03-03 14:22:51', '665.5800', '307.1400');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (14, 5, 5, 'Direct Debit', '1', '2018-03-17 15:51:52', '407.5100', '704.4100');
INSERT INTO Payments (`payment_id`, `booking_id`, `customer_id`, `payment_type_code`, `amount_paid_in_full_yn`, `payment_date`, `amount_due`, `amount_paid`) VALUES (15, 4, 12, 'Credit Card', '1', '2018-03-17 03:07:45', '631.9300', '334.2000');

CREATE TABLE `Products_Booked` (
`booking_id` INTEGER NOT NULL,
`product_id` INTEGER NOT NULL,
`returned_yn` VARCHAR(1),
`returned_late_yn` VARCHAR(1),
`booked_count` INTEGER,
`booked_amount` FLOAT NULL,
PRIMARY KEY (`booking_id`, `product_id`)
FOREIGN KEY (`booking_id` ) REFERENCES `Bookings`(`booking_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products_for_Hire`(`product_id` )
);

CREATE TABLE `View_Product_Availability` (
`product_id` INTEGER NOT NULL,
`booking_id` INTEGER NOT NULL,
`status_date` DATETIME PRIMARY KEY,
`available_yn` VARCHAR(1),
FOREIGN KEY (`booking_id` ) REFERENCES `Bookings`(`booking_id` ),
FOREIGN KEY (`product_id` ) REFERENCES `Products_for_Hire`(`product_id` )
);
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (4, 1, '1', '1', 5, '309.73');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (14, 1, '1', '0', 3, '102.76');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (13, 3, '1', '0', 4, '151.68');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (11, 1, '1', '1', 1, '344.38');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (15, 3, '1', '0', 2, '236.13');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (10, 4, '1', '0', 6, '123.43');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (14, 5, '1', '1', 6, '351.38');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (11, 5, '1', '1', 3, '146.01');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (3, 5, '1', '1', 3, '189.16');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (15, 1, '1', '0', 1, '398.68');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (2, 4, '1', '1', 9, '290.72');
INSERT INTO Products_Booked (`booking_id`, `product_id`, `returned_yn`, `returned_late_yn`, `booked_count`, `booked_amount`) VALUES (1, 2, '1', '0', 5, '110.2');
INSERT INTO View_Product_Availability (`product_id`, `booking_id`, `status_date`, `available_yn`) VALUES (1, 5, '2018-03-18 05:25:55', '1');
INSERT INTO View_Product_Availability (`product_id`, `booking_id`, `status_date`, `available_yn`) VALUES (2, 5, '2018-03-21 15:20:32', '0');
INSERT INTO View_Product_Availability (`product_id`, `booking_id`, `status_date`, `available_yn`) VALUES (3, 11, '2018-03-25 10:20:15', '1');
INSERT INTO View_Product_Availability (`product_id`, `booking_id`, `status_date`, `available_yn`) VALUES (5, 11, '2018-03-22 00:16:58', '1');
