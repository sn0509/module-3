CREATE TABLE rent_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    is_delete BIT(1)
);

insert into rent_type(name,is_delete) values ('Year',0),('Month',0),('Day',0),('Hour',0);
select * from rent_type;