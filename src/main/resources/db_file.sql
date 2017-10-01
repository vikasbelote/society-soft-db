create table sa_transaction_type
(
	 type_id int auto_increment
    ,type_name varchar(100)
    
    ,primary key(type_id)
);

insert into sa_transaction_type(`type_name`)value('Credit');
insert into sa_transaction_type(`type_name`)value('Debit');
