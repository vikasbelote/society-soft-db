create table sa_asset_category
(
	category_id int auto_increment
   ,category_name varchar(100)
   ,category_code varchar(10)
   ,primary key(category_id)
);

create table sa_asset_tracker
(
	 asset_id int auto_increment
    ,society_id int 
    ,asset_name varchar(100)
    ,asset_tag_number varchar(50)
    ,vendor_name varchar(100)
    ,category_id int
    ,asset_location varchar(100)
    ,purchase_date date
    ,asset_cost double
    ,asset_status varchar(20)
    
    ,primary key(asset_id)
    ,foreign key(society_id)references sa_society(society_id)on delete set null on update cascade
    ,foreign key(category_id)references sa_asset_category(category_id)on delete set null on update cascade
);

create table sa_asset_contact
(
	contact_id int auto_increment
   ,person_id int
   ,asset_id int
   ,primary key(contact_id)
   ,foreign key(asset_id)references sa_asset_tracker(asset_id)on delete set null on update cascade
   ,foreign key(person_id)references sa_person(person_id)on delete set null on update cascade
);

create table sa_asset_service_history
(
	 service_history_id int auto_increment
	,asset_id int
    ,history_date date
    ,person_id int
    ,additional_info varchar(500)
    ,primary key(service_history_id)
    ,foreign key(asset_id)references sa_asset_tracker(asset_id)on delete set null on update cascade
    ,foreign key(person_id)references sa_person(person_id)on delete set null on update cascade
);

create table sa_asset_alert
(
	 alert_id int auto_increment
	,asset_id int
    ,alert_message varchar(100)
    ,primary key(alert_id)
    ,foreign key(asset_id)references sa_asset_tracker(asset_id)on delete set null on update cascade
);

create table sa_asset_scan_file
(
	file_id int auto_increment
   ,asset_id int
   ,file_name varchar(100)
   ,uploaded_by int
   ,primary key(file_id)
   ,foreign key(asset_id)references sa_asset_tracker(asset_id)on delete set null on update cascade
   ,foreign key(uploaded_by)references sa_user(user_id)on delete set null on update cascade
);