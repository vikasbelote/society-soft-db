set foreign_key_checks=0;

drop table sa_maintenance_charge;

set foreign_key_checks=1;

create table sa_maintenance_charge
(
	 charge_id int auto_increment
    ,charge_value double
    ,maintenance_head_id int
    ,receipt_id int
    
    ,primary key(charge_id)
    ,foreign key(maintenance_head_id)references sa_maintenance_head(head_id)on delete set null on update cascade
    ,foreign key(receipt_id)references sa_maintenance_receipt(receipt_id)on delete set null on update cascade
);