create table sa_file
(
	 file_id int auto_increment
    ,file_name varchar(500)
    ,file_type varchar(10)
    ,uploaded_by_id int
    ,uploaded_on date
    ,society_id int
    
    ,primary key(file_id)
    ,foreign key(society_id)references sa_society(society_id)on delete set null on update cascade
    ,foreign key(uploaded_by_id)references sa_user(user_id) on delete set null on update cascade
);