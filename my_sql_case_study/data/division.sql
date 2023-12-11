CREATE TABLE division (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    is_delete BIT(1)
);
insert into division (name,is_delete) values ('Sale-Marketing',0),('Administration',0),('Service',0),('Management',0);
SELECT 
    *
FROM
    division;