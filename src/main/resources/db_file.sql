create table sa_maintenance_head_charge_calc_type
(
	 calc_type_id int auto_increment
    ,calc_type varchar(100) 
	,primary key(calc_type_id) 
);

INSERT INTO `society_app`.`sa_maintenance_head_charge_calc_type` (`calc_type_id`, `calc_type`) VALUES ('1', 'Fixed Amount');
INSERT INTO `society_app`.`sa_maintenance_head_charge_calc_type` (`calc_type_id`, `calc_type`) VALUES ('2', 'Per square feet');
INSERT INTO `society_app`.`sa_maintenance_head_charge_calc_type` (`calc_type_id`, `calc_type`) VALUES ('3', 'Reference Head');
INSERT INTO `society_app`.`sa_maintenance_head_charge_calc_type` (`calc_type_id`, `calc_type`) VALUES ('4', 'No calculation');


create table sa_maintenance_head_charge_calc
(
	 calc_id int auto_increment
    ,calc_type_id int
    ,fixed_amount double
    ,percentage_amount double
    ,reference_head_id int
    ,primary key(calc_id) 
    ,foreign key(calc_type_id)references sa_maintenance_head_charge_calc_type(calc_type_id)on delete set null on update cascade
);


create table sa_maintenance_head
(
	 head_id int auto_increment
    ,head_name varchar(100)
    ,society_id int
    ,calc_id int
    ,primary key(head_id)
    ,foreign key(society_id)references sa_society(society_id)on delete set null on update cascade
    ,foreign key(calc_id)references sa_maintenance_head_charge_calc(calc_id)on delete set null on update cascade
);

alter table sa_maintenance_head_charge_calc add foreign key(reference_head_id)references sa_maintenance_head(head_id)on delete set null on update cascade