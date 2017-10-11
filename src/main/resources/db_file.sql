

drop table sa_transaction;

create table sa_transaction
(
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `general_head_id` int(11) DEFAULT NULL,
  `transaction_description_id` int(11) DEFAULT NULL,
  `transaction_amount` double DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `society_id` int(11) DEFAULT NULL,
   PRIMARY KEY (`transaction_id`),
   FOREIGN KEY (`general_head_id`) REFERENCES `sa_general_head` (`general_head_id`) ON DELETE SET NULL ON UPDATE CASCADE,
   FOREIGN KEY (`society_id`) REFERENCES `sa_society` (`society_id`) ON DELETE SET NULL ON UPDATE CASCADE,
   FOREIGN KEY (`transaction_description_id`) REFERENCES `sa_transaction_description` (`desc_id`) ON DELETE SET NULL ON UPDATE CASCADE
);