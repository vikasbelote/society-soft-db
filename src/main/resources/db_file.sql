set foreign_key_checks = 0;
drop table sa_transaction;
set foreign_key_checks = 1;

CREATE TABLE `sa_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `general_head_id` int(11) DEFAULT NULL,
  `transaction_type_id` int(11) DEFAULT NULL,
  `transaction_amount` double DEFAULT NULL,
  `transaction_description` varchar(500) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `society_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `society_id` (`society_id`),
  KEY `FKrmuwans8y5ncks6lxtk341mrw` (`general_head_id`),
  KEY `transaction_type_id` (`transaction_type_id`),
  CONSTRAINT `FKrmuwans8y5ncks6lxtk341mrw` FOREIGN KEY (`general_head_id`) REFERENCES `sa_general_head` (`general_head_id`),
  CONSTRAINT `sa_transaction_ibfk_1` FOREIGN KEY (`general_head_id`) REFERENCES `sa_general_head` (`general_head_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sa_transaction_ibfk_2` FOREIGN KEY (`society_id`) REFERENCES `sa_society` (`society_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sa_transaction_ibfk_3` FOREIGN KEY (`transaction_type_id`) REFERENCES `sa_transaction_type` (`type_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
