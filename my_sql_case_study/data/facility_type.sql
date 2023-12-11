CREATE TABLE facility_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    is_delete BIT(1)
);

insert into facility_type(name,is_delete) values ('Villa',0),('House',0),('Room',0);
SELECT 
    *
FROM
    facility_type;