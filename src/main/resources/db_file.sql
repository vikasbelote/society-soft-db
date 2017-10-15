alter table sa_transaction add transaction_type varchar(20);

INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('9', 'Society Configuration');

create table sa_society_config
(
	 config_id int auto_increment
    ,society_id int 
    ,primary key(config_id)
    ,foreign key(society_id)references sa_society(society_id) on delete set null on update cascade
);

create table sa_general_head_order
(
	 order_id int auto_increment
    ,config_id int 
    ,general_head_id int
    ,sequence_number int
	,primary key(order_id)
    ,foreign key(config_id)references sa_society_config(config_id) on delete set null on update cascade
    ,foreign key(general_head_id)references sa_general_head(general_head_id) on delete set null on update cascade
);