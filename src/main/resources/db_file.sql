create table sa_mail_status
(
	 mail_status_id int auto_increment
	,society_id int
    ,receipt_id int
    ,mail_status bit
    ,email_type varchar(10)
    ,send_date datetime
    ,primary key(mail_status_id)
    ,foreign key(society_id)references sa_society(society_id) on delete set null on update cascade
	,foreign key(receipt_id)references sa_maintenance_receipt(receipt_id) on delete set null on update cascade
);

INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('12', 'Email');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('13', 'Message');