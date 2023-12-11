create table `order`(
	o_id int auto_increment primary key,
    c_id int,
    o_date datetime,
    o_total_price double,
    foreign key(c_id) references customer(c_id)
);