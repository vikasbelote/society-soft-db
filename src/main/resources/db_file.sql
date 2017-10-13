create table sa_report
(
	 report_id int auto_increment
	,report_name varchar(100)
    ,primary key(report_id)
);

INSERT INTO `society_app`.`sa_report` (`report_id`, `report_name`) VALUES ('1', 'Balance Sheet');
INSERT INTO `society_app`.`sa_report` (`report_id`, `report_name`) VALUES ('2', 'Income & Expense');

alter table sa_general_head_section add report_id int;
alter table sa_general_head_section add foreign key(report_id)references sa_report(report_id)on delete set null on update cascade;


UPDATE `society_app`.`sa_general_head_section` SET `report_id`='1' WHERE `section_id`='1';
UPDATE `society_app`.`sa_general_head_section` SET `report_id`='1' WHERE `section_id`='2';

INSERT INTO `society_app`.`sa_general_head_section` (`section_id`, `section_name`, `report_id`) VALUES ('3', 'EXPENSES', '2');
INSERT INTO `society_app`.`sa_general_head_section` (`section_id`, `section_name`, `report_id`) VALUES ('4', 'INCOME', '2');
