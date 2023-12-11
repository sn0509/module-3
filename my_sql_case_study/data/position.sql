CREATE TABLE `position` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    is_delete BIT(1)
);

insert into `position`(name,is_delete) values ('Receptionist',0),('Serve',0),('Expert',0),('Monitor',0),('Manage',0),('Manager',0);
SELECT 
    *
FROM
    `position`;
