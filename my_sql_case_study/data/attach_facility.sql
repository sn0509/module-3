create table attach_facility(
	id int auto_increment primary key,
    name varchar(45) not null,
    cost double default(0.0),
    unit varchar(10) not null,
    status varchar(45),
    is_delete bit(1)
    );
insert into attach_facility(name,cost,unit,status,is_delete) values
('Massage',200000,'Lần','Hoạt động',0),
('Karaoke',150000,'Giờ','Hoạt động',0),
('Thức ăn',120000,'Phần','Hoạt động',0),
('Nước uống',20000,'Chai','Hoạt động',0),
('Thuê xe di chuyển tham quan resort',2000000,'Ngày','Hoạt động',0);

SELECT 
    *
FROM
    attach_facility;
