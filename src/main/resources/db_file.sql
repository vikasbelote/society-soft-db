create table sa_society_additional_area
(
	 area_id int auto_increment
    ,area_name varchar(100)
    ,society_id int
    
    ,primary key(area_id)
    ,foreign key(society_id)references sa_society(society_id)on delete set null on update cascade
);

alter table sa_society_member add wing_number varchar(100);
alter table sa_society_member add flat_number varchar(50);
alter table sa_society_member add square_feet int;
alter table sa_society_member add additional_area_id int;
alter table sa_society_member add foreign key(additional_area_id)references sa_society_additional_area(area_id)on delete set null on update cascade;


INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('14', 'Head');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('15', 'Interest policy');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('16', 'Penalties policy');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('17', 'Rebate policy');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('18', 'Additional Area');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('19', 'Member');
INSERT INTO `society_app`.`sa_menu` (`menu_id`, `menu_name`) VALUES ('20', 'Additional Area');

alter table sa_society add registration_no varchar(200);

INSERT INTO `society_app`.`sa_society_additional_area` (`area_id`, `area_name`) VALUES ('1', 'Terrace');
INSERT INTO `society_app`.`sa_society_additional_area` (`area_id`, `area_name`) VALUES ('2', 'Mezzanine Floors');
INSERT INTO `society_app`.`sa_society_additional_area` (`area_id`, `area_name`) VALUES ('3', 'Other');